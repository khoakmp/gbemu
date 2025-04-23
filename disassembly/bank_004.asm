; Disassembly of "Pokemon Red (UE) [S][!].gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $004", ROMX[$4000], BANK[$4]

    inc bc
    inc bc
    rrca
    rrca
    rra
    ld e, $1f
    jr jr_004_4048

    jr nc, @+$81

    ld d, [hl]
    ld a, a
    ld c, c
    ld l, a
    ld e, c
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp+$78
    ld hl, sp+$18
    db $fc
    inc c
    cp $6a
    cp $92
    or $9a
    ccf
    ld [hl], $3e
    add hl, sp
    ld a, e
    ld c, a
    ld a, a
    ld c, c
    ccf
    jr nc, jr_004_404a

    db $10
    rra
    rra
    ld c, $0e
    db $fc
    ld l, h
    ld a, h
    sbc h
    sbc $f2
    cp $92
    db $fc
    inc c
    ld hl, sp+$08
    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    rra
    rra

jr_004_4048:
    ccf
    ccf

jr_004_404a:
    ld a, a
    ld e, a
    ld a, a
    ld e, a
    ld a, a
    ld e, a
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fa
    cp $fa
    cp $fa
    ccf
    scf
    ccf
    jr c, jr_004_40e0

    ld e, a
    ld a, a
    ld d, b
    ccf
    jr nc, @+$21

    ld de, $1f1f
    ld c, $0e
    db $fc
    db $ec
    db $fc
    inc e
    sbc $fa
    cp $0a
    db $fc
    inc c
    ld hl, sp-$78
    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rra
    inc de
    rra
    ld de, $181f
    rra
    rla
    rra
    inc d
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$68
    rra
    jr jr_004_40ae

    inc c
    rlca
    rlca
    rlca
    dec b
    rlca
    dec b
    rlca
    inc b
    rlca
    rlca

jr_004_40ae:
    inc bc
    inc bc
    ldh a, [rNR10]
    ldh [$60], a
    ldh a, [$d0]
    ldh a, [$30]
    ldh a, [$30]
    ldh a, [$d0]
    ldh a, [$f0]
    ret nz

    ret nz

    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    rra
    ld e, $1f
    jr jr_004_410a

    jr nc, @+$81

    ld d, [hl]
    ld a, a
    ld c, c
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp+$78
    ld hl, sp+$18
    db $fc
    inc c
    cp $6a
    cp $92

jr_004_40e0:
    ld l, a
    ld e, c
    ld a, a
    db $76
    ld a, [hl]
    ld e, c
    ccf
    ccf
    rra
    dec de
    rrca
    inc c
    rrca
    rrca
    rlca
    rlca
    or $9a
    db $fc
    ld l, h
    ld a, h
    sbc h
    db $fc
    db $f4
    db $fc
    call z, Call_004_48f8
    or b
    or b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    rra
    rra

jr_004_410a:
    ccf
    ccf
    ld a, a
    ld e, a
    ld a, a
    ld e, a
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fa
    cp $fa
    ld a, a
    ld e, e
    ld a, a
    ld [hl], c
    ld a, a
    ld e, h
    ccf
    dec sp
    rra
    jr jr_004_413a

    inc c
    rrca
    rrca
    rlca
    rlca
    cp $da
    db $fc
    adc h
    db $fc
    inc a
    cp $d2
    cp $12

jr_004_413a:
    db $fc
    inc a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rra
    inc de
    rra
    ld de, $181f
    rra
    rla
    nop
    nop
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    rra
    inc d
    rra
    jr jr_004_4170

    inc c
    rlca
    rlca
    rra
    inc e
    ccf
    jr c, jr_004_418c

    rra
    ld c, $0e

jr_004_4170:
    ld hl, sp-$68
    ldh a, [rNR10]
    ld hl, sp+$68
    ld hl, sp-$18
    ld hl, sp-$68
    db $fc
    sbc h
    db $fc
    db $fc
    jr jr_004_4198

    nop
    inc bc
    nop
    rlca
    ld [$1c0f], sp
    inc de
    ld e, $11
    ccf
    inc [hl]

jr_004_418c:
    ld a, a
    ld d, d
    ld a, l
    ld b, d
    nop
    ret nz

    nop
    ldh [rNR10], a
    ldh a, [$38]
    ret z

jr_004_4198:
    ld a, b
    adc b
    db $fc
    inc l
    cp $4a
    cp [hl]
    ld b, d
    ccf
    jr nc, jr_004_41e1

    add hl, sp
    ld a, a
    ld c, a
    ld a, a
    ld c, a
    add hl, sp
    ccf
    ld d, $1f
    ld de, $0e1f
    ld c, $fc
    inc c
    ld a, h
    sbc h
    cp $f2
    cp $f2
    sbc h
    db $fc
    ld l, b
    ld hl, sp-$78
    ld hl, sp+$70
    ld [hl], b
    nop
    inc bc
    nop
    rlca
    inc c
    dec bc
    rra
    db $10
    rra
    db $10
    ccf
    jr nc, jr_004_424c

    ld d, b
    ld a, a
    ld b, b
    nop
    ret nz

    nop
    ldh [$30], a
    ret nc

    ld hl, sp+$08
    ld hl, sp+$08
    db $fc
    inc c
    cp $0a
    cp $02
    ccf

jr_004_41e1:
    jr nc, jr_004_4222

    jr c, jr_004_4264

    ld e, a
    ld a, a
    ld e, a
    ccf
    ccf
    rla
    rra
    ld de, $0e1f
    ld c, $fc
    inc c
    db $fc
    inc e
    cp $fa
    cp $fa
    db $fc
    db $fc
    add sp, -$08
    adc b
    ld hl, sp+$70
    ld [hl], b
    nop
    rlca
    nop
    rrca
    nop
    rra
    inc bc
    inc e
    rlca
    jr jr_004_422a

    ld [de], a
    dec de
    inc d
    rra
    inc d
    nop
    ldh [rP1], a
    ldh a, [$60]
    sbc b
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$68

jr_004_421e:
    ld hl, sp-$68
    rra
    db $10

jr_004_4222:
    dec bc
    inc c
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc

jr_004_422a:
    inc b
    rlca
    inc b
    rlca
    inc bc
    inc bc
    ld hl, sp+$18
    ld hl, sp+$78
    ldh a, [$f0]
    ldh a, [$30]
    ldh a, [$30]
    ldh [$e0], a
    jr nz, jr_004_421e

    ret nz

    ret nz

    nop
    nop
    nop
    inc bc
    nop
    rlca
    ld [$1c0f], sp
    inc de
    ld e, $11

jr_004_424c:
    ccf
    inc [hl]
    ld a, a
    ld d, d
    nop
    nop
    nop
    ret nz

    nop
    ldh [rNR10], a
    ldh a, [$38]
    ret z

    ld a, b
    adc b
    db $fc
    inc l
    cp $4a
    ld a, l
    ld b, d
    ld a, a
    ld [hl], b

jr_004_4264:
    ld a, [hl]
    ld e, c
    ccf
    ccf
    dec de
    rra
    ld c, $0f
    add hl, bc
    rrca
    rlca
    rlca
    cp [hl]
    ld b, d
    db $fc
    inc c
    ld [hl], h
    sbc h
    db $fc
    db $f4
    db $fc
    call z, $c878
    or b
    or b

Jump_004_427e:
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rlca
    inc c
    dec bc
    rra
    db $10
    rra
    db $10
    ccf
    jr nc, @+$81

    ld d, b
    nop
    nop
    nop
    ret nz

    nop
    ldh [$30], a
    ret nc

    ld hl, sp+$08
    ld hl, sp+$08
    db $fc
    inc c
    cp $0a
    ld a, a
    ld b, b
    ld a, a
    ld [hl], b
    ld a, a
    ld e, b
    ccf
    ccf
    rra
    rra
    inc c
    rrca
    dec bc
    rrca
    rlca
    rlca
    cp $02
    db $fc
    inc c
    db $fc
    inc e
    cp $f2
    cp $f2
    inc a
    db $fc
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rrca
    nop
    rra
    ld bc, $071e
    jr jr_004_42ec

    ld [de], a
    dec de
    inc d
    nop
    nop
    nop
    ldh [rP1], a
    ldh a, [$60]
    sbc b
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$68
    rra
    inc d
    rra
    db $10
    dec bc
    inc c
    rlca
    rlca
    rra
    rra
    inc h
    ccf

jr_004_42ec:
    inc de
    rra
    ld c, $0e
    ld hl, sp-$68
    ld hl, sp+$18
    ldh a, [rSVBK]
    ldh a, [$f0]
    ld hl, sp-$68
    db $f4
    sbc h
    db $e4
    db $fc
    jr jr_004_4318

    nop
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    ld [$100f], sp
    rra
    nop
    nop
    ld b, $00
    ld b, $00
    nop
    nop

jr_004_4318:
    nop
    nop
    ldh [$e0], a
    ld [de], a
    ldh a, [$08]
    ld hl, sp+$12
    rra
    daa
    dec a
    cpl
    jr c, jr_004_43a6

    ld d, d
    ld a, a
    ld [hl], d
    ld a, [hl]
    ld c, c
    ld a, a
    ld c, a
    jr nc, @+$32

    ld c, b
    ld hl, sp-$1c
    cp h
    db $f4
    inc e
    cp $4a
    cp $4e
    ld a, [hl]
    sub d
    cp $f2
    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    rlca
    rlca
    ld [$100f], sp
    rra
    nop
    nop
    nop
    nop
    jr jr_004_4356

jr_004_4356:
    jr jr_004_4358

jr_004_4358:
    nop
    nop
    ldh [$e0], a
    inc d
    ldh a, [$08]
    ld hl, sp+$20
    ccf
    jr nz, jr_004_43a3

    ld [hl], b
    ld e, a
    ld a, b
    ld c, a
    ccf
    scf
    ld a, a
    ld e, b
    ld a, a
    ld c, a
    jr nc, jr_004_43a0

    inc b
    db $fc
    inc b
    db $fc
    ld c, $fa
    ld e, $f2
    db $fc
    db $ec
    cp $1a
    cp $f2
    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jp $c403


    rlca
    ld [$0c0f], sp
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    ld [$04f8], sp
    db $fc
    inc b
    db $fc

jr_004_43a0:
    rra
    rla
    ld e, a

jr_004_43a3:
    db $10
    rra
    inc d

jr_004_43a6:
    rra
    inc d
    rra
    jr jr_004_43ea

    inc h
    ccf
    daa
    jr jr_004_43c8

    inc b
    db $fc
    add h
    db $fc
    db $e4
    db $fc
    ld hl, sp-$68
    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop

jr_004_43c8:
    rlca
    rlca
    ld [$100f], sp
    rra
    ld [de], a
    rra
    nop
    nop
    ld b, $00
    ld b, $00
    nop
    nop
    ldh [$e0], a
    db $10
    ldh a, [$0a]
    ld hl, sp+$48
    ld hl, sp+$27
    dec a
    cpl
    jr c, jr_004_4464

    ld d, d
    ld a, a
    ld b, d
    ld a, $31

jr_004_43ea:
    ld a, [hl]
    ld c, c
    ld a, a
    ld c, a
    jr nc, @+$32

    db $e4
    cp h
    db $f4
    inc e
    cp $4a
    cp $42
    ld a, h
    adc h
    ld [hl], b
    sub b
    ldh [$e0], a
    nop
    nop
    nop
    nop
    ld h, b
    nop
    ld h, b
    nop
    nop
    nop
    rlca
    rlca
    ld [$500f], sp
    rra
    db $10
    rra
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$20
    ccf
    jr nz, @+$41

    ld [hl], b
    ld e, a
    ld a, b
    ld c, a
    ccf
    scf
    rrca
    ld [$0707], sp
    nop
    nop
    inc b
    db $fc
    inc b
    db $fc
    ld c, $fa
    ld e, $f2
    db $fc
    db $ec
    cp $1a
    cp $f2
    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld h, h
    rlca
    ld l, b
    rrca
    inc c
    rrca
    rrca
    dec bc
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    ld [$04f8], sp
    db $fc
    inc b
    db $fc
    add d
    cp $0f
    ld [$0a2f], sp

jr_004_4464:
    rrca
    ld a, [bc]
    rrca
    ld [$0704], sp
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    jp nz, $f27e

    ld a, [hl]
    db $fc
    ld c, h
    ld hl, sp+$08
    ldh a, [rSVBK]
    ldh a, [$90]
    ldh a, [$90]
    ld h, b
    ld h, b
    rlca
    rlca
    rrca
    ld [$101f], sp
    inc e
    inc de
    dec sp
    inc a
    ccf
    scf
    ld a, a
    ld d, b
    ld a, a
    ld b, d
    ldh [$e0], a
    ldh a, [rNR10]
    ld hl, sp+$08
    jr c, @-$36

    call c, $fc3c
    db $ec
    cp $0a
    cp $42
    ccf
    jr nc, jr_004_44e1

    add hl, sp
    ld a, a
    ld c, a
    ld a, a
    ld c, c
    ccf
    jr c, jr_004_44c2

    ld e, $11
    rra
    ld c, $0e
    db $fc
    inc c
    ld a, h
    sbc h
    cp $f2
    cp $92
    db $fc
    inc e
    add sp, $78
    adc b
    ld hl, sp+$70
    ld [hl], b
    rlca
    rlca

jr_004_44c2:
    rrca
    ld [$101f], sp
    rra
    db $10
    ccf
    jr nc, jr_004_450a

    jr c, jr_004_454c

    ld e, a
    ld a, a
    ld c, a
    ldh [$e0], a
    ldh a, [rNR10]
    ld hl, sp+$08
    ld hl, sp+$08
    db $fc
    inc c
    db $fc
    inc e
    cp $fa
    cp $f2
    ccf

jr_004_44e1:
    scf
    ccf
    jr c, @+$81

    ld e, a
    ld a, a
    ld d, b
    ccf
    jr c, jr_004_4502

    ld e, $11
    rra
    ld c, $0e
    db $fc
    db $ec
    db $fc
    inc e
    cp $fa
    cp $0a
    db $fc
    inc e
    add sp, $78
    adc b
    ld hl, sp+$70
    ld [hl], b
    rlca
    rlca

jr_004_4502:
    rrca
    ld [$1817], sp
    dec sp
    inc [hl]
    ld a, l
    ld b, d

jr_004_450a:
    ccf
    ccf
    rra
    db $10
    rra
    inc d
    ldh [$e0], a
    ldh a, [rNR10]
    ld hl, sp+$08
    ld hl, sp+$08
    db $fc
    inc e
    db $fc
    db $fc
    db $fc
    db $fc

jr_004_451e:
    ld hl, sp-$68
    rra
    db $10
    dec bc
    inc c
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    rlca
    inc b
    rlca
    inc bc
    inc bc
    ldh a, [rNR10]
    ldh [$60], a
    ldh a, [$d0]
    ldh a, [$30]
    ldh a, [$30]
    ldh a, [$f0]
    jr nz, jr_004_451e

    ret nz

    ret nz

    rlca
    rlca
    rrca
    rrca
    rra
    dec e
    rra
    jr jr_004_4588

    ld h, $3f
    add hl, sp

jr_004_454c:
    ld a, a
    ld d, [hl]
    ld a, a
    ld b, b
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$48
    ld hl, sp+$18
    db $fc
    ld h, h
    db $fc
    sbc h
    cp $6a
    cp $02
    ld l, $31
    rra
    jr @+$3f

    ld h, $3f
    daa
    dec de
    ld e, $1f
    rra
    rrca
    rrca
    ld c, $0e
    ld [hl], h
    adc h
    ld hl, sp+$18
    cp h
    ld h, h
    db $fc
    db $e4
    ld e, b
    ld hl, sp-$08
    ld hl, sp-$10
    ldh a, [rSVBK]
    ld [hl], b
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rra
    rra

jr_004_4588:
    ccf
    ccf
    ccf
    ccf
    ld l, a
    ld e, a
    ld [hl], l
    ld c, a
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    or $fa
    ld e, [hl]
    ld a, [c]
    ccf
    jr nc, jr_004_45be

    inc e
    ccf
    ccf
    ccf
    ccf
    inc d
    rra
    rra
    rra
    rra
    rra
    ld c, $0e
    db $fc

jr_004_45b1:
    inc c

jr_004_45b2:
    ret c

    jr c, jr_004_45b1

    db $fc
    db $fc
    db $fc
    jr z, jr_004_45b2

    ld hl, sp-$08
    ld hl, sp-$08

jr_004_45be:
    ld [hl], b
    ld [hl], b
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rra
    rla
    ld e, $11
    rra
    inc e
    rra
    inc de
    rra
    inc e
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    cp h
    ld a, h
    db $fc
    db $fc

jr_004_45de:
    ld hl, sp+$58
    rra
    db $10
    dec bc
    inc c
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    ldh a, [rNR10]
    ldh [$60], a
    ldh [$e0], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ret nz

    inc bc
    inc bc
    rrca
    inc c
    inc e
    inc de
    rra
    db $10
    jr z, jr_004_4641

    ld l, a
    ld d, [hl]
    ld a, a
    ld c, c
    ld l, a
    ld e, c
    ret nz

    ret nz

    ldh a, [$30]
    jr c, jr_004_45de

    ld hl, sp+$08
    inc d
    db $ec
    or $6a
    cp $92

jr_004_461e:
    or $9a
    ccf
    ld [hl], $3f
    add hl, sp
    ld e, a
    ld a, [hl]
    ld e, a
    ld a, a
    ccf
    ccf
    db $10
    rra
    add hl, sp
    ccf
    ld a, $3e
    db $fc
    ld l, h
    db $fc
    sbc h
    ld a, [$fa7e]
    cp $fc
    db $fc
    ld [$9cf8], sp
    db $fc
    ld a, h
    ld a, h
    inc bc

jr_004_4641:
    inc bc
    rrca
    inc c
    inc e
    inc de
    rra
    db $10
    cpl
    jr nc, @+$81

    ld d, b
    ld a, a
    ld d, b
    ld a, a
    ld b, b
    ret nz

    ret nz

    ldh a, [$30]
    jr c, jr_004_461e

    ld hl, sp+$08
    db $f4
    inc c
    cp $0a
    cp $0a
    cp $02
    ccf
    jr nc, jr_004_46c2

    ld a, b
    ld d, a
    ld a, [hl]
    ld c, a
    ld [hl], e
    ccf
    inc sp
    inc e
    rra
    add hl, sp
    ccf
    ld a, $3e
    db $fc
    inc c
    ld a, [$ea1e]
    ld a, [hl]
    ld a, [c]
    adc $fc
    call z, $f838
    sbc h
    db $fc
    ld a, h
    ld a, h
    inc bc
    inc bc
    inc c
    rrca
    rra
    db $10
    ld de, $3e1e
    ld hl, $383f
    inc a
    daa
    ccf
    inc h
    ret nz

    ret nz

    ldh a, [$30]
    ld a, b
    adc b
    ld hl, sp+$08
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    ld h, h
    ld a, h
    sub h
    ccf
    jr c, jr_004_46c2

    db $10
    ld e, $19
    rrca
    rrca
    rlca
    rlca
    rrca
    rrca
    ld c, $0f
    rlca
    rlca
    db $fc
    inc d
    ld a, b
    add sp, -$48
    ld hl, sp+$1c
    db $e4
    sbc h
    db $e4
    db $fc
    db $fc
    ld [$f0f8], sp
    ldh a, [$03]
    inc bc

jr_004_46c2:
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    jr nc, jr_004_474a

    ld d, [hl]
    ld a, a
    ld c, c
    ld l, a
    ld e, c
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$28
    ld hl, sp-$68
    db $fc
    inc c
    cp $6a
    cp $92
    or $9a
    ccf
    ld [hl], $3e
    add hl, sp
    ld a, a
    ld c, a
    ld a, c
    ld c, a
    inc a
    ccf
    rla
    rra
    ld de, $0e1f
    ld c, $fc
    ld l, h
    ld a, h
    sbc h
    cp $f2
    sbc [hl]
    ld a, [c]
    inc a
    db $fc
    add sp, -$08
    adc b
    ld hl, sp+$70
    ld [hl], b
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    ccf
    ld a, a
    ld e, a
    ld a, a
    ld c, a
    ld l, a
    ld d, e
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fa
    cp $f2
    or $ca
    ccf
    jr nc, jr_004_4762

    jr c, jr_004_47a4

    ld e, a
    ld [hl], b
    ld e, a
    jr nc, jr_004_4769

    inc de
    rra
    ld de, $0e1f
    ld c, $fc
    inc c
    db $fc
    inc e
    cp $fa
    ld c, $fa
    inc c
    db $fc
    ret z

    ld hl, sp-$78
    ld hl, sp+$70
    ld [hl], b
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    inc sp

jr_004_474a:
    ccf
    inc a
    rra
    ld [de], a
    rra
    ld [de], a
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc

jr_004_475b:
    db $fc
    db $fc

jr_004_475d:
    inc a
    db $fc
    inc a
    rra
    inc e

jr_004_4762:
    dec bc
    inc c
    rlca
    rlca
    rlca
    rlca
    inc bc

jr_004_4769:
    inc bc
    dec b
    rlca
    ld [$070f], sp
    rlca
    ld hl, sp+$38
    ldh a, [rSVBK]
    ret nc

    ldh a, [$50]
    ldh a, [$f0]
    jr nc, jr_004_475b

    jr nz, jr_004_475d

    ldh [$c0], a
    ret nz

    inc bc
    inc bc
    rrca
    inc c
    rra
    db $10
    ld a, a
    ld [hl], b
    ldh a, [$8f]
    ld a, a
    ld [hl], b
    ld a, a
    ld c, a
    ld l, a
    ld d, d
    ret nz

    ret nz

    ldh a, [$30]
    ld hl, sp+$08
    cp $0e
    rrca
    pop af
    cp $0e
    cp $f2
    or $4a
    ccf
    jr nc, jr_004_47e1

    add hl, sp

jr_004_47a4:
    ld [hl], a
    ld c, a
    ld a, [hl]
    ld c, c
    ld [hl], $3f
    jr jr_004_47cb

    rra
    rra
    ld c, $0e
    db $fc
    inc c
    ld a, h
    sbc h

jr_004_47b4:
    xor $f2
    ld a, [hl]
    sub d
    ld l, h
    db $fc
    jr jr_004_47b4

    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    inc bc
    inc bc
    rrca
    inc c
    rra
    db $10
    ld a, a
    ld [hl], b
    ldh a, [$8f]
    ld a, a

jr_004_47cb:
    ld [hl], b
    ld a, a
    ld c, a
    ld l, a
    ld d, a
    ret nz

    ret nz

    ldh a, [$30]
    ld hl, sp+$08
    cp $0e
    rrca
    pop af
    cp $0e
    cp $f2
    or $ea
    ccf

jr_004_47e1:
    inc sp
    ccf
    jr c, jr_004_4864

    ld d, a
    ld [hl], a
    ld e, b
    jr nc, jr_004_4829

    jr jr_004_480b

    rra
    rra
    ld c, $0e
    db $fc
    call z, $1cfc

jr_004_47f4:
    cp $ea
    xor $1a
    inc c
    db $fc
    jr jr_004_47f4

    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    rlca
    rlca
    rrca
    ld [$101f], sp
    ccf
    jr nc, jr_004_4879

    ld c, a
    ccf

jr_004_480b:
    jr nc, jr_004_482c

    rra
    rra
    inc d
    ldh [$e0], a
    ldh a, [rNR10]
    ld hl, sp+$08
    db $fc
    inc c
    ld c, $f2
    db $fc

jr_004_481b:
    inc c
    db $fc

jr_004_481d:
    db $fc

jr_004_481e:
    call c, Call_000_1f2c
    db $10
    dec bc
    inc c
    rlca
    rlca
    rlca
    inc b
    inc bc

jr_004_4829:
    inc bc
    rlca
    rlca

jr_004_482c:
    rrca
    rrca
    rlca
    rlca
    ld hl, sp+$08
    ldh a, [rSVBK]
    ret nc

    ldh a, [$d0]
    ldh a, [$f0]
    jr nc, jr_004_481b

    jr nz, jr_004_481d

    ldh [$c0], a
    ret nz

    inc bc
    inc bc
    rrca
    inc c
    inc e
    inc de
    ccf
    jr nz, @+$41

    ld hl, $263f
    ld e, a
    ld a, b
    ccf
    ld h, $c0

jr_004_4851:
    ret nz

    ldh a, [$30]
    jr c, jr_004_481e

    db $fc
    inc b
    db $fc
    add h
    db $fc
    ld h, h
    ld a, [$fc1e]
    ld h, h
    rra
    db $10
    ld c, $0d

jr_004_4864:
    dec bc
    rrca
    add hl, bc
    rrca
    dec de
    ld e, $3c
    cpl
    ccf
    daa
    rra
    rra
    ld hl, sp+$08
    ld [hl], b
    or b
    ret nc

    ldh a, [$90]
    ldh a, [$d8]

jr_004_4879:
    ld a, b
    inc a
    db $f4
    db $fc
    db $e4
    ld hl, sp-$08
    inc bc
    inc bc
    rrca
    inc c
    inc e
    inc de
    ccf
    jr nz, @+$41

    jr nz, jr_004_48ca

    jr nz, jr_004_48ec

    ld h, b
    ccf
    jr nz, jr_004_4851

    ret nz

    ldh a, [$30]
    jr c, @-$36

    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    ld a, [$fc06]
    inc b
    rra
    db $10
    rrca
    inc c
    dec bc
    rrca
    ld a, [bc]
    rrca
    ld a, [de]
    rra
    inc a
    cpl
    ccf
    daa
    rra
    rra
    ld hl, sp+$08
    ldh a, [$30]
    ret nc

    ldh a, [$50]
    ldh a, [$58]
    ld hl, sp+$3c
    db $f4
    db $fc
    db $e4
    ld hl, sp-$08
    inc bc
    inc bc
    rrca
    inc c
    inc e
    inc de
    ccf
    jr nz, jr_004_4908

    inc l

jr_004_48ca:
    ccf
    inc sp
    ccf
    jr nc, jr_004_48ee

    inc e
    ret nz

    ret nz

    ldh a, [$30]
    jr c, @-$36

    db $fc
    inc b

jr_004_48d8:
    db $fc
    inc b
    db $fc
    inc b
    db $ec
    db $f4
    db $fc
    sub h
    rra
    db $10
    dec bc
    inc c
    rlca
    rlca
    dec b
    rlca
    ld b, $03
    inc e
    rra

jr_004_48ec:
    ccf
    inc hl

jr_004_48ee:
    rra
    rra
    ld hl, sp+$18
    ldh a, [$30]

jr_004_48f4:
    ldh [$e0], a
    jr nz, jr_004_48d8

Call_004_48f8:
    ldh [$e0], a
    jr c, jr_004_48f4

    db $fc
    call nz, $f8f8
    rlca
    rlca
    ld [$190f], sp
    rla
    ld h, $3b

jr_004_4908:
    daa
    inc a
    cpl
    jr c, jr_004_495c

    ld [hl], d
    ld e, a
    ld [hl], d
    ldh [$e0], a
    sub b
    ldh a, [$58]
    add sp, -$1c
    ld e, h
    db $e4
    inc a
    db $f4
    inc e
    ld a, [c]
    ld c, [hl]
    ld a, [$4e4e]
    ld a, c
    ld b, a
    ld a, a
    ld c, a
    ld a, e
    daa
    dec a
    rla
    ld e, $0f
    rrca
    rrca
    rrca
    inc bc
    inc bc
    ld [hl], d
    sbc [hl]
    ld [c], a
    cp $f2
    sbc $e4
    cp h
    add sp, $78
    ldh a, [$f0]
    ldh a, [$f0]
    ret nz

    ret nz

    nop
    nop
    rlca
    rlca
    ld [$100f], sp
    rra
    add hl, hl
    scf
    ld h, $3b
    daa
    inc a
    ld c, a
    ld a, b
    nop
    nop
    ldh [$e0], a
    sub b
    ldh a, [$88]
    ld hl, sp+$5c
    db $ec
    db $e4
    ld e, h

jr_004_495c:
    db $e4
    inc a
    ld a, [c]
    ld e, $5f
    db $76
    ld c, [hl]
    ld a, c
    ld b, a
    ld a, a
    ld c, a
    ld a, a
    daa
    dec a
    rra
    ld e, $0f
    rrca
    inc bc
    inc bc
    ld a, [$726e]
    sbc [hl]

jr_004_4974:
    ld [c], a
    cp $f2
    cp $e4
    cp h
    ld hl, sp+$78
    ldh a, [$f0]
    ret nz

    ret nz

    rlca
    rlca
    ld [$140f], sp
    dec de
    dec hl
    inc a
    inc a
    scf
    ld e, $13
    rra
    dec d
    rra
    inc d
    ret nz

    ret nz

    jr nz, jr_004_4974

    db $10
    ldh a, [$08]
    ld hl, sp-$0c
    inc c
    inc b
    db $fc
    ld b, h
    db $fc
    jp nz, Jump_000_1fbe

    db $10
    dec bc
    inc c
    rlca
    rlca
    ld e, $1d
    dec a
    inc hl
    rra
    rra
    rrca
    rrca
    inc bc
    inc bc
    ld [c], a
    ld a, $c2
    ld a, [hl]
    add d
    cp $c4
    db $fc
    ld hl, sp-$08
    ldh [$e0], a
    ldh a, [$f0]
    add b
    add b
    inc bc
    inc bc
    inc c
    rrca

jr_004_49c4:
    db $10
    rra
    jr nz, @+$41

    ld [hl+], a
    ccf
    daa
    dec a
    ld c, a
    ld a, b
    sbc a
    ld [c], a
    ret nz

    ret nz

    jr nc, jr_004_49c4

    ld [$04f8], sp
    db $fc
    ld b, h
    db $fc
    db $e4
    cp h
    ld a, [c]
    ld e, $f9
    ld b, a
    adc a
    ld a, [c]
    ld l, [hl]
    ld a, c
    rra
    rla
    rra
    inc d
    rra
    dec de
    rrca
    rrca
    add hl, bc
    rrca
    ld b, $06
    pop af
    ld c, a
    db $76
    sbc [hl]
    ld hl, sp-$18
    ld hl, sp-$18
    ld hl, sp-$28
    ldh a, [$f0]
    sub b
    ldh a, [$60]
    ld h, b
    inc bc
    inc bc
    inc c
    rrca

jr_004_4a04:
    db $10
    rra
    jr nz, jr_004_4a47

    jr nz, @+$41

    jr nz, @+$41

    ld b, b
    ld a, a
    add b
    rst $38
    ret nz

    ret nz

    jr nc, jr_004_4a04

    ld [$04f8], sp
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    ld [bc], a
    cp $01
    rst $38
    add b
    rst $38
    ld l, b
    ld a, a
    inc e
    rla
    rra
    rla
    rra
    rra
    rrca
    rrca
    add hl, bc
    rrca
    ld b, $06
    ld bc, $16ff
    cp $38
    add sp, -$08
    add sp, -$08
    ld hl, sp-$10
    ldh a, [$90]
    ldh a, [$60]
    ld h, b
    rlca
    rlca
    ld [$100f], sp
    rra
    db $10

jr_004_4a47:
    rra
    jr z, jr_004_4a89

    ld a, $33
    rra
    dec d
    rra
    inc d
    ret nz

    ret nz

    jr nz, @-$1e

    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$04
    db $fc
    ld [bc], a
    cp $c2
    ld a, $1f
    db $10
    dec bc
    inc c
    rlca
    rlca
    rlca
    rlca
    inc bc
    ld [bc], a
    rlca
    rlca
    ld [$070f], sp
    rlca
    jp nz, $c47e

    db $fc
    ld hl, sp-$08
    ldh [$60], a
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    ret nz

    rlca
    rlca
    rrca
    ld [$1817], sp
    ccf
    ld [hl], $7f

jr_004_4a89:
    ld a, c
    ld l, a
    ld e, c
    ld a, a
    ld b, [hl]
    ld a, $31
    ldh [$e0], a
    ldh a, [rNR10]
    add sp, $18
    db $fc
    ld l, h
    cp $9e
    or $9a
    cp $62
    ld a, h
    adc h
    ld a, a
    ld a, b
    rst $38
    sbc a
    cp $9f
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    ccf
    ccf
    cpl
    ld e, $1e
    cp $1e
    rst $38
    ld sp, hl
    ld a, a
    ld sp, hl
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $f4
    ld a, b
    ld a, b
    rlca
    rlca
    rrca
    ld [$101f], sp
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld e, a
    ld a, a
    ld c, a
    ccf
    jr nc, @-$1e

    ldh [$f0], a
    db $10
    ld hl, sp+$08
    db $fc
    db $fc
    cp $fe
    cp $fa
    cp $f2
    db $fc
    inc c
    ld [hl], a
    ld a, b
    rst $38
    cp a
    rst $38
    cp a
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    ccf
    ccf
    cpl
    ld e, $1e
    xor $1e
    rst $38
    db $fd
    rst $38
    db $fd
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $f4
    ld a, b
    ld a, b
    inc bc
    inc bc
    rlca
    inc b
    rrca
    ld [$1c1f], sp
    rra
    ld [de], a
    rra
    inc de
    rra
    inc e
    rra
    db $10
    ldh [$e0], a
    ldh a, [rNR10]
    ld hl, sp+$08
    db $fc
    inc a
    db $fc
    ld a, h
    db $fc
    db $fc
    db $fc
    inc d
    db $fc
    inc d
    dec bc
    inc c
    rlca
    rlca
    dec bc
    rrca
    rra
    rra
    rra
    rra
    rrca
    rrca
    rrca
    dec bc
    rlca
    rlca
    ld hl, sp+$08
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp+$38
    ld hl, sp+$38
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$e0], a
    inc bc
    inc bc
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    ccf
    scf
    ld a, a
    ld d, b
    ld a, a
    ld b, b
    ld l, a
    ld d, [hl]
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    inc e
    cp $0a
    cp $02
    or $6a
    ccf
    jr nc, jr_004_4ba1

    add hl, sp
    ld a, a
    ld c, a
    ld a, c
    ld c, a
    inc a
    ccf
    rra
    rra
    rra
    rra
    ld c, $0e
    db $fc
    inc c
    ld a, h
    sbc h
    cp $f2
    sbc [hl]
    ld a, [c]
    inc a
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    inc bc
    inc bc
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    ccf
    ccf
    ld a, a
    ld e, a
    ld a, a
    ld c, a
    ld l, a
    ld e, a
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fa
    cp $f2
    or $fa
    ccf

jr_004_4ba1:
    scf
    ccf
    jr c, jr_004_4c24

    ld e, a
    ld [hl], b
    ld e, a
    jr c, jr_004_4be9

    rra
    rra
    rra
    rra
    ld c, $0e
    db $fc
    db $ec
    db $fc
    inc e
    cp $fa
    ld c, $fa
    inc e
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    inc bc
    inc bc
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    dec e
    inc de
    rra
    db $10
    rra
    db $10
    rra
    ld d, $80
    add b
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    cp b
    ld a, b
    ld hl, sp+$18
    ldh a, [rNR10]
    rra
    db $10
    dec bc
    inc c
    rlca
    rlca
    inc b
    rlca
    dec b

jr_004_4be9:
    rlca
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    ldh a, [$50]
    and b
    ld h, b
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$30]
    ldh a, [$30]
    ldh a, [$f0]
    ldh [$e0], a
    rlca
    rlca
    rrca
    ld [$1817], sp
    ccf
    ld [hl], $7f
    ld [hl], b
    ld l, a
    ld d, d
    ld a, a
    ld b, b
    ld a, $31
    ldh [$e0], a
    ldh a, [rNR10]
    add sp, $18
    db $fc
    ld l, h
    cp $0e
    or $4a
    cp $02
    ld a, h
    adc h
    ld a, a
    ld a, b
    rst $38
    sub a

jr_004_4c24:
    rst $38
    sub c
    ld a, a
    ld a, h
    inc sp
    ccf
    inc l
    ccf
    inc sp
    cpl
    ld e, $1e
    cp $1e
    rst $38
    jp hl


    rst $38
    adc c
    cp $3e
    call z, Call_000_34fc
    db $fc
    call z, $78f4
    ld a, b
    rlca
    rlca
    rrca
    ld [$101f], sp
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld e, a
    ld a, a
    ld c, a
    ccf
    jr nc, @-$1e

    ldh [$f0], a
    db $10
    ld hl, sp+$08
    db $fc
    db $fc
    cp $fe
    cp $fa
    cp $f2
    db $fc
    inc c
    ld [hl], a
    ld a, b
    rst $38
    xor a
    rst $38
    and b
    ld a, a
    ld a, h
    inc sp
    ccf
    ld a, $3f
    inc sp
    cpl
    ld e, $1e
    xor $1e
    rst $38
    push af
    rst $38
    dec b
    cp $3e
    call z, Call_004_7cfc
    db $fc
    sbc h
    db $f4
    ld a, b
    ld a, b
    inc bc
    inc bc
    rlca
    inc b
    rrca
    ld [$161f], sp
    rra
    db $10
    rra
    inc d
    rra
    db $10
    rra
    db $10
    ldh [$e0], a
    ldh a, [rNR10]
    ld hl, sp+$08
    db $fc
    inc a
    db $fc
    ld a, h
    db $fc
    ld a, h
    db $fc
    inc d
    db $fc
    inc d
    dec bc
    inc c
    rlca
    rlca
    rrca
    ld [$111f], sp
    rra
    ld de, $0f0e
    rrca
    dec bc
    inc b
    rlca
    ld hl, sp+$08
    ldh a, [$f0]
    ld hl, sp-$38
    ld hl, sp+$28
    ld hl, sp+$28
    ret nc

    ldh a, [$e0]
    ldh [rNR41], a
    ldh [rIF], a
    rrca
    rra
    ld e, $1e
    rra
    jr jr_004_4ce7

    scf
    ccf
    ccf
    ccf
    ld [hl], a
    ld e, b
    ld a, a
    ld b, [hl]
    ldh a, [$f0]
    ld a, b
    ld hl, sp+$78
    ld hl, sp+$18
    ld hl, sp-$14
    db $fc
    db $fc
    db $fc
    xor $1a
    cp $62
    ld a, $31
    dec a
    ld a, [hl-]
    ld a, a
    ld c, h
    ld a, a

jr_004_4ce7:
    ld c, h
    ccf
    ld a, [hl-]
    rra
    inc de
    rra
    rra
    ld c, $0e
    ld a, h
    adc h
    cp h
    ld e, h
    cp $32
    cp $32
    db $fc
    ld e, h
    ld hl, sp-$38
    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    rrca
    rrca
    rra
    rra
    rra
    rra
    rra
    rra
    jr nc, jr_004_4d49

    ccf
    ccf
    ld [hl], b
    ld e, a
    ld [hl], b
    ld c, a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    inc c
    db $fc
    db $fc
    db $fc
    ld c, $fa
    ld c, $f2
    jr c, jr_004_4d59

    ccf
    jr c, jr_004_4da4

    ld e, a
    ld a, a
    ld e, a
    ccf
    ccf
    rra
    ld de, $1f1f
    ld c, $0e
    inc e
    db $ec
    db $fc
    inc e
    cp $fa
    cp $fa
    db $fc
    db $fc
    ld hl, sp-$78
    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    rlca
    rlca
    rrca
    rlca
    rlca
    rrca
    db $10
    rra
    ccf

jr_004_4d49:
    ccf
    ccf
    ccf
    ld d, $19
    rra
    ld d, $f0
    ldh a, [$f8]
    ld hl, sp-$08
    ld hl, sp+$08
    ld hl, sp-$08

jr_004_4d59:
    ld hl, sp-$08
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$1f
    db $10
    add hl, bc
    ld c, $06
    add hl, bc
    rlca
    add hl, bc
    inc bc
    rlca
    rlca
    dec b
    rrca
    rrca
    rrca
    rrca
    ld l, b
    sbc b
    ldh a, [rNR10]
    ldh [$60], a
    ldh a, [$f0]
    ldh a, [$30]
    ldh a, [$30]
    ldh a, [$f0]
    ldh [$e0], a
    inc bc
    inc bc
    rrca
    rrca
    ld e, $1f
    dec de
    inc e
    ccf
    jr nc, jr_004_4e0a

    db $76
    ld l, a
    ld d, b
    ld a, [hl]

jr_004_4d8f:
    ld b, c
    ret nz

    ret nz

    ldh a, [$f0]
    ret c

    jr c, jr_004_4d8f

    ld [$0cfc], sp
    cp $6e
    or $0a
    ld a, [hl]
    add d
    cpl
    jr nc, @+$81

    ld e, b

jr_004_4da4:
    rst $30
    sbc a
    add sp, -$49
    ld h, b
    ld a, a
    jr c, @+$41

    ccf
    ccf
    ld e, $1e
    db $f4
    inc c
    cp $1a
    rst $28
    ld sp, hl
    rla
    db $ed
    ld b, $fe
    inc e
    db $fc
    db $fc
    db $fc
    ld a, b
    ld a, b
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld e, a
    ld a, a
    ld c, a
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    cp $fa
    cp $f2
    ccf
    inc sp
    ld a, a
    ld e, b
    db $e3
    cp a
    db $ec
    or e
    ld h, b
    ld a, a
    jr nc, @+$41

    ccf
    ccf
    ld e, $1e
    db $fc
    call z, $1afe
    rst $00
    db $fd
    scf
    call $fe06
    inc c
    db $fc
    db $fc
    db $fc
    ld a, b
    ld a, b
    inc bc
    inc bc
    rlca
    inc b
    rrca
    ld [$0b0f], sp
    rra
    db $10

jr_004_4e0a:
    rla
    jr @+$21

    db $10
    rra
    db $10
    ldh a, [$f0]
    ld a, b
    ld hl, sp-$04
    ld a, h
    cp $7e
    cp [hl]
    ld a, [hl]
    cp $1e
    cp $1e
    cp $1e
    rrca
    ld [$1f17], sp
    jr z, @+$39

    ld hl, $213f
    ccf
    ld de, $1f1f
    rra
    rrca
    rrca
    cp h
    ld a, h
    ld hl, sp-$08
    ldh a, [$90]
    ldh a, [rNR10]
    ldh a, [$30]
    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    ret nz

    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    ld e, $1f
    dec de
    inc e
    ccf
    jr nc, jr_004_4ecc

    db $76
    ld l, a
    ld d, b
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    ld a, b

jr_004_4e57:
    ld hl, sp-$28
    jr c, jr_004_4e57

    inc c
    cp $6e
    or $0a
    ld a, [hl]
    ld b, c
    ld l, a
    ld [hl], b
    rst $38
    sbc b
    rst $30
    cp a
    add sp, -$09
    inc a
    ccf
    ccf
    ccf
    ld e, $1e
    ld a, [hl]
    add d
    db $f4
    inc c
    cp $1a
    rst $28
    ld sp, hl
    rra
    pop af
    ld e, $f2
    db $ec
    db $ec
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld e, a
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    cp $fa
    ld a, a
    ld c, a
    ccf
    inc sp
    ld a, a
    ld e, b
    rst $20
    cp a
    ld hl, sp-$59
    ld h, b
    ld a, a
    ld a, $3f
    rra
    rra
    cp $f2
    db $fc
    call z, $12fe
    sbc a
    pop af
    ld a, a
    sub c
    ld c, $fe
    ld [$f0f8], sp
    ldh a, [rP1]
    nop
    inc bc
    inc bc
    rlca
    inc b
    rrca
    ld [$0b0f], sp
    rra
    db $10

jr_004_4ecc:
    rla
    jr jr_004_4eee

    stop
    nop
    ldh a, [$f0]
    ld a, b
    ld hl, sp-$04
    ld a, h
    cp $7e
    cp [hl]
    ld a, [hl]
    cp $1e
    cp $1e
    rra
    db $10
    rrca
    ld [$1f17], sp
    jr z, @+$39

    ldh a, [rIE]
    ld hl, sp-$01
    ld a, a
    ld a, a

jr_004_4eee:
    ld e, $1e
    cp $1e
    cp h
    ld a, h
    ld hl, sp-$08
    ld a, b
    ret z

    ld a, h
    call nz, $c47c
    ld hl, sp-$08
    ld a, b
    ld a, b
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rra
    db $10
    ccf
    jr nz, @+$41

    ccf
    ld a, a
    ld d, [hl]
    ld a, a
    ld b, d
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp+$08
    db $fc
    inc b
    db $fc
    db $fc
    cp $6a
    cp $42
    ccf
    jr nc, jr_004_4f61

    add hl, sp
    ld a, a
    ld c, a
    ld a, a
    ld c, b
    jr nc, @+$41

    rra
    rra
    ccf
    ccf
    inc a
    inc a
    db $fc
    inc c
    ld a, h
    sbc h
    cp $f2
    cp $12
    inc c
    db $fc
    ld hl, sp-$08
    db $fc
    db $fc
    inc a
    inc a
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rra
    db $10
    ccf
    jr nc, @+$41

    ccf
    ld a, a
    ld e, a
    ld a, a
    ld c, a
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp+$08
    db $fc
    inc c
    db $fc
    db $fc
    cp $fa
    cp $f2
    ccf

jr_004_4f61:
    inc sp
    ccf
    inc a
    ld a, a
    ld h, a
    ld a, a
    ld d, b
    jr nc, @+$41

    rra
    rra
    ccf
    ccf
    inc a
    inc a
    db $fc
    call z, Call_000_3cfc
    cp $e6
    cp $0a
    inc c
    db $fc
    ld hl, sp-$08
    db $fc
    db $fc
    inc a
    inc a
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    ccf
    jr nz, jr_004_4fc8

    jr nz, jr_004_4fca

    ccf
    rra
    ld d, $1f
    inc d
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp+$08
    db $fc
    inc c
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$68
    rra
    db $10
    dec bc
    inc c
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0703
    rlca
    rlca
    rlca
    inc bc
    inc bc
    ldh a, [rNR10]
    ldh [$60], a
    ldh a, [$d0]
    ldh a, [$30]
    ldh a, [$30]
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    rlca
    rlca
    rrca
    rrca
    rra
    rra

jr_004_4fc8:
    rra
    db $10

jr_004_4fca:
    ccf
    jr nc, @+$41

    ccf
    ld a, a
    ld d, [hl]
    nop
    nop
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp+$08
    db $fc
    inc c
    db $fc
    db $fc
    cp $6a
    ld a, a
    ld b, d
    ld a, a
    ld [hl], b
    ld a, [hl]
    ld e, c
    ccf
    ccf
    add hl, bc
    ld c, $0e
    rrca
    rrca
    rrca
    ld b, $06
    cp $42
    db $fc
    inc c
    ld a, b
    sbc b
    ldh a, [$f8]
    ld hl, sp+$48
    ld a, b
    ret z

    or b
    or b
    nop
    nop
    nop
    nop
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rra
    db $10
    ccf
    jr nc, @+$41

    ccf
    ld a, a
    ld e, a
    nop
    nop
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp+$08
    db $fc
    inc c
    db $fc
    db $fc
    cp $fa
    ld a, a
    ld c, a
    ld a, a
    ld [hl], e
    ld a, a
    ld e, h
    scf
    dec sp
    jr jr_004_5049

    rra
    rra
    rra
    rra
    ld c, $0e
    cp $f2
    db $fc
    call z, Call_000_3cfc
    cp $d2
    ld e, $f2
    db $ec
    db $fc
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    ccf

jr_004_5049:
    jr nz, jr_004_508a

    jr nz, jr_004_508c

    ccf
    rra
    ld d, $00
    nop
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp+$08
    db $fc
    inc c
    db $fc
    db $fc
    db $fc
    db $fc
    rra
    inc d
    rra
    db $10
    dec bc
    inc c
    rlca
    rlca
    rra
    rra
    ccf
    dec a
    rra
    rra
    ld c, $0e
    ld hl, sp-$68
    ldh a, [rNR10]
    ldh [$60], a
    ldh a, [$d0]
    ldh a, [$30]
    db $fc
    inc a
    db $fc
    db $fc
    jr @+$1a

    rrca
    rrca
    rra
    ld e, $1f
    ld e, $10
    rra
    jr c, jr_004_50c9

jr_004_508a:
    ccf
    scf

jr_004_508c:
    ld a, a
    ld d, d
    ld a, a
    ld b, d
    ldh a, [$f0]
    ld hl, sp+$78
    ld hl, sp+$78
    ld [$1cf8], sp
    db $fc
    db $fc
    db $ec
    cp $4a
    cp $42
    ccf
    jr nc, jr_004_50c1

    add hl, de
    ccf
    ccf
    ld h, a
    ld a, a
    ld a, c
    ld c, [hl]
    ccf
    rrca
    rra
    rra
    ld e, $1e
    db $fc
    inc c
    ld a, b
    sbc b
    db $fc
    db $fc
    and $fe
    sbc [hl]
    ld [hl], d
    db $fc
    ldh a, [$f8]
    ld hl, sp+$78
    ld a, b
    rrca

jr_004_50c1:
    rrca
    rra
    rra
    rra
    rra
    rra
    rra
    ccf

jr_004_50c9:
    ccf
    ccf
    ccf
    ld a, b
    ld d, a
    ld a, a
    ld b, b
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    ld e, $ea
    cp $02
    ccf
    jr nc, jr_004_5102

    rra
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, b
    ld a, a
    ccf
    rra
    rra
    rra
    ld e, $1e
    db $fc
    inc c
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    ld e, $fe
    db $fc
    ld hl, sp-$08
    ld hl, sp+$78
    ld a, b
    rrca
    rrca

jr_004_5102:
    rra
    rla
    rra
    rla
    inc hl
    ccf
    ld b, a
    ld a, a
    ld a, $31
    rra
    inc d
    rra
    inc d
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld [$c8f8], sp
    ld hl, sp-$18
    jr c, jr_004_5140

    db $10
    dec bc
    inc c
    rrca
    rrca
    rrca
    ld c, $0d
    ld a, [bc]
    rlca
    ld b, $0f
    rrca
    rra
    rra
    ldh a, [$30]
    ret nz

    ld b, b
    ldh [$e0], a
    ldh [$60], a
    and b
    ld h, b
    ldh [$60], a
    ret nz

    ret nz

    add b
    add b

jr_004_5140:
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc c
    rrca

jr_004_5148:
    ld de, $111e
    ld e, $20
    ccf
    jr nz, jr_004_518f

    nop
    nop
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_004_5148

    adc b
    ld a, b
    adc b
    ld a, b
    inc b
    db $fc
    inc b
    db $fc
    jr c, @+$29

    ccf
    jr nz, jr_004_5184

    db $10
    rra
    db $10
    rrca
    inc c
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    inc e
    db $e4
    db $fc
    inc b
    ld hl, sp+$08
    ld hl, sp+$08
    ldh a, [$30]
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca

jr_004_5184:
    rra
    jr jr_004_51c5

    ld hl, $370b
    ld [hl], l
    ld c, [hl]
    ld a, d
    ld c, l
    ld c, a

jr_004_518f:
    ld a, c
    nop
    nop
    ret nz

    ret nz

    ld [hl], b
    or b
    ld hl, sp+$08
    ld b, b
    cp h
    sbc h
    db $e4
    cp h
    ld b, h
    db $fc
    ld b, h
    ld h, a
    ld e, [hl]
    ld a, [hl]
    ld b, c
    rra
    inc hl
    ccf
    inc h
    ld e, $1d
    dec b
    ld c, $03
    rlca
    nop
    nop
    call z, $a474
    call c, $8870
    cp b
    ld c, b
    ld d, b
    or b
    ldh [$60], a
    add b
    add b
    nop
    nop
    rlca
    rlca
    rra
    jr jr_004_5204

jr_004_51c5:
    jr nz, jr_004_5246

    ld b, b
    ld a, a
    ld b, b
    rst $38
    add b
    rst $38
    add b
    cp $81
    ldh [$e0], a
    ld hl, sp+$18
    db $fc
    inc b
    cp $02
    cp $02
    rst $28
    ld de, $01ff
    db $fd
    inc bc
    cp a
    ret nz

    rst $18
    and b
    xor d
    push de
    ld d, l
    ld l, d
    ld b, d
    ld a, l
    dec h
    ccf
    ld a, [de]
    rra
    rlca
    rlca
    ld sp, hl
    rlca
    push af
    dec bc
    pop hl
    rra
    ld d, [hl]
    xor [hl]
    ld a, [bc]
    cp $54
    db $fc
    cp b
    ld hl, sp-$20
    ldh [rP1], a
    nop
    ccf
    ccf

jr_004_5204:
    ccf
    jr nz, @+$32

    cpl
    ccf
    jr nz, @+$34

    dec l
    ccf
    jr nz, jr_004_5241

    dec l
    nop
    nop
    ld hl, sp-$08
    ld hl, sp+$08
    jr @-$16

    ld hl, sp+$08
    sbc b
    ld l, b
    ld hl, sp+$08
    sbc b
    ld l, b
    ccf
    jr nz, jr_004_5254

    ld l, $3f
    jr nz, jr_004_524a

    inc a
    ld a, [hl-]
    dec h
    dec de
    inc d
    rrca
    rrca
    nop
    nop
    ld hl, sp+$08
    ld e, b
    xor b
    ld hl, sp+$08
    ld hl, sp+$08
    sbc b
    ld l, b
    ld hl, sp+$08
    ld hl, sp-$08
    nop
    nop
    nop

jr_004_5241:
    nop
    nop
    nop
    nop
    nop

jr_004_5246:
    ld a, $3e
    ld e, a
    ld h, c

jr_004_524a:
    ld d, c
    ld l, [hl]
    ld e, [hl]
    ld h, c
    ld d, l
    ld l, d
    nop
    nop
    nop
    nop

jr_004_5254:
    nop
    nop
    ld a, $3e
    db $fd
    jp $bb45


    ld b, l
    cp e
    ld b, l
    cp e
    ld e, a
    ld h, b
    ld e, a
    ld h, b
    ld d, c
    ld l, [hl]
    ld e, a
    ld h, b
    ld b, b
    ld a, a
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    ld a, l
    add e
    ld d, l
    xor e
    ld a, l
    add e
    ld a, l
    add e
    ld bc, $ffff
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    ld c, b
    ld a, a
    ld e, a
    ld h, a
    ld e, a
    ld h, b
    ld d, d
    ld l, l
    ld e, a
    ld h, b
    ld d, d
    ld l, l

jr_004_5290:
    nop
    nop
    ld hl, sp-$08
    ld c, b
    ld hl, sp-$18
    sbc b
    add sp, $18
    xor b
    ld e, b
    add sp, $18
    xor b
    ld e, b
    ld e, a
    ld h, b
    ld d, c

jr_004_52a3:
    ld l, [hl]
    ld e, a
    ld h, b
    ld e, [hl]
    ld h, c
    ld e, a
    ld h, b
    ld b, b
    ld a, a
    ld a, a
    ld a, a
    nop
    nop
    add sp, $18
    ld l, b
    sbc b
    add sp, $18
    jr z, jr_004_5290

    add sp, $18
    ld [$f8f8], sp
    ld hl, sp+$00
    nop
    jr nz, @+$32

    scf
    ccf
    dec sp
    ccf
    rla
    jr c, jr_004_52f8

    inc a
    ld a, a
    ld h, c
    ret nc

    cp a
    xor a
    ldh a, [rDIV]
    inc c
    db $ec
    db $fc
    call c, $e8fc
    inc e
    db $f4
    inc a
    cp $86
    dec bc
    db $fd
    push af
    rrca
    ld e, a
    ld h, b
    ld e, a
    ld h, b
    ld l, a
    ld [hl], b
    ld a, b
    sbc a
    rst $28
    sbc a
    adc a
    rst $38
    ld [hl], b
    ld a, a
    nop
    nop
    ld a, [c]
    ld c, $e2
    ld e, $86
    ld a, [hl]
    ld e, $f9

jr_004_52f8:
    rst $30
    ld sp, hl
    pop af
    rst $38
    ld c, $fe
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    add hl, bc
    ld c, $13
    inc e
    rla
    jr jr_004_5326

    jr jr_004_5311

jr_004_5311:
    nop
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_004_52f8

    ret nc

    jr nc, jr_004_52a3

    ld a, b
    adc b
    ld a, b
    jr z, jr_004_52f8

    inc d
    dec de
    inc d
    dec de
    jr jr_004_5345

jr_004_5326:
    inc c
    rrca
    rlca
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    jr z, @-$26

    ld l, b
    sbc b
    ret c

    jr c, @+$32

    ldh a, [$e0]
    ldh [$c0], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rrca

jr_004_5345:
    ld [$1d1b], sp
    ld a, $21
    ld a, [hl]
    ld b, e
    rst $38
    add d
    rst $38
    add b
    ret nz

    ret nz

    db $e3
    inc hl
    rst $20
    push hl
    rst $38
    ld sp, hl
    ld a, a
    db $fd
    db $76
    cp [hl]
    or $3e
    or $5e
    rst $38
    add b
    rst $38
    add d
    ld a, [hl]
    ld b, e
    ld a, $21
    dec de
    inc e
    rrca
    add hl, bc
    rlca
    rlca
    nop
    nop
    or $5e
    or $3e
    db $76
    cp [hl]
    ld a, a
    db $fd
    rst $38
    ld sp, hl
    rst $20
    push hl
    db $e3
    inc hl
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    inc bc
    rlca
    rlca
    rrca
    ld e, $0d
    ccf
    jr @+$81

    jr nc, jr_004_5411

jr_004_5411:
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    add b
    add b
    add b
    ret nz

    ldh [$c0], a
    ldh a, [$60]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $070b
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $01
    rlca
    rra
    cp [hl]
    ld a, a
    rst $30
    ld hl, sp-$41
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    jr c, @+$01

    rst $38
    rst $38
    ld a, h
    add e
    rst $38
    nop
    rst $38
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

    ldh [$e8], a
    ldh a, [$bc]
    ld a, b
    xor $1c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    dec b
    inc bc
    cpl
    rra
    ld a, h
    rst $38
    rst $28
    ldh a, [rIE]
    add b
    rst $38
    add b
    nop
    nop
    add sp, $04
    db $e4
    adc $fe
    rst $08
    db $eb
    rst $18
    ld e, a
    ld sp, hl
    ld a, a
    ldh a, [$6f]
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ld bc, $0103
    ld [bc], a
    add c
    ret nz

    jp $e3f7


    or a
    ld a, a
    ld a, a
    ld h, b
    db $dd
    db $e3
    or a
    rst $08
    sbc h
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    pop bc
    rst $38
    ld a, a
    add b
    ld [hl], b
    ldh [$a0], a
    ret nz

    nop
    add b
    ld b, d
    add c
    ld b, c
    add e
    jp $f383


    db $e3
    rst $38
    ld [hl], e
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $ff03
    rst $38
    rst $38
    ld a, e
    add a
    rst $38
    inc bc
    db $fd
    inc bc
    nop
    nop
    nop
    nop
    cp $fc
    db $fc
    cp $fc
    add [hl]
    cp $86
    cp $86
    cp $06
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [$7b], a
    db $fc
    ld a, a
    rst $38
    ld a, h
    jp RST_00


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub b
    ldh [$f5], a
    ld a, [c]
    nop
    nop
    nop
    nop
    nop
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
    nop
    ld c, $1f
    dec sp
    inc e
    dec bc
    inc e
    dec l
    ld e, $07
    ld a, [hl]
    add [hl]
    ld a, a
    inc bc
    ld a, a
    ld b, c
    ccf
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
    nop
    cpl
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [$1f], a
    rst $28
    rra
    rst $38
    rrca
    rst $30
    rrca
    cp $01
    or $0e
    cp $07
    ld a, [$ff07]
    inc bc
    rst $38
    add e
    rst $38
    jp $e3df


    rst $18
    db $e3
    dec b
    inc bc
    nop
    rlca
    nop
    rlca
    add b
    rlca
    add b
    rlca
    or h
    rrca
    cp a
    ld a, a
    rst $18
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [$2f], a
    ldh a, [$2f]
    ldh a, [$2f]
    ldh a, [$ef]
    ldh a, [$7f]
    ldh a, [$5f]
    ldh [$7f], a
    ret nz

    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fd
    cp $07
    db $dd
    ld a, $db
    inc a
    rst $30
    jr c, @+$01

    ld [hl], b
    rst $28
    ldh a, [$ef]
    ldh a, [$7f]
    ldh [$7f], a
    ldh [rIE], a
    nop
    jp $bf3c


    ld a, h
    ld a, a
    ld hl, sp-$09
    ld hl, sp-$42
    pop bc
    db $fd
    add e
    ld a, e
    add a
    jp nc, $fe3f

    rra
    sbc $3f
    or a
    ld a, [hl]
    ld h, a
    cp $ef
    or $f7
    cp $5d
    cp [hl]
    db $fd
    inc bc
    rst $38
    ld bc, $01fe
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
    ld b, $fa
    rlca
    cp $03
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    db $fd
    inc bc
    rst $38
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    jr nc, jr_004_5657

    cp a
    ld a, a
    rst $28
    ldh a, [$bf]
    ret nz

    rst $20
    jr @+$81

    ret nz

    ld l, a
    ldh a, [$6f]
    ldh a, [$2f]

jr_004_5657:
    ldh a, [$ef]
    ldh a, [$6f]
    ldh a, [$d7]
    jr c, @+$01

    jr @-$03

    scf
    jp c, $dd37

    ld a, $fd
    ld e, $ff
    inc e
    rst $38
    inc e
    rst $28
    inc e
    db $eb
    inc e
    ret c

    ldh [$fd], a
    cp $e7
    ld e, $fc
    ld b, $f4
    ld c, $fe
    inc c
    db $fc
    inc c
    add sp, $1c
    ld bc, $203f
    rra
    db $10
    rrca
    nop
    rrca
    ld [$0007], sp
    rlca
    inc b
    ld [bc], a
    nop
    nop
    rst $38
    ldh a, [$f7]
    ld hl, sp+$1f
    ld hl, sp+$1b
    db $fc
    rrca
    db $fc
    rrca
    db $fc
    add a
    ld a, [hl]
    rlca
    ld a, [hl]
    rst $38
    nop
    rst $38
    nop

jr_004_56a4:
    rst $38
    nop
    cp $01
    rst $38
    nop

jr_004_56aa:
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld e, e
    rst $20
    ld a, a
    rst $00
    rst $30
    adc [hl]
    rst $28
    inc e
    db $db
    inc a
    cp a
    ld a, b
    ld a, a
    ld hl, sp-$31
    ld hl, sp-$01
    add b
    rst $20
    jr jr_004_56a4

    jr nc, @+$01

    jr nc, @+$01

    jr c, jr_004_56aa

    ccf
    rst $38
    rra
    pop af
    ld c, $d7
    jr c, @+$01

    jr @-$13

    inc e
    rst $38
    inc c
    rst $30
    adc h
    rst $30
    adc h
    rst $30
    inc c
    rst $38
    inc c
    or $0f
    ei
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sbc a
    ld h, b
    rst $30
    ld a, b
    db $fd
    ld a, [hl]
    rst $38
    ld h, b
    rst $28
    ldh a, [$7f]
    ldh a, [$df]
    jr c, @-$03

    inc e
    rst $38
    rrca
    ei
    rlca
    cp $01
    rst $30
    ld c, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [hl]
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    db $ed
    ld e, $f7
    rrca
    cp $07

jr_004_5716:
    db $ed
    ld e, $df
    inc a
    ei

jr_004_571b:
    db $fc
    db $db
    db $fc
    rra
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop

jr_004_5726:
    rst $20
    jr @-$0f

    jr jr_004_5716

    inc e
    rst $28
    inc e
    db $fd
    ld e, $fb
    rlca
    rst $38
    ld b, $b5
    ld c, [hl]
    rst $38
    ld c, h
    rst $38
    ld c, h
    ld e, a
    db $ec

jr_004_573c:
    rst $18
    db $ec
    db $fd
    xor $df
    jr nc, @+$01

    jr nc, jr_004_573c

jr_004_5745:
    jr c, jr_004_5726

    ccf
    rst $38
    rra
    pop af
    ld c, $ff
    nop
    rst $38
    nop
    db $eb
    inc e
    ld a, e
    adc h
    rst $38
    adc h
    rst $30
    adc h
    rst $38
    inc c
    ei
    inc c
    rst $28
    jr @+$01

    jr @+$01

    ld [$08ff], sp
    rst $30
    ld [$00ff], sp
    rst $38

jr_004_5769:
    nop
    rst $38

jr_004_576b:
    nop
    ld a, a
    add b
    ld a, a

jr_004_576f:
    add b
    db $fc
    jr jr_004_576b

    jr jr_004_5745

    jr c, jr_004_576f

    jr nc, jr_004_5769

    jr nc, jr_004_571b

    ld [hl], b
    ldh a, [$60]
    ldh [$60], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld a, a
    inc bc
    ccf
    inc bc
    ccf

jr_004_5796:
    ld hl, $011f
    rra
    db $10
    rrca
    nop
    rrca
    ld [$ff07], sp
    ld bc, $01fe
    ld a, a
    add b
    rst $38
    add b
    cp a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    ld a, a
    ldh [$8f], a
    ld hl, sp-$75
    db $fc

jr_004_57b4:
    rst $08
    db $fc
    push bc
    cp $c6
    rst $38
    ld b, e
    rst $38
    pop hl
    ld a, a
    ldh [$7f], a
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
    cp l
    jp $ffff


    ld a, h
    rst $38
    db $eb
    inc e
    rst $38
    jr jr_004_57b4

    jr c, jr_004_5796

    ld a, b
    ld a, a
    ld hl, sp-$21
    ld hl, sp+$09
    rst $38
    rrca
    rst $38
    rst $28
    ld a, a
    db $e3
    ld a, a
    ldh [$7f], a
    ldh [$7f], a
    ldh [$7f], a
    ldh a, [$6f]
    db $f4
    db $e3
    pop af
    ldh [$7f], a
    add b
    rst $38
    ret nz

    ld [hl], a
    ld hl, sp+$1d
    cp $07
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [$3f]
    ret nc

    ccf
    ret nc

    ccf
    pop de
    ld a, $58
    or b
    ld hl, sp-$10
    ld a, b
    ldh a, [rNR10]
    ld hl, sp+$1f
    ld hl, sp+$1c
    rst $38
    rrca
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    add b
    ld a, a
    nop
    ld a, a
    inc e
    inc bc
    rst $30
    rra
    ld d, e
    cp a
    pop af
    rst $38
    ld de, $00ff
    rst $38
    nop
    rst $18
    nop
    rst $08
    nop
    push bc
    push af
    xor $fe
    rst $20
    ei
    rst $20
    ld a, l
    db $e3
    ld a, a
    ldh [$7f], a
    ldh [$7f], a
    rst $38
    ccf
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld a, $c1
    rst $38
    rst $38
    cp $ff
    ldh [$7f], a
    ldh [rIE], a
    ldh [rIE], a
    rst $38
    jr nc, @-$50

    ld [hl], c
    sbc $e1
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    pop bc
    db $dd
    db $e3
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    cp $81
    cp $81
    rst $38
    add c
    db $fd
    add e
    db $fd
    add e
    ld b, b
    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    add b
    ret nz

    ret nz

    add b
    add b
    add b
    nop
    add b
    add b
    nop

jr_004_5880:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    inc bc
    ld [bc], a
    ld bc, $0100
    ld bc, $0000
    nop
    ld a, a
    ldh [$2f], a
    ldh a, [$3f]
    ldh a, [rNR21]
    ld sp, hl
    rra
    rst $38
    ld e, $ff
    inc c
    rst $38
    nop
    rst $38
    and b
    ld a, a
    and b
    ld a, a
    ld hl, sp+$37
    ld hl, sp-$0d
    ret z

    ldh a, [rLCDC]
    add b
    nop
    ret nz

    jr nz, jr_004_5880

    nop
    rst $38

jr_004_58c2:
    nop
    rst $38

jr_004_58c4:
    ld bc, $04fe
    ld hl, sp-$10
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
    ld a, a
    nop
    ld a, a
    inc c
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ccf
    db $10
    rrca
    inc b
    inc bc
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_004_58c2

    jr nz, jr_004_58c4

    jr nz, @-$3e

    nop
    ldh [$60], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0001
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
    add b
    ld a, a
    ld b, $01
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld [hl], b
    add e
    ld b, b
    add e
    ld b, b
    add e
    ld b, e
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    ld [$0807], sp
    rlca
    ld [$ff07], sp
    add e
    ld a, [$fb87]
    add [hl]
    and $fe
    inc a
    cp $06
    db $fc
    inc b
    ld hl, sp+$00
    ld hl, sp+$00
    nop

jr_004_5972:
    nop
    nop
    pop af
    pop af
    ld e, e
    ld e, e
    ld d, l
    ld d, l
    ld d, c
    ld d, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, a
    ld bc, $487e
    jr nc, jr_004_59a7

jr_004_59a7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_004_5972

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$38
    jr nc, jr_004_5a65

jr_004_5a65:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr z, jr_004_5aab

    ld b, h
    ld a, h
    add d
    add d
    nop
    ld hl, sp-$7c
    add h
    db $fc
    add d
    add d
    db $fc
    nop
    inc a
    ld b, d
    add b
    add b
    add b
    ld b, d
    inc a
    nop
    ld hl, sp-$7c
    add d
    add d
    add d
    add h
    ld hl, sp+$00
    cp $80
    add b
    db $fc
    add b
    add b
    cp $00
    cp $80
    add b

jr_004_5aab:
    db $fc
    add b
    add b
    add b
    nop
    inc a
    ld b, d
    add b
    sbc [hl]
    add d
    ld b, d
    inc a
    nop
    add d
    add d
    add d
    cp $82
    add d
    add d
    nop
    ld a, h
    db $10
    db $10
    db $10
    db $10
    db $10
    ld a, h
    nop
    ld a, [hl]
    ld [$0808], sp
    adc b
    adc b
    ld [hl], b
    nop
    add h
    adc b
    sub b
    or b
    ret z

    add h
    add d
    nop
    add b
    add b
    add b
    add b
    add b
    add b
    cp $00
    add d
    add $aa
    sub d
    add d
    add d
    add d
    nop
    add d
    jp nz, $92a2

    adc d
    add [hl]
    add d
    nop
    jr c, jr_004_5b36

    add d
    add d
    add d
    ld b, h
    jr c, jr_004_5af8

jr_004_5af8:
    db $fc
    add d
    add d
    db $fc
    add b
    add b
    add b
    nop
    jr c, jr_004_5b46

    add d
    add d
    adc d
    ld b, h
    ld a, [hl-]
    nop
    db $fc
    add d
    add d
    db $fc
    adc b
    add h
    add d
    nop
    ld a, b
    add h
    add b
    ld a, h
    ld [bc], a
    add d
    ld a, h
    nop
    cp $10
    db $10
    db $10
    db $10
    db $10
    stop
    add d
    add d
    add d
    add d
    add d
    ld b, d
    ld a, $00
    add d
    add d
    ld b, h
    ld b, h
    jr z, @+$2a

    stop
    add d
    sub d
    xor d
    xor d
    add $c6

jr_004_5b36:
    add d
    nop
    add $44
    jr z, @+$12

    jr z, jr_004_5b82

    add $00
    add d
    ld b, h
    jr z, jr_004_5b54

    db $10
    db $10

jr_004_5b46:
    stop
    cp $04
    ld [$2010], sp
    ld b, b
    cp $00
    ld b, $08
    db $10
    db $10

jr_004_5b54:
    db $10
    ld [$0006], sp
    ret nz

    jr nz, jr_004_5b6b

    db $10
    db $10
    jr nz, @-$3e

    nop
    nop
    jr @+$1a

    nop
    nop
    jr @+$1a

    nop
    nop
    jr @+$1a

jr_004_5b6b:
    nop
    jr jr_004_5b86

    ld [$0710], sp
    inc b
    inc b
    inc b
    inc b
    inc b
    rlca
    nop
    ldh [rNR41], a
    jr nz, @+$22

    jr nz, jr_004_5b9e

    ldh [rP1], a
    nop
    nop

jr_004_5b82:
    jr c, jr_004_5b88

    inc a
    ld b, h

jr_004_5b86:
    ld a, $00

jr_004_5b88:
    ld b, b
    ld b, b
    ld b, b
    ld a, h
    ld b, d
    ld b, d
    ld a, h
    nop
    nop
    nop
    inc a
    ld b, d
    ld b, b
    ld b, d
    inc a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, $42
    ld b, d

jr_004_5b9e:
    ld a, $00
    nop
    nop
    inc a
    ld b, d
    ld a, [hl]
    ld b, b
    ld a, $00
    inc c
    ld [de], a
    db $10
    ld a, [hl]
    db $10
    db $10
    stop
    nop
    nop
    ld a, $42
    ld b, d
    ld a, $02
    ld a, h
    ld b, b
    ld b, b
    ld b, b
    ld a, b
    ld b, h
    ld b, h
    ld b, h
    nop
    nop
    stop
    db $10
    db $10
    db $10
    stop
    nop
    ld [$0800], sp
    ld [$0808], sp
    jr nc, jr_004_5c11

    ld b, b
    ld b, [hl]
    ld e, b
    ld h, b
    ld e, b
    ld b, [hl]
    nop
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    stop
    nop
    nop
    db $ec
    sub d
    sub d
    sub d
    sub d
    nop
    nop
    nop
    inc a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    nop
    inc a
    ld b, d
    ld b, d
    ld b, d
    inc a
    nop
    nop
    nop
    ld a, h
    ld b, d
    ld b, d
    ld a, h
    ld b, b
    ld b, b
    nop
    nop
    ld a, $42
    ld b, d
    ld a, $02
    ld [bc], a
    nop
    nop
    ld c, [hl]
    ld d, b
    ld h, b
    ld b, b
    ld b, b
    nop
    nop

jr_004_5c11:
    nop

jr_004_5c12:
    inc a
    ld b, b
    inc a
    ld [bc], a
    ld a, h
    nop
    nop
    db $10
    ld a, h
    db $10
    db $10
    db $10
    inc c
    nop
    nop
    nop
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    inc a
    nop
    nop
    nop
    ld b, h
    ld b, h
    ld b, h
    jr z, jr_004_5c3f

    nop
    nop
    nop
    add d
    sub d
    sub d
    xor d
    ld b, h
    nop
    nop
    nop
    call nz, $1028
    jr z, jr_004_5c85

jr_004_5c3f:
    nop
    nop
    nop
    ld b, h
    ld b, h
    ld b, h
    inc a
    inc b
    ld a, b
    nop
    nop
    ld a, [hl]
    inc b
    jr @+$22

    ld a, [hl]
    nop
    jr nc, jr_004_5c12

    inc a
    ld b, d
    ld a, [hl]
    ld b, b
    ld a, $00
    jp nz, $8242

    ld a, $42
    ld b, d
    ld a, $00
    ret z

    ld c, b
    adc b
    ld [$0808], sp
    ld [$c000], sp
    ld b, b
    sbc [hl]
    jr nz, jr_004_5c8b

    ld bc, $003e
    ret nz

    ld c, b
    cp [hl]
    ld [$0808], sp
    ld b, $00
    ret nz

    ld b, b
    and d
    ld [hl+], a
    ld [hl+], a
    inc d
    ld [$0000], sp
    nop
    nop
    nop
    nop

jr_004_5c85:
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_5c8b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    jr nz, jr_004_5dc4

    nop
    nop
    nop
    nop
    ldh [$a0], a
    ldh [$8a], a
    adc d
    inc c
    ld a, [bc]
    ld a, [bc]
    ret c

    xor b
    adc b
    adc b
    sub d
    ld a, [de]
    ld d, $12
    nop
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ret nz

    ld b, b
    sub e
    inc d
    jr jr_004_5db6

    stop
    ret nz

    ld b, b
    sub [hl]
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    nop
    nop
    ld a, [hl]
    rst $20
    adc $18
    nop

jr_004_5db6:
    jr jr_004_5dd0

    jr jr_004_5df6

    inc a
    inc a
    jr jr_004_5dbe

jr_004_5dbe:
    jr jr_004_5dd8

    nop
    nop
    nop
    nop

jr_004_5dc4:
    nop
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    ld hl, sp+$08

jr_004_5dcd:
    jr z, jr_004_5dff

    ld b, b

jr_004_5dd0:
    nop
    nop
    nop
    jr nz, jr_004_5dcd

    adc b
    db $10
    ld h, b

jr_004_5dd8:
    nop
    nop
    nop
    nop
    ld [hl], b
    jr nz, jr_004_5dff

    ld hl, sp+$00
    ld h, b
    ld d, b
    ld c, b
    ld b, h
    ld c, b
    ld d, b
    ld h, b
    nop
    ld h, b
    ld [hl], b
    ld a, b
    ld a, h
    ld a, b
    ld [hl], b
    ld h, b
    nop
    cp $fe
    ld a, h
    jr c, @+$12

jr_004_5df6:
    nop
    nop
    db $10
    jr c, jr_004_5e4f

    sub d
    jr c, jr_004_5e42

    ld b, h

jr_004_5dff:
    jr c, jr_004_5e3d

    inc h
    inc a
    jr nz, @+$72

    jr nz, jr_004_5e77

    jr nz, jr_004_5e09

jr_004_5e09:
    nop
    ld b, h
    jr z, @+$12

    jr z, jr_004_5e53

    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_004_5e47

    nop
    nop
    ld [bc], a
    inc b
    ld [$2010], sp
    ld b, b
    add b
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    jr nz, jr_004_5e68

    jr c, jr_004_5e6e

    ld b, h
    jr c, jr_004_5e3d

    ld a, h
    db $10
    stop
    jr c, jr_004_5e7f

    add $c6
    ld h, h
    jr c, jr_004_5e38

jr_004_5e38:
    nop
    jr @+$3a

    jr @+$1a

jr_004_5e3d:
    jr jr_004_5ebd

    nop
    nop
    ld a, h

jr_004_5e42:
    add $0e
    ld a, b
    ldh [$fe], a

jr_004_5e47:
    nop
    nop
    ld a, [hl]
    inc c
    jr c, jr_004_5e53

    add $7c

jr_004_5e4f:
    nop
    nop
    inc e
    inc a

jr_004_5e53:
    ld l, h
    call z, Call_000_0cfe
    nop
    nop
    db $fc
    ret nz

    db $fc
    ld b, $c6
    ld a, h
    nop
    nop
    ld a, h
    ret nz

    db $fc
    add $c6
    ld a, h
    nop

jr_004_5e68:
    nop
    cp $c6
    inc c
    jr jr_004_5e9e

jr_004_5e6e:
    jr nc, jr_004_5e70

jr_004_5e70:
    nop
    ld a, h
    add $7c
    add $c6
    ld a, h

jr_004_5e77:
    nop
    nop
    ld a, h
    add $c6
    ld a, [hl]
    ld b, $7c

jr_004_5e7f:
    nop
    nop
    nop
    nop
    nop
    inc a
    inc a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, [hl]
    ld a, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    nop
    nop
    nop
    nop
    ld a, h
    ld a, h
    ld h, [hl]
    ld h, [hl]
    ld a, h
    ld a, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]

jr_004_5e9e:
    ld a, h
    ld a, h
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ld d, c
    ld d, c
    pop bc
    pop bc
    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop

jr_004_5ebd:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    add b
    nop
    add b
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
    rst $38
    rst $38
    nop
    ret nz

    nop
    ret nz

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
    rst $38
    rst $38
    nop
    ldh [rP1], a
    ldh [rIE], a
    rst $38
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
    nop
    ldh a, [rP1]
    ldh a, [rIE]
    rst $38
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
    nop
    ld hl, sp+$00
    ld hl, sp-$01
    rst $38
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
    nop
    db $fc
    nop
    db $fc
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
    rst $38
    rst $38
    nop
    cp $00
    cp $ff
    rst $38
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
    nop
    rst $38
    nop
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
    add b
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_004_5f7a

    jr z, jr_004_5f7c

    jr z, jr_004_5f7e

    xor b
    xor b
    xor b
    xor b
    jr z, jr_004_5f84

    jr z, jr_004_5f86

    jr z, jr_004_5f88

    nop
    nop
    nop
    nop
    jr jr_004_5f7e

    ld e, b
    ld e, b
    jr jr_004_5f82

    ld e, b
    ld e, b
    ld e, $1e
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    ccf
    ccf
    rst $38
    rst $38

jr_004_5f7a:
    nop
    nop

jr_004_5f7c:
    nop
    nop

jr_004_5f7e:
    nop
    nop
    nop
    nop

jr_004_5f82:
    jr nz, jr_004_5fa4

jr_004_5f84:
    db $76
    db $76

jr_004_5f86:
    add hl, hl
    add hl, hl

jr_004_5f88:
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld d, $16
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld a, e
    ld a, e
    ld l, e
    ld l, e
    nop
    nop
    nop
    nop
    ld a, $3e
    ld [hl+], a
    ld [hl+], a

jr_004_5fa4:
    ld l, $2e
    jr z, jr_004_5fd0

    jr z, jr_004_5fd2

    jr c, jr_004_5fe4

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, h
    ld e, h
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld e, h
    ld e, h
    nop
    nop
    nop
    nop
    nop
    nop
    sub b
    sub b
    rst $10
    rst $10
    push af
    push af
    or l
    or l
    sub a
    sub a
    nop
    nop

jr_004_5fd0:
    nop
    nop

jr_004_5fd2:
    nop
    nop
    nop
    nop
    nop
    nop
    sub d
    sub d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_5fe4:
    nop
    nop
    cp $fe
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    cp $fe
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    db $fc
    db $fc
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
    jr jr_004_602c

    dec l
    dec l
    ld a, [hl]
    ld a, [hl]
    ld b, d
    ld b, d
    dec h
    dec h

jr_004_601c:
    ld a, [de]
    ld a, [de]
    inc d
    inc d
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38

jr_004_602c:
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_004_604c

    xor h
    xor h
    ld a, [hl]
    ld a, [hl]
    ld b, d
    ld b, d
    and h
    and h
    ld e, b
    ld e, b
    jr z, jr_004_6068

    jr z, jr_004_606a

    jr z, jr_004_606c

    jr z, jr_004_606e

    jr z, jr_004_6070

    jr z, jr_004_6072

    jr z, jr_004_6074

jr_004_604c:
    jr z, jr_004_6076

    jr z, jr_004_6078

    inc d
    inc d
    ld a, [de]
    ld a, [de]
    dec l
    dec l
    ld a, [hl]
    ld a, [hl]
    ld b, d
    ld b, d
    dec h
    dec h
    jr jr_004_6076

    nop
    nop
    jr z, jr_004_608a

    ld e, b
    ld e, b
    xor h
    xor h
    ld a, [hl]
    ld a, [hl]

jr_004_6068:
    ld b, d
    ld b, d

jr_004_606a:
    and h
    and h

jr_004_606c:
    jr @+$1a

jr_004_606e:
    nop
    nop

jr_004_6070:
    nop
    nop

jr_004_6072:
    nop
    nop

jr_004_6074:
    nop
    nop

jr_004_6076:
    nop
    nop

jr_004_6078:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_004_609a

    jr jr_004_601c

    sbc b
    jr @+$1a

    jr jr_004_6089

jr_004_6089:
    nop

jr_004_608a:
    jr jr_004_60e4

    jr jr_004_60e6

    ld e, $00
    nop

jr_004_6091:
    inc bc
    rrca
    ccf
    rst $38
    nop
    nop
    nop
    jr jr_004_60b2

jr_004_609a:
    jr jr_004_60b4

    jr jr_004_60b6

    jr jr_004_60b8

    jr jr_004_60ba

    jr @+$21

    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub d
    nop
    nop
    nop
    nop
    nop

jr_004_60b2:
    nop
    rst $38

jr_004_60b4:
    rst $38
    nop

jr_004_60b6:
    nop
    nop

jr_004_60b8:
    jr jr_004_60d2

jr_004_60ba:
    jr jr_004_60b4

    ldh a, [rP1]
    nop
    nop
    nop
    ret nz

    ldh a, [$fc]
    rst $38
    nop
    nop
    nop
    ld a, h
    jr c, jr_004_6091

    ld b, h
    cp d
    sbc d
    and d
    and d
    cp d
    sbc d

jr_004_60d2:
    add $44
    ld a, h
    jr c, jr_004_60d7

jr_004_60d7:
    nop
    ret nz

    ret nz

    ld e, a
    ld c, [hl]
    dec de
    dec de
    rra
    rra
    inc bc
    inc bc
    ld e, $1e

jr_004_60e4:
    nop
    nop

jr_004_60e6:
    nop
    nop
    nop
    nop
    ld a, h
    ld a, b
    ld h, b
    ld h, b
    ld a, h
    ld a, h
    inc c
    inc c
    ld a, l
    add hl, sp
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    jr c, jr_004_615d

    ld h, b
    ld a, h
    ld a, h
    ld l, h
    ld l, h
    ld a, l
    add hl, sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, h
    jr c, jr_004_6179

    ld l, h
    jr c, jr_004_6148

    ld l, h
    ld l, h
    ld a, h
    jr c, jr_004_6115

jr_004_6115:
    nop
    nop
    nop
    nop
    nop
    call $eccd
    db $ec
    db $dd
    db $dd
    db $dd
    db $dd
    call Call_000_00cd
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    dec a
    dec a
    or [hl]
    or [hl]
    or [hl]
    or [hl]
    or [hl]
    or [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    xor $ee
    jp c, $dcda

    call c, $cece
    nop
    nop
    nop
    nop

jr_004_6148:
    nop
    nop
    nop
    nop
    pop af
    pop af
    db $db
    db $db
    db $db
    db $db
    reti


    reti


    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    rst $20

jr_004_615d:
    rst $20
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    rst $20
    rst $20
    nop
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
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_6179:
    nop
    ld a, b
    ld a, b
    db $e3
    jp $c3e3


    db $e3
    jp Jump_004_7b7b


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    call c, $bddc
    dec [hl]
    add hl, sp
    add hl, sp
    inc e
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rst $30
    rst $30
    or e
    or e
    di
    or e
    ei
    ei
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or [hl]
    or [hl]
    ld [hl], $36
    ld a, $36
    ld e, $1e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $30
    rst $30
    rst $28
    call $cece
    rst $00
    rst $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    inc a
    ld a, b
    ld [hl], b
    inc a
    inc e
    ld a, b
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    rrca
    ld c, $6d
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    jr c, jr_004_624f

    ld h, b
    ld h, e
    ld h, e
    ld a, e
    dec sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, e
    ld a, c
    jp $dbc3


    db $db
    db $db
    db $db
    ld a, e
    ld a, e
    nop
    nop
    nop
    nop
    nop
    nop
    add sp, -$38
    ld l, h
    ld l, h
    rst $28
    xor $6d
    ld l, l
    ld l, h
    ld l, h
    nop
    nop
    nop
    nop
    nop
    nop
    cpl
    cpl
    ld l, h
    ld l, h
    rst $28
    rst $28
    ld l, h
    ld l, h
    ld l, a
    ld l, a
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $1e
    jr jr_004_6246

    ld e, $1e
    jr jr_004_624a

    jr @+$1a

    nop
    nop
    nop
    nop
    nop
    nop
    ei
    di
    db $db
    db $db
    ei
    di
    db $db
    db $db
    db $db
    db $db
    nop
    nop

jr_004_6246:
    nop
    nop
    nop
    nop

jr_004_624a:
    rst $18
    adc $1b
    dec de
    rst $18

jr_004_624f:
    rst $18
    dec de
    dec de
    db $db
    db $db
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, h
    ld l, h
    ld a, b
    ld a, b
    ld a, b
    ld [hl], b
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    rrca
    ld c, $6d
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    jr c, jr_004_62df

    ld h, b
    ld h, e
    ld h, e
    ld a, e
    dec sp
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, @+$3a

    ld l, h
    ld l, h
    add $c6
    add $c6
    cp $fe
    add $c6
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    add $c6
    db $fc
    db $fc
    add $c6
    add $c6
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    ld a, h
    ld a, h
    and $e6
    ret nz

    ret nz

    ret nz

    ret nz

    and $e6
    ld a, h
    ld a, h
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    call z, $c6cc
    add $c6
    add $cc
    call z, $f8f8
    nop
    nop
    nop
    nop
    cp $fe
    ret nz

    ret nz

    db $fc
    db $fc
    ret nz

    ret nz

    ret nz

    ret nz

    cp $fe
    nop
    nop
    nop
    nop
    cp $fe
    ret nz

    ret nz

    ret nz

jr_004_62df:
    ret nz

    db $fc
    db $fc
    ret nz

    ret nz

    ret nz

    ret nz

    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ldh [$e0], a
    adc $ce
    add $c6
    and $e6
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    add $c6
    add $c6
    cp $fe
    add $c6
    add $c6
    add $c6
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    jr @+$1a

    jr jr_004_6328

    jr jr_004_632a

    jr jr_004_632c

    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    add $c6
    add $c6
    xor $ee
    ld a, h
    ld a, h
    jr c, jr_004_635c

    db $10
    stop
    nop

jr_004_6328:
    nop
    nop

jr_004_632a:
    ld a, h
    ld a, h

jr_004_632c:
    ldh [$e0], a
    ld a, h
    ld a, h
    ld c, $0e
    adc $ce
    ld a, h
    ld a, h
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    add d
    add d
    add $c6
    xor $ee
    cp $fe
    sub $d6
    add $c6
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_635c:
    db $10
    stop
    nop
    nop
    nop
    db $10
    stop
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
    add h
    add h
    add h
    add h
    add h
    add h
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    nop
    nop
    ldh a, [$f0]
    ld [$0808], sp
    ld [$7070], sp
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld b, $06
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    jr nz, jr_004_63be

    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [de], a
    ld [de], a
    inc h
    inc h
    ld [hl], $36
    ld [hl], $36
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    inc h
    inc h

jr_004_63be:
    ld c, b
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_004_63e8

    jr jr_004_63ea

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub d
    sub d
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_63e8:
    nop
    nop

jr_004_63ea:
    nop
    nop
    jr nz, jr_004_640e

    ld hl, sp-$08
    inc h
    inc h
    ld a, b
    ld a, b
    xor h
    xor h
    ld [hl], h
    ld [hl], h
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld hl, sp-$08
    db $10
    db $10
    ld h, h
    ld h, h
    sbc b
    sbc b
    nop
    nop
    nop
    nop
    jr nz, jr_004_642e

jr_004_640e:
    db $f4
    db $f4
    inc h
    inc h
    ld [hl], b
    ld [hl], b
    xor b
    xor b
    ld c, b
    ld c, b
    nop
    nop
    jr jr_004_6434

    dec l
    dec l
    ld a, [hl]
    ld a, [hl]
    ld b, d
    ld b, d
    dec h
    dec h
    ld a, [de]
    ld a, [de]
    inc d
    inc d
    nop
    nop
    nop
    nop
    rst $38
    rst $38

jr_004_642e:
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38

jr_004_6434:
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_004_6454

    xor h
    xor h
    ld a, [hl]
    ld a, [hl]
    ld b, d
    ld b, d
    and h
    and h
    ld e, b
    ld e, b
    jr z, jr_004_6470

    jr z, jr_004_6472

    jr z, jr_004_6474

    jr z, jr_004_6476

    jr z, jr_004_6478

    jr z, jr_004_647a

    jr z, jr_004_647c

jr_004_6454:
    jr z, jr_004_647e

    jr z, jr_004_6480

    inc d
    inc d
    ld a, [de]
    ld a, [de]
    dec l
    dec l
    ld a, [hl]
    ld a, [hl]
    ld b, d
    ld b, d
    dec h
    dec h
    jr jr_004_647e

    nop
    nop
    jr z, jr_004_6492

    ld e, b
    ld e, b
    xor h
    xor h
    ld a, [hl]
    ld a, [hl]

jr_004_6470:
    ld b, d
    ld b, d

jr_004_6472:
    and h
    and h

jr_004_6474:
    jr jr_004_648e

jr_004_6476:
    nop
    nop

jr_004_6478:
    nop
    nop

jr_004_647a:
    nop
    nop

jr_004_647c:
    nop
    nop

jr_004_647e:
    nop
    nop

jr_004_6480:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_004_64ba

    ld h, b
    ld h, b
    add b
    add b

jr_004_648e:
    nop
    nop
    nop
    nop

jr_004_6492:
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_004_64ca

    ld h, [hl]
    ld h, [hl]
    adc h
    adc h
    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, h
    ld a, h
    call z, $cccc
    call z, Call_004_7c7c
    inc c
    inc c
    ld hl, sp-$08
    nop
    rst $38

jr_004_64ba:
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rP1]
    rst $38

jr_004_64ca:
    nop
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    ld [$080f], sp
    rrca
    ld [$080f], sp
    rrca
    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$08]
    rrca
    ld [$080f], sp
    rrca
    ld [$080f], sp
    rrca
    ld [$080f], sp
    rrca
    ld [$100f], sp
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$1f]
    rst $38
    rra
    rst $38
    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rP1]
    nop
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld b, d
    jp $c3c3


    jp Jump_004_427e


    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld [$080f], sp
    rrca
    ld [$f80f], sp
    rst $38
    ld hl, sp-$01
    ld [$080f], sp
    rrca
    ld [$000f], sp
    nop
    nop
    nop
    nop
    nop
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
    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$1f]
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
    nop
    inc a
    inc a
    inc a
    inc a
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
    ld [$080f], sp
    rrca
    ld [$f80f], sp
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
    nop
    nop
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
    jr jr_004_65a2

    ld a, [hl]
    ld a, [hl]
    ld h, [hl]
    ld b, d
    ld h, [hl]
    ld b, d
    ld h, [hl]
    ld b, d
    ld h, [hl]
    ld b, d
    ld a, [hl]
    ld a, [hl]
    jr jr_004_65b0

    jr jr_004_65b2

    jr jr_004_65b4

    jr jr_004_65b6

    jr jr_004_65b8

    jr jr_004_65ba

jr_004_65a2:
    jr jr_004_65bc

    jr jr_004_65be

    jr jr_004_65c0

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_65b0:
    nop
    nop

jr_004_65b2:
    nop
    nop

jr_004_65b4:
    nop
    nop

jr_004_65b6:
    nop
    nop

jr_004_65b8:
    inc l
    rst $20

jr_004_65ba:
    inc l
    rst $20

jr_004_65bc:
    inc l
    rst $20

jr_004_65be:
    inc l
    rst $20

jr_004_65c0:
    inc l
    rst $20
    inc l
    rst $20
    inc l
    rst $20
    inc l
    rst $20
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
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc a
    rst $38
    ld a, [hl]
    jp $81c3


    jp $c381


    add c
    jp Jump_004_7e81


    jp $ff3c


    inc a
    nop
    adc c
    nop
    ld h, b
    nop
    rst $30
    nop
    rst $20
    nop
    rst $20
    nop
    sbc e
    nop
    call c, $ff00
    rst $38
    add c
    add c
    cp l
    add c
    and l
    add c
    and l
    add c
    cp l
    add c
    add c
    add c
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
    nop
    rst $38
    nop
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
    inc a
    add b
    add hl, bc
    ret nz

    nop
    ldh [rTAC], a
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    ld bc, $00fe
    rst $38
    inc a
    ld bc, $0388
    ld h, b
    rlca
    ldh a, [rIF]

jr_004_6640:
    ldh [$1f], a
    ret nz

    ccf
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld b, b
    ccf
    ldh [$1f], a
    ldh [rIF], a
    ldh [rTAC], a
    sbc b
    inc bc
    call c, Call_000_0001
    rst $38
    ld bc, $00fe
    db $fc
    rlca
    ld hl, sp+$07
    ldh a, [rTAC]
    ldh [rNR31], a
    ret nz

    ld e, h
    add b
    nop
    nop

jr_004_666a:
    nop
    nop
    jr jr_004_6686

    inc h
    inc h
    inc h
    inc h
    jr jr_004_668c

    nop
    nop
    nop
    nop
    inc a
    nop
    adc c
    nop
    ld h, b
    nop
    rst $38
    jr @+$01

    jr jr_004_666a

jr_004_6683:
    nop
    sbc e
    nop

jr_004_6686:
    call c, Call_000_3c00
    nop
    adc c
    nop

jr_004_668c:
    ld h, b
    nop
    rst $30
    ld h, [hl]
    rst $20
    ld h, [hl]
    rst $20
    nop
    sbc e
    nop

jr_004_6696:
    call c, Call_000_3c00
    nop
    sbc c
    jr jr_004_6715

    jr jr_004_6696

    nop
    rst $20
    nop
    rst $38
    jr jr_004_6640

    jr jr_004_6683

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0203
    nop
    nop
    nop
    nop
    inc bc
    rlca
    jr @+$41

    ld b, b
    db $fc
    nop
    ldh [rP1], a
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    ret nz

    ld [hl], b
    or b
    jr c, @+$4a

    jr jr_004_6748

    inc l
    ld d, h
    inc d
    ld a, [hl+]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    inc bc

jr_004_6715:
    inc bc
    nop
    nop
    nop
    nop
    nop
    rlca
    inc b
    jr c, jr_004_6742

    rst $00
    ld a, a
    ccf
    db $fd
    cp $57
    ldh a, [$f7]
    ret nc

    ld a, [bc]
    ld [hl], $16
    ld [$760a], a
    di
    rst $38
    rst $38
    rst $38
    adc c
    cp e
    and l
    add c
    pop hl
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_6742:
    add b
    add b
    nop
    nop
    nop
    nop

jr_004_6748:
    inc e
    inc e
    ld a, [hl+]
    ld [hl-], a
    ld c, l
    ld [hl], e
    ld b, c
    ld a, a
    ld hl, $225d
    ld [hl+], a
    inc c
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    ld a, e
    ld b, h
    ld a, a
    ld b, b
    dec l
    inc sp
    dec de
    inc e
    ccf
    daa
    ld [hl], e
    ld b, a
    and e
    ld [c], a
    ld de, $ca33
    ld a, [bc]
    call z, $900c
    db $10
    ldh [rSVBK], a
    ld c, b
    ret z

    add $46
    rst $20
    inc l
    db $fd
    ld a, [c]
    nop
    nop
    nop
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
    ret nz

    ld b, b
    jr nz, jr_004_67ca

    ld c, b
    ld c, h
    db $d3
    sub e
    db $fd
    push de
    ld [$70b5], a
    ld a, a
    rrca
    rrca
    ld bc, $0001
    ld [bc], a
    inc b
    inc b
    add [hl]
    add [hl]
    ld [hl], e
    ld sp, hl
    or e
    ldh [$bf], a
    pop hl
    ld a, a
    db $e3
    ret c

    call c, $1d0d
    ld e, $13
    rra
    inc bc
    ld a, [bc]
    scf
    or l
    xor e
    db $eb
    push af
    add c
    rst $38
    ld b, c
    ld a, a
    ld a, [hl]
    pop hl

jr_004_67ca:
    cp a
    pop hl
    ld [hl], a
    ld sp, hl
    cp d
    push af
    ld [hl], l
    ld a, [$fff8]
    ld hl, sp-$01
    ld hl, sp-$01
    ret nz

    ld b, b
    jr nz, jr_004_67fc

    jr nz, jr_004_67fe

    db $10
    sub b
    sub b
    sub b
    and b
    and b
    sub b
    ldh a, [$d0]
    sub b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_67fc:
    nop
    nop

jr_004_67fe:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, c
    ld e, a
    ld b, c
    ld b, c
    ld a, $3f
    db $10
    rra
    db $10
    rra
    db $10
    rra
    nop
    rra
    jr nz, jr_004_6857

    ld sp, hl
    ld sp, hl
    sbc [hl]
    sbc [hl]
    inc [hl]
    db $fc
    ld [hl+], a
    cp $22
    cp $02
    cp $c2
    cp $40
    rst $38
    ret nz

    adc b
    add sp, -$78
    ld a, h
    ld e, h
    ld h, $7e
    ld a, [hl-]
    ld a, $21
    ccf
    ld b, c
    ld e, a
    ld d, d
    ld e, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_6857:
    nop
    ld hl, $213f
    ccf
    dec d
    ld l, e
    ld c, d
    db $76
    ld d, [hl]
    ld l, d
    adc b
    db $f4
    xor h
    call nc, $fc84
    ld hl, $213f
    ccf
    dec hl
    dec [hl]
    dec h
    dec sp
    ld [bc], a
    dec a
    dec d
    ld a, [de]
    db $10
    rra
    db $10
    rra
    ld [hl-], a
    ld [hl-], a
    inc c
    inc c
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0101
    nop
    nop
    ld c, b
    ld a, b
    call nz, $c484
    add h
    call c, $64fc
    db $fc
    inc c
    sbc h
    ld hl, sp+$08
    ldh a, [$f0]
    dec de
    rra
    add hl, sp
    ld hl, $2139
    dec de
    rra
    dec d
    rra
    ld [de], a
    rra
    dec c
    ld c, $03
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    jr nz, jr_004_68f4

    ldh [rNR41], a
    ret nz

    ret nz

    ld a, [$d361]
    ld b, a
    ld a, [$d368]
    call Call_004_68ea
    ret z

    ld a, [$d362]
    ld b, a
    ld a, [$d369]

Call_004_68ea:
    add a
    cp b
    ret z

    inc b
    ret


    call Call_000_3e94
    ld a, $01

jr_004_68f4:
    jr jr_004_68fb

    call Call_000_3e94
    ld a, $02

jr_004_68fb:
    ld [$cf94], a
    push hl
    ld a, [$cf99]
    ld b, a
    ld a, [$cf9a]
    ld c, a
    or b
    jr nz, jr_004_6913

    xor a
    ld c, a
    ld e, a
    ld a, $06
    ld d, a
    jp Jump_004_6924


jr_004_6913:
    ld a, [$cfba]
    ld d, a
    ld a, [$cfbb]
    ld e, a
    ld a, $26
    call Call_000_3e6d
    ld a, $06
    ld d, a
    ld c, a

Jump_004_6924:
    pop hl
    push de
    push hl
    push hl
    call Call_000_1336
    pop hl
    ldh a, [$f6]
    bit 0, a
    jr z, jr_004_6937

    ld bc, $0009
    jr jr_004_693a

jr_004_6937:
    ld bc, $0015

jr_004_693a:
    add hl, bc
    ld de, $cf99
    ld bc, $0203
    call Call_000_3c5f
    ld a, $f3
    ld [hl+], a
    ld de, $cfba
    ld bc, $0203
    call Call_000_3c5f
    pop hl
    pop de
    ret


    call Call_000_1372
    ld a, [$cc49]
    cp $02
    jr c, jr_004_6971

    ld a, [$cf9b]
    ld [$cfb9], a
    ld [$d127], a
    ld hl, $cfa8
    ld de, $cfba
    ld b, $01
    call Call_000_3936

jr_004_6971:
    ld hl, $d72c
    set 1, [hl]
    ld a, $33
    ldh [rNR50], a
    call Call_000_3dd4
    call Call_000_190f
    call Call_000_2429
    call Call_000_36c0
    ld de, $6080
    ld hl, $96d0
    ld bc, $0403
    call Call_000_1886
    ld de, $6098
    ld hl, $9780
    ld bc, $0401
    call Call_000_1886
    ld de, $60b0
    ld hl, $9760
    ld bc, $0402
    call Call_000_1886
    ld de, $6adc
    ld hl, $9720
    ld bc, $0401
    call Call_000_1886
    ldh a, [$d7]
    push af
    xor a
    ldh [$d7], a
    ld hl, $c3c7
    ld bc, $060a
    call Call_004_6ac7
    ld de, $fffa
    add hl, de
    ld [hl], $f2
    dec hl
    ld [hl], $74
    ld hl, $c467
    ld bc, $0806
    call Call_004_6ac7
    ld hl, $c45e
    ld de, $6aa5
    call Call_000_1955
    ld hl, $c3e7
    ld a, $5f
    call Call_000_3e6d
    ld hl, $cf25
    call Call_000_3df9
    ld b, $03
    call Call_000_3def
    ld hl, $c428
    ld de, $cf9c
    call Call_000_14e1
    jr nz, jr_004_6a07

    ld hl, $c428
    ld de, $6ac4
    call Call_000_1955

jr_004_6a07:
    ld hl, $c421
    ld de, $6abc
    call Call_000_1955
    ld hl, $c3d6
    call Call_000_150b
    ld a, [$d0b8]
    ld [$d11e], a
    ld [$d0b5], a
    ld a, $3a
    call Call_000_3e6d
    ld hl, $c42f
    ld de, $d11e
    ld bc, $8103
    call Call_000_3c5f
    ld hl, $c473
    ld a, $4b
    call Call_000_3e6d
    ld hl, $6a9d
    call Call_004_6a7e
    ld d, h
    ld e, l
    ld hl, $c3bd
    call Call_000_1955
    ld hl, $6a95
    call Call_004_6a7e
    ld d, h
    ld e, l
    ld hl, $c4ec
    call Call_000_1955
    ld hl, $c4c4
    ld de, $cfa4
    ld bc, $8205
    call Call_000_3c5f
    ld d, $00
    call Call_004_6ae4
    call Call_000_3dd7
    call Call_000_3ddc
    ld hl, $c3a1
    call Call_000_1384
    ld a, [$cf91]
    call Call_000_13d0
    call Call_000_3865
    pop af
    ldh [$d7], a
    ret


Call_004_6a7e:
    ld a, [$cc49]
    add a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$cc49]
    cp $03
    ret z

    ld a, [$cf92]
    jp Jump_000_3a7d


    ld [hl], e
    jp nc, $d9ac

    ld a, [hl+]
    db $dd
    ld d, h
    jp c, $d2b5

    xor $d9
    ld b, $de
    ld c, c
    jp c, $9893

    adc a
    add h
    rst $30
    di
    ld c, [hl]
    sub e
    sbc b
    adc a
    add h
    ld hl, sp-$0d
    ld c, [hl]
    ld [hl], e
    ld [hl], h
    di
    ld c, [hl]
    adc [hl]
    sub e
    di
    ld c, [hl]
    ld d, b
    sub d
    sub e
    add b
    sub e
    sub h
    sub d
    di
    ld d, b
    adc [hl]
    adc d
    ld d, b

Call_004_6ac7:
    ld de, $0014

jr_004_6aca:
    ld [hl], $78
    add hl, de
    dec b
    jr nz, jr_004_6aca

    ld [hl], $77
    dec hl

jr_004_6ad3:
    ld [hl], $76
    dec hl
    dec c
    jr nz, jr_004_6ad3

    ld [hl], $6f
    ret


    nop
    db $fc
    add $c6
    add $fc
    ret nz

    ret nz

Call_004_6ae4:
    ld a, d
    and a
    jr nz, jr_004_6afa

    ld hl, $c440
    ld b, $08
    ld c, $08
    call Call_000_1922
    ld hl, $c455
    ld bc, $0019
    jr jr_004_6b0a

jr_004_6afa:
    ld hl, $c3d1
    ld b, $08
    ld c, $09
    call Call_000_1922
    ld hl, $c3e7
    ld bc, $0018

jr_004_6b0a:
    push bc
    push hl
    ld de, $6b3a
    call Call_000_1955
    pop hl
    pop bc
    add hl, bc
    ld de, $cfbc
    ld bc, $0203
    call Call_004_6b30
    ld de, $cfbe
    call Call_004_6b30
    ld de, $cfc0
    call Call_004_6b30
    ld de, $cfc2
    jp Jump_000_3c5f


Call_004_6b30:
    push hl
    call Call_000_3c5f
    pop hl
    ld de, $0028
    add hl, de
    ret


    add b
    sub e
    sub e
    add b
    add d
    adc d
    ld c, [hl]
    add e
    add h
    add l
    add h
    adc l
    sub d
    add h
    ld c, [hl]
    sub d
    adc a
    add h
    add h
    add e
    ld c, [hl]
    sub d
    adc a
    add h
    add d
    adc b
    add b
    adc e
    ld d, b
    ldh a, [$d7]
    push af
    xor a
    ldh [$d7], a
    ldh [$ba], a
    ld bc, $0005
    ld hl, $d0dc
    call Call_000_36e0
    ld hl, $cfa0
    ld de, $d0dc
    ld bc, $0004
    call Call_000_00b5
    ld hl, $5b87
    ld b, $0e
    call Call_000_35d6
    ld hl, $c3d1
    ld bc, $050a
    call Call_000_18c4
    ld hl, $c3ef
    ld [hl], $78
    ld hl, $c440
    ld b, $08
    ld c, $12
    call Call_000_1922
    ld hl, $c456
    ld de, $d0e1
    call Call_000_1955
    ld a, [$cd6c]
    inc a
    ld c, a
    ld a, $04
    sub c
    ld b, a
    ld hl, $c473
    ld de, $0028
    ld a, $72
    call Call_004_6ccb
    ld a, b
    and a
    jr z, jr_004_6bbb

    ld c, a
    ld a, $e3
    call Call_004_6ccb

jr_004_6bbb:
    ld hl, $cfa0
    ld de, $c476
    ld b, $00

jr_004_6bc3:
    ld a, [hl+]
    and a
    jr z, jr_004_6c11

    push bc
    push hl
    push de
    ld hl, $cc26
    ld a, [hl]
    push af
    ld a, b
    ld [hl], a
    push hl
    ld hl, $6677
    ld b, $03
    call Call_000_35d6
    pop hl
    pop af
    ld [hl], a
    pop de
    pop hl
    push hl
    ld bc, $0014
    add hl, bc
    ld a, [hl]
    and $3f
    ld [$cd71], a
    ld h, d
    ld l, e
    push hl
    ld de, $cd71
    ld bc, $0102
    call Call_000_3c5f
    ld a, $f3
    ld [hl+], a
    ld de, $d11e
    ld bc, $0102
    call Call_000_3c5f
    pop hl
    ld de, $0028
    add hl, de
    ld d, h
    ld e, l
    pop hl
    pop bc
    inc b
    ld a, b
    cp $04
    jr nz, jr_004_6bc3

jr_004_6c11:
    ld hl, $c3e5
    ld de, $6caf
    call Call_000_1955
    ld a, [$cfb9]
    push af
    cp $64
    jr z, jr_004_6c26

    inc a
    ld [$cfb9], a

jr_004_6c26:
    ld hl, $c426
    ld [hl], $70
    inc hl
    inc hl
    call Call_000_150b
    pop af
    ld [$cfb9], a
    ld de, $cfa6
    ld hl, $c3fc
    ld bc, $0307
    call Call_000_3c5f
    call Call_004_6c86
    ld de, $cfa6
    ld hl, $c41f
    ld bc, $0307
    call Call_000_3c5f
    ld hl, $c3a9
    call Call_004_6cc3
    ld hl, $c3bd
    call Call_004_6cc3
    ld a, [$d0b8]
    ld [$d11e], a
    call Call_000_2f9e
    ld hl, $c3bd
    call Call_000_1955
    ld a, $01
    ldh [$ba], a
    call Call_000_3dd7
    call Call_000_3865
    pop af
    ldh [$d7], a
    ld hl, $d72c
    res 1, [hl]
    ld a, $77
    ldh [rNR50], a
    call Call_000_3de5
    jp Jump_000_190f


Call_004_6c86:
    ld a, [$cfb9]
    cp $64
    jr z, jr_004_6ca7

    inc a
    ld d, a
    ld hl, $4f6a
    ld b, $16
    call Call_000_35d6
    ld hl, $cfa8
    ldh a, [$98]
    sub [hl]
    ld [hl-], a
    ldh a, [$97]
    sbc [hl]
    ld [hl-], a
    ldh a, [$96]
    sbc [hl]
    ld [hl-], a
    ret


jr_004_6ca7:
    ld hl, $cfa6
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ret


    add h
    sub a
    adc a
    ld a, a
    adc a
    adc [hl]
    adc b
    adc l
    sub e
    sub d
    ld c, [hl]
    adc e
    add h
    sub l
    add h
    adc e
    ld a, a
    sub h
    adc a
    ld d, b

Call_004_6cc3:
    ld bc, $000a
    ld a, $7f
    jp Jump_000_36e0


Call_004_6ccb:
jr_004_6ccb:
    ld [hl+], a
    ld [hl-], a
    add hl, de
    dec c
    jr nz, jr_004_6ccb

    ret


    xor a
    ldh [$ba], a
    call Call_000_190f
    call Call_000_2429
    ld b, $1c
    ld hl, $5791
    call Call_000_35d6

Jump_004_6ce3:
    ld a, [$d07d]
    cp $04
    jp z, Jump_004_6e1a

    call Call_004_72ed
    ld b, $1c
    ld hl, $5fb6
    call Call_000_35d6
    ld hl, $c3a3
    ld de, $d164
    xor a
    ld c, a
    ldh [$8c], a
    ld [$cf2d], a

Jump_004_6d03:
    ld a, [de]
    cp $ff
    jp z, Jump_004_6e15

    push bc
    push de
    push hl
    ld a, c
    push hl
    ld hl, $d2b5
    call Call_000_15ba
    pop hl
    call Call_000_1955
    ld b, $1c
    ld hl, $5868
    call Call_000_35d6
    ldh a, [$8c]
    ld [$cf92], a
    inc a
    ldh [$8c], a
    call Call_000_1372
    pop hl
    push hl
    ld a, [$cc35]
    and a
    jr z, jr_004_6d43

    dec a
    ld b, a
    ld a, [$cf92]
    cp b
    jr nz, jr_004_6d43

    dec hl
    dec hl
    dec hl
    ld a, $ec
    ld [hl+], a
    inc hl
    inc hl

jr_004_6d43:
    ld a, [$d07d]
    cp $03
    jr z, jr_004_6d76

    cp $05
    jr z, jr_004_6db1

    push hl
    ld bc, $000e
    add hl, bc
    ld de, $cf9c
    call Call_000_14e1
    pop hl
    push hl
    ld bc, $0015
    ldh a, [$f6]
    set 0, a
    ldh [$f6], a
    add hl, bc
    ld a, $60
    call Call_000_3e6d
    ldh a, [$f6]
    res 0, a
    ldh [$f6], a
    call Call_004_6ec7
    pop hl
    jr jr_004_6d90

jr_004_6d76:
    push hl
    ld a, $43
    call Call_000_3e6d
    pop hl
    ld de, $6da3
    ld a, c
    and a
    jr nz, jr_004_6d87

    ld de, $6da8

jr_004_6d87:
    ld bc, $001d
    push hl
    add hl, bc
    call Call_000_1955
    pop hl

jr_004_6d90:
    ld bc, $000a
    add hl, bc
    call Call_000_150b
    pop hl
    pop de
    inc de
    ld bc, $0028
    add hl, bc
    pop bc
    inc c
    jp Jump_004_6d03


    add b
    add c
    adc e
    add h
    ld d, b
    adc l
    adc [hl]
    sub e
    ld a, a
    add b
    add c
    adc e
    add h
    ld d, b

jr_004_6db1:
    push hl
    ld hl, $705c
    ld b, $00
    ld a, [$cf98]
    dec a
    add a
    rl b
    ld c, a
    add hl, bc
    ld de, $cd6d
    ld a, $0e
    ld bc, $0002
    call Call_000_009d
    ld hl, $cd6d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $cd6d
    ld a, $0e
    ld bc, $000d
    call Call_000_009d
    ld hl, $cd6d
    ld de, $6e0c

jr_004_6de2:
    ld a, [hl+]
    and a
    jr z, jr_004_6dfb

    inc hl
    inc hl
    cp $02
    jr nz, jr_004_6de2

    dec hl
    dec hl
    ld b, [hl]
    ld a, [$d156]
    inc hl
    inc hl
    inc hl
    cp b
    jr nz, jr_004_6de2

    ld de, $6e07

jr_004_6dfb:
    ld bc, $001d
    pop hl
    push hl
    add hl, bc
    call Call_000_1955
    pop hl
    jr jr_004_6d90

    add b
    add c
    adc e
    add h
    ld d, b
    adc l
    adc [hl]
    sub e
    ld a, a
    add b
    add c
    adc e
    add h
    ld d, b

Jump_004_6e15:
    ld b, $0a
    call Call_000_3def

Jump_004_6e1a:
    ld hl, $d730
    ld a, [hl]
    push af
    push hl
    set 6, [hl]
    ld a, [$d07d]
    cp $f0
    jr nc, jr_004_6e44

    add a
    ld hl, $6e73
    ld b, $00
    ld c, a
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_3c49

jr_004_6e37:
    pop hl
    pop af
    ld [hl], a
    ld a, $01
    ldh [$ba], a
    call Call_000_3dd7
    jp Jump_000_3ddc


jr_004_6e44:
    and $0f
    ld hl, $6e61
    add a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, [$cf06]
    ld hl, $d2b5
    call Call_000_15ba
    pop hl
    call Call_000_3c49
    jr jr_004_6e37

    sbc l
    ld l, [hl]
    and a
    ld l, [hl]
    xor h
    ld l, [hl]
    or c
    ld l, [hl]
    and d
    ld l, [hl]
    sbc b
    ld l, [hl]
    or [hl]
    ld l, [hl]
    cp e
    ld l, [hl]
    ret nz

    ld l, [hl]
    ld a, a
    ld l, [hl]
    add h
    ld l, [hl]
    adc c
    ld l, [hl]
    adc [hl]
    ld l, [hl]
    sub e
    ld l, [hl]
    add h
    ld l, [hl]
    rla
    ret z

    ld e, l
    ld [hl+], a
    ld d, b
    rla
    ret c

    ld e, l
    ld [hl+], a
    ld d, b
    rla
    pop af
    ld e, l
    ld [hl+], a
    ld d, b
    rla
    ld [$225e], sp
    ld d, b
    rla
    rra
    ld e, [hl]
    ld [hl+], a
    ld d, b

Call_004_6e98:
    rla
    ld sp, $225e
    ld d, b
    rla
    ld c, e
    ld e, [hl]
    ld [hl+], a
    ld d, b
    rla
    ld h, l
    ld e, [hl]
    ld [hl+], a
    ld d, b
    rla
    ld a, l
    ld e, [hl]
    ld [hl+], a
    ld d, b
    rla
    sub h
    ld e, [hl]
    ld [hl+], a
    ld d, b
    rla
    xor b
    ld e, [hl]
    ld [hl+], a
    ld d, b
    rla
    or [hl]
    ld e, [hl]
    ld [hl+], a
    ld d, b
    rla
    call Call_000_225e
    ld d, b
    rla
    ld [c], a
    ld e, [hl]
    ld [hl+], a
    dec bc
    ld b, $50

Call_004_6ec7:
    ld hl, $cf1f
    ld a, [$cf2d]
    ld c, a
    ld b, $00
    add hl, bc
    call Call_000_3df9
    ld b, $fc
    call Call_000_3def
    ld hl, $cf2d
    inc [hl]
    ret


    ld [hl], a
    cp a
    adc h
    rst $10
    db $d3
    jp nc, $777a

    ld c, [hl]
    and $94
    ld d, h
    pop bc
    db $e3
    inc d
    db $e3
    ld a, l
    dec h
    adc d
    cp d
    adc d
    and b
    ld d, a
    ld a, e
    ld a, [de]
    ld b, c
    ld d, l
    ld e, [hl]
    and l
    pop bc
    add hl, hl
    ld hl, $2745

jr_004_6f00:
    ret nc

    or a
    xor b
    adc d
    adc c
    adc c
    rst $18
    add hl, hl
    add hl, de
    ld l, $a8
    sub h
    add [hl]
    ld hl, $a855
    inc h
    rst $00
    add d
    ld hl, $4848
    adc b
    cp [hl]
    adc d
    pop bc
    ld b, l
    inc sp
    sub d
    sub l
    ld e, d
    and c
    xor b
    and l
    db $dd
    dec h
    ld [$8d51], sp
    ld d, d
    xor d
    push de
    ld c, b
    ld d, h
    sub l
    dec bc
    cp $04
    inc [hl]
    adc b
    inc d
    ld d, l
    ld l, d
    ld [$f7c7], sp
    ld a, [bc]
    ret z

    jp nc, $6f14

    ld [$7769], sp
    ld d, b
    ld c, [hl]
    ld l, $ec
    add h
    ld h, d
    rst $28
    ld e, h
    adc b
    dec a
    dec de
    and l
    rst $38
    ei
    dec de
    rlca
    and l
    ld d, [hl]
    sub h
    dec h
    jr nc, jr_004_6f00

    xor a
    ld [c], a
    xor a
    call z, Call_004_6e98
    inc sp
    xor b
    ld [$d5af], a
    ld l, l
    dec h
    adc a
    ld [hl-], a
    xor d
    xor d
    and e
    db $fc
    add hl, bc
    sbc a
    add $68
    ld l, c
    db $eb
    ld a, h
    add hl, bc
    ldh [$2a], a
    ld l, h
    sub b
    xor a
    rst $00
    ld [hl-], a
    ld d, d
    rst $38
    ld hl, sp-$1b
    rst $18
    adc h
    jr z, jr_004_6fda

    adc d
    sub d
    xor d
    adc d
    ld c, $4a
    ldh a, [$dc]
    jr c, jr_004_6fb2

    push de
    jr @+$65

    ld a, [hl+]
    rst $38
    rst $38
    cp $0c
    push bc
    ld h, e
    db $e4
    or e
    ld hl, sp+$7a
    ld a, [bc]
    ld sp, $ff7f
    rst $38
    ld d, h
    dec [hl]
    inc de
    ld a, [hl]
    adc d
    ld b, [hl]
    rra
    ld hl, sp+$49
    sbc h
    dec bc
    pop de
    ld sp, $ffbf
    ld [c], a

jr_004_6fad:
    sbc $ee
    ld sp, hl
    and e
    ei

jr_004_6fb2:
    xor d
    sbc e
    rst $10
    rst $38
    db $ec
    adc l
    ld a, [bc]
    add hl, sp
    ld sp, $ff18
    rst $38
    rst $38
    add sp, -$26
    sub l
    ld a, a
    cp $11
    ld [hl], a
    add $38
    push de
    ld d, l
    ld a, a
    ldh a, [$e3]
    sub a
    rlca
    ld d, h
    inc [hl]
    ld d, h
    ld c, l
    ld a, [bc]
    db $ec
    ld b, d
    sub c
    jr jr_004_6fad

    ld l, a

jr_004_6fda:
    add hl, de
    and l
    sbc $0c
    jp c, $5079

    and e
    dec b

jr_004_6fe3:
    inc b
    inc d
    ld a, a
    adc b
    nop
    ld [hl], a
    ccf
    sbc l
    inc d
    db $f4
    sub a
    ld a, [$df8c]
    ld c, a
    ld bc, $05fa
    inc b
    ld d, l
    ld a, a
    ld d, h
    and $5f
    db $fd
    ld b, l
    pop hl
    ld l, a
    push af
    ld [$a388], a
    sbc d
    and d
    xor d
    ld d, d
    ld l, e
    ld h, e
    dec [hl]
    push af
    ld c, [hl]
    ld a, [de]
    ld [hl-], a
    and e
    ld h, l
    ld e, a
    add sp, $68
    di
    dec d
    ld d, l
    ld a, [hl-]
    jr z, jr_004_6fe3

    jp nc, $c6d4

    xor a
    ld e, a
    ld c, [hl]
    dec hl
    push de
    ld e, a
    add c
    ld c, b
    db $ed
    push de
    ld c, h
    ld l, b
    add sp, -$56
    adc d
    or l
    ld a, [bc]
    ld sp, hl
    dec bc
    db $fd
    ld e, a
    ld c, a
    ld [de], a
    cp l
    ld d, e
    ld a, [de]
    add l
    ld d, h
    pop af
    ld l, d
    ld hl, sp-$2e
    adc a
    ldh a, [$da]
    ld a, a
    pop de
    ld [$3f77], sp
    cp b
    sub h
    di
    rla
    push af
    rlca
    ld [$7d05], a
    inc a
    ld a, [hl-]
    adc b
    xor l
    inc hl
    ld a, d
    adc a
    ld d, $8e
    dec d
    ld hl, sp-$0b
    dec d
    ld c, a
    ld c, $8c
    inc d
    add l
    ld c, b
    xor b
    ldh a, [$ef]
    ld d, a
    push hl
    ld b, d
    dec bc
    push af
    ld c, a
    ld a, [de]
    and d
    ld l, e
    ld [c], a
    ld l, b
    rst $38
    dec hl
    rst $20
    db $fd
    db $10
    add b
    ld h, $c2
    ldh a, [$da]
    add $08
    ld l, a
    ld a, $7f
    ld [hl], a
    dec h
    ldh a, [$da]
    add $09
    ld l, a
    ld a, [hl-]
    ld b, a
    xor a
    ld [hl-], a
    ld [hl], a
    ldh a, [$da]
    add $02
    ld l, a
    ld a, [hl]
    or b
    ld [hl-], a
    ld a, $02
    ld [hl], a
    ret


    ld a, $29
    call Call_000_3e6d
    call Call_000_3701
    call Call_000_3dd7
    call Call_000_20ba
    call Call_000_2429
    jp Jump_000_2adf


Jump_004_70a9:
    ld a, [$d163]
    and a
    jp z, Jump_000_2adf

    xor a
    ld [$cc35], a
    ld [$d07d], a
    ld [$cfcb], a
    call Call_000_13fc
    jr jr_004_70c9

Jump_004_70bf:
    xor a
    ld [$cc35], a
    ld [$d07d], a
    call Call_000_1411

Jump_004_70c9:
jr_004_70c9:
    jr nc, jr_004_70d7

Jump_004_70cb:
    call Call_000_3dd4
    call Call_000_3dbe
    call Call_000_20ba
    jp Jump_000_2adf


jr_004_70d7:
    call Call_000_3719
    ld a, $04
    ld [$d125], a
    call Call_000_30e8
    ld hl, $cd3d
    ld bc, $020c
    ld e, $05

jr_004_70ea:
    dec e
    jr z, jr_004_70f6

    ld a, [hl+]
    and a
    jr z, jr_004_70f6

    inc b
    dec c
    dec c
    jr jr_004_70ea

jr_004_70f6:
    ld hl, $cc24
    ld a, c
    ld [hl+], a
    ldh a, [$f7]
    ld [hl+], a
    xor a
    ld [hl+], a
    inc hl
    ld a, b
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    xor a
    ld [hl], a
    call Call_000_3abe
    push af
    call Call_000_3725
    pop af
    bit 1, a
    jp nz, Jump_004_70bf

    ld a, [$cc28]
    ld b, a
    ld a, [$cc26]
    cp b
    jp z, Jump_004_70cb

    dec b
    cp b
    jr z, jr_004_7133

    dec b
    cp b
    jp z, Jump_004_7149

    ld c, a
    ld b, $00
    ld hl, $cd3d
    add hl, bc
    jp Jump_004_7160


jr_004_7133:
    ld a, [$d163]
    cp $02
    jp c, Jump_004_70a9

    call Call_004_7653
    ld a, $04
    ld [$d07d], a
    call Call_000_1411
    jp Jump_004_70c9


Jump_004_7149:
    call Call_000_0082
    xor a
    ld [$cc49], a
    ld a, $36
    call Call_000_3e6d
    ld a, $37
    call Call_000_3e6d
    call Call_000_3071
    jp Jump_004_70a9


Jump_004_7160:
    push hl
    ld a, [$cf92]
    ld hl, $d2b5
    call Call_000_15ba
    pop hl
    ld a, [hl]
    dec a
    add a
    ld b, $00
    ld c, a
    ld hl, $717c
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d356]
    jp hl


    ret nz

    ld [hl], c
    adc [hl]
    ld [hl], c
    call nc, $d471
    ld [hl], c
    inc bc
    ld [hl], d
    inc de
    ld [hl], d
    dec l
    ld [hl], d
    ld b, l
    ld [hl], d
    adc d
    ld [hl], d
    bit 2, a
    jp z, Jump_004_72df

    call Call_000_08e1
    jr z, jr_004_71aa

    ld a, [$cf92]
    ld hl, $d2b5
    call Call_000_15ba
    ld hl, $7285
    call Call_000_3c49
    jp Jump_004_70bf


jr_004_71aa:
    call Call_000_30a9
    ld a, [$d732]
    bit 3, a
    jp nz, Jump_004_72d9

    call Call_000_3680
    ld hl, $d72e
    set 1, [hl]
    jp Jump_004_70a9


    bit 1, a
    jp z, Jump_004_72df

    ld a, $3c
    call Call_000_3e6d
    ld a, [$cd6a]
    and a
    jp z, Jump_004_70bf

    jp Jump_000_29e8


    bit 4, a
    jp z, Jump_004_72df

    ld b, $03
    ld hl, $4dc0
    call Call_000_35d6
    ld hl, $d728
    bit 1, [hl]
    res 1, [hl]
    jp z, Jump_004_70bf

    ld a, $07
    ld [$cf91], a
    ld [$d152], a
    call Call_000_30bc
    ld a, [$cd6a]
    and a
    jp z, Jump_004_70bf

    call Call_000_3dd4
    jp Jump_004_72d9


    bit 3, a
    jp z, Jump_004_72df

    ld a, $5b
    call Call_000_3e6d
    call Call_000_3dd4
    jp Jump_004_72d9


    bit 0, a
    jp z, Jump_004_72df

    xor a
    ld [$d35d], a
    ld hl, $7228
    call Call_000_3c49
    call Call_000_3dd4
    jp Jump_004_72d9


    rla
    xor c
    ld b, b
    add hl, hl
    ld d, b
    ld a, $1d
    ld [$cf91], a
    ld [$d152], a
    call Call_000_30bc
    ld a, [$cd6a]
    and a
    jp z, Jump_004_70bf

    call Call_000_3dd4
    jp Jump_004_72d9


    call Call_000_08e1
    jr z, jr_004_725c

    ld a, [$cf92]
    ld hl, $d2b5
    call Call_000_15ba
    ld hl, $7280
    call Call_000_3c49
    jp Jump_004_70bf


jr_004_725c:
    ld hl, $727b
    call Call_000_3c49
    ld hl, $d732
    set 3, [hl]
    set 6, [hl]
    ld hl, $d72e
    set 1, [hl]
    res 4, [hl]
    ld c, $3c
    call Call_000_3739
    call Call_000_3dd4
    jp Jump_004_72d9


    rla
    call z, $2940
    ld d, b
    rla
    db $eb
    ld b, b
    add hl, hl
    ld d, b
    rla
    rlca
    ld b, c
    add hl, hl
    ld d, b
    ld hl, $d18d
    ld a, [$cf92]
    ld bc, $002c
    call Call_000_3a87
    ld a, [hl+]
    ldh [$95], a
    ld a, [hl]
    ldh [$96], a
    ld a, $05
    ldh [$99], a
    ld b, $02
    call Call_000_38b9
    ld bc, $ffdf
    add hl, bc
    ld a, [hl-]
    ld b, a
    ldh a, [$98]
    sub b
    ld b, [hl]
    ldh a, [$97]
    sbc b
    jp nc, Jump_004_72cb

    ld a, [$cc2b]
    push af
    ld a, $14
    ld [$cf91], a
    ld [$d152], a
    call Call_000_30bc
    pop af
    ld [$cc2b], a
    jp Jump_004_70bf


Jump_004_72cb:
    ld hl, $72d4
    call Call_000_3c49
    jp Jump_004_70bf


    rla
    dec de
    ld b, c
    add hl, hl
    ld d, b

Jump_004_72d9:
    call Call_000_3dbe
    jp Jump_000_29e8


Jump_004_72df:
    ld hl, $72e8
    call Call_000_3c49
    jp Jump_004_70bf


    rla
    jr nc, @+$43

    add hl, hl
    ld d, b

Call_004_72ed:
    ld hl, $c3b4
    ld bc, $0028
    ld a, $06

jr_004_72f5:
    ld [hl], $7f
    add hl, bc
    dec a
    jr nz, jr_004_72f5

    ret


Jump_004_72fc:
    call Call_000_3709
    call Call_000_3ded

Jump_004_7302:
    ld a, [$d12b]
    dec a
    jr nz, jr_004_7310

    ld hl, $742a
    call Call_000_3c49
    jr jr_004_7333

jr_004_7310:
    ld bc, $d31d
    ld hl, $cf8b
    ld a, c
    ld [hl+], a
    ld [hl], b
    xor a
    ld [$cf93], a
    ld a, $03
    ld [$cf94], a
    ld a, [$cc2c]
    ld [$cc26], a
    call Call_000_2be6
    ld a, [$cc26]
    ld [$cc2c], a
    jr nc, jr_004_733f

jr_004_7333:
    call Call_000_3701
    call Call_000_36a0
    call Call_000_2429
    jp Jump_000_2adf


jr_004_733f:
    ld a, $7f
    ld [$c3f5], a
    ld [$c41d], a
    ld [$c445], a
    ld [$c46d], a
    call Call_000_3bec
    xor a
    ld [$cc35], a
    ld a, [$cf91]
    cp $06
    jp z, Jump_004_7384

    ld a, $06
    ld [$d125], a
    call Call_000_30e8
    ld hl, $cc24
    ld a, $0b
    ld [hl+], a
    ld a, $0e
    ld [hl+], a
    xor a
    ld [hl+], a
    inc hl
    inc a
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    xor a
    ld [hl], a
    call Call_000_3abe
    call Call_000_3bec
    bit 1, a
    jr z, jr_004_7384

    jp Jump_004_72fc


Jump_004_7384:
jr_004_7384:
    ld a, [$cf91]
    ld [$d11e], a
    call Call_000_2fcf
    call Call_000_3826
    ld a, [$cf91]
    cp $06
    jr nz, jr_004_73a7

    ld a, [$d732]
    bit 5, a
    jr z, jr_004_73d6

    ld hl, $742f
    call Call_000_3c49
    jp Jump_004_72fc


jr_004_73a7:
    ld a, [$cc26]
    and a
    jr nz, jr_004_740a

    ld [$d152], a
    ld a, [$cf91]
    cp $c4
    jr nc, jr_004_73e7

    ld hl, $7459
    ld de, $0001
    call Call_000_3dab
    jr c, jr_004_73d6

    ld a, [$cf91]
    ld hl, $7434
    ld de, $0001
    call Call_000_3dab
    jr c, jr_004_73e7

    call Call_000_30bc
    jp Jump_004_72fc


jr_004_73d6:
    xor a
    ld [$d152], a
    call Call_000_30bc
    ld a, [$cd6a]
    and a
    jp z, Jump_004_72fc

    jp Jump_000_2b70


jr_004_73e7:
    ld a, [$cfcb]
    push af
    call Call_000_30bc
    ld a, [$cd6a]
    cp $02
    jp z, Jump_004_7403

    call Call_000_3dd4
    call Call_000_3dbe
    pop af
    ld [$cfcb], a
    jp Jump_004_7302


Jump_004_7403:
    pop af
    ld [$cfcb], a
    jp Jump_004_72fc


jr_004_740a:
    call Call_000_30d9
    ld a, [$d124]
    and a
    jr nz, jr_004_7421

    ld a, [$cf91]
    call Call_000_3040
    jr c, jr_004_7421

    call Call_000_2d57
    inc a
    jr z, jr_004_7427

jr_004_7421:
    ld hl, $d31d
    call Call_000_30c4

jr_004_7427:
    jp Jump_004_72fc


    rla
    ld c, [hl]
    ld b, c
    add hl, hl
    ld d, b
    rla
    ld l, b
    ld b, c
    add hl, hl
    ld d, b
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, @+$31

    inc [hl]
    dec [hl]
    ld [hl], $3c
    dec a
    ld a, $41
    ld b, d
    ld b, e
    ld b, h
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    rst $38
    dec e
    ld b, a
    ld c, c
    ld c, h
    ld c, l
    ld c, [hl]
    rst $38
    call Call_000_3de5
    call Call_000_190f
    call Call_000_2429
    ldh a, [$d7]
    push af
    xor a
    ldh [$d7], a
    call Call_004_749a
    ld a, $2e
    call Call_000_3e6d
    ld b, $0d
    call Call_000_3def
    call Call_000_3ddc
    call Call_000_3865
    call Call_000_3de5
    call Call_000_3680
    call Call_000_3701
    call Call_000_3ded
    call Call_000_3071
    call Call_000_20ba
    pop af
    ldh [$d7], a
    jp Jump_000_2adf


Call_004_749a:
    ld de, $6ede
    ld bc, $0401
    ld a, $3b
    call Call_000_3e6d
    call Call_000_0061
    ld hl, $c3c8
    ld a, $7f
    call Call_004_75d8
    ld hl, $c3c9
    call Call_004_75d8
    ld hl, $9070
    ld de, $9000
    ld bc, $01c0
    call Call_000_00b5
    ld hl, $7b98
    ld de, $9770
    ld bc, $0080
    push bc
    call Call_004_757f
    ld hl, $7c28
    ld de, $9600
    ld bc, $0170
    call Call_004_757f
    pop bc
    ld hl, $7d98
    ld de, $8d80
    call Call_004_757f
    ld hl, $6a9e
    ld de, $9200
    ld bc, $0400
    ld a, $03
    call Call_000_17f7
    ld hl, $6288
    ld de, $00d0
    add hl, de
    ld de, $8d60
    ld bc, $0010
    ld a, $04
    push bc
    call Call_000_17f7
    pop bc
    ld hl, $7c18
    ld de, $8d70
    call Call_004_757f
    call Call_000_007b
    ld hl, $cd3d
    ld a, $13
    ld [hl+], a
    dec a
    ld [hl+], a
    ld [hl], $01
    ld hl, $c3a0
    call Call_004_75a0
    ld hl, $cd3d
    ld a, $11
    ld [hl+], a
    dec a
    ld [hl+], a
    ld [hl], $03
    ld hl, $c469
    call Call_004_75a0
    ld hl, $c468
    ld a, $d7
    call Call_004_75d8
    ld hl, $c47b
    call Call_004_75d8
    ld hl, $c45a
    ld de, $7597
    call Call_000_1955
    ld hl, $c3ca
    ld de, $7584
    call Call_000_1955
    ld hl, $c3cf
    ld de, $d158
    call Call_000_1955
    ld hl, $c3f8
    ld de, $d347
    ld c, $e3
    call Call_000_15cd
    ld hl, $c421
    ld de, $da41
    ld bc, $4103
    call Call_000_3c5f
    ld [hl], $d6
    inc hl
    ld de, $da43
    ld bc, $8102
    jp Jump_000_3c5f


Call_004_757f:
    ld a, $0b
    jp Jump_000_17f7


    adc l
    add b
    adc h
    add h
    di
    ld c, [hl]
    adc h
    adc [hl]
    adc l
    add h
    sbc b
    di
    ld c, [hl]
    sub e
    adc b
    adc h
    add h
    di
    ld d, b
    db $76
    add c
    add b
    add e
    add [hl]
    add h
    sub d
    db $76
    ld d, b

Call_004_75a0:
    ld a, $79
    ld de, $7a7b
    call Call_004_75c3
    call Call_004_75d0
    ld a, [$cd3d]
    ld e, a
    ld d, $00
    ld c, $06

jr_004_75b3:
    ld [hl], $7c
    add hl, de
    ld [hl], $78
    call Call_004_75d0
    dec c
    jr nz, jr_004_75b3

    ld a, $7d
    ld de, $777e

Call_004_75c3:
    ld [hl+], a
    ld a, [$cd3e]
    ld c, a
    ld a, d

jr_004_75c9:
    ld [hl+], a
    dec c
    jr nz, jr_004_75c9

    ld a, e
    ld [hl], a
    ret


Call_004_75d0:
    ld a, [$cd3f]

jr_004_75d3:
    inc hl
    dec a
    jr nz, jr_004_75d3

    ret


Call_004_75d8:
    ld de, $0014
    ld c, $08

jr_004_75dd:
    ld [hl], a
    add hl, de
    dec c
    jr nz, jr_004_75dd

    ret


    ld a, [$d72e]
    bit 6, a
    jp nz, Jump_000_1f54

    ld a, $3f
    call Call_000_3e6d
    call Call_000_3701
    jp Jump_000_29df


    xor a
    ldh [$ba], a
    call Call_000_190f
    call Call_000_2429
    ld hl, $5e8a
    ld b, $01
    call Call_000_35d6
    call Call_000_3701
    call Call_000_36a0
    call Call_000_2429
    jp Jump_000_2adf


    call Call_004_7653
    ld a, [$cd3d]
    call Call_004_7625
    ld a, [$cc26]
    call Call_004_7625
    jp Jump_004_6ce3


Call_004_7625:
    push af
    ld hl, $c3a0
    ld bc, $0028
    call Call_000_3a87
    ld c, $28
    ld a, $7f

jr_004_7633:
    ld [hl+], a
    dec c
    jr nz, jr_004_7633

    pop af
    ld hl, $c300
    ld bc, $0010
    call Call_000_3a87
    ld de, $0004
    ld c, e

jr_004_7645:
    ld [hl], $a0
    add hl, de
    dec c
    jr nz, jr_004_7645

    call Call_000_3748
    ld a, $ae
    jp Jump_000_23b1


Call_004_7653:
    ld a, [$cc35]
    and a
    jr nz, jr_004_7661

    ld a, [$cf92]
    inc a
    ld [$cc35], a
    ret


jr_004_7661:
    xor a
    ld [$d07d], a
    ld a, [$cc35]
    dec a
    ld b, a
    ld a, [$cc26]
    ld [$cd3d], a
    cp b
    jr nz, jr_004_767b

    xor a
    ld [$cc35], a
    ld [$d07d], a
    ret


jr_004_767b:
    ld a, b
    ld [$cc35], a
    push hl
    push de
    ld hl, $d164
    ld d, h
    ld e, l
    ld a, [$cc26]
    add l
    ld l, a
    jr nc, jr_004_768e

    inc h

jr_004_768e:
    ld a, [$cc35]
    add e
    ld e, a
    jr nc, jr_004_7696

    inc d

jr_004_7696:
    ld a, [hl]
    ldh [$95], a
    ld a, [de]
    ld [hl], a
    ldh a, [$95]
    ld [de], a
    ld hl, $d16b
    ld bc, $002c
    ld a, [$cc26]
    call Call_000_3a87
    push hl
    ld de, $cc97
    ld bc, $002c
    call Call_000_00b5
    ld hl, $d16b
    ld bc, $002c
    ld a, [$cc35]
    call Call_000_3a87
    pop de
    push hl
    ld bc, $002c
    call Call_000_00b5
    pop de
    ld hl, $cc97
    ld bc, $002c
    call Call_000_00b5
    ld hl, $d273
    ld a, [$cc26]
    call Call_000_3a7d
    push hl
    ld de, $cc97
    ld bc, $000b
    call Call_000_00b5
    ld hl, $d273
    ld a, [$cc35]
    call Call_000_3a7d
    pop de
    push hl
    ld bc, $000b
    call Call_000_00b5
    pop de
    ld hl, $cc97
    ld bc, $000b
    call Call_000_00b5
    ld hl, $d2b5
    ld a, [$cc26]
    call Call_000_3a7d
    push hl
    ld de, $cc97
    ld bc, $000b
    call Call_000_00b5
    ld hl, $d2b5
    ld a, [$cc35]
    call Call_000_3a7d
    pop de
    push hl
    ld bc, $000b
    call Call_000_00b5
    pop de
    ld hl, $cc97
    ld bc, $000b
    call Call_000_00b5
    ld a, [$cc35]
    ld [$cd3d], a
    xor a
    ld [$cc35], a
    ld [$d07d], a
    pop de
    pop hl
    ret


    ld a, [$cf91]
    ld [$d0b5], a
    call Call_000_1537
    ld hl, $d0cc
    push hl
    ld a, [$d0e0]
    ld b, a
    ld c, $00
    ld hl, $7773

jr_004_7754:
    ld a, [hl+]
    cp b
    jr z, jr_004_775b

    inc c
    jr jr_004_7754

jr_004_775b:
    pop hl
    ld b, $02
    ld a, $10
    jp Jump_000_3e6d


    ld a, [$d11e]
    dec a
    ld hl, $7773
    ld b, $00
    ld c, a
    add hl, bc
    ld a, [hl]
    ld [$d11e], a
    ret


    dec b
    dec c
    ld c, $12
    add hl, de
    ld e, h
    jr nz, jr_004_779d

    inc h
    ld h, $3d
    scf
    ld a, [hl-]
    dec sp
    ccf
    ld b, $42
    ld b, h
    ld b, l
    ld h, e
    ld c, b
    ld c, h
    ld d, d
    ld d, l
    ld d, a
    ld e, c
    ld e, d
    ld e, e
    ld e, [hl]
    ld h, h
    ld h, [hl]
    ld l, b
    ld [hl], e
    ld [hl], l
    db $76
    ld a, b
    ld a, c
    ld a, [hl]
    add c
    add d
    add a
    adc d

jr_004_779d:
    adc a
    sbc h
    ld d, [hl]
    sub l
    sbc c
    sbc l
    and c
    and h
    rrca
    inc de
    add hl, sp
    ld b, [hl]
    sub h
    ld a, [$d12b]
    cp $04
    jr nz, jr_004_77eb

    ld a, [$cfe8]
    ld hl, $d8a8
    ld bc, $002c
    call Call_000_3a87
    ld a, [$cfe9]
    ld [hl], a
    call Call_000_190f
    ld hl, $72d6
    ld b, $0d
    call Call_000_35d6
    ld a, [$cf0b]
    cp $01
    ld de, $7853
    jr c, jr_004_77de

    ld de, $785b
    jr z, jr_004_77de

    ld de, $7864

jr_004_77de:
    ld hl, $c446
    call Call_000_1955
    ld c, $c8
    call Call_000_3739
    jr jr_004_780a

jr_004_77eb:
    ld a, [$cf0b]
    and a
    jr nz, jr_004_7813

    ld hl, $cce5
    ld a, [hl+]
    or [hl]
    inc hl
    or [hl]
    jr z, jr_004_780a

    ld de, $d349
    ld c, $03
    ld a, $0b
    call Call_000_3e6d
    ld hl, $786b
    call Call_000_3c49

jr_004_780a:
    xor a
    ld [$ccd4], a
    ld a, $2a
    call Call_000_3e6d

jr_004_7813:
    xor a
    ld [$d083], a
    ld [$c02a], a
    ld [$d057], a
    ld [$d05a], a
    ld [$d05f], a
    ld [$d059], a
    ld [$d11f], a
    ld [$d120], a
    ld [$d078], a
    ld hl, $cc2b
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld [$cc36], a
    ld hl, $d060
    ld b, $18

jr_004_783e:
    ld [hl+], a
    dec b
    jr nz, jr_004_783e

    ld hl, $d72c
    set 0, [hl]
    call Call_000_3748
    call Call_000_3de5
    ld a, $ff
    ld [$d42f], a
    ret


    sbc b
    adc [hl]
    sub h
    ld a, a
    sub [hl]
    adc b
    adc l
    ld d, b
    sbc b
    adc [hl]
    sub h
    ld a, a
    adc e
    adc [hl]
    sub d
    add h
    ld d, b
    ld a, a
    ld a, a
    add e
    sub c
    add b
    sub [hl]
    ld d, b
    rla
    add b
    ld e, l
    ld [hl+], a
    ld d, b
    ld a, [$cc57]
    and a
    ret nz

    ld a, [$d736]
    and a
    ret nz

    ld hl, $449d
    ld b, $03
    call Call_000_35d6
    jr nc, jr_004_7888

jr_004_7884:
    ld a, $01
    and a
    ret


jr_004_7888:
    ld hl, $68d8
    ld b, $04
    call Call_000_35d6
    jr z, jr_004_7884

    ld a, [$d0db]
    and a
    jr z, jr_004_789e

    dec a
    jr z, jr_004_7905

    ld [$d0db], a

jr_004_789e:
    ld hl, $c45d
    ld c, [hl]
    ld a, [$d535]
    cp c
    ld a, [$d887]
    jr z, jr_004_78c4

    ld a, $14
    cp c
    ld a, [$d8a4]
    jr z, jr_004_78c4

    ld a, [$d35e]
    cp $25
    jr c, jr_004_7912

    ld a, [$d367]
    cp $03
    jr z, jr_004_7912

    ld a, [$d887]

jr_004_78c4:
    ld b, a
    ldh a, [$d3]
    cp b
    jr nc, jr_004_7912

    ldh a, [$d4]
    ld b, a
    ld hl, $7918

jr_004_78d0:
    ld a, [hl+]
    cp b
    jr nc, jr_004_78d7

    inc hl
    jr jr_004_78d0

jr_004_78d7:
    ld c, [hl]
    ld hl, $d888
    ld a, [$c45c]
    cp $14
    jr nz, jr_004_78e5

    ld hl, $d8a5

jr_004_78e5:
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld [$d127], a
    ld a, [hl]
    ld [$cf91], a
    ld [$cfd8], a
    ld a, [$d0db]
    and a
    jr z, jr_004_7916

    ld a, [$d18c]
    ld b, a
    ld a, [$d127]
    cp b
    jr c, jr_004_7912

    jr jr_004_7916

jr_004_7905:
    ld [$d0db], a
    ld a, $d2
    ldh [$8c], a
    call Call_000_3c3c
    call Call_000_2920

jr_004_7912:
    ld a, $01
    and a
    ret


jr_004_7916:
    xor a
    ret


    ld [hl-], a
    nop
    ld h, l
    ld [bc], a
    adc h
    inc b
    and l
    ld b, $be
    ld [$0ad7], sp
    db $e4
    inc c
    pop af
    ld c, $fc
    db $10
    rst $38
    ld [de], a
    ldh a, [$f3]
    and a
    ld a, [$cfd2]
    ld hl, $d023
    jr z, jr_004_793d

    ld a, [$cfcc]
    ld hl, $cff4

jr_004_793d:
    ld d, a
    ld a, [$d0d7]
    ld b, a
    ld a, [$d0d8]
    ld c, a
    srl b
    rr c
    ld a, d
    cp $a5
    jr z, jr_004_7953

    srl b
    rr c

jr_004_7953:
    ld a, b
    or c
    jr nz, jr_004_7958

    inc c

jr_004_7958:
    ld a, [hl+]
    ld [$ceea], a
    ld a, [hl]
    ld [$cee9], a
    push bc
    ld bc, $fff2
    add hl, bc
    pop bc
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
    jr nc, jr_004_7982

    xor a
    ld [hl+], a
    ld [hl], a
    ld hl, $ceed
    ld [hl+], a
    ld [hl], a

jr_004_7982:
    ld hl, $c45e
    ldh a, [$f3]
    and a
    ld a, $01
    jr z, jr_004_7990

    ld hl, $c3ca
    xor a

jr_004_7990:
    ld [$cf94], a
    ld a, $48
    call Call_000_3e6d
    ld hl, $799e
    jp Jump_000_3c49


    rla
    ret nc

    ld c, c
    dec h
    ld d, b
    ld hl, $cfea
    ld de, $d019
    ldh a, [$f3]
    and a
    ld a, [$d067]
    jr z, jr_004_79b8

    push hl
    ld h, d
    ld l, e
    pop de
    ld a, [$d062]

jr_004_79b8:
    bit 6, a
    jr nz, jr_004_79d2

    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    ld hl, $7ba8
    call Call_004_79d5
    ld hl, $79cd
    jp Jump_000_3c49


    rla
    push hl
    ld c, c
    dec h
    ld d, b

jr_004_79d2:
    ld hl, $7b53

Call_004_79d5:
    ld b, $0f
    jp Jump_000_35d6


    ld a, $07
    ld hl, $cd1a
    call Call_004_7a43
    ld hl, $cd2e
    call Call_004_7a43
    ld hl, $cd12
    ld de, $d025
    call Call_004_7a4a
    ld hl, $cd26
    ld de, $cff6
    call Call_004_7a4a
    ld hl, $cfe9
    ld de, $ccdd
    ldh a, [$f3]
    and a
    jr z, jr_004_7a09

    ld hl, $d018
    dec de

jr_004_7a09:
    ld a, [hl]
    ld [hl], $00
    and $27
    jr z, jr_004_7a13

    ld a, $ff
    ld [de], a

jr_004_7a13:
    xor a
    ld [$d06d], a
    ld [$d072], a
    ld hl, $ccee
    ld [hl+], a
    ld [hl], a
    ld hl, $d062
    call Call_004_7a37
    ld hl, $d067
    call Call_004_7a37
    ld hl, $7ba8
    call Call_004_79d5
    ld hl, $7a53
    jp Jump_000_3c49


Call_004_7a37:
    res 7, [hl]
    inc hl
    ld a, [hl]
    and $78
    ld [hl+], a
    ld a, [hl]
    and $f8
    ld [hl], a
    ret


Call_004_7a43:
    ld b, $08

jr_004_7a45:
    ld [hl+], a
    dec b
    jr nz, jr_004_7a45

    ret


Call_004_7a4a:
    ld b, $08

jr_004_7a4c:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_004_7a4c

    ret


    rla
    db $fc
    ld c, c
    dec h
    ld d, b
    ld hl, $d887
    ld a, [$d12b]
    and a
    jr nz, jr_004_7a86

    ld hl, $d34a
    ld a, [$d031]
    cp $19
    jr z, jr_004_7a86

    cp $2a
    jr z, jr_004_7a86

    cp $2b
    jr z, jr_004_7a86

    ld [$d0b5], a
    ld a, $07
    ld [$d0b6], a
    ld a, $0e
    ld [$d0b7], a
    call Call_000_376b
    ld hl, $cd6d

jr_004_7a86:
    ld de, $d04a
    ld bc, $000d
    jp Jump_000_00b5


    ldh a, [rDIV]
    ld b, a
    ldh a, [$d3]
    adc b
    ldh [$d3], a
    ldh a, [rDIV]
    ld b, a
    ldh a, [$d4]
    sbc b
    ldh [$d4], a
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

Jump_004_7b7b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_004_7c7c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_004_7cfc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_004_7e81:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
