; Disassembly of "Pokemon Red (UE) [S][!].gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01c", ROMX[$4000], BANK[$1c]

Call_01c_4000:
    ld a, $f9
    ldh [rOBP0], a
    ld a, $a4
    ldh [rOBP1], a
    ld de, $471e
    ld hl, $8a00
    ld bc, $1e01
    call Call_000_1848
    ld de, $481e
    ld hl, $8a10
    ld bc, $1e01
    call Call_000_1848
    ld de, $4190
    ld hl, $8a20
    ld bc, $1c01
    call Call_000_1848
    ld hl, $4140
    ld de, $c360
    ld bc, $0040
    call Call_000_00b5
    ld hl, $4180
    ld de, $c300
    ld bc, $0010
    jp Jump_000_00b5


    call Call_01c_4000
    ld a, $c2
    call Call_000_23b1
    ld hl, $c300
    ld bc, $a004

jr_01c_4052:
    push hl
    push bc

jr_01c_4054:
    ld a, [hl]
    add $04
    ld [hl+], a
    ld a, [hl]
    add $fc
    ld [hl+], a
    inc hl
    inc hl
    dec c
    jr nz, jr_01c_4054

    ld c, $01
    call Call_000_12f8
    pop bc
    pop hl
    ret c

    ld a, [hl]
    cp $50
    jr nz, jr_01c_4070

    jr jr_01c_4052

jr_01c_4070:
    cp b
    jr nz, jr_01c_4052

    ld hl, $c300
    ld c, $04
    ld de, $0004

jr_01c_407b:
    ld [hl], $a0
    add hl, de
    dec c
    jr nz, jr_01c_407b

    ld b, $03

jr_01c_4083:
    ld hl, $ff48
    rrc [hl]
    rrc [hl]
    ld c, $0a
    call Call_000_12f8
    ret c

    dec b
    jr nz, jr_01c_4083

    ld de, $c300
    ld a, $18

jr_01c_4098:
    push af
    ld hl, $40ee
    ld bc, $0004
    call Call_000_00b5
    pop af
    dec a
    jr nz, jr_01c_4098

    xor a
    ld [$cd3d], a
    ld hl, $40f2
    ld c, $06

jr_01c_40af:
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push bc
    push hl
    ld hl, $c350
    ld c, $04

jr_01c_40ba:
    ld a, [de]
    cp $ff
    jr z, jr_01c_40d5

    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    inc hl
    inc hl
    dec c
    jr nz, jr_01c_40ba

    ld a, [$cd3d]
    cp $18
    jr z, jr_01c_40d5

    add $06
    ld [$cd3d], a

jr_01c_40d5:
    call Call_01c_411f
    push af
    ld hl, $c310
    ld de, $c300
    ld bc, $0050
    call Call_000_00b5
    pop af
    pop hl
    pop bc
    ret c

    dec c
    jr nz, jr_01c_40af

    and a
    ret


    nop
    nop
    and d
    sub b
    cp $40
    ld b, $41
    ld c, $41
    ld d, $41
    ld e, $41
    ld e, $41
    ld l, b
    jr nc, jr_01c_4169

    ld b, b
    ld l, b
    ld e, b
    ld l, b
    ld a, b
    ld l, b
    jr c, jr_01c_4171

    ld c, b
    ld l, b
    ld h, b
    ld l, b
    ld [hl], b
    ld l, b
    inc [hl]
    ld l, b
    ld c, h
    ld l, b
    ld d, h
    ld l, b
    ld h, h
    ld l, b
    inc a
    ld l, b
    ld e, h
    ld l, b
    ld l, h
    ld l, b
    ld [hl], h
    rst $38

Call_01c_411f:
    ld b, $08

jr_01c_4121:
    ld hl, $c35c
    ld a, [$cd3d]
    ld de, $fffc
    ld c, a

jr_01c_412b:
    inc [hl]
    add hl, de
    dec c
    jr nz, jr_01c_412b

    ldh a, [rOBP1]
    xor $a0
    ldh [rOBP1], a
    ld c, $03
    call Call_000_12f8
    ret c

    dec b
    jr nz, jr_01c_4121

    ret


    ld c, b
    ld d, b
    adc l
    nop
    ld c, b
    ld e, b
    adc [hl]
    nop
    ld d, b
    ld d, b
    adc a
    nop
    ld d, b
    ld e, b
    sub b
    nop
    ld e, b
    ld d, b
    sub c
    nop
    ld e, b
    ld e, b
    sub d
    nop
    ld h, b
    jr nc, @-$7e

    nop
    ld h, b
    jr c, @-$7d

    nop
    ld h, b
    ld b, b
    add d
    nop
    ld h, b
    ld c, b
    add e
    nop
    ld h, b

jr_01c_4169:
    ld d, b
    sub e
    nop
    ld h, b
    ld e, b
    add h
    nop
    ld h, b

jr_01c_4171:
    ld h, b
    add l
    nop
    ld h, b
    ld l, b
    add e
    nop
    ld h, b
    ld [hl], b
    add c
    nop
    ld h, b
    ld a, b
    add [hl]
    nop
    nop
    and b
    and b
    stop
    xor b
    and b
    jr nc, jr_01c_4191

    and b
    and c
    db $10
    ld [$a1a8], sp
    jr nc, @+$06

jr_01c_4191:
    nop
    rra
    nop
    ld c, $00
    ld a, [bc]
    jr nz, jr_01c_4199

jr_01c_4199:
    ld hl, sp+$00
    ld [hl], b
    nop
    ld d, b
    nop
    nop
    call Call_01c_4423
    call Call_000_190f
    ld c, $64
    call Call_000_3739
    call Call_000_3680
    call Call_000_36a0
    call Call_000_0061
    ld hl, $9800
    ld bc, $0800
    ld a, $7f
    call Call_000_36e0
    call Call_000_007b
    ld hl, $ff40
    set 3, [hl]
    xor a
    ld hl, $cc5b
    ld bc, $0060
    call Call_000_36e0
    xor a
    ld [$cfcb], a
    ldh [$d7], a
    ld [$d0aa], a
    ld [$d358], a
    ld [$cd40], a
    inc a
    ldh [$ba], a
    ld hl, $d5a2
    ld a, [hl]
    inc a
    jr z, jr_01c_41eb

    inc [hl]

jr_01c_41eb:
    ld a, $90
    ldh [$b0], a
    ld c, $1f
    ld a, $ca
    call Call_000_23a1
    ld hl, $d164
    ld c, $ff

jr_01c_41fb:
    ld a, [hl+]
    cp $ff
    jr z, jr_01c_4241

    inc c
    push hl
    push bc
    ld [$cd3d], a
    ld a, c
    ld [$cd3e], a
    ld hl, $d18c
    ld bc, $002c
    call Call_000_3a87
    ld a, [hl]
    ld [$cd3f], a
    call Call_01c_4278
    call Call_01c_42e1
    ld c, $50
    call Call_000_3739
    ld hl, $c4a6
    ld b, $03
    ld c, $0e
    call Call_000_1922
    ld hl, $c4d0
    ld de, $426b
    call Call_000_1955
    ld c, $b4
    call Call_000_3739
    call Call_000_20d8
    pop bc
    pop hl
    jr jr_01c_41fb

jr_01c_4241:
    ld a, c
    inc a
    ld hl, $cc5b
    ld bc, $0010
    call Call_000_3a87
    ld [hl], $ff
    call Call_01c_7b0d
    xor a
    ld [$cd3d], a
    inc a
    ld [$cd40], a
    call Call_01c_4278
    call Call_01c_4377
    call Call_01c_4423
    xor a
    ldh [$b0], a
    ld hl, $ff40
    res 3, [hl]
    ret


    add a
    add b
    adc e
    adc e
    ld a, a
    adc [hl]
    add l
    ld a, a
    add l
    add b
    adc h
    add h
    ld d, b

Call_01c_4278:
    call Call_000_190f
    ld a, $d0
    ldh [$af], a
    ld a, $c0
    ldh [$ae], a
    ld a, [$cd3d]
    ld [$cf91], a
    ld [$d0b5], a
    ld [$cfd9], a
    ld [$cf1d], a
    ld a, [$cd40]
    and a
    jr z, jr_01c_429d

    call Call_01c_433e
    jr jr_01c_42ab

jr_01c_429d:
    ld hl, $c410
    call Call_000_1537
    call Call_000_1389
    ld a, $04
    call Call_000_3e6d

jr_01c_42ab:
    ld b, $0b
    ld c, $00
    call Call_000_3def
    ld a, $e4
    ldh [rBGP], a
    ld c, $31
    call Call_01c_436d
    ld d, $a0
    ld e, $04
    ld a, [$cf1b]
    and a
    jr z, jr_01c_42c7

    sla e

jr_01c_42c7:
    call Call_01c_42d5
    xor a
    ldh [$af], a
    ld c, a
    call Call_01c_436d
    ld d, $00
    ld e, $fc

Call_01c_42d5:
jr_01c_42d5:
    call Call_000_20af
    ldh a, [$ae]
    add e
    ldh [$ae], a
    cp d
    jr nz, jr_01c_42d5

    ret


Call_01c_42e1:
    ld a, [$cd3e]
    ld hl, $d2b5
    call Call_000_15ba
    call Call_01c_42f0
    jp Jump_01c_4404


Call_01c_42f0:
    ld hl, $c3c8
    ld b, $09
    ld c, $0a
    call Call_000_1922
    ld hl, $c41a
    ld de, $4329
    call Call_000_1955
    ld hl, $c3f1
    ld de, $cd6d
    call Call_000_1955
    ld a, [$cd3f]
    ld hl, $c434
    call Call_000_1523
    ld a, [$cd3d]
    ld [$d0b5], a
    ld hl, $c457
    ld a, $4b
    call Call_000_3e6d
    ld a, [$cd3d]
    jp Jump_000_13d0


    adc e
    add h
    sub l
    add h
    adc e
    di
    ld c, [hl]
    sub e
    sbc b
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
    ld d, b

Call_01c_433e:
    ld de, $6ede
    ld a, $04
    call Call_000_36eb
    ld hl, $a188
    ld de, $a000
    ld bc, $0310
    call Call_000_00b5
    ld de, $9000
    call Call_000_16ea
    ld de, $7e0a
    ld a, $0c
    call Call_000_36eb
    ld a, $03
    call Call_000_3e6d
    ld de, $9310
    call Call_000_16ea
    ld c, $01

Call_01c_436d:
    ld b, $00
    ld hl, $c410
    ld a, $31
    jp Jump_000_3e6d


Call_01c_4377:
    ld hl, $d747
    set 3, [hl]
    ld a, $56
    call Call_000_3e6d
    ld hl, $c3f0
    ld b, $06
    ld c, $0a
    call Call_000_1922
    ld hl, $c3a5
    ld b, $02
    ld c, $09
    call Call_000_1922
    ld hl, $c3cf
    ld de, $d158
    call Call_000_1955
    ld hl, $c419
    ld de, $43ea
    call Call_000_1955
    ld hl, $c431
    ld de, $da41
    ld bc, $0103
    call Call_000_3c5f
    ld [hl], $6d
    inc hl
    ld de, $da43
    ld bc, $8102
    call Call_000_3c5f
    ld hl, $c455
    ld de, $43f4
    call Call_000_1955
    ld hl, $c46c
    ld de, $d347
    ld c, $a3
    call Call_000_15cd
    ld hl, $43fa
    call Call_01c_43e2
    ld hl, $43ff
    call Call_01c_43e2
    ld hl, $cc5d

Call_01c_43e2:
    call Call_000_3c49
    ld c, $78
    jp Jump_000_3739


    adc a
    adc e
    add b
    sbc b
    ld a, a
    sub e
    adc b
    adc h
    add h
    ld d, b
    adc h
    adc [hl]
    adc l
    add h
    sbc b
    ld d, b
    rla
    ld a, $42
    ld [hl+], a
    ld d, b
    rla
    ld h, a
    ld b, d
    ld [hl+], a
    ld d, b

Jump_01c_4404:
    ld hl, $cc5b
    ld bc, $0010
    ld a, [$cd3e]
    call Call_000_3a87
    ld a, [$cd3d]
    ld [hl+], a
    ld a, [$cd3f]
    ld [hl+], a
    ld e, l
    ld d, h
    ld hl, $cd6d
    ld bc, $000b
    jp Jump_000_00b5


Call_01c_4423:
    ld a, $0a
    ld [$cfc8], a
    ld [$cfc9], a
    ld a, $ff
    ld [$cfc7], a
    jp Jump_000_20d8


    ld de, $44b7
    ld hl, $87c0
    ld bc, $1c03
    call Call_000_1848
    ld hl, $cfcb
    ld a, [hl]
    push af
    ld [hl], $ff
    push hl
    ldh a, [rOBP1]
    push af
    ld a, $e0
    ldh [rOBP1], a
    ld hl, $c384
    ld de, $44d7
    call Call_01c_4503
    ld a, $04
    ld [$cfc7], a
    ld a, $ff
    ld [$c0ee], a
    call Call_000_23b1

jr_01c_4464:
    ld a, [$cfc7]
    and a
    jr nz, jr_01c_4464

    ld a, [$d163]
    ld b, a

jr_01c_446e:
    call Call_01c_4503
    ld a, $9e
    call Call_000_23b1
    ld c, $1e
    call Call_000_3739
    dec b
    jr nz, jr_01c_446e

    ld a, [$c0ef]
    cp $1f
    ld [$c0f0], a
    jr nz, jr_01c_4495

    ld a, $ff
    ld [$c0ee], a
    call Call_000_23b1
    ld a, $02
    ld [$c0ef], a

jr_01c_4495:
    ld a, $e8
    ld [$c0ee], a
    call Call_000_23b1
    ld d, $28
    call $44f3

jr_01c_44a2:
    ld a, [$c026]
    cp $e8
    jr z, jr_01c_44a2

    ld c, $20
    call Call_000_3739
    pop af
    ldh [rOBP1], a
    pop hl
    pop af
    ld [hl], a
    jp Jump_000_2429


    nop
    nop
    nop
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
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
    inc c
    inc c
    ld [de], a
    ld e, $21
    ccf
    inc sp
    dec l
    ld e, $12
    inc c
    inc c
    inc h
    inc [hl]
    ld a, h
    db $10
    dec hl
    jr nc, jr_01c_455b

    db $10
    dec hl
    jr c, @+$7f

    jr nc, @+$32

    jr nc, jr_01c_4563

    db $10
    jr nc, @+$3a

    ld a, l
    jr nc, @+$37

    jr nc, @+$7f

    db $10
    dec [hl]
    jr c, jr_01c_456f

    jr nc, jr_01c_44fa

    ld [$49f0], sp
    xor d
    ldh [rOBP1], a

jr_01c_44fa:
    ld c, $0a
    call Call_000_3739
    dec b
    jr nz, @-$0b

    ret


Call_01c_4503:
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ret


    call Call_01c_46ef
    ld a, $ec
    ld [$c104], a
    call Call_000_3dd7
    push hl
    call Call_000_20f6
    ld hl, $d733
    bit 7, [hl]
    res 7, [hl]
    jr nz, jr_01c_4568

    ld a, $a0
    call Call_000_23b1
    ld hl, $d732
    bit 4, [hl]
    res 4, [hl]
    pop hl
    jr nz, jr_01c_455e

    call Call_01c_45aa
    ld a, $a3
    call Call_000_23b1
    call Call_01c_4787
    ld a, b
    and a
    jr nz, jr_01c_455b

    ld hl, $cd3d
    xor a
    ld [hl+], a
    inc a
    ld [hl+], a
    ld a, $08
    ld [hl+], a
    ld [hl], $ff
    ld hl, $cd48
    call Call_01c_4730

jr_01c_4558:
    call Call_000_2307

jr_01c_455b:
    jp Jump_01c_4772


jr_01c_455e:
    ld c, $32
    call Call_000_3739

jr_01c_4563:
    call Call_01c_45aa
    jr jr_01c_455b

jr_01c_4568:
    pop hl
    ld de, $4d80
    ld hl, $8000

jr_01c_456f:
    ld bc, $050c
    call Call_000_1848
    call Call_01c_46d7
    ld a, $a4
    call Call_000_23b1
    ld hl, $cd3d
    xor a
    ld [hl+], a
    ld a, $0c
    ld [hl+], a
    ld [hl], $08
    ld de, $4592
    call Call_01c_46ae
    call Call_000_0997
    jr jr_01c_4558

    dec b
    sbc b
    rrca
    sub b
    jr @-$76

    jr nz, @-$7e

    daa
    ld a, b
    dec l
    ld [hl], b
    ld [hl-], a
    ld l, b
    ld [hl], $60
    add hl, sp
    ld e, b
    dec sp
    ld d, b
    inc a
    ld c, b
    inc a
    ld b, b

Call_01c_45aa:
    ld hl, $cd3d
    ld a, $10
    ld [hl+], a
    ld a, $3c
    ld [hl+], a
    call Call_01c_477f
    ld [hl], a
    jp Jump_01c_4755


    call Call_01c_46ef
    call Call_01c_4787
    ld a, b
    and a
    jr z, jr_01c_45ef

    dec a
    jp nz, Jump_01c_467d

jr_01c_45c8:
    ld a, $9f
    call Call_000_23b1
    ld hl, $cd3d
    ld a, $f0
    ld [hl+], a
    ld a, $ec
    ld [hl+], a
    call Call_01c_477f
    ld [hl], a
    call Call_01c_4755
    call Call_01c_4787
    ld a, b
    dec a
    jr z, jr_01c_45e9

    ld c, $0a
    call Call_000_3739

jr_01c_45e9:
    call Call_000_20d8
    jp Jump_01c_4772


jr_01c_45ef:
    ld a, $04
    call Call_000_0951
    ld a, [$d732]
    bit 6, a
    jr z, jr_01c_4610

    ld hl, $cd3d
    ld a, $10
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl], $a1
    ld hl, $cd48
    call Call_01c_4730
    jr jr_01c_45c8

jr_01c_4610:
    call Call_01c_46d7
    ld hl, $cd3d
    ld a, $ff
    ld [hl+], a
    ld a, $08
    ld [hl+], a
    ld [hl], $0c
    call Call_01c_46ae
    ld a, $a4
    call Call_000_23b1
    ld hl, $cd3d
    xor a
    ld [hl+], a
    ld a, $0c
    ld [hl+], a
    ld [hl], $0c
    ld de, $464f
    call Call_01c_46ae
    ld c, $28
    call Call_000_3739
    ld hl, $cd3e
    ld a, $0b
    ld [hl+], a
    ld [hl], $08
    ld de, $4667
    call Call_01c_46ae
    call Call_000_20d8
    jp Jump_01c_4772


    inc a
    ld c, b
    inc a
    ld d, b
    dec sp
    ld e, b
    ld a, [hl-]
    ld h, b
    add hl, sp
    ld l, b
    scf
    ld [hl], b
    scf
    ld a, b
    inc sp
    add b
    jr nc, jr_01c_45e9

    dec l
    sub b
    ld a, [hl+]
    sbc b
    daa
    and b
    ld a, [de]
    sub b
    add hl, de
    add b
    rla
    ld [hl], b
    dec d
    ld h, b
    ld [de], a
    ld d, b
    rrca
    ld b, b
    inc c
    jr nc, jr_01c_467f

    jr nz, jr_01c_467d

    stop
    nop
    ldh a, [rP1]

Jump_01c_467d:
jr_01c_467d:
    ld a, $ff

jr_01c_467f:
    ld [$cfcb], a
    ld a, [$c302]
    ld [$c30a], a
    ld a, [$c306]
    ld [$c30e], a
    ld a, $a0
    ld [$c300], a
    ld [$c304], a
    ld c, $02
    call Call_000_3739
    ld a, $a0
    ld [$c308], a
    ld [$c30c], a
    call Call_000_20d8
    ld a, $01
    ld [$cfcb], a
    jp Jump_01c_4772


Call_01c_46ae:
jr_01c_46ae:
    ld a, [$cd3f]
    xor $01
    ld [$cd3f], a
    ld [$c102], a
    call Call_000_3dd7
    ld a, [$cd3d]
    cp $ff
    jr z, jr_01c_46cd

    ld hl, $c104
    ld a, [de]
    inc de
    ld [hl+], a
    inc hl
    ld a, [de]
    inc de
    ld [hl], a

jr_01c_46cd:
    ld a, [$cd3e]
    dec a
    ld [$cd3e], a
    jr nz, jr_01c_46ae

    ret


Call_01c_46d7:
    ld de, $4d80
    ld hl, $8000
    ld bc, $050c
    call Call_000_1848
    ld de, $4e40
    ld hl, $8800
    ld bc, $050c
    jp Jump_000_1848


Call_01c_46ef:
    ld a, [$c102]
    ld [$cd50], a
    ld a, [$c104]
    ld [$cd4f], a
    ld hl, $4713
    ld de, $cd48
    ld bc, $0004
    call Call_000_00b5
    ld a, [$c102]
    ld hl, $cd48

jr_01c_470d:
    cp [hl]
    inc hl
    jr nz, jr_01c_470d

    dec hl
    ret


    nop
    ld [$0c04], sp

Call_01c_4717:
    ld a, [hl]
    ld [$c102], a
    push hl
    ld hl, $cd48
    ld de, $cd47
    ld bc, $0004
    call Call_000_00b5
    ld a, [$cd47]
    ld [$cd4b], a
    pop hl
    ret


Call_01c_4730:
jr_01c_4730:
    call Call_01c_4717
    ld a, [$cd3d]
    ld c, a
    and $03
    jr nz, jr_01c_4743

    ld a, [$cd40]
    cp $ff
    call nz, Call_000_23b1

jr_01c_4743:
    ld a, [$cd3e]
    add c
    ld [$cd3d], a
    ld c, a
    ld a, [$cd3f]
    cp c
    ret z

    call Call_000_3739
    jr jr_01c_4730

Call_01c_4755:
Jump_01c_4755:
jr_01c_4755:
    call Call_01c_4717
    ld a, [$cd3d]
    ld c, a
    ld a, [$c104]
    add c
    ld [$c104], a
    ld c, a
    ld a, [$cd3e]
    cp c
    ret z

    ld a, [$cd3f]
    ld c, a
    call Call_000_3739
    jr jr_01c_4755

Jump_01c_4772:
    ld a, [$cd4f]
    ld [$c104], a
    ld a, [$cd50]
    ld [$c102], a
    ret


Call_01c_477f:
    ld a, [$cf1b]
    xor $01
    inc a
    inc a
    ret


Call_01c_4787:
    ld b, $00
    ld hl, $47a9
    ld a, [$d367]
    ld c, a

jr_01c_4790:
    ld a, [hl+]
    cp $ff
    jr z, jr_01c_47a4

    cp c
    jr nz, jr_01c_479e

    ld a, [$c45c]
    cp [hl]
    jr z, jr_01c_47a2

jr_01c_479e:
    inc hl
    inc hl
    jr jr_01c_4790

jr_01c_47a2:
    inc hl
    ld b, [hl]

jr_01c_47a4:
    ld a, b
    ld [$cd5b], a
    ret


    ld d, $20
    ld bc, $1116
    ld [bc], a
    ld de, $0222
    db $10
    ld d, l
    ld bc, $0eff
    ld a, [bc]
    call Call_000_3739
    ld hl, $d736
    set 6, [hl]
    ld de, $4180
    ld hl, $8000
    ld bc, $050c
    call Call_000_1848
    ld a, $04
    ld hl, $4866
    call Call_01c_5771
    ld a, [$c102]
    ld c, a
    ld b, $00
    ld hl, $4856
    add hl, bc
    ld de, $c39c
    ld bc, $0004
    call Call_000_00b5
    ld c, $64
    call Call_000_3739
    ld a, [$cd3d]
    and a
    ld hl, $4847
    jr z, jr_01c_4836

    cp $02
    ld hl, $484c
    jr z, jr_01c_4836

    ld b, $0a

jr_01c_47fe:
    ld hl, $c104
    call Call_01c_4842
    ld hl, $c39c
    call Call_01c_4842
    call Call_000_3dd7
    dec b
    jr nz, jr_01c_47fe

    ld a, [$c102]
    cp $04
    jr nz, jr_01c_481c

    ld a, $a0
    ld [$c39c], a

jr_01c_481c:
    ld hl, $cd4f
    xor a
    ld [hl+], a
    ld [hl], a
    ld a, $4c
    call Call_000_3e6d
    ld a, [$c102]
    cp $04
    jr nz, jr_01c_4833

    ld a, $44
    ld [$c39c], a

jr_01c_4833:
    ld hl, $4851

jr_01c_4836:
    call Call_000_3c49
    ld hl, $d736
    res 6, [hl]
    call Call_000_3680
    ret


Call_01c_4842:
    ld a, [hl]
    xor $01
    ld [hl], a
    ret


    rla
    ld c, l
    ld b, b
    jr nz, @+$52

    rla
    ld h, c
    ld b, b
    jr nz, jr_01c_48a1

    rla
    add d
    ld b, b
    jr nz, jr_01c_48a6

    ld e, e
    ld c, h
    db $fd
    nop
    ld b, h
    ld c, h
    db $fd
    nop
    ld d, b
    ld b, b
    cp $00
    ld d, b
    ld e, b
    cp $20
    db $ed
    ld e, a
    ld [bc], a
    ld e, $20
    add b
    dec c
    ld h, b
    ld [bc], a
    ld e, $60
    add b
    dec l
    ld h, b
    ld [bc], a
    ld e, $a0
    add b
    ld c, l
    ld h, b
    inc bc
    ld e, $d0
    adc a
    ld a, [$d714]
    ld c, a
    inc a
    cp $10
    jr nc, jr_01c_4895

    ld [$d714], a
    ld b, $00
    ld hl, $48ba
    add hl, bc
    ld a, [hl]
    ld [$c104], a
    ret


jr_01c_4895:
    ld a, [$cfc5]
    cp $00
    ret nz

    call Call_000_2429
    call Call_000_3dd7

jr_01c_48a1:
    xor a
    ldh [$b4], a
    ldh [$b3], a

jr_01c_48a6:
    ldh [$b2], a
    ld [$d714], a
    ld hl, $d736
    res 6, [hl]
    ld hl, $d730
    res 7, [hl]
    xor a
    ld [$cd6b], a
    ret


    jr c, @+$38

    inc [hl]
    ld [hl-], a
    ld sp, $3030
    jr nc, @+$33

    ld [hl-], a
    inc sp
    inc [hl]
    ld [hl], $38
    inc a
    inc a
    ld a, $e4
    ldh [rOBP1], a
    call Call_01c_492a
    ld hl, $c3ac
    ld bc, $0707
    call Call_000_18c4
    call Call_000_3dd7
    xor a
    ldh [$ba], a
    ld a, $91
    ld [$cee9], a
    ld a, $01
    ldh [$f3], a
    ld hl, $5793
    ld b, $1e
    call Call_000_35d6
    ld d, $80
    call $44f3

jr_01c_48f6:
    ld c, $0a
    call Call_000_3739
    ldh a, [rOBP1]
    sla a
    sla a
    ldh [rOBP1], a
    jr nz, jr_01c_48f6

    call Call_000_0082
    call Call_01c_492a
    ld b, $e4

jr_01c_490d:
    ld c, $0a
    call Call_000_3739
    ldh a, [rOBP1]
    srl b
    rra
    srl b
    rra
    ldh [rOBP1], a
    ld a, b
    and a
    jr nz, jr_01c_490d

    ld a, $01
    ldh [$ba], a
    call Call_000_3dd7
    jp Jump_000_0082


Call_01c_492a:
    ld de, $9000
    ld hl, $8000
    ld bc, $0031
    call Call_000_1848
    ld a, $10
    ld [$d082], a
    ld a, $70
    ld [$d081], a
    ld hl, $c300
    ld bc, $0606
    ld d, $08

jr_01c_4948:
    push bc
    ld a, [$d082]
    ld e, a

jr_01c_494d:
    ld a, e
    add $08
    ld e, a
    ld [hl+], a
    ld a, [$d081]
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, $10
    ld [hl+], a
    inc d
    dec c
    jr nz, jr_01c_494d

    inc d
    ld a, [$d081]
    add $08
    ld [$d081], a
    pop bc
    dec b
    jr nz, jr_01c_4948

    ret


    ld a, $01
    ldh [$ba], a
    call Call_000_3dd7
    xor a
    ldh [$b0], a
    dec a
    ld [$cfcb], a
    call Call_000_20af
    ld hl, $c102
    ldh a, [$8c]
    ld c, a
    ld b, $00
    ld de, $0010

jr_01c_4989:
    ld a, [hl]
    cp $ff
    jr z, jr_01c_498f

    inc b

jr_01c_498f:
    add hl, de
    dec c
    jr nz, jr_01c_4989

    ld hl, $c310
    ld c, $09

jr_01c_4998:
    ld a, b
    swap a
    cp l
    jr z, jr_01c_49a9

    push hl
    push bc
    ld bc, $0010
    xor a
    call Call_000_36e0
    pop bc
    pop hl

jr_01c_49a9:
    ld de, $0010
    add hl, de
    dec c
    jr nz, jr_01c_4998

    call Call_000_3dd7
    call Call_01c_4a4d
    ld bc, $0000
    ld a, [$d12b]
    cp $04
    jr z, jr_01c_49c9

    call $49e2
    call Call_01c_49ef
    call Call_01c_4a19

jr_01c_49c9:
    ld hl, $49d2
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    inc h
    ld c, l
    ld [hl], d
    ld c, d
    db $e4
    ld c, h
    ld [hl], d
    ld c, d
    or h
    ld c, h
    ld a, a
    ld c, e
    ld a, [hl]
    ld c, h
    jp z, $fa4b

    ld e, c
    ret nc

    cp $c8
    jr nc, jr_01c_49ec

    res 0, c
    ret


jr_01c_49ec:
    set 0, c
    ret


Call_01c_49ef:
    ld hl, $d16c

jr_01c_49f2:
    ld a, [hl+]
    or [hl]
    jr nz, jr_01c_49fc

    ld de, $002b
    add hl, de
    jr jr_01c_49f2

jr_01c_49fc:
    ld de, $001f
    add hl, de
    ld a, [hl]
    add $03
    ld e, a
    ld a, [$d127]
    sub e
    jr nc, jr_01c_4a12

    res 1, c
    ld a, $01
    ld [$cd47], a
    ret


jr_01c_4a12:
    set 1, c
    xor a
    ld [$cd47], a
    ret


Call_01c_4a19:
    ld a, [$d35e]
    ld e, a
    ld hl, $4a3f

jr_01c_4a20:
    ld a, [hl+]
    cp $ff
    jr z, jr_01c_4a2b

    cp e
    jr nz, jr_01c_4a20

jr_01c_4a28:
    set 2, c
    ret


jr_01c_4a2b:
    ld hl, $4a44

jr_01c_4a2e:
    ld a, [hl+]
    cp $ff
    jr z, jr_01c_4a3c

    ld d, a
    ld a, [hl+]
    cp e
    jr c, jr_01c_4a2e

    ld a, e
    cp d
    jr nc, jr_01c_4a28

jr_01c_4a3c:
    res 2, c
    ret


    inc sp
    ld d, d
    ret nz

    add sp, -$01
    dec sp
    dec a
    ld e, a
    db $76
    adc l
    sub a
    rst $08
    db $e4
    rst $38

Call_01c_4a4d:
    ld hl, $8ff0
    ld de, $4a59
    ld bc, $1c01
    jp Jump_000_1848


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

Call_01c_4a69:
Jump_01c_4a69:
    ld a, $ff
    ldh [rBGP], a
    ldh [rOBP0], a
    ldh [rOBP1], a
    ret


    ld a, [$cd47]
    and a
    jr z, jr_01c_4a7d

    call Call_01c_4aaa
    jr jr_01c_4a9f

jr_01c_4a7d:
    ld hl, $c472
    ld a, $03
    ld [$d09f], a
    ld a, l
    ld [$d09b], a
    ld a, h
    ld [$d09a], a
    ld b, $78

jr_01c_4a8f:
    ld c, $03

jr_01c_4a91:
    push bc
    call Call_01c_4af9
    pop bc
    dec c
    jr nz, jr_01c_4a91

    call Call_000_20af
    dec b
    jr nz, jr_01c_4a8f

jr_01c_4a9f:
    call Call_01c_4a69
    xor a
    ld [$d09b], a
    ld [$d09a], a
    ret


Call_01c_4aaa:
    ld a, $07
    ld [$cd3d], a
    ld hl, $c3a0
    ld c, $11
    ld de, $0014
    call Call_01c_4ae0
    inc c
    jr jr_01c_4ac3

jr_01c_4abd:
    ld de, $0014
    call Call_01c_4ae0

jr_01c_4ac3:
    inc c
    ld de, $0001
    call Call_01c_4ae0
    dec c
    dec c
    ld de, $ffec
    call Call_01c_4ae0
    inc c
    ld de, $ffff
    call Call_01c_4ae0
    dec c
    dec c
    ld a, c
    and a
    jr nz, jr_01c_4abd

    ret


Call_01c_4ae0:
    push bc

jr_01c_4ae1:
    ld [hl], $ff
    add hl, de
    push bc
    ld a, [$cd3d]
    dec a
    jr nz, jr_01c_4af0

    call Call_01c_4d19
    ld a, $07

jr_01c_4af0:
    ld [$cd3d], a
    pop bc
    dec c
    jr nz, jr_01c_4ae1

    pop bc
    ret


Call_01c_4af9:
    ld bc, $ffec
    ld de, $0014
    ld a, [$d09b]
    ld l, a
    ld a, [$d09a]
    ld h, a
    ld a, [$d09f]
    cp $00
    jr z, jr_01c_4b25

    cp $01
    jr z, jr_01c_4b2f

    cp $02
    jr z, jr_01c_4b39

    cp $03
    jr z, jr_01c_4b43

jr_01c_4b1a:
    ld [hl], $ff

jr_01c_4b1c:
    ld a, l
    ld [$d09b], a
    ld a, h
    ld [$d09a], a
    ret


jr_01c_4b25:
    dec hl
    ld a, [hl]
    cp $ff
    jr nz, jr_01c_4b4d

    inc hl
    add hl, bc
    jr jr_01c_4b1a

jr_01c_4b2f:
    add hl, de
    ld a, [hl]
    cp $ff
    jr nz, jr_01c_4b4d

    add hl, bc
    dec hl
    jr jr_01c_4b1a

jr_01c_4b39:
    inc hl
    ld a, [hl]
    cp $ff
    jr nz, jr_01c_4b4d

    dec hl
    add hl, de
    jr jr_01c_4b1a

jr_01c_4b43:
    add hl, bc
    ld a, [hl]
    cp $ff
    jr nz, jr_01c_4b4d

    add hl, de
    inc hl
    jr jr_01c_4b1a

jr_01c_4b4d:
    ld [hl], $ff
    ld a, [$d09f]
    inc a
    cp $04
    jr nz, jr_01c_4b58

    xor a

jr_01c_4b58:
    ld [$d09f], a
    jr jr_01c_4b1c

Call_01c_4b5d:
jr_01c_4b5d:
    ld hl, $4b72

jr_01c_4b60:
    ld a, [hl+]
    cp $01
    jr z, jr_01c_4b6e

    ldh [rBGP], a
    ld c, $02
    call Call_000_3739
    jr jr_01c_4b60

jr_01c_4b6e:
    dec b
    jr nz, jr_01c_4b5d

    ret


    ld sp, hl
    cp $ff
    cp $f9
    db $e4
    sub b
    ld b, b
    nop
    ld b, b
    sub b
    db $e4
    ld bc, $090e

jr_01c_4b81:
    push bc
    xor a
    ldh [$ba], a
    ld hl, $c42c
    ld de, $c440
    ld bc, $ffd8
    call Call_01c_4c12
    ld hl, $c468
    ld de, $c454
    ld bc, $0028
    call Call_01c_4c12
    ld hl, $c3a8
    ld de, $c3a9
    ld bc, $fffe
    call Call_01c_4c3f
    ld hl, $c3ab
    ld de, $c3aa
    ld bc, $0002
    call Call_01c_4c3f
    ld a, $01
    ldh [$ba], a
    ld c, $06
    call Call_000_3739
    pop bc
    dec c
    jr nz, jr_01c_4b81

    call Call_01c_4a69
    ld c, $0a
    jp Jump_000_3739


    ld c, $09
    xor a
    ldh [$ba], a

jr_01c_4bcf:
    push bc
    ld hl, $c4e0
    ld de, $c4f4
    ld bc, $ffd8
    call Call_01c_4c12
    ld hl, $c3b4
    ld de, $c3a0
    ld bc, $0028
    call Call_01c_4c12
    ld hl, $c3b2
    ld de, $c3b3
    ld bc, $fffe
    call Call_01c_4c3f
    ld hl, $c3a1
    ld de, $c3a0
    ld bc, $0002
    call Call_01c_4c3f
    call Call_01c_4d19
    call Call_000_3dd7
    pop bc
    dec c
    jr nz, jr_01c_4bcf

    call Call_01c_4a69
    ld c, $0a
    jp Jump_000_3739


Call_01c_4c12:
    ld a, c
    ld [$cd3d], a
    ld a, b
    ld [$cd3e], a
    ld c, $08

jr_01c_4c1c:
    push bc
    push hl
    push de
    ld bc, $0014
    call Call_000_00b5
    pop hl
    pop de
    ld a, [$cd3d]
    ld c, a
    ld a, [$cd3e]
    ld b, a
    add hl, bc
    pop bc
    dec c
    jr nz, jr_01c_4c1c

    ld l, e
    ld h, d
    ld a, $ff
    ld c, $14

jr_01c_4c3a:
    ld [hl+], a
    dec c
    jr nz, jr_01c_4c3a

    ret


Call_01c_4c3f:
    ld a, c
    ld [$cd3d], a
    ld a, b
    ld [$cd3e], a
    ld c, $09

jr_01c_4c49:
    push bc
    push hl
    push de
    ld c, $12

jr_01c_4c4e:
    ld a, [hl]
    ld [de], a
    ld a, e
    add $14
    jr nc, jr_01c_4c56

    inc d

jr_01c_4c56:
    ld e, a
    ld a, l
    add $14
    jr nc, jr_01c_4c5d

    inc h

jr_01c_4c5d:
    ld l, a
    dec c
    jr nz, jr_01c_4c4e

    pop hl
    pop de
    ld a, [$cd3d]
    ld c, a
    ld a, [$cd3e]
    ld b, a
    add hl, bc
    pop bc
    dec c
    jr nz, jr_01c_4c49

    ld l, e
    ld h, d
    ld de, $0014
    ld c, $12

jr_01c_4c77:
    ld [hl], $ff
    add hl, de
    dec c
    jr nz, jr_01c_4c77

    ret


    ld c, $12
    ld hl, $c3a0
    ld de, $c4f5
    xor a
    ldh [$ba], a

jr_01c_4c89:
    push bc
    push hl
    push de
    push de
    call Call_01c_4caa
    pop hl
    call Call_01c_4caa
    call Call_01c_4d19
    pop hl
    ld bc, $ffec
    add hl, bc
    ld e, l
    ld d, h
    pop hl
    ld bc, $0014
    add hl, bc
    pop bc
    dec c
    jr nz, jr_01c_4c89

    jp Jump_01c_4a69


Call_01c_4caa:
    ld c, $0a

jr_01c_4cac:
    ld [hl], $ff
    inc hl
    inc hl
    dec c
    jr nz, jr_01c_4cac

    ret


    ld c, $14
    ld hl, $c3a0
    ld de, $c3c7
    xor a
    ldh [$ba], a

jr_01c_4cbf:
    push bc
    push hl
    push de
    push de
    call Call_01c_4cd8
    pop hl
    call Call_01c_4cd8
    call Call_01c_4d19
    pop de
    pop hl
    pop bc
    inc hl
    dec de
    dec c
    jr nz, jr_01c_4cbf

    jp Jump_01c_4a69


Call_01c_4cd8:
    ld c, $09
    ld de, $0028

jr_01c_4cdd:
    ld [hl], $ff
    add hl, de
    dec c
    jr nz, jr_01c_4cdd

    ret


    call Call_01c_4cfd
    ld bc, $000a
    ld hl, $4d61
    call Call_01c_4d06
    ld c, $0a
    ld b, $01
    ld hl, $4d93
    call Call_01c_4d06
    jp Jump_01c_4a69


Call_01c_4cfd:
    ld b, $03
    call Call_01c_4b5d
    xor a
    ldh [$ba], a
    ret


Call_01c_4d06:
jr_01c_4d06:
    push bc
    push hl
    ld a, b
    call Call_01c_4d50
    pop hl
    ld bc, $0005
    add hl, bc
    call Call_01c_4d19
    pop bc
    dec c
    jr nz, jr_01c_4d06

    ret


Call_01c_4d19:
    ld a, $01
    ldh [$ba], a
    call Call_000_3dd7
    xor a
    ldh [$ba], a
    ret


    call Call_01c_4cfd
    ld c, $0a
    ld hl, $4d61
    ld de, $4d93

jr_01c_4d2f:
    push bc
    push hl
    push de
    push de
    xor a
    call Call_01c_4d50
    pop hl
    ld a, $01
    call Call_01c_4d50
    pop hl
    ld bc, $0005
    add hl, bc
    ld e, l
    ld d, h
    pop hl
    add hl, bc
    call Call_01c_4d19
    pop bc
    dec c
    jr nz, jr_01c_4d2f

    jp Jump_01c_4a69


Call_01c_4d50:
    ld [$cd3d], a
    ld a, [hl+]
    ld [$cd3e], a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp $4dc5


    ld bc, $4dfe
    ld a, [hl+]
    call nz, $0401
    ld c, [hl]
    rst $28
    jp Jump_000_0e01


    ld c, [hl]
    or d
    jp Jump_000_2001


    ld c, [hl]
    xor [hl]
    jp $2e01


    ld c, [hl]
    xor d
    jp Jump_000_2e00


    ld c, [hl]
    xor c
    jp $2000


    ld c, [hl]
    and l
    jp $0e00


    ld c, [hl]
    and c
    jp $0400


    ld c, [hl]
    call c, Call_000_00c3
    cp $4d
    add hl, de
    call nz, $fe00
    ld c, l
    ld a, l
    call nz, $0400
    ld c, [hl]
    cp b
    call nz, $0e00
    ld c, [hl]
    push af
    call nz, $2000
    ld c, [hl]
    ld sp, hl
    call nz, Call_000_2e00
    ld c, [hl]
    db $fd
    call nz, $2e01
    ld c, [hl]
    cp $c4
    ld bc, $4e20
    ld [bc], a
    push bc
    ld bc, $4e0e
    ld b, $c5
    ld bc, $4e04
    set 0, h
    ld bc, $4dfe
    adc [hl]
    call nz, $1ae5
    ld c, a
    inc de

jr_01c_4dc9:
    ld [hl], $ff
    ld a, [$cd3e]
    and a
    jr z, jr_01c_4dd4

    inc hl
    jr jr_01c_4dd5

jr_01c_4dd4:
    dec hl

jr_01c_4dd5:
    dec c
    jr nz, jr_01c_4dc9

    pop hl
    ld a, [$cd3d]
    and a
    ld bc, $0014
    jr z, jr_01c_4de5

    ld bc, $ffec

jr_01c_4de5:
    add hl, bc
    ld a, [de]
    inc de
    cp $ff
    ret z

    and a
    jr z, @-$27

    ld c, a

jr_01c_4def:
    ld a, [$cd3e]
    and a
    jr z, jr_01c_4df8

    dec hl
    jr jr_01c_4df9

jr_01c_4df8:
    inc hl

jr_01c_4df9:
    dec c
    jr nz, jr_01c_4def

    jr @-$37

    ld [bc], a
    inc bc
    dec b
    inc b
    add hl, bc
    rst $38
    ld bc, $0201
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc bc
    rst $38
    ld [bc], a
    ld bc, $0103
    inc b
    ld bc, HeaderLogo
    inc b
    ld bc, $0103
    ld [bc], a
    ld bc, $0101
    ld bc, $04ff
    ld bc, $0004
    inc bc
    ld bc, $0003
    ld [bc], a
    ld bc, $0002
    ld bc, $04ff
    nop
    inc bc
    nop
    inc bc
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld bc, $0100
    nop
    ld bc, $cdff
    sbc e
    ld d, b
    ld hl, $cfcb
    ld a, [hl]
    push af
    ld [hl], $ff
    push hl
    ld a, $01
    ldh [$b7], a
    ld a, [$d35e]
    push af
    ld b, $00
    call Call_01c_51c4
    ld hl, $c3a1
    ld de, $cd6d
    call Call_000_1955
    ld hl, $c300
    ld de, $c508
    ld bc, $0010
    call Call_000_00b5
    ld hl, $8040
    ld de, $4f40
    ld bc, $1c04
    call Call_000_1886
    xor a
    ld [$cd3d], a
    pop af
    jr jr_01c_4e92

Jump_01c_4e7e:
    ld hl, $c3a0
    ld bc, $0114
    call Call_000_18c4
    ld hl, $4f11
    ld a, [$cd3d]
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]

jr_01c_4e92:
    ld de, $cee9
    call Call_01c_52f1
    ld a, [de]
    push hl
    call Call_01c_5258
    ld a, $04
    ld [$cd5b], a
    ld hl, $c310
    call Call_01c_5279
    pop hl
    ld de, $cd6d

jr_01c_4eac:
    ld a, [hl+]
    ld [de], a
    inc de
    cp $50
    jr nz, jr_01c_4eac

    ld hl, $c3a1
    ld de, $cd6d
    call Call_000_1955
    ld hl, $c310
    ld de, $c518
    ld bc, $0010
    call Call_000_00b5

jr_01c_4ec8:
    call Call_01c_56c6
    call Call_000_3831
    ldh a, [$b5]
    ld b, a
    and $c3
    jr z, jr_01c_4ec8

    ld a, $8c
    call Call_000_23b1
    bit 6, b
    jr nz, jr_01c_4ef2

    bit 7, b
    jr nz, jr_01c_4f01

    xor a
    ld [$d09b], a
    ldh [$b7], a
    ld [$d08b], a
    call Call_01c_51ab
    pop hl
    pop af
    ld [hl], a
    ret


jr_01c_4ef2:
    ld a, [$cd3d]
    inc a
    cp $2f
    jr nz, jr_01c_4efb

    xor a

jr_01c_4efb:
    ld [$cd3d], a
    jp Jump_01c_4e7e


jr_01c_4f01:
    ld a, [$cd3d]
    dec a
    cp $ff
    jr nz, jr_01c_4f0b

    ld a, $2e

jr_01c_4f0b:
    ld [$cd3d], a
    jp Jump_01c_4e7e


    nop
    inc c
    ld bc, $330d
    push bc
    ld [bc], a
    ld c, $3b
    rrca
    inc bc
    inc hl
    inc h
    ld e, b
    db $10
    ld de, $5f05
    inc d
    ld d, c
    dec d
    inc b
    adc a
    inc de
    ld [de], a
    ld b, $0a
    ld d, $17
    jr jr_01c_4f49

    ld a, [de]
    dec de
    inc e
    dec e
    rlca
    reti


    ld e, $9f
    rra
    ld [$2120], sp
    ld [hl+], a
    add $09
    ld d, e
    cp $fe
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    nop
    ld a, a

jr_01c_4f49:
    ld a, a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    cp $fe
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld a, a
    ld a, a
    call Call_01c_509b
    ld hl, $cfcb
    ld a, [hl]
    push af
    ld [hl], $ff
    push hl
    call Call_01c_51ef
    call Call_000_2f9e
    ld hl, $c3a1
    call Call_000_1955
    ld h, b
    ld l, c
    ld de, $4f89
    call Call_000_1955
    call Call_000_3865
    call Call_01c_51ab
    pop hl
    pop af
    ld [hl], a
    ret


    cp l
    ld a, a
    adc l
    add h
    sub d
    sub e
    ld d, b
    call Call_000_0082
    call Call_01c_509b
    call Call_000_0997
    call Call_000_3680
    ld de, $4d80
    ld hl, $8040
    ld bc, $050c
    call Call_000_1848
    ld de, $5093
    ld hl, $8ed0
    ld bc, $1c01
    call Call_000_1886
    call Call_01c_5070
    ld hl, $cfcb
    ld a, [hl]
    push af
    ld [hl], $ff
    push hl
    ld hl, $c3a0
    ld de, $506d
    call Call_000_1955
    ld a, [$d35e]
    ld b, $00
    call Call_01c_51c4
    ld hl, $cd3e
    ld de, $c3b2

Jump_01c_4fd6:
    ld a, $7f
    ld [de], a
    push hl
    push hl
    ld hl, $c3a3
    ld bc, $010f
    call Call_000_18c4
    pop hl
    ld a, [hl]
    ld b, $04
    call Call_01c_51c4
    ld hl, $c3a3
    ld de, $cd6d
    call Call_000_1955
    ld c, $0f
    call Call_000_3739
    ld hl, $c3b2
    ld [hl], $ed
    ld hl, $c3b3
    ld [hl], $ee
    pop hl

jr_01c_5004:
    push hl
    call Call_000_20af
    call Call_000_3831
    ldh a, [$b5]
    ld b, a
    pop hl
    and $c3
    jr z, jr_01c_5004

    bit 0, b
    jr nz, jr_01c_5026

    ld a, $8c
    call Call_000_23b1
    bit 6, b
    jr nz, jr_01c_5042

    bit 7, b
    jr nz, jr_01c_5058

    jr jr_01c_5037

jr_01c_5026:
    ld a, $8e
    call Call_000_23b1
    ld a, [hl]
    ld [$d71a], a
    ld hl, $d732
    set 3, [hl]
    inc hl
    set 7, [hl]

jr_01c_5037:
    xor a
    ld [$d09b], a
    call Call_000_3dd4
    pop hl
    pop af
    ld [hl], a
    ret


jr_01c_5042:
    ld de, $c3b2
    inc hl
    ld a, [hl]
    cp $ff
    jr z, jr_01c_5052

    cp $fe
    jr z, jr_01c_5042

    jp Jump_01c_4fd6


jr_01c_5052:
    ld hl, $cd3e
    jp Jump_01c_4fd6


jr_01c_5058:
    ld de, $c3b3
    dec hl
    ld a, [hl]
    cp $ff
    jr z, jr_01c_5068

    cp $fe
    jr z, jr_01c_5058

    jp Jump_01c_4fd6


jr_01c_5068:
    ld hl, $cd49
    jr jr_01c_5058

    sub e
    xor [hl]
    ld d, b

Call_01c_5070:
    ld hl, $cd3d
    ld [hl], $ff
    inc hl
    ld a, [$d70b]
    ld e, a
    ld a, [$d70c]
    ld d, a
    ld bc, $000b

jr_01c_5081:
    srl d
    rr e
    ld a, $fe
    jr nc, jr_01c_508a

    ld a, b

jr_01c_508a:
    ld [hl], a
    inc hl
    inc b
    dec c
    jr nz, jr_01c_5081

    ld [hl], $ff
    ret


    nop
    nop
    db $10
    jr c, jr_01c_5114

    cp $fe
    nop

Call_01c_509b:
    call Call_000_3dd4
    call Call_000_190f
    call Call_000_2429
    ld hl, $c3a0
    ld b, $12
    ld c, $12
    call Call_000_1922
    call Call_000_0061
    ld hl, $65a8
    ld de, $9600
    ld bc, $0100
    ld a, $04
    call Call_000_17f7
    ld hl, $56be
    ld de, $8040
    ld bc, $0008
    ld a, $1c
    call Call_000_182b
    ld hl, $c3a0
    ld de, $5100

jr_01c_50d3:
    ld a, [de]
    and a
    jr z, jr_01c_50e9

    ld b, a
    and $0f
    ld c, a
    ld a, b
    swap a
    and $0f
    add $60

jr_01c_50e2:
    ld [hl+], a
    dec c
    jr nz, jr_01c_50e2

    inc de
    jr jr_01c_50d3

jr_01c_50e9:
    call Call_000_007b
    ld b, $02
    call Call_000_3def
    call Call_000_3dd7
    call Call_000_3ddc
    xor a
    ld [$d08b], a
    inc a
    ld [$d09b], a
    ret


    ld a, a
    ld [hl], l
    ld l, h
    ld [hl], e
    add c
    ld b, h
    ld l, h
    ld [hl], c
    ld h, h
    add c
    ld b, d
    ld h, d
    ld d, c
    ld h, h
    ld [hl], c
    pop bc
    ld [hl], e
    ld d, c
    ld [hl], h
    ld h, d

jr_01c_5114:
    ld b, c
    ld h, d
    ld [hl], c
    ld h, c
    ld d, c
    ld [hl], e
    ld h, h
    ld [hl], c
    ld h, e
    pop bc
    ld h, c
    or c
    ld b, c
    ld h, d
    pop bc
    ld h, c
    pop bc
    ld h, a
    ld [hl], c
    ld h, e
    ld [hl], c
    or c
    ld b, d
    ld h, d
    ld [hl], c
    ld h, c
    ld [hl], c
    ld h, c
    ld [hl], e
    ld d, c
    ld [hl], d
    ld d, c
    ld [hl], e
    ld d, c
    ld b, e
    ld h, d
    ld [hl], c
    ld h, c
    ld [hl], c
    ld h, c
    ld [hl], c
    ld h, l
    ld [hl], c
    ld h, e
    ld [hl], c
    ld b, e
    ld h, d
    ld [hl], c
    ld h, c
    ld [hl], c
    ld h, c
    ld [hl], c
    or c
    and c
    ld h, e
    ld [hl], c
    ld h, e
    ld [hl], c
    ld b, e
    ld h, d
    ld [hl], d
    ld d, c
    ld h, c
    ld [hl], c
    ld b, e
    and c
    ld h, c
    ld [hl], c
    ld h, e
    ld [hl], c
    ld b, e
    ld h, c
    or c
    and c
    ld h, c
    ld [hl], c
    ld h, c
    ld [hl], c
    ld h, c
    ld b, e
    ld h, c
    ld d, c
    ld [hl], h
    sub c
    ld b, d
    or c
    ld b, d
    ld h, c
    ld [hl], c
    ld h, c
    ld [hl], c
    or c
    ld b, e
    and c
    ld h, h
    ld [hl], c
    or c
    ld b, d
    ld b, e
    ld h, c
    ld d, c
    or c
    pop af
    ld b, l
    ld h, c
    ld [hl], h
    ld b, e
    ld b, e
    and c
    ld [hl], c
    ld b, c
    pop af
    ld b, d
    sub c
    ld h, e
    ld [hl], c
    ld h, d
    ld b, h
    ld b, h
    pop af
    ld b, c
    pop de
    pop hl
    ld [hl], d
    ld d, c
    ld [hl], e
    ld h, c
    or c
    ld b, h
    ld b, e
    sub c
    ld [hl], c
    add c
    ld b, d
    and c
    ld h, c
    ld [hl], c
    or c
    ld c, b
    ld b, e
    ld h, c
    ld d, c
    ld [hl], c
    pop hl
    pop bc
    ld [c], a
    pop de
    ld c, c
    ld c, a
    ld b, l
    nop

Call_01c_51ab:
    xor a
    ld [$d09b], a
    call Call_000_3de5
    call Call_000_190f
    call Call_000_0082
    call Call_000_0997
    call Call_000_3680
    call Call_000_2429
    jp Jump_000_3ded


Call_01c_51c4:
    push af
    ld a, b
    ld [$cd5b], a
    pop af
    ld de, $cee9
    call Call_01c_52f1
    ld a, [de]
    push hl
    call Call_01c_5258
    call Call_01c_526d
    pop hl
    ld de, $cd6d

jr_01c_51dc:
    ld a, [hl+]
    ld [de], a
    inc de
    cp $50
    jr nz, jr_01c_51dc

    ld hl, $c300
    ld de, $c508
    ld bc, $00a0
    jp Jump_000_00b5


Call_01c_51ef:
    ld b, $03
    ld hl, $69cb
    call Call_000_35d6
    call Call_01c_52d9
    ld hl, $c300
    ld de, $cee9

jr_01c_5200:
    ld a, [de]
    cp $ff
    jr z, jr_01c_521d

    and a
    jr z, jr_01c_521a

    push hl
    call Call_01c_52f1
    pop hl
    ld a, [de]
    cp $19
    jr z, jr_01c_521a

    call Call_01c_5258
    ld a, $04
    ld [hl+], a
    xor a
    ld [hl+], a

jr_01c_521a:
    inc de
    jr jr_01c_5200

jr_01c_521d:
    ld a, l
    and a
    jr nz, jr_01c_5236

    ld hl, $c42d
    ld b, $02
    ld c, $0f
    call Call_000_1922
    ld hl, $c456
    ld de, $524a
    call Call_000_1955
    jr jr_01c_523e

jr_01c_5236:
    ld a, [$d35e]
    ld b, $00
    call Call_01c_51c4

jr_01c_523e:
    ld hl, $c300
    ld de, $c508
    ld bc, $00a0
    jp Jump_000_00b5


    ld a, a
    add b
    sub c
    add h
    add b
    ld a, a
    sub h
    adc l
    adc d
    adc l
    adc [hl]
    sub [hl]
    adc l
    ld d, b

Call_01c_5258:
    push af
    and $f0
    srl a
    add $18
    ld b, a
    ld [hl+], a
    pop af
    and $0f
    swap a
    srl a
    add $18
    ld c, a
    ld [hl+], a
    ret


Call_01c_526d:
    ld a, [$cd5b]
    and a
    ld hl, $c390
    jr z, jr_01c_5279

    ld hl, $c380

Call_01c_5279:
jr_01c_5279:
    push hl
    ld hl, $fcfc
    add hl, bc
    ld b, h
    ld c, l
    pop hl

Call_01c_5281:
    ld de, $0202

jr_01c_5284:
    push de
    push bc

jr_01c_5286:
    ld a, b
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld a, [$cd5b]
    ld [hl+], a
    inc a
    ld [$cd5b], a
    xor a
    ld [hl+], a
    inc d
    ld a, $08
    add c
    ld c, a
    dec e
    jr nz, jr_01c_5286

    pop bc
    pop de
    ld a, $08
    add b
    ld b, a
    dec d
    jr nz, jr_01c_5284

    ret


Call_01c_52a6:
    xor a
    ld [$cd5c], a
    ld de, $0202

jr_01c_52ad:
    push de
    push bc

jr_01c_52af:
    ld a, b
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld a, [$cd5b]
    ld [hl+], a
    ld a, [$cd5c]
    ld [hl+], a
    xor $20
    ld [$cd5c], a
    inc d
    ld a, $08
    add c
    ld c, a
    dec e
    jr nz, jr_01c_52af

    pop bc
    pop de
    push hl
    ld hl, $cd5b
    inc [hl]
    inc [hl]
    pop hl
    ld a, $08
    add b
    ld b, a
    dec d
    jr nz, jr_01c_52ad

    ret


Call_01c_52d9:
    ld de, $cee9

jr_01c_52dc:
    ld a, [de]
    inc de
    cp $ff
    ret z

    ld c, a
    ld l, e
    ld h, d

jr_01c_52e4:
    ld a, [hl]
    cp $ff
    jr z, jr_01c_52dc

    cp c
    jr nz, jr_01c_52ee

    xor a
    ld [hl], a

jr_01c_52ee:
    inc hl
    jr jr_01c_52e4

Call_01c_52f1:
    cp $25
    jr c, jr_01c_5304

    ld bc, $0004
    ld hl, $5382

jr_01c_52fb:
    cp [hl]
    jr c, jr_01c_5301

    add hl, bc
    jr jr_01c_52fb

jr_01c_5301:
    inc hl
    jr jr_01c_530d

jr_01c_5304:
    ld hl, $5313
    ld c, a
    ld b, $00
    add hl, bc
    add hl, bc
    add hl, bc

jr_01c_530d:
    ld a, [hl+]
    ld [de], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    or d
    ld [hl], e
    ld d, h
    add d
    ld a, a
    ld d, h
    ld [hl-], a
    adc l
    ld d, h
    ld a, [hl+]
    sbc c

jr_01c_531e:
    ld d, h
    ld e, [hl]
    and a
    ld d, h
    sbc d
    or l
    ld d, h
    ld d, a
    call nz, $d854
    pop de
    ld d, h
    ld a, [c]
    sbc $54
    jr nz, jr_01c_531e

    ld d, h
    ld e, d
    db $fd
    ld d, h
    nop
    ld [hl], e
    ld d, h
    and d
    ld a, [bc]
    ld d, l
    ld h, d
    ld [de], a
    ld d, l
    inc [hl]
    ld a, [de]
    ld d, l
    jr z, jr_01c_5364

    ld d, l
    ld a, [hl-]
    ld a, [hl+]
    ld d, l
    adc d
    ld [hl-], a
    ld d, l
    ld e, b
    ld a, [hl-]
    ld d, l
    ld e, l
    ld b, d
    ld d, l
    dec l
    ld c, d
    ld d, l
    ld c, [hl]
    ld d, d
    ld d, l
    sbc h
    ld e, e
    ld d, l
    sbc [hl]
    ld h, h
    ld d, l
    cp l
    ld l, l
    ld d, l
    bit 6, [hl]
    ld d, l
    jp c, $557f

jr_01c_5364:
    ld d, l
    adc b
    ld d, l
    add h
    sub c
    ld d, l
    sub $9a
    ld d, l
    or $a3
    ld d, l
    db $f4
    or b
    ld d, l
    jp nc, Jump_01c_55bd

    add b
    jp z, $6055

    db $d3
    ld d, l
    ld a, [de]
    call c, Call_000_0b55
    push hl
    ld d, l
    add hl, hl
    or d
    ld [hl], e
    ld d, h
    ld l, $82
    ld a, a
    ld d, h
    inc sp
    ld h, d
    ld [de], a
    ld d, l
    inc [hl]
    ld b, d
    xor $55
    dec sp
    ld [hl-], a
    adc l
    ld d, h
    ld a, $26
    cp $55
    ld b, h
    ld a, [hl+]
    sbc c
    ld d, h
    ld b, l
    dec h
    ld [hl+], a
    ld d, l
    ld b, [hl]
    ld a, [hl+]
    sbc c
    ld d, h
    ld c, c
    ld c, d
    ld a, [hl+]
    ld d, l
    ld c, h
    ld l, d
    ld [hl-], a
    ld d, l
    ld c, a
    ld e, c
    ld a, [hl-]
    ld d, l
    ld d, c
    ld e, e
    ld b, d
    ld d, l
    ld d, e
    ld a, $06
    ld d, [hl]
    ld d, h
    ld c, a
    or d
    ld d, [hl]
    ld d, a
    sbc l
    ld e, e
    ld d, l
    ld e, b
    ld a, [hl]
    ld h, h
    ld d, l
    ld e, c
    inc c
    ld [de], a
    ld d, [hl]
    ld e, a
    sbc d
    or l
    ld d, h
    ld l, c
    xor c
    ld e, $56
    ld l, l
    ld b, b
    ld e, a
    ld d, [hl]
    ld [hl], a
    jr nz, jr_01c_5400

    ld d, [hl]
    ld a, b
    ld e, d
    inc sp
    ld d, [hl]
    ld a, c
    jr nz, jr_01c_5408

    ld d, [hl]
    ld a, d
    ld e, d
    inc sp
    ld d, [hl]
    adc l
    ld d, a
    call nz, $8e54
    ld e, [hl]
    and a
    ld d, h
    sub l
    ld e, a
    ld b, h
    ld d, [hl]
    sbc b
    ld e, [hl]
    and a
    ld d, h
    sbc h
    ret c

    pop de
    ld d, h
    sbc l
    ret z

    sbc b
    ld d, [hl]
    sbc a
    ret c

jr_01c_5400:
    pop de
    ld d, h
    and e
    push af
    ld c, a
    ld d, [hl]
    and h

jr_01c_5407:
    sbc d

jr_01c_5408:
    or l
    ld d, h
    and l
    ret c

    pop de
    ld d, h
    and [hl]
    ld a, [c]
    adc [hl]
    ld d, [hl]
    xor [hl]
    ld a, [c]
    sbc $54
    xor a
    jr nz, jr_01c_5407

    ld d, h
    cp b
    ld e, d
    db $fd
    ld d, h
    cp d
    reti


    ld a, a
    ld d, l
    cp l
    ld d, h
    adc b
    ld d, l
    cp [hl]
    xor [hl]
    ld h, h
    ld d, l
    ret nz

    rst $10
    sbc d
    ld d, l
    pop bc
    push af
    ld c, a
    ld d, [hl]
    jp nz, $ca70

    ld d, l
    jp $5f40


    ld d, [hl]
    call nz, Call_01c_647e
    ld d, l
    push bc
    sbc d
    or l
    ld d, h
    add $43
    ld l, h
    ld d, [hl]
    rst $00
    ld b, b
    ld e, a
    ld d, [hl]
    rst $08
    ld d, a
    ld a, d
    ld d, [hl]
    sub $5a
    add h
    ld d, [hl]
    reti


    ld a, [c]
    adc [hl]
    ld d, [hl]
    ld [c], a
    ret z

    sbc b
    ld d, [hl]
    push hl
    add hl, de
    and h
    ld d, [hl]
    and $5e
    and a
    ld d, h
    rst $20
    ld a, [hl+]
    sbc c
    ld d, h
    jp hl


    ld a, $06
    ld d, [hl]
    db $ed
    ld e, d
    add h
    ld d, [hl]
    ld hl, sp+$20
    daa
    ld d, [hl]
    rst $38
    adc a
    add b
    adc e
    adc e
    add h
    sub e
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    adc l
    ld d, b
    sub l
    adc b
    sub c
    adc b
    add e
    adc b
    add b
    adc l
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld d, b
    adc a
    add h
    sub [hl]
    sub e
    add h
    sub c
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld d, b
    add d
    add h
    sub c
    sub h
    adc e
    add h
    add b
    adc l
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld d, b
    adc e
    add b
    sub l
    add h
    adc l
    add e
    add h
    sub c
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    adc l
    ld d, b
    sub l
    add h
    sub c
    adc h
    adc b
    adc e
    adc b
    adc [hl]
    adc l
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld d, b
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
    add l
    sub h
    add d
    add a
    sub d
    adc b
    add b
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld d, b
    add d
    adc b
    adc l
    adc l
    add b
    add c
    add b
    sub c
    ld a, a
    adc b
    sub d
    adc e
    add b
    adc l
    add e
    ld d, b
    adc b
    adc l
    add e
    adc b
    add [hl]
    adc [hl]
    ld a, a
    adc a
    adc e
    add b
    sub e
    add h
    add b
    sub h
    ld d, b
    sub d
    add b
    add l
    add l
    sub c
    adc [hl]
    adc l
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld d, b
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    rst $30
    ld d, b
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    ld hl, sp+$50
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    ld sp, hl
    ld d, b
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    ld a, [$9150]
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    ei
    ld d, b
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    db $fc
    ld d, b
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    db $fd
    ld d, b
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    cp $50
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    rst $38
    ld d, b
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    rst $30
    or $50
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    rst $30
    rst $30
    ld d, b
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    rst $30
    ld hl, sp+$50
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    rst $30
    ld sp, hl
    ld d, b
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    rst $30
    ld a, [$9150]
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    rst $30
    ei
    ld d, b
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    rst $30
    db $fc
    ld d, b
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    rst $30
    db $fd
    ld d, b
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    rst $30
    cp $50
    sub d
    add h
    add b
    ld a, a
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    rst $30
    rst $38
    ld d, b
    sub d
    add h
    add b
    ld a, a
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    ld hl, sp-$0a
    ld d, b

Jump_01c_55bd:
    sub d
    add h
    add b
    ld a, a
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    ld hl, sp-$09
    ld d, b
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    ld hl, sp-$08
    ld d, b
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    ld hl, sp-$07
    ld d, b
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    ld hl, sp-$06
    ld d, b
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    ld hl, sp-$05
    ld d, b
    sub l
    adc b
    sub c
    adc b
    add e
    adc b
    add b
    adc l
    ld a, a
    add l
    adc [hl]
    sub c
    add h
    sub d
    sub e
    ld d, b
    adc h
    sub e
    add sp, -$74
    adc [hl]
    adc [hl]
    adc l
    ld d, b
    sub c
    adc [hl]
    add d
    adc d
    ld a, a
    sub e
    sub h
    adc l
    adc l
    add h
    adc e
    ld d, b
    sub d
    add h
    add b
    ld a, a
    add d
    adc [hl]
    sub e
    sub e
    add b
    add [hl]
    add h
    ld d, b
    sub d
    add sp, -$6e
    add sp, -$80
    adc l
    adc l
    add h
    ld d, b
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    adc e
    add h
    add b
    add [hl]
    sub h
    add h
    ld d, b
    sub h
    adc l
    add e
    add h
    sub c
    add [hl]
    sub c
    adc [hl]
    sub h
    adc l
    add e
    ld a, a
    adc a
    add b
    sub e
    add a
    ld d, b
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    add h
    sub c
    ld d, b
    sub d
    add h
    add b
    add l
    adc [hl]
    add b
    adc h
    ld a, a
    adc b
    sub d
    adc e
    add b
    adc l
    add e
    sub d
    ld d, b
    sub l
    adc b
    add d
    sub e
    adc [hl]
    sub c
    sbc b
    ld a, a
    sub c
    adc [hl]
    add b
    add e
    ld d, b
    add e
    adc b
    add [hl]
    adc e
    add h
    sub e
    sub e
    cp l
    ld a, a
    add d
    add b
    sub l
    add h
    ld d, b
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub e
    ld a, a
    add a
    sub b
    ld d, b
    sub d
    adc b
    adc e
    adc a
    add a
    ld a, a
    add d
    adc [hl]
    add sp, $50
    ld c, d
    ld a, a
    adc h
    add b
    adc l
    sub d
    adc b
    adc [hl]
    adc l
    ld d, b
    sub d
    add b
    add l
    add b
    sub c
    adc b
    ld a, a
    sbc c
    adc [hl]
    adc l
    add h
    ld d, b
    add d
    add h
    sub c
    sub h
    adc e
    add h
    add b
    adc l
    ld a, a
    add d
    add b
    sub l
    add h
    ld d, b
    adc a
    adc [hl]
    sub [hl]
    add h
    sub c
    ld a, a
    adc a
    adc e
    add b
    adc l
    sub e
    ld d, b
    ld b, d
    ld h, [hl]
    rst $38
    cp l
    sbc c
    rst $38
    ld e, d
    inc h

Call_01c_56c6:
    ld a, [$d08b]
    inc a
    cp $19
    jr z, jr_01c_56e1

    cp $32
    jr nz, jr_01c_56f1

    ld hl, $c508
    ld de, $c300
    ld bc, $0090
    call Call_000_00b5
    xor a
    jr jr_01c_56f1

jr_01c_56e1:
    ld hl, $c300
    ld b, $24
    ld de, $0004

jr_01c_56e9:
    ld [hl], $a0
    add hl, de
    dec b
    jr nz, jr_01c_56e9

    ld a, $19

jr_01c_56f1:
    ld [$d08b], a
    jp Jump_000_20af


    xor a
    ld [$cc26], a
    ld b, a
    inc a
    jr jr_01c_570a

    ld hl, $cf1f
    ld a, [$cc26]
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]

jr_01c_570a:
    ld c, a
    ld hl, $5769
    add hl, bc
    ld a, [$cf1b]
    xor $01
    add [hl]
    ld c, a
    add a
    ld b, a
    ld a, [$d08b]
    and a
    jr z, jr_01c_572c

    cp c
    jr z, jr_01c_573d

jr_01c_5721:
    inc a
    cp b
    jr nz, jr_01c_5726

    xor a

jr_01c_5726:
    ld [$d08b], a
    jp Jump_000_20af


jr_01c_572c:
    push bc
    ld hl, $cc5b
    ld de, $c300
    ld bc, $0060
    call Call_000_00b5
    pop bc
    xor a
    jr jr_01c_5721

jr_01c_573d:
    push bc
    ld hl, $c302
    ld bc, $0010
    ld a, [$cc26]
    call Call_000_3a87
    ld c, $40
    ld a, [hl]
    cp $04
    jr z, jr_01c_5755

    cp $08
    jr nz, jr_01c_5759

jr_01c_5755:
    dec hl
    dec hl
    ld c, $01

jr_01c_5759:
    ld b, $04
    ld de, $0004

jr_01c_575e:
    ld a, [hl]
    add c
    ld [hl], a
    add hl, de
    dec b
    jr nz, jr_01c_575e

    pop bc
    ld a, c
    jr jr_01c_5721

    dec b
    db $10
    jr nz, jr_01c_578e

    ret nz

    ld d, a
    ld a, $1c

Call_01c_5771:
    ld bc, $0000

jr_01c_5774:
    push af
    push bc
    push hl
    add hl, bc
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_1848
    pop hl
    pop bc
    ld a, $06
    add c
    ld c, a
    pop af
    dec a

jr_01c_578e:
    jr nz, jr_01c_5774

    ret


    call Call_000_0061
    ld hl, $57c0
    ld a, $1c
    ld bc, $0000

jr_01c_579c:
    push af
    push bc
    push hl
    add hl, bc
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push de
    ld a, [hl+]
    ld c, a
    swap c
    ld b, $00
    ld a, [hl+]
    ld e, [hl]
    inc hl
    ld d, [hl]
    pop hl
    call Call_000_17f7
    pop hl
    pop bc
    ld a, $06
    add c
    ld c, a
    pop af
    dec a
    jr nz, jr_01c_579c

    jp Jump_000_007b


    ld b, b
    ld c, b
    inc b
    dec b
    nop
    add b
    ld b, b
    ld d, c
    ld [$4004], sp
    add b
    add b
    ld [hl], c
    inc b
    dec b
    ret nz

    add b
    ld b, b
    ld c, [hl]
    inc b
    dec b
    nop
    add c
    ret nz

    db $76
    inc b
    dec b
    ld b, b
    add c
    sbc c
    ld e, c
    ld bc, $801c
    add c
    xor c
    ld e, c
    ld bc, $a01c
    add c
    cp c
    ld e, c
    ld bc, $c01c
    add c
    ret


    ld e, c
    ld bc, $e01c
    add c
    reti


    ld e, c
    ld bc, $001c
    add d
    jp hl


    ld e, c
    ld bc, $201c
    add d
    ld sp, hl
    ld e, c
    ld bc, $401c
    add d
    add hl, bc
    ld e, d
    ld bc, $601c
    add d
    ld e, c
    ld e, d
    inc b
    inc e
    add b
    add e
    add b
    ld b, a
    inc b
    dec b
    nop
    add h
    ld b, b
    ld d, c
    ld [$4004], sp
    add h
    ret nz

    ld [hl], b
    inc b
    dec b
    ret nz

    add h
    add b
    ld c, l
    inc b
    dec b
    nop
    add l
    add b
    ld [hl], a
    inc b
    dec b
    ld b, b
    add l
    ld e, c
    ld e, c
    ld bc, $801c
    add l
    ld l, c
    ld e, c
    ld bc, $a01c
    add l
    ld a, c
    ld e, c
    ld bc, $c01c
    add l
    adc c
    ld e, c
    ld bc, $e01c
    add l
    add hl, de
    ld e, d
    ld bc, $001c
    add [hl]
    add hl, hl
    ld e, d
    ld bc, $201c
    add [hl]
    add hl, sp
    ld e, d
    ld bc, $401c
    add [hl]
    ld c, c
    ld e, d
    ld bc, $601c
    add [hl]
    sbc c
    ld e, d
    inc b
    inc e
    add b
    add a
    push hl
    push de
    push bc
    ldh a, [$8c]
    ld hl, $d164
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    call Call_01c_58e9
    ld [$cd5b], a
    call Call_01c_58c3
    pop bc
    pop de
    pop hl
    ret


jr_01c_5882:
    xor a
    ldh [$8c], a
    ld a, [$cd5d]
    call Call_01c_58e9
    ld [$cd5b], a
    jr jr_01c_58c3

    ld a, [$cf91]
    call Call_01c_58e9
    push af
    ld hl, $8000
    call Call_01c_58ac
    pop af
    add $54
    ld hl, $8040
    call Call_01c_58ac
    xor a
    ld [$cd5d], a
    jr jr_01c_5882

Call_01c_58ac:
    push hl
    add a
    ld c, a
    ld b, $00
    ld hl, $57c0
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    pop hl
    jp Jump_000_1848


Call_01c_58c3:
jr_01c_58c3:
    push af
    ld c, $10
    ld h, $c3
    ldh a, [$8c]
    swap a
    ld l, a
    add $10
    ld b, a
    pop af
    cp $08
    jr z, jr_01c_58da

    call Call_01c_52a6
    jr jr_01c_58dd

jr_01c_58da:
    call Call_01c_5281

jr_01c_58dd:
    ld hl, $c300
    ld de, $cc5b
    ld bc, $0060
    jp Jump_000_00b5


Call_01c_58e9:
    ld [$d11e], a
    ld a, $3a
    call Call_000_3e6d
    ld a, [$d11e]
    ld c, a
    dec a
    srl a
    ld hl, $590d
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    bit 0, c
    jr nz, jr_01c_5906

    swap a

jr_01c_5906:
    and $f0
    srl a
    srl a
    ret


    ld [hl], a
    ld [hl], b
    nop
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, h
    ld b, h
    sbc c
    ld b, h
    adc b
    inc sp
    nop
    nop
    nop
    nop
    inc sp
    sbc c
    inc sp
    nop
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, b
    nop
    nop
    nop
    add hl, bc
    sub b
    nop
    nop
    nop
    nop
    ld [hl], a
    ld [hl], l
    ld d, b
    nop
    sbc c
    sub b
    ld de, $4544
    ld d, b
    ld [bc], a
    jr nz, jr_01c_593c

jr_01c_593c:
    add b
    dec b
    ld d, c
    rla
    ld [hl], b
    nop
    nop
    nop
    sub b
    scf
    dec b
    ld d, l
    ld d, d
    jr nz, jr_01c_59ab

    nop
    ld l, c
    ld e, b
    ld d, b
    sbc c
    sbc c
    ld [bc], a
    ld [hl+], a
    inc h
    inc b
    ld b, h
    adc b
    add b
    nop
    nop
    nop
    inc c
    inc c
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    rrca
    inc c
    inc de
    ld e, $73
    ld a, [hl]
    rst $08
    call z, Call_000_1d17
    ld [hl], e
    ld a, a
    jr @+$21

    rla
    rra
    jr z, @+$31

    ld b, [hl]
    ld b, a
    ld b, c
    ld b, c
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
    jr c, jr_01c_59c2

    ld e, h
    ld h, a
    sbc a
    db $e3
    sbc a
    push hl
    adc h
    di
    ld a, b
    ld a, a
    ld [$740f], sp
    ld [hl], a
    ei
    adc e
    ld a, l
    ld b, l
    ccf
    inc sp
    ld c, $0e
    nop
    nop
    nop
    nop
    inc c
    inc c
    ld [bc], a
    ld [bc], a
    jp Jump_01c_6fc3


    ld l, h
    inc sp
    ld a, $13
    ld e, $1f
    inc e

jr_01c_59ab:
    ld [hl], a
    ld a, l
    dec de
    rra
    rla
    rra
    jr z, @+$31

    ld b, [hl]
    ld b, a
    ld b, c
    ld b, c
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    jr c, jr_01c_5a00

    ld b, h

jr_01c_59c2:
    ld a, a
    ld e, d
    ld h, a
    ld e, a
    ld h, e
    ld e, a
    ld h, l
    inc h
    dec sp
    jr jr_01c_59ec

    ld [$770f], sp
    ld [hl], a
    ld sp, hl
    adc c
    ld a, l
    ld b, l
    ccf
    inc sp
    ld c, $0e
    nop
    nop
    ld bc, $0201
    inc bc
    rlca
    rlca
    ld [$1c0f], sp
    inc de
    ld e, $15
    ld c, $09
    inc b
    rlca
    ld a, [bc]

jr_01c_59ec:
    rrca
    dec bc
    dec c
    inc de
    inc e
    inc d
    dec de
    rrca
    ld [$0407], sp
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    inc e
    rra
    ccf

jr_01c_5a00:
    daa
    inc e
    inc de
    jr z, jr_01c_5a44

    ld l, $39
    ld l, $3b
    jr z, @+$41

    inc h
    ccf
    daa
    dec a
    ld [hl+], a
    ccf
    ld de, $121f
    ld e, $1e
    ld [de], a
    inc c
    inc c
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    rlca
    rlca
    ld [$1c0f], sp
    inc de
    ld e, $15
    ld c, $09
    inc b
    rlca
    ld a, [bc]
    rrca
    rla
    add hl, de
    inc de
    inc e
    inc d
    dec de
    rrca
    ld [$0707], sp
    nop
    nop
    inc bc
    inc bc
    inc c
    rrca
    jr jr_01c_5a60

    ccf
    daa
    inc a

jr_01c_5a44:
    inc sp
    jr z, jr_01c_5a86

    ld l, $39
    ld l, $3b
    jr z, jr_01c_5a8c

    inc h
    ccf
    daa
    dec a
    inc de
    rra
    ld [de], a
    ld e, $1e
    ld [de], a
    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01c_5a60:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc e
    rra
    ld h, e
    ld a, a
    sbc a
    db $fc
    ld [bc], a
    inc bc
    dec b
    rlca
    dec bc
    ld c, $17
    inc e
    cpl
    jr c, jr_01c_5ab3

    jr c, jr_01c_5ae5

jr_01c_5a86:
    ld [hl], b
    ld e, a
    ld [hl], b
    ld a, a
    ldh [rIE], a

jr_01c_5a8c:
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
    ld bc, $0201
    inc bc
    nop
    nop
    nop
    nop
    rlca
    rlca
    jr jr_01c_5ad0

    ld h, a
    ld a, a

jr_01c_5ab3:
    sbc a
    ld hl, sp+$7f
    ldh [rIE], a
    add b
    dec b
    rlca
    dec bc
    ld c, $0b
    ld c, $17
    inc e
    rla
    inc e
    cpl
    jr c, jr_01c_5af5

    jr c, @+$31

    jr c, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_01c_5ad0:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    call Call_000_36f4
    ld hl, $5b7b
    ld a, [$cd3d]
    ld b, a
    swap a

jr_01c_5ae5:
    sub b
    sub b
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld [$cd0f], a
    ld a, [hl+]
    ld [$cd34], a
    ld a, [hl+]
    push af

jr_01c_5af5:
    ld de, $cd29
    ld bc, $000b
    call Call_000_00b5
    pop af
    ld l, a
    ld h, $00
    ld de, $5d64
    add hl, hl
    add hl, de
    ld a, [hl+]
    ld [$cd10], a
    ld a, [hl]
    ld [$cd11], a
    ld a, [$cd0f]
    ld de, $cd13
    call Call_01c_5b6a
    ld a, [$cd34]
    ld de, $cd1e
    call Call_01c_5b6a
    ld hl, $d737
    ld a, [$cd3d]
    ld c, a
    ld b, $02
    ld a, $10
    call Call_000_3e6d
    ld a, c
    and a
    ld a, $04
    ld [$cd12], a
    jr nz, jr_01c_5b58

    xor a
    ld [$cd12], a
    call Call_01c_5b58
    ld a, $01
    ld [$cd12], a
    call Call_000_35ec
    ld a, [$cc26]
    and a
    jr nz, jr_01c_5b58

    call Call_01c_5c07
    jr c, jr_01c_5b58

    ld hl, $5d8d
    call Call_000_3c49

Call_01c_5b58:
jr_01c_5b58:
    ld hl, $cd12
    ld a, [hl-]
    ld e, a
    ld d, $00
    ld a, [hl-]
    ld l, [hl]
    ld h, a
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp Jump_000_3c49


Call_01c_5b6a:
    push de
    ld [$d11e], a
    call Call_000_2f9e
    ld hl, $cd6d
    pop de
    ld bc, $000b
    jp Jump_000_00b5


    and a
    xor b
    nop
    sub e
    add h
    sub c
    sub c
    sbc b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sub h
    ld a, [hl+]
    nop
    adc h
    add b
    sub c
    add d
    add h
    adc e
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld a, l
    ld [hl], d
    ld [bc], a
    add d
    add a
    adc b
    adc d
    sub h
    add d
    add a
    adc b
    adc d
    sub h
    ld d, b
    and e
    ld a, [hl-]
    nop
    sub d
    add b
    adc b
    adc e
    adc [hl]
    sub c
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    dec b
    ld b, b
    ld [bc], a
    add e
    sub h
    sub a
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld [$000b], sp
    adc h
    add b
    sub c
    add d
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld l, [hl]
    ld c, b
    ld bc, $8e8b
    adc e
    add b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, l
    adc l
    ld bc, $8e83
    sub c
    adc b
    sub d
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld b, c
    ld e, $02
    add d
    sub c
    adc b
    adc l
    adc d
    adc e
    add h
    sub d
    ld d, b
    ld d, b
    ld d, b
    inc bc
    rrca
    ld [bc], a
    sub d
    adc a
    adc [hl]
    sub e
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b

Call_01c_5c07:
    xor a
    ld [$d07d], a
    dec a
    ld [$cfcb], a
    call Call_000_13fc
    push af
    call Call_01c_5ca2
    pop af
    ld a, $01
    jp c, Jump_01c_5c9d

    ld a, [$cd0f]
    ld b, a
    ld a, [$cf91]
    cp b
    ld a, $02
    jr nz, jr_01c_5c9d

    ld a, [$cf92]
    ld hl, $d18c
    ld bc, $002c
    call Call_000_3a87
    ld a, [hl]
    ld [$d127], a
    ld hl, $d737
    ld a, [$cd3d]
    ld c, a
    ld b, $01
    ld a, $10
    call Call_000_3e6d
    ld hl, $5d88
    call Call_000_3c49
    ld a, [$cf92]
    push af
    ld a, [$d127]
    push af
    call Call_000_36c0
    call Call_01c_5cc1
    ld a, $38
    call Call_000_3e6d
    pop af
    ld [$d127], a
    pop af
    ld [$cf92], a
    ld a, [$cd34]
    ld [$cf91], a
    xor a
    ld [$cc49], a
    ld [$cf95], a
    call Call_000_391f
    ld a, $80
    ld [$cc49], a
    call Call_000_3927
    call Call_01c_5d19
    ld hl, $7d7d
    ld b, $05
    call Call_000_35d6
    call Call_000_190f
    call Call_01c_5ca2
    ld b, $03
    ld hl, $6edc
    call Call_000_35d6
    and a
    ld a, $03
    jr jr_01c_5c9e

Jump_01c_5c9d:
jr_01c_5c9d:
    scf

jr_01c_5c9e:
    ld [$cd12], a
    ret


Call_01c_5ca2:
    call Call_000_3dd4
    call Call_000_3dbe
    call Call_000_3090
    call Call_000_3701
    call Call_000_3dd7
    call Call_000_20ba
    ld c, $0a
    call Call_000_3739
    ld b, $03
    ld hl, $4eb8
    jp Jump_000_35d6


Call_01c_5cc1:
    ld hl, $cd3d
    ld a, [$cd0f]
    ld [hl+], a
    ld a, [$cd34]
    ld [hl], a
    ld hl, $d273
    ld bc, $000b
    ld a, [$cf92]
    call Call_000_3a87
    ld de, $cd41
    ld bc, $000b
    call Call_01c_5d11
    ld hl, $5d59
    ld de, $cd4e
    call Call_01c_5d11
    ld de, $d887
    call Call_01c_5d11
    ld hl, $d177
    ld bc, $002c
    ld a, [$cf92]
    call Call_000_3a87
    ld de, $cd4c
    ld bc, $0002
    call Call_01c_5d11
    call Call_000_3e5c
    ld hl, $ffd3
    ld de, $cd59
    jp Jump_000_00b5


Call_01c_5d11:
    push hl
    push bc
    call Call_000_00b5
    pop bc
    pop hl
    ret


Call_01c_5d19:
    ld hl, $d2b5
    ld bc, $000b
    call Call_01c_5d4f
    ld hl, $cd29
    ld bc, $000b
    call Call_000_00b5
    ld hl, $d273
    ld bc, $000b
    call Call_01c_5d4f
    ld hl, $5d59
    ld bc, $000b
    call Call_000_00b5
    ld hl, $d177
    ld bc, $002c
    call Call_01c_5d4f
    ld hl, $cd59
    ld bc, $0002
    jp Jump_000_00b5


Call_01c_5d4f:
    ld a, [$d163]
    dec a
    call Call_000_3a87
    ld e, l
    ld d, h
    ret


    ld e, l
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld l, d
    ld e, l
    ld [hl], h
    ld e, l
    ld a, [hl]
    ld e, l
    sub h
    ld e, l
    sbc c
    ld e, l
    sbc [hl]
    ld e, l
    and e
    ld e, l
    xor b
    ld e, l
    xor l
    ld e, l
    or d
    ld e, l
    or a
    ld e, l
    cp h
    ld e, l
    pop bc
    ld e, l
    add $5d
    bit 3, l
    ret nc

    ld e, l
    push de
    ld e, l
    jp c, Jump_000_175d

    sbc d
    ld b, b
    ld a, [hl+]
    ld d, b
    rla
    cp h
    ld b, b
    ld a, [hl+]
    ld de, $500a
    rla
    ret c

    ld b, b
    ld a, [hl+]
    ld d, b
    rla
    dec bc
    ld b, c
    ld a, [hl+]
    ld d, b
    rla
    dec e
    ld b, c
    ld a, [hl+]
    ld d, b
    rla
    ld d, l
    ld b, c
    ld a, [hl+]
    ld d, b
    rla
    ld h, d
    ld b, c
    ld a, [hl+]
    ld d, b
    rla
    ld a, h
    ld b, c
    ld a, [hl+]
    ld d, b
    rla
    or l
    ld b, c
    ld a, [hl+]
    ld d, b
    rla
    db $d3
    ld b, c
    ld a, [hl+]
    ld d, b
    rla
    add hl, bc
    ld b, d
    ld a, [hl+]
    ld d, b
    rla
    ld [de], a
    ld b, d
    ld a, [hl+]
    ld d, b
    rla
    ld b, b
    ld b, d
    ld a, [hl+]
    ld d, b
    rla
    ld [hl], h
    ld b, d
    ld a, [hl+]
    ld d, b
    rla
    add h
    ld b, d
    ld a, [hl+]
    ld d, b
    rla
    cp h
    ld b, d
    ld a, [hl+]
    ld d, b
    rla
    ret


    ld b, d
    ld a, [hl+]
    ld d, b
    call Call_000_3e94
    ld a, b
    cp $ff
    jr nz, jr_01c_5dea

    ld a, [$cf1c]

jr_01c_5dea:
    cp $fc
    jp z, Jump_01c_5fc2

    ld l, a
    ld h, $00
    add hl, hl
    ld de, $5f73
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $6156
    push de
    jp hl


    ld hl, $6448
    ld de, $61b5
    ret


    ld hl, $6428
    ld de, $cf2d
    ld bc, $0010
    call Call_000_00b5
    ld a, [$d064]
    ld hl, $d014
    call Call_01c_5f97
    ld b, a
    ld a, [$d069]
    ld hl, $cfd8
    call Call_01c_5f97
    ld c, a
    ld hl, $cf2e
    ld a, [$cf1d]
    add $1f
    ld [hl+], a
    inc hl
    ld a, [$cf1e]
    add $1f
    ld [hl+], a
    inc hl
    ld a, b
    ld [hl+], a
    inc hl
    ld a, c
    ld [hl], a
    ld hl, $cf2d
    ld de, $61b5
    ld a, $01
    ld [$cf1c], a
    ret


    ld hl, $6458
    ld de, $619e
    ret


    ld hl, $6428
    ld de, $cf2d
    ld bc, $0010
    call Call_000_00b5
    ld a, [$cf91]
    cp $bf
    jr c, jr_01c_5e64

    ld a, $01

jr_01c_5e64:
    call Call_01c_5f9d
    push af
    ld hl, $cf2e
    ld a, [$cf25]
    add $1f
    ld [hl+], a
    inc hl
    pop af
    ld [hl], a
    ld hl, $cf2d
    ld de, $61fa
    ret


    ld hl, $6438
    ld de, $cf2e
    ret


    ld hl, $6468
    ld de, $cf2d
    ld bc, $0010
    call Call_000_00b5
    ld a, [$cf91]
    call Call_01c_5f9d
    ld hl, $cf30
    ld [hl], a
    ld hl, $cf2d
    ld de, $6222
    ret


    ld hl, $6478
    ld de, $624f
    ret


    ld hl, $6488
    ld de, $628e
    ret


    ld hl, $64a8
    ld de, $619e
    ret


    ld hl, $64b8
    ld de, $62c1
    ret


    ld hl, $64c8
    ld de, $63dd
    ld a, $08
    ld [$cf1c], a
    ret


    ld hl, $6428
    ld de, $cf2d
    ld bc, $0010
    call Call_000_00b5
    ld a, [$d367]
    cp $0f
    jr z, jr_01c_5f0c

    cp $11
    jr z, jr_01c_5f10

    ld a, [$d35e]
    cp $25
    jr c, jr_01c_5ef8

    cp $e2
    jr c, jr_01c_5ef5

    cp $e5
    jr c, jr_01c_5f10

    cp $f5
    jr z, jr_01c_5f14

    cp $f6
    jr z, jr_01c_5f10

jr_01c_5ef5:
    ld a, [$d365]

jr_01c_5ef8:
    cp $0b
    jr c, jr_01c_5efe

    ld a, $ff

jr_01c_5efe:
    inc a
    ld hl, $cf2e
    ld [hl-], a
    ld de, $619e
    ld a, $09
    ld [$cf1c], a
    ret


jr_01c_5f0c:
    ld a, $18
    jr jr_01c_5efe

jr_01c_5f10:
    ld a, $22
    jr jr_01c_5efe

jr_01c_5f14:
    xor a
    jr jr_01c_5efe

    push bc
    ld hl, $6428
    ld de, $cf2d
    ld bc, $0010
    call Call_000_00b5
    pop bc
    ld a, c
    and a
    ld a, $1e
    jr nz, jr_01c_5f31

    ld a, [$cf1d]
    call Call_01c_5f9d

jr_01c_5f31:
    ld [$cf2e], a
    ld hl, $cf2d
    ld de, $619e
    ret


    ld hl, $6360
    ld de, $cc5b
    ld bc, $0040
    call Call_000_00b5
    ld de, $5f8f
    ld hl, $cc5d
    ld a, [$d356]
    ld c, $08

jr_01c_5f52:
    srl a
    push af
    jr c, jr_01c_5f62

    push bc
    ld a, [de]
    ld c, a
    xor a

jr_01c_5f5b:
    ld [hl+], a
    dec c
    jr nz, jr_01c_5f5b

    pop bc
    jr jr_01c_5f67

jr_01c_5f62:
    ld a, [de]

jr_01c_5f63:
    inc hl
    dec a
    jr nz, jr_01c_5f63

jr_01c_5f67:
    pop af
    inc de
    dec c
    jr nz, jr_01c_5f52

    ld hl, $6498
    ld de, $cc5b
    ret


    rst $38
    ld e, l
    ld b, $5e
    ld c, b
    ld e, [hl]
    ld c, a
    ld e, [hl]
    add d
    ld e, [hl]
    sbc a
    ld e, [hl]
    and [hl]
    ld e, [hl]
    or h
    ld e, [hl]
    xor l
    ld e, [hl]
    rst $00
    ld e, [hl]
    ld a, e
    ld e, [hl]
    rla
    ld e, a
    cp e
    ld e, [hl]
    dec sp
    ld e, a
    ld b, $06
    ld b, $12
    ld b, $06
    ld b, $06

Call_01c_5f97:
    bit 3, a
    ld a, $19
    ret nz

    ld a, [hl]

Call_01c_5f9d:
    ld [$d11e], a
    and a
    jr z, jr_01c_5fad

    push bc
    ld a, $3a
    call Call_000_3e6d
    pop bc
    ld a, [$d11e]

jr_01c_5fad:
    ld e, a
    ld d, $00
    ld hl, $65c8
    add hl, de
    ld a, [hl]
    ret


    ld hl, $62f4
    ld de, $cf2e
    ld bc, $0030
    jp Jump_000_00b5


Jump_01c_5fc2:
    ld hl, $cf1f
    ld a, [$cf2d]
    ld e, a
    ld d, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    and a
    ld e, $05
    jr z, jr_01c_5fdb

    dec a
    ld e, $0a
    jr z, jr_01c_5fdb

    ld e, $0f

jr_01c_5fdb:
    push de
    ld hl, $cf37
    ld bc, $0006
    ld a, [$cf2d]
    call Call_000_3a87
    pop de
    ld [hl], e
    ret


Call_01c_5feb:
Jump_01c_5feb:
    ld a, [hl]
    and $07
    ret z

    ld b, a

jr_01c_5ff0:
    push bc
    ld a, $01
    ldh [$f9], a
    xor a
    ldh [rP1], a
    ld a, $30
    ldh [rP1], a
    ld b, $10

jr_01c_5ffe:
    ld e, $08
    ld a, [hl+]
    ld d, a

jr_01c_6002:
    bit 0, d
    ld a, $10
    jr nz, jr_01c_600a

    ld a, $20

jr_01c_600a:
    ldh [rP1], a
    ld a, $30
    ldh [rP1], a
    rr d
    dec e
    jr nz, jr_01c_6002

    dec b
    jr nz, jr_01c_5ffe

    ld a, $20
    ldh [rP1], a
    ld a, $30
    ldh [rP1], a
    xor a
    ldh [$f9], a
    call Call_01c_614a
    pop bc
    dec b
    ret z

    jr jr_01c_5ff0

    xor a
    ld [$cf1b], a
    call Call_01c_609b
    ret nc

    ld a, $01
    ld [$cf1b], a
    ld a, [$cf1a]
    and a
    jr z, jr_01c_603f

    ret


jr_01c_603f:
    di
    call Call_01c_6075
    ei
    ld a, $01
    ld [$cf2d], a
    ld de, $6508
    ld hl, $6fe8
    call Call_01c_610b
    xor a
    ld [$cf2d], a
    ld de, $6518
    ld hl, $6788
    call Call_01c_610b
    xor a
    ld [$cf2d], a
    ld de, $64d8
    ld hl, $6660
    call Call_01c_610b
    call Call_000_2004
    ld hl, $6538
    jp Jump_01c_5feb


Call_01c_6075:
    ld hl, $6089
    ld c, $09

jr_01c_607a:
    push bc
    ld a, [hl+]
    push hl
    ld h, [hl]
    ld l, a
    call Call_01c_5feb
    pop hl
    inc hl
    pop bc
    dec c
    jr nz, jr_01c_607a

    ret


    jr z, jr_01c_60f0

    ld c, b
    ld h, l
    ld e, b
    ld h, l
    ld l, b
    ld h, l
    ld a, b
    ld h, l
    adc b
    ld h, l
    sbc b
    ld h, l
    xor b
    ld h, l
    cp b
    ld h, l

Call_01c_609b:
    ld hl, $64f8
    di
    call Call_01c_5feb
    ld a, $01
    ldh [$f9], a
    ei
    call Call_01c_614a
    ldh a, [rP1]
    and $03
    cp $03
    jr nz, jr_01c_60fd

    ld a, $20
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    call Call_01c_614a
    call Call_01c_614a
    ld a, $30
    ldh [rP1], a
    call Call_01c_614a
    call Call_01c_614a
    ld a, $10
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    call Call_01c_614a
    call Call_01c_614a
    ld a, $30
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    call Call_01c_614a
    call Call_01c_614a

jr_01c_60f0:
    ldh a, [rP1]
    and $03
    cp $03
    jr nz, jr_01c_60fd

    call Call_01c_6102
    and a
    ret


jr_01c_60fd:
    call Call_01c_6102
    scf
    ret


Call_01c_6102:
    ld hl, $64e8
    call Call_01c_5feb
    jp Jump_01c_614a


Call_01c_610b:
    di
    push de
    call Call_000_0061
    ld a, $e4
    ldh [rBGP], a
    ld de, $8800
    ld a, [$cf2d]
    and a
    jr z, jr_01c_6122

    call Call_01c_6188
    jr jr_01c_6128

jr_01c_6122:
    ld bc, $1000
    call Call_000_00b5

jr_01c_6128:
    ld hl, $9800
    ld de, $000c
    ld a, $80
    ld c, $0d

jr_01c_6132:
    ld b, $14

jr_01c_6134:
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_01c_6134

    add hl, de
    dec c
    jr nz, jr_01c_6132

    ld a, $e3
    ldh [rLCDC], a
    pop hl
    call Call_01c_5feb
    xor a
    ldh [rBGP], a
    ei
    ret


Call_01c_614a:
Jump_01c_614a:
    ld de, $1b58

jr_01c_614d:
    nop
    nop
    nop
    dec de
    ld a, d
    or e
    jr nz, jr_01c_614d

    ret


    ld a, [$cf1a]
    and a
    jr z, jr_01c_6165

    push de
    call Call_01c_616d
    pop hl
    call Call_01c_6187
    ret


jr_01c_6165:
    push de
    call Call_01c_5feb
    pop hl
    jp Jump_01c_5feb


Call_01c_616d:
    ld a, $80
    ldh [rBCPS], a
    inc hl
    ld c, $20

jr_01c_6174:
    ld a, [hl+]
    inc hl
    add a
    add a
    add a
    ld de, $6660
    add e
    jr nc, jr_01c_6180

    inc d

jr_01c_6180:
    ld a, [de]
    ldh [rBCPD], a
    dec c
    jr nz, jr_01c_6174

    ret


Call_01c_6187:
    ret


Call_01c_6188:
    ld b, $80

jr_01c_618a:
    ld c, $10

jr_01c_618c:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_01c_618c

    ld c, $10
    xor a

jr_01c_6195:
    ld [de], a
    inc de
    dec c
    jr nz, jr_01c_6195

    dec b
    jr nz, jr_01c_618a

    ret


    ld hl, $0301
    nop
    nop
    nop
    inc de
    ld de, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    nop
    inc de
    ld de, $0000
    ld [hl+], a
    dec b
    rlca
    ld a, [bc]
    nop
    inc c
    inc de
    ld de, $0503
    ld bc, $0a00
    inc bc
    inc bc
    nop
    ld a, [bc]
    rlca
    inc de
    ld a, [bc]
    inc bc
    ld a, [bc]
    nop
    inc b
    ld [$030b], sp
    rrca
    dec bc
    nop
    inc de
    ld b, $03
    nop
    nop
    inc de
    dec bc
    nop
    inc bc
    nop
    inc c
    inc de
    ld de, $0302
    ld bc, $0a00
    inc bc
    ld bc, $0a03
    ld [$0a13], sp
    nop
    inc bc
    nop
    inc b
    ld [$020b], sp
    inc bc
    dec bc
    nop
    inc de
    rlca
    inc bc
    nop
    ld hl, $0701
    dec b
    ld bc, $0700
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    ld de, $0300
    ld bc, $0700
    ld b, $01
    inc bc
    ld bc, $1307
    ld de, $0300
    ld [$1300], sp
    ld b, $00
    nop
    ld hl, $0701
    dec b
    ld bc, $0801
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    ld de, $0100
    nop
    ld bc, $0013
    inc bc
    ld bc, $0801
    ld [$0301], sp
    ld bc, $0809
    ld de, $0300
    add hl, bc
    ld bc, $1113
    nop
    nop
    ld [hl+], a
    dec b
    inc bc
    dec b
    nop
    nop
    inc de
    dec bc
    inc bc
    ld a, [bc]
    nop
    inc b
    inc de
    add hl, bc
    ld [bc], a
    rrca
    nop
    ld b, $13
    rlca
    inc bc
    nop
    inc b
    inc b
    rrca
    add hl, bc
    inc bc
    nop
    nop
    inc c
    inc de
    ld de, $0003
    nop
    inc de
    dec bc
    ld bc, $0003
    inc b
    inc de
    add hl, bc
    ld [bc], a
    inc bc
    nop
    ld b, $13
    rlca
    inc bc
    inc bc
    inc b
    inc b
    rrca
    add hl, bc
    nop
    inc bc
    nop
    inc c
    inc de
    ld de, $0000
    ld [hl+], a
    inc bc
    inc bc
    nop
    nop
    nop
    inc de
    rlca
    ld [bc], a
    dec b
    nop
    ld [$0913], sp
    inc bc
    ld a, [bc]
    nop
    ld a, [bc]
    inc de
    ld de, $0000
    nop
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
    nop
    nop
    inc de
    rlca
    nop
    inc bc
    nop
    ld [$0913], sp
    ld bc, $0003
    ld a, [bc]
    inc de
    ld de, $0002
    ld [hl+], a
    inc bc
    inc bc
    dec b
    nop
    nop
    inc de
    inc bc
    inc bc
    nop
    nop
    inc b
    inc de
    dec c
    inc bc
    dec b
    nop
    ld c, $13
    ld de, $0000
    nop
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
    nop
    nop
    inc de
    inc bc
    ld bc, $0003
    inc b
    inc de
    dec c
    nop
    inc bc
    nop
    ld c, $13
    ld de, $0001
    inc hl
    rlca
    ld b, $10
    ld bc, $0200
    inc c
    ld [bc], a
    nop
    dec b
    ld bc, $010b
    ld [bc], a
    nop
    dec b
    inc bc
    dec bc
    inc bc
    ld [bc], a
    nop
    dec b
    dec b
    dec bc
    dec b
    ld [bc], a
    nop
    dec b
    rlca
    dec bc
    rlca
    ld [bc], a
    nop
    dec b
    add hl, bc
    dec bc
    add hl, bc
    ld [bc], a
    nop
    dec b
    dec bc
    dec bc
    dec bc
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    ld de, $0301
    ld bc, $0200
    inc c
    nop
    inc bc
    ld bc, $020d
    ld de, $0301
    inc bc
    nop
    inc de
    ld de, $0301
    inc c
    nop
    ld [de], a
    ld bc, $0300
    inc c
    ld [bc], a
    ld [de], a
    inc bc
    nop
    inc bc
    inc c
    inc b
    ld [de], a
    dec b
    nop
    inc bc
    inc c
    ld b, $12
    rlca
    nop
    inc bc
    inc c
    ld [$0912], sp
    nop
    inc bc
    inc c
    ld a, [bc]
    ld [de], a
    dec bc
    nop
    nop
    inc h
    ld a, [bc]
    ld [bc], a
    nop
    inc bc
    inc c
    inc b
    dec c
    ld [bc], a
    dec b
    rlca
    inc c
    ld [$020d], sp
    rrca
    dec bc
    inc c
    inc c
    dec c
    ld [bc], a
    ld a, [bc]
    db $10
    dec bc
    ld de, $020c
    dec b
    ld c, $0d
    rrca
    ld c, $02
    rrca
    db $10
    dec c
    ld de, $020e
    ld a, [bc]
    inc bc
    rrca
    inc b
    db $10
    ld [bc], a
    rrca
    rlca
    rrca
    ld [$0210], sp
    ld a, [bc]
    dec bc
    rrca
    inc c
    db $10
    ld [bc], a
    dec b
    rrca
    rrca
    db $10
    stop
    nop
    inc bc
    inc bc
    inc c
    inc b
    dec c
    nop
    inc bc
    rlca
    inc c
    ld [$010d], sp
    inc bc
    dec bc
    inc c
    inc c
    dec c
    inc bc
    inc bc
    db $10
    dec bc
    ld de, $020c
    inc bc
    ld c, $0d
    rrca
    ld c, $01
    inc bc
    db $10
    dec c
    ld de, $030e
    inc bc
    inc bc
    rrca
    inc b
    db $10
    ld [bc], a
    inc bc
    rlca
    rrca
    ld [$0310], sp
    inc bc
    dec bc
    rrca
    inc c
    db $10
    ld [bc], a
    inc bc
    rrca
    rrca
    db $10
    db $10
    ld bc, $2200
    inc bc
    rlca
    dec b
    dec b
    dec bc
    rlca
    dec c
    ld [bc], a
    ld a, [bc]
    ld [$090b], sp
    dec c
    inc bc
    rrca
    inc c
    dec bc
    ld c, $0d
    nop
    nop
    nop
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
    nop
    nop
    inc de
    ld a, [bc]
    nop
    inc bc
    nop
    dec bc
    inc b
    dec c
    nop
    inc bc
    dec b
    dec bc
    rlca
    dec c
    ld bc, $0803
    dec bc
    inc de
    dec c
    nop
    inc bc
    nop
    ld c, $13
    ld de, $0300
    ld [$090b], sp
    dec c
    ld [bc], a
    inc bc
    inc c
    dec bc
    ld c, $0d
    inc bc
    nop
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
    ld d, c
    stop
    rra
    nop
    jr nz, jr_01c_643f

jr_01c_643f:
    ld hl, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    ld e, $00
    ld e, $00
    ld e, $00
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    dec d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    ld a, [de]
    nop
    dec de
    nop
    inc e

Call_01c_647e:
    nop
    dec e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    ld c, $00
    dec c
    nop
    stop
    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    stop
    ld [hl+], a
    nop
    ld [de], a
    nop
    jr jr_01c_64a1

jr_01c_64a1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
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
    nop
    nop
    ld d, c
    inc d
    nop
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    inc h
    nop
    ld [de], a
    nop
    ld [bc], a
    nop
    ld de, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc c
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
    sbc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp c
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
    cp c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, c
    ld e, l
    ld [$0b00], sp
    adc h
    ret nc

    db $f4
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, c
    ld d, d
    ld [$0b00], sp
    xor c
    rst $20
    sbc a
    ld bc, $7ec0
    add sp, -$18
    add sp, -$18
    ldh [$79], a
    ld b, a
    ld [$0b00], sp
    call nz, Call_000_16d0
    and l
    set 1, c
    dec b
    ret nc

    db $10
    and d
    jr z, @+$7b

    inc a
    ld [$0b00], sp
    ldh a, [rNR12]
    and l
    ret


    ret


    ret z

    ret nc

    inc e
    and l
    jp z, Jump_01c_79c9

    ld sp, $0008
    dec bc
    inc c
    and l
    jp z, Jump_01c_7ec9

    ret nc

    ld b, $a5
    set 1, c
    ld a, [hl]
    ld a, c
    ld h, $08
    nop
    dec bc
    add hl, sp
    call $0c48
    ret nc

    inc [hl]
    and l
    ret


    ret


    add b
    ret nc

    ld a, c
    dec de
    ld [$0b00], sp
    ld [$eaea], a
    ld [$a9ea], a
    ld bc, $4fcd
    inc c
    ret nc

    ld a, c
    db $10
    ld [$0b00], sp
    ld c, h
    jr nz, @+$0a

    ld [$eaea], a
    ld [$60ea], a
    ld [$10ea], a
    ld d, $16
    ld d, $12
    ld [de], a
    ld [de], a
    inc de
    inc de
    inc de
    ld d, $16
    inc de
    jr @+$1a

    jr jr_01c_65ee

    dec d
    dec d
    add hl, de
    add hl, de
    dec d
    dec d
    inc d
    inc d
    jr jr_01c_65fb

    dec d
    dec d
    ld de, $1111
    inc d
    inc d
    inc d
    rla
    rla
    ld [de], a

jr_01c_65ee:
    jr jr_01c_6607

    rla
    ld de, $1611
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    inc d
    inc d
    dec d

jr_01c_65fb:
    dec d
    jr jr_01c_6616

    jr jr_01c_6613

    dec d
    dec d
    dec d
    ld [de], a
    ld de, $1111

jr_01c_6607:
    jr jr_01c_6621

    jr jr_01c_6624

    add hl, de
    add hl, de
    ld d, $16
    ld d, $13
    inc de
    add hl, de

jr_01c_6613:
    add hl, de
    add hl, de
    ld [de], a

jr_01c_6616:
    ld [de], a
    rla
    rla
    add hl, de
    add hl, de
    dec d
    dec d
    dec d
    ld de, $1411

jr_01c_6621:
    inc d
    add hl, de
    add hl, de

jr_01c_6624:
    inc d
    inc d
    inc d
    add hl, de
    jr jr_01c_6642

    ld [de], a
    ld [de], a
    jr @+$1a

    rla
    ld d, $19
    add hl, de
    dec d
    dec d
    rla
    inc d
    inc d
    add hl, de
    add hl, de
    rla
    ld de, $1315
    inc de
    ld [de], a
    ld [de], a
    ld [de], a
    add hl, de

jr_01c_6642:
    rla
    ld d, $10
    jr @+$14

    dec d
    add hl, de
    ld [de], a
    ld de, $1913
    add hl, de
    inc de
    jr jr_01c_6663

    add hl, de
    ld de, $1511
    dec d
    add hl, de
    rla
    ld de, $1218
    add hl, de
    ld de, $1015
    db $10
    cp a
    ld a, a
    sub l

jr_01c_6663:
    cpl
    ld d, h
    ld a, a
    ld b, e
    ld [$7fbf], sp
    sbc c
    ld l, a
    ld d, h
    ld a, a
    ld b, e
    ld [$7fbf], sp
    ld d, c
    rrca
    ld d, h
    ld a, a
    ld b, e
    ld [$7fbf], sp
    scf
    ld b, e
    ld d, h
    ld a, a
    ld b, e
    ld [$7fbf], sp
    sub c
    ld a, d
    ld d, h
    ld a, a
    ld b, e
    ld [$7fbf], sp
    sbc e
    ld l, [hl]
    ld d, h
    ld a, a
    ld b, e
    ld [$7fbf], sp
    ld e, [hl]
    ld [bc], a
    ld d, h
    ld a, a
    ld b, e
    ld [$7fbf], sp
    ret nc

    ld e, e
    ld d, h
    ld a, a
    ld b, e
    ld [$7fbf], sp
    rst $38
    ld e, c
    ld d, h
    ld a, a
    ld b, e
    ld [$7fbf], sp
    ld e, d
    add hl, de
    ld d, h
    ld a, a
    ld b, e
    ld [$7fbf], sp
    sub $61
    ld d, h
    ld a, a
    ld b, e
    ld [$7fbf], sp
    ld a, e
    rrca
    ld d, h
    ld a, a
    ld b, e
    ld [$7fbf], sp
    ld d, h
    ld a, a
    pop af
    ld a, [hl+]
    ld b, e
    ld [$7fbf], sp
    sbc $47
    pop af
    ld a, [hl+]
    dec d
    db $10
    cp a
    ld a, a
    sbc $47
    ld d, d
    ld h, d
    rst $20
    ld b, b
    cp a
    ld a, a
    sbc b
    ld a, d
    adc e
    ld a, d
    ld b, e
    ld [$7fbf], sp
    sbc $46
    ret nc

    ld c, l
    ld b, e
    ld [$7fbf], sp
    sub d
    ld l, [hl]
    db $eb
    ld e, l
    ld b, e
    ld [$7fbf], sp
    sbc a
    ld a, [hl+]
    ld e, d
    add hl, de
    ld b, e
    ld [$7fbf], sp
    dec [hl]
    ld [hl], a
    ld l, [hl]
    ld h, [hl]
    ld b, e
    ld [$7fbf], sp
    db $db
    ld h, d
    push af
    ld e, l
    ld b, e
    ld [$7fbf], sp
    sbc h
    ld a, $d5
    dec h
    ld b, e
    ld [$7fbf], sp
    ld d, h
    ld b, e
    adc c
    ld l, $43
    ld [$7fbf], sp
    sbc $62
    db $fc
    ld d, l
    ld b, e
    ld [$7fbf], sp
    sbc a
    dec sp
    sbc d
    ld [bc], a
    ld b, e
    ld [$7fbf], sp
    cp d
    ld e, d
    rst $28
    ld c, c
    ld b, e
    ld [$7fbf], sp
    cp d
    ld e, d
    sbc e
    ld a, [de]
    ld b, e
    ld [$7fbf], sp
    rst $38
    ld b, a
    add hl, sp
    ld d, [hl]
    ld b, e
    ld [$7fbf], sp
    or $43
    add hl, sp
    ld d, [hl]
    ld b, e
    ld [$7fbf], sp
    ld [hl], b
    db $76
    add hl, sp
    ld d, [hl]
    ld b, e
    ld [$7fbf], sp
    rst $20
    inc e
    ld h, d
    inc c
    ld b, e
    ld [$7fbf], sp
    ld e, [hl]
    ccf
    adc c
    ld l, $43
    ld [$7fbf], sp
    ld e, [hl]
    ccf
    sbc d
    ld [bc], a
    ld b, e
    ld [$7fbf], sp
    ld e, [hl]
    ccf
    ld e, d
    add hl, de
    ld b, e
    ld [$7fbf], sp
    sbc $46
    db $eb
    ld e, l
    ld b, e
    ld [$7fbf], sp
    push de
    dec h
    ld [de], a
    ld e, e
    ld b, e
    ld [$7fbf], sp
    sbc a
    dec sp
    sbc b
    ld a, [hl+]
    ld b, e
    ld [$1010], sp
    ld de, $1010
    db $10
    ld de, $1010
    db $10
    ld de, $1010
    db $10
    ld de, $1010
    db $10
    ld de, $1010
    db $10
    ld de, $1010
    db $10
    ld de, $1010
    db $10
    ld de, $1010
    db $10
    ld de, $1010
    db $10
    ld de, $1010
    db $10
    ld de, $1010
    db $10
    ld de, $1010
    db $10
    ld de, $1010
    db $10
    ld de, $1010
    db $10
    ld de, $1010
    db $10
    ld de, $2010
    db $10
    ld hl, $2010
    db $10
    ld hl, $2010
    db $10
    ld hl, $2010
    db $10
    ld hl, $2010
    db $10
    ld hl, $2010
    db $10
    ld hl, $2010
    db $10
    ld hl, $2010
    db $10
    ld hl, $2010
    db $10
    ld hl, $2010
    db $10
    ld hl, $2010
    db $10
    ld hl, $2010
    db $10
    ld hl, $2010
    db $10
    ld hl, $2010
    db $10
    ld hl, $2010
    db $10
    ld hl, $2010
    db $10
    ld hl, $1010
    db $10
    ld de, $1010
    db $10
    ld de, $1010
    db $10
    ld de, $1010
    db $10
    ld de, $1010
    db $10
    ld de, $1010
    db $10
    ld de, $1010
    db $10
    ld de, $1010
    db $10
    ld de, $1010
    db $10
    ld de, $1010
    db $10
    ld de, $1010
    db $10
    ld de, $1010
    db $10
    ld de, $1010
    db $10
    ld de, $1010
    db $10
    ld de, $1010
    db $10
    ld de, $1010
    db $10
    ld de, $2010
    db $10
    jr nc, jr_01c_6860

    ld sp, $3114
    ld d, h
    jr nc, jr_01c_68a6

    ld d, d
    db $10
    ld d, d
    db $10
    ld d, d
    db $10
    ld d, d
    db $10
    ld d, d
    db $10
    ld d, d
    db $10
    ld d, d
    db $10

jr_01c_6860:
    ld d, d
    db $10
    ld d, d
    db $10
    ld d, $10
    ld [de], a
    db $10
    inc de
    db $10
    inc d
    db $10
    ld d, d
    db $10
    ld d, d
    db $10
    ld d, d
    db $10
    ld d, d
    db $10
    ld d, d
    db $10
    ld d, d
    db $10
    ld d, d
    db $10
    ld d, d
    db $10
    ld d, d
    db $10
    jr nc, @+$16

    ld sp, $3114
    ld d, h
    jr nc, jr_01c_68da

    ld hl, $1010
    db $10
    jr nc, jr_01c_68a4

    ld sp, $3118
    ld e, b
    jr nc, jr_01c_68ea

    ld bc, $1c10
    db $10
    inc e
    db $10
    inc e
    db $10
    inc e
    db $10
    inc e
    db $10
    inc e
    db $10
    inc e
    db $10
    inc e
    db $10

jr_01c_68a4:
    inc e
    db $10

jr_01c_68a6:
    inc e
    db $10
    inc e
    db $10
    inc e
    db $10
    inc e
    db $10
    inc e
    db $10
    inc e
    db $10
    inc e
    db $10
    inc e
    db $10
    inc e
    db $10
    inc e
    db $10
    inc e
    db $10
    dec c
    db $10
    jr nc, jr_01c_68d8

    ld sp, $3118
    ld e, b
    jr nc, jr_01c_691e

    ld de, $2010
    db $10
    ld c, $14
    rrca
    inc d
    rrca
    ld d, h
    ld c, $54
    ld b, e
    stop
    nop
    nop
    nop

jr_01c_68d8:
    nop
    nop

jr_01c_68da:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01c_68ea:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, e
    db $10
    ld c, $18
    rrca
    jr jr_01c_6912

    ld e, b
    ld c, $58
    ld hl, $1010
    db $10
    inc [hl]
    inc d
    dec [hl]
    inc d
    ld [hl], $14
    ld e, $14

jr_01c_6912:
    ld b, e
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

jr_01c_691e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, e
    db $10
    jr c, jr_01c_6958

    add hl, sp
    jr jr_01c_697d

    jr @+$3d

    jr jr_01c_6958

    db $10
    jr nz, jr_01c_695a

    ld b, h
    inc d
    ld b, l
    inc d
    ld b, [hl]
    inc d
    ld b, a
    inc d
    ld b, e
    stop
    nop
    nop
    nop

jr_01c_6958:
    nop
    nop

jr_01c_695a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, e

jr_01c_697d:
    db $10
    ld c, b
    jr jr_01c_69ca

    jr jr_01c_69cd

    jr jr_01c_69d0

    jr jr_01c_69a8

    db $10
    db $10
    db $10
    ld d, h
    inc d
    ld d, l
    inc d
    ld d, [hl]
    inc d
    ld d, a
    inc d
    ld b, e
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01c_69a8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, e
    db $10
    ld e, b
    jr jr_01c_6a1a

    jr jr_01c_6a1d

    jr jr_01c_6a20

    jr jr_01c_69d8

    db $10
    jr nz, jr_01c_69da

jr_01c_69ca:
    ld e, $54
    ld d, d

jr_01c_69cd:
    inc d
    scf
    inc d

jr_01c_69d0:
    ld e, $14
    ld b, e
    stop
    nop
    nop
    nop

jr_01c_69d8:
    nop
    nop

jr_01c_69da:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, e
    db $10
    ld e, $58
    ld d, d
    jr jr_01c_6a55

    jr jr_01c_6a23

    jr jr_01c_6a28

    db $10
    db $10
    db $10
    ld b, b
    jr jr_01c_6a60

    jr jr_01c_6a62

    jr jr_01c_6a51

    ld e, b
    ld b, e
    stop
    nop
    nop
    nop
    nop
    nop

jr_01c_6a1a:
    nop
    nop
    nop

jr_01c_6a1d:
    nop
    nop
    nop

jr_01c_6a20:
    nop
    nop
    nop

jr_01c_6a23:
    nop
    nop
    nop
    nop
    nop

jr_01c_6a28:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, e
    db $10
    ld b, b
    inc d
    ld d, e
    inc d
    ld d, e
    inc d
    ld b, b
    ld d, h
    ld de, $2010
    db $10
    ld d, b
    jr jr_01c_6a9e

    jr jr_01c_6aa0

    ld e, b
    ld d, b

jr_01c_6a51:
    ld e, b
    ld b, e
    stop

jr_01c_6a55:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01c_6a60:
    nop
    nop

jr_01c_6a62:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, e
    db $10
    ld d, b
    inc d
    ld d, c
    inc d
    ld d, c
    ld d, h
    ld d, b
    ld d, h
    ld hl, $1010
    db $10
    ld de, $1010
    db $10
    ld de, $1010
    db $10
    ld b, e
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

jr_01c_6a9e:
    nop
    nop

jr_01c_6aa0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, e
    db $10
    ld de, $1010
    db $10
    ld de, $1010
    db $10
    ld de, $2010
    db $10
    ld hl, $2010
    db $10
    ld hl, $2010
    db $10
    ld b, e
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, e
    db $10
    ld hl, $2010
    db $10
    ld hl, $2010
    db $10
    ld hl, $1010
    db $10
    ld de, $1010
    db $10
    ld de, $1010
    db $10
    ld b, e
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, e
    db $10
    ld de, $1010
    db $10
    ld de, $1010
    db $10
    ld de, $2010
    db $10
    ld c, $14
    rrca
    inc d
    rrca
    ld d, h
    ld c, $54
    ld b, e
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, e
    db $10
    ld c, $18
    rrca
    jr jr_01c_6b92

    ld e, b
    ld c, $58
    ld hl, $1010
    db $10
    ld c, $18
    rrca
    jr jr_01c_6b9e

    ld e, b
    ld c, $58

jr_01c_6b92:
    ld b, e
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

jr_01c_6b9e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, e
    db $10
    ld c, $14
    rrca
    inc d
    rrca
    ld d, h
    ld c, $54
    ld de, $2010
    db $10
    jr c, jr_01c_6be4

    add hl, sp
    jr jr_01c_6c09

    jr jr_01c_6c0c

    jr jr_01c_6c16

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
    nop
    nop
    nop
    nop

jr_01c_6be4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, e
    db $10
    inc [hl]
    inc d
    dec [hl]
    inc d
    ld [hl], $14
    ld e, $14
    ld hl, $1010

jr_01c_6c09:
    db $10
    jr nc, jr_01c_6c20

jr_01c_6c0c:
    ld sp, $3114
    ld d, h
    jr nc, jr_01c_6c66

    ld b, e
    stop
    nop

jr_01c_6c16:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01c_6c20:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, e
    db $10
    jr nc, jr_01c_6c58

    ld sp, $3118
    ld e, b
    jr nc, jr_01c_6c9e

    ld de, $2010
    db $10
    inc a
    inc d
    dec a
    inc d
    ld a, $14
    ld [hl-], a
    ld d, h
    ld b, e
    stop
    nop
    nop
    nop

jr_01c_6c58:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01c_6c66:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, e
    db $10
    ld [hl+], a
    jr jr_01c_6ca4

    jr jr_01c_6ca7

    jr jr_01c_6cb7

    ld e, b
    ld hl, $1010
    db $10
    ld c, h
    inc d
    ld c, l
    inc d
    ld c, [hl]
    inc d
    ld c, a
    inc d
    ld b, e
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

jr_01c_6c9e:
    nop
    nop
    nop
    nop
    nop
    nop

jr_01c_6ca4:
    nop
    nop
    nop

jr_01c_6ca7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01c_6cb7:
    nop
    nop
    nop
    nop
    nop
    ld b, e
    db $10
    dec h
    jr jr_01c_6ce7

    jr jr_01c_6cea

    jr jr_01c_6ced

    jr jr_01c_6cd8

    db $10
    jr nz, jr_01c_6cda

    ld e, h
    inc d
    ld e, l
    inc d
    ld e, [hl]
    inc d
    ld e, a
    inc d
    ld b, e
    stop
    nop
    nop
    nop

jr_01c_6cd8:
    nop
    nop

jr_01c_6cda:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01c_6ce7:
    nop
    nop
    nop

jr_01c_6cea:
    nop
    nop
    nop

jr_01c_6ced:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, e
    db $10
    add hl, hl
    jr jr_01c_6d2b

    jr jr_01c_6d2e

    jr jr_01c_6d31

    jr jr_01c_6d28

    db $10
    db $10
    db $10
    ld [hl-], a
    inc d
    dec l
    inc d
    ld l, $14
    cpl
    inc d
    ld b, e
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01c_6d28:
    nop
    nop
    nop

jr_01c_6d2b:
    nop
    nop
    nop

jr_01c_6d2e:
    nop
    nop
    nop

jr_01c_6d31:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, e
    db $10
    ld [hl-], a
    jr jr_01c_6d58

    jr jr_01c_6d5b

    jr jr_01c_6d5e

    jr jr_01c_6d58

    db $10
    jr nz, jr_01c_6d5a

    ld b, b
    inc d
    ld d, e
    inc d
    ld d, e
    inc d
    ld b, b
    ld d, h
    ccf
    db $10
    inc e
    db $10
    inc e
    db $10

jr_01c_6d58:
    inc e
    db $10

jr_01c_6d5a:
    inc e

jr_01c_6d5b:
    db $10
    inc e
    db $10

jr_01c_6d5e:
    inc e
    db $10
    inc e
    db $10
    inc e
    db $10
    inc e
    db $10
    inc e
    db $10
    inc e
    db $10
    inc e
    db $10
    inc e
    db $10
    inc e
    db $10
    inc e
    db $10
    inc e
    db $10
    inc e
    db $10
    inc e
    db $10
    inc e
    db $10
    inc e
    db $10
    ld b, c
    db $10
    ld b, b
    inc d
    ld d, e
    inc d
    ld d, e
    inc d
    ld b, b
    ld d, h
    ld hl, $1010
    db $10
    ld d, b
    inc d
    ld d, c
    inc d
    ld d, c
    ld d, h
    ld d, b
    ld d, h
    ld d, d
    db $10
    ld d, d
    db $10
    ld d, d
    db $10
    ld d, d
    db $10
    ld d, d
    db $10
    ld d, d
    db $10
    ld d, d
    db $10
    ld d, d
    db $10
    ld d, d
    db $10
    ld d, d
    db $10
    ld d, d
    db $10
    ld d, d
    db $10
    ld d, d
    db $10
    ld d, d
    db $10
    ld d, d
    db $10
    ld d, d
    db $10
    ld d, d
    db $10
    ld d, d
    db $10
    ld d, d
    db $10
    ld d, d
    db $10
    ld d, d
    db $10
    ld d, d
    db $10
    ld d, b
    inc d
    ld d, c
    inc d
    ld d, c
    ld d, h
    ld d, b
    ld d, h
    ld de, $2010
    db $10
    ld hl, $2010
    db $10
    ld hl, $2010
    db $10
    ld hl, $2010
    db $10
    ld hl, $2010
    db $10
    ld hl, $2010
    db $10
    ld hl, $2010
    db $10
    ld hl, $2010
    db $10
    ld hl, $2010
    db $10
    ld hl, $2010
    db $10
    ld hl, $2010
    db $10
    ld hl, $2010
    db $10
    ld hl, $2010
    db $10
    ld hl, $2010
    db $10
    ld hl, $2010
    db $10
    ld hl, $2010
    db $10
    ld hl, $1010
    db $10
    ld de, $1010
    db $10
    ld de, $1010
    db $10
    ld de, $1010
    db $10
    ld de, $1010
    db $10
    ld de, $1010
    db $10
    ld de, $1010
    db $10
    ld de, $1010
    db $10
    ld de, $1010
    db $10
    ld de, $1010
    db $10
    ld de, $1010
    db $10
    ld de, $1010
    db $10
    ld de, $1010
    db $10
    ld de, $1010
    db $10
    ld de, $1010
    db $10
    ld de, $1010
    db $10
    ld de, $2010
    db $10
    ld hl, $2010
    db $10
    ld hl, $2010
    db $10
    ld hl, $2010
    db $10
    ld hl, $2010
    db $10
    ld hl, $2010
    db $10
    ld hl, $2010
    db $10
    ld hl, $2010
    db $10
    ld hl, $2010
    db $10
    ld hl, $2010
    db $10
    ld hl, $2010
    db $10
    ld hl, $2010
    db $10
    ld hl, $2010
    db $10
    ld hl, $2010
    db $10
    ld hl, $2010
    db $10
    ld hl, $2010
    db $10
    ld hl, $0010
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp [hl]
    ld [hl], a
    reti


    ld h, [hl]
    add hl, sp
    ld d, [hl]
    ret c

    ld sp, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp [hl]
    ld [hl], a
    or $43
    sbc e
    ld a, [de]
    rst $28
    dec a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_01c_6fc3:
    nop
    nop
    nop
    nop
    nop
    cp [hl]
    ld [hl], a
    rst $38
    ld b, a
    or d
    db $76
    rst $28
    dec a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rrca
    ldh a, [$1f]
    ldh [$3f], a
    rst $08
    ccf
    rst $08
    inc a
    rst $08
    inc a
    rst $08
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [hl]
    add e
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld a, [hl]
    add e
    ld [hl], b
    sbc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, $c3
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld a, $c3
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, $c3
    ld [hl], b
    sbc a
    ld [hl], b
    sbc a
    ld [hl], b
    sbc a
    ld a, $c3
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], a
    sbc c
    ld a, [hl]
    sub e
    ld a, h
    add a
    ld a, [hl]
    sub e
    ld [hl], a
    sbc c
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    pop bc
    ld [hl], b
    sbc a
    ld a, [hl]
    add e
    ld [hl], b
    sbc a
    ccf
    pop bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    add c
    inc e
    rst $20
    inc e
    rst $20
    inc e
    rst $20
    inc e
    rst $20
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $20
    add hl, sp
    rst $38
    ld de, $29ff
    rst $38
    add hl, hl
    rst $20
    add hl, sp
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], a
    sbc c
    ld a, a
    adc c
    ld a, a
    sub c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    pop bc
    ld [hl], b
    sbc a
    ccf
    pop bc
    rlca
    ld sp, hl
    ld a, [hl]
    add e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [hl]
    add e
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld a, h
    add a
    ld [hl], a
    sbc c
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
    ld a, [hl]
    xor e
    ld a, $d5
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    ldh a, [rIF]
    db $ec
    rst $38
    call c, Call_000_3cef
    rst $08
    inc a
    rst $08
    rst $38
    rst $38
    ret nz

    ret nz

    add b
    add b
    add b
    sbc a
    add b
    sbc a
    add b
    sbc a
    add b
    sbc a
    add b
    sbc a
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [$e7]
    ld hl, sp-$3d
    db $fc
    add c
    cp $ff
    nop
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rrca
    rst $20
    rra
    jp $813f


    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, h
    rst $38
    ld h, [hl]
    rst $38
    ld h, [hl]
    rst $38
    ld a, b
    rst $38
    ld h, [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, $ff
    ld h, b
    rst $38
    ld a, h
    rst $38
    ld h, b
    rst $38
    ld a, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, h
    rst $38
    ld h, [hl]
    rst $38
    ld h, [hl]
    rst $38
    ld h, [hl]
    rst $38
    ld a, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    rst $38
    ld e, $ff
    ccf
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr c, @+$01

    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    jr c, @+$01

    ld d, b
    ld [hl], b
    sub b
    ldh a, [$88]
    rst $38
    and $7e
    sub c
    sbc a
    rst $38
    ld a, [hl]
    rst $38
    nop
    rst $38
    nop
    ld [$1009], sp
    ld sp, $d310
    db $10
    rra
    ld sp, hl
    rst $38
    cp $06
    rst $38
    inc bc
    rst $38
    nop
    dec c
    db $fd
    dec c
    db $fd
    add hl, bc
    ld sp, hl
    add hl, bc
    ld sp, hl
    ret


    ld sp, hl
    add hl, sp
    ld sp, $e1f9
    ld sp, hl
    ld bc, $00ff
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rrca
    rst $20
    rra
    jp $813f


    ld a, a
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rrca
    rst $20
    rra
    jp $813f


    ld a, a
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
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
    inc e
    rst $20
    ld a, $c3
    inc e
    rst $20
    nop
    rst $38
    inc e
    rst $20
    ld bc, $01f9
    ld sp, hl
    ld bc, $01f9
    ld sp, hl
    ld bc, $01f9
    ld sp, hl
    ld bc, $01f9
    ld sp, hl
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rrca
    rst $20
    rra
    jp $813f


    ld a, a
    nop
    rst $38
    nop

jr_01c_71eb:
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    rst $38
    ld e, $ff
    ccf
    rst $38
    ld a, a
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
    jr jr_01c_71eb

    inc a
    jp $81fe


    sbc a
    add b
    sbc a
    add b
    sbc a
    add b
    sbc a
    add b
    sbc a
    add e
    sbc h
    add h
    sbc a
    add e
    sbc a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr @-$17

    dec l
    jp $76ff


    ld a, a
    ld a, [bc]
    rra
    ret z

    rst $38
    rst $38
    nop
    rst $38
    ld h, b
    sbc a
    sub b
    ccf
    ld [hl], b
    ld a, a
    ld hl, sp-$31
    db $fc
    rlca
    db $fc
    rlca
    rst $38
    sbc a
    add c
    sbc [hl]
    add d
    sbc [hl]
    add d
    cp h
    cp h
    and a
    and a
    sub h
    sub h
    sbc c
    adc c
    sbc [hl]
    adc [hl]
    jr nc, @+$41

    inc bc
    cpl
    inc b
    ld e, h
    ld [$0d28], sp
    ld e, l
    sbc [hl]
    cp a
    sub b
    rst $38
    add c
    rst $38
    ldh [$fd], a
    ld b, h
    ld a, [hl]
    ld b, d
    ld a, a
    add c
    rst $38
    inc bc
    rst $38
    ld bc, $60ff
    rst $38
    ret nz

    rst $38
    ld sp, hl
    cp c
    ld h, l
    push hl
    dec b
    dec b
    add hl, bc
    xor c
    add hl, bc
    ld e, c
    adc c
    ld sp, hl
    add hl, sp
    pop af
    adc c
    xor c
    sbc e
    adc a
    sbc h
    adc a
    sbc a
    add a
    sbc a
    add b
    sbc a
    add e
    sbc [hl]
    add a
    sbc l
    add l
    sbc a
    add e
    ld b, $fe
    ccf
    rst $38
    ld hl, sp-$01
    add e
    cp a
    db $fc
    ld a, a
    ldh [$e1], a
    and b
    ldh [$60], a
    ld a, a
    ld e, b
    ld a, a
    ld h, b
    ld a, a
    ldh [$e7], a
    ld b, c
    rst $00
    and c
    xor a
    ld a, [c]
    rst $38
    sbc l
    sbc a
    ld [hl], b
    rst $38
    add l
    push de
    ld h, l
    db $fd
    ld e, c
    reti


    ld h, l
    push af
    dec h
    db $fd
    add hl, sp
    ld sp, hl
    push hl
    push af
    dec d
    db $fd
    and b
    ldh [$b0], a
    ldh a, [$d8]
    ld a, b
    sub a
    cp a
    rst $38
    ld a, [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc d
    inc e
    inc d
    inc e
    inc de
    rra
    ei
    rst $38
    cp $06
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    sub l
    push af
    sbc l
    db $fd
    dec d
    push af
    push de
    push af
    dec [hl]
    dec [hl]
    ld sp, hl
    jp hl


    ld sp, hl
    ld bc, $01f9
    rst $38
    rst $38
    ret nz

    ret nz

    add b
    add b
    sbc a
    add b
    sbc a
    add b
    sbc a
    add b
    sbc a
    add b
    sbc a
    add b
    rst $38
    rst $38
    nop
    nop
    nop
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
    sbc a
    add b
    sbc a
    add b
    sbc a
    add b
    sbc a
    add b
    sbc a
    add b
    sbc a
    add b
    sbc a
    add b
    sbc a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    sbc a
    add c
    sbc a
    add d
    sbc [hl]
    add e
    sbc a
    add a
    sbc h
    sbc e
    sbc d
    and c
    and c
    sbc l
    sbc l
    scf
    rst $38
    ret c

    ret c

    di
    di
    cp $37
    rst $08
    ld c, c
    rst $28
    add sp, -$01
    nop
    rst $08
    add b
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    ldh [$7f], a
    or b
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
    add b
    sbc a
    add c
    sbc a
    add e
    sbc a
    add e
    sbc a
    add d
    sbc [hl]
    add d
    sbc [hl]
    add c
    sbc a
    add c
    sbc a
    nop
    rst $38
    adc a
    rst $38
    ldh a, [$f0]
    ld h, $26
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, d
    ld b, d
    inc a
    inc a
    ld b, $ff
    rra
    rst $38
    rst $20
    rst $20
    ld c, a
    ld c, e
    rra
    ld de, $111d
    dec c
    add hl, bc
    ld [bc], a
    ld [bc], a
    ld bc, $01f9
    ld sp, hl
    ld bc, $01f9
    ld sp, hl
    ld bc, $01f9
    ld sp, hl
    pop bc
    ld sp, hl
    ld hl, $9f39
    add c
    sbc a
    add b
    sbc a
    add b
    sbc a
    add b
    sbc a
    add c
    sbc [hl]
    add d
    sbc h
    add h
    sbc h
    add h
    rst $38
    ldh [$9f], a
    rst $38
    ldh [$61], a
    add c
    add e
    nop
    rlca
    rlca
    rra
    ld a, [de]
    dec sp
    ld [hl+], a
    ld h, e
    rst $38
    inc a
    jp $81c2


    adc a
    rlca
    ld a, $0f
    ld hl, sp+$1f
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc a
    rst $08
    inc a
    rst $08
    dec sp
    call z, $c837
    rrca
    rst $38
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    add b
    add b
    add b
    add b
    inc a
    rst $08
    inc a
    rst $08
    db $fc
    rrca
    db $fc
    rrca
    ld hl, sp-$01
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
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
    add b
    add b
    add b
    add b
    inc a
    rst $08
    inc a
    rst $08
    inc a
    rst $08
    inc a
    rst $08
    inc a
    rst $08
    inc a
    rst $08
    inc a
    rst $08
    inc a
    rst $08
    adc [hl]
    sbc [hl]
    add h
    sbc h
    adc c
    sbc c
    adc [hl]
    sbc [hl]
    adc b
    sbc b
    adc b
    sbc b
    add h
    sbc h
    add h
    sbc h
    add a
    add b
    add a
    add c
    rrca
    ld [bc], a
    rra
    ld [bc], a
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    inc bc
    ld [bc], a
    ldh a, [rIE]
    db $fc
    rrca
    cp $03
    db $fd
    ld bc, $00fc
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    add hl, sp
    ld sp, hl
    ld c, l
    call $dd55
    sub l
    sbc l
    xor l
    cp l
    ld l, c
    ld a, c
    ld sp, $2139
    add hl, sp
    add d
    sbc [hl]
    add d
    sbc [hl]
    add d
    sbc [hl]
    add h
    sbc h
    add h
    sbc h
    add h
    sbc h
    add h
    sbc h
    adc h
    sbc h
    ld b, $00
    ld h, l
    inc b
    and l
    inc h
    and b
    jr nz, jr_01c_7481

jr_01c_7481:
    nop
    jr jr_01c_749c

    ld [$0008], sp
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0103
    inc bc
    ld [bc], a
    ld bc, $1100
    ld de, $1113
    ld hl, $c139
    ld a, c

jr_01c_749c:
    pop bc
    ld sp, hl
    pop hl
    ld a, c
    sub c
    sbc c
    sub c
    add hl, de
    ret


    add hl, bc
    jp hl


    adc c
    sbc b
    adc b
    sbc b
    adc c
    sub b
    sub c
    sub b
    sub e
    sub b
    sbc a
    sub [hl]
    sbc a
    sbc b
    adc a
    sbc a
    add a
    ld b, h
    rst $00
    ld l, b
    rst $28
    pop af
    rst $38
    add e
    rst $38
    inc b
    db $fc
    ld e, $fe
    ld h, c
    pop hl
    db $fc
    db $fc
    rrca
    rst $38
    ld [$90f8], sp
    db $fc
    sub b
    cp a
    sub c
    sbc a
    sbc [hl]
    sbc a
    adc b
    adc a
    ld [$f90f], sp
    ld bc, $81f9
    ld a, c
    ld b, c
    ld a, c
    ld b, c
    ld sp, hl
    pop bc
    cp c
    and c
    cp c
    and c
    ld sp, hl
    pop af
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
    ret nz

    ret nz

    rst $38
    rst $38
    and b
    and b
    cp a
    cp a
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
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    add d
    sbc [hl]
    add c
    sbc a
    add b
    sbc a
    add b
    sbc a
    add c
    sbc a
    add d
    sbc [hl]
    add l
    sbc l
    add d
    sbc a
    ld bc, $0001
    nop
    add b
    add b
    ld h, b
    ldh [$fc], a
    cp h
    rst $38
    ld b, e
    cp [hl]
    cp a
    ld b, c
    rst $38
    ret nz

    nop
    ret nz

    ret nz

    jr nc, jr_01c_757e

    rrca
    rrca
    rra
    inc de
    rst $38
    db $ec
    rst $38
    db $d3
    ld l, h
    ld l, a
    ld b, c
    ld a, c
    ld b, c
    ld a, c
    add c
    ld sp, hl
    ld bc, $81f9
    ld sp, hl
    pop bc
    ld a, c
    add c
    ld sp, hl
    ld bc, $8af9
    sbc d
    sub d
    sub d
    sbc a
    sub e
    adc h
    sbc a
    add c
    sbc a
    add c
    sbc a
    add d
    sbc [hl]
    add c
    sbc a
    nop
    nop
    nop
    nop
    nop
    nop

jr_01c_757e:
    add a
    add b
    rst $38
    ld h, b
    rst $38
    sbc b
    rst $38
    ld b, a
    ldh a, [rIE]
    rra
    add hl, bc
    ccf
    ld b, $ff
    ld [bc], a
    rst $38
    ld [bc], a
    rst $08
    ld [bc], a
    sbc a
    sbc d
    rst $28
    db $e4
    ccf
    rst $38
    ld sp, hl
    ld c, c
    ld sp, hl
    ld c, c
    ld sp, hl
    ld c, c
    pop af
    sbc c
    pop af
    add hl, de
    pop hl
    add hl, sp
    pop bc
    ld sp, hl
    ld bc, $9ff9
    add b
    sbc a
    add b
    sbc a
    add c
    sbc [hl]
    add e
    sbc [hl]
    add d
    sbc a
    add c
    sbc [hl]
    add d
    sbc a
    add e
    db $fc
    inc c
    ld hl, sp+$78
    adc h
    db $fc
    ld [hl+], a
    xor $22
    ld l, [hl]
    ld [bc], a
    ld e, $ff
    rst $38
    jr nz, jr_01c_75e8

    jr @+$21

    jr nz, @+$41

    ld b, b
    ld a, a
    and c
    cp a
    db $e3
    rst $38
    cp h
    cp a
    pop af
    rst $38
    daa
    ccf
    ld l, c
    jp hl


    jp hl


    jp hl


    cp c
    ld sp, hl
    and l
    push hl
    ld [hl], l
    push af
    sub l
    sub l
    sbc c
    sbc c
    push af
    push af

jr_01c_75e8:
    call Call_000_190f
    call Call_000_3680
    call Call_000_36a0
    call Call_01c_7623
    jr c, jr_01c_7604

    call Call_01c_7690
    jr c, jr_01c_7604

    call Call_01c_76bd
    jr c, jr_01c_7604

    ld a, $02
    jr jr_01c_761a

jr_01c_7604:
    ld hl, $d730
    push hl
    set 6, [hl]
    ld hl, $761e
    call Call_000_3c49
    ld c, $64
    call Call_000_3739
    pop hl
    res 6, [hl]
    ld a, $01

jr_01c_761a:
    ld [$d088], a
    ret


    rla
    pop af
    ld b, l
    dec h
    ld d, b

Call_01c_7623:
    ld a, $0a
    ld [$0000], a
    ld a, $01
    ld [$6000], a
    ld [$4000], a
    ld hl, $a598
    ld bc, $0f8b
    call Call_01c_7856
    ld c, a
    ld a, [$b523]
    cp c
    jp z, Jump_01c_7652

    ld hl, $a598
    ld bc, $0f8b
    call Call_01c_7856
    ld c, a
    ld a, [$b523]
    cp c
    jp nz, Jump_01c_76f7

Jump_01c_7652:
    ld hl, $a598
    ld de, $d158
    ld bc, $000b
    call Call_000_00b5
    ld hl, $a5a3
    ld de, $d2f7
    ld bc, $0789
    call Call_000_00b5
    ld hl, $d367
    set 7, [hl]
    ld hl, $ad2c
    ld de, $c100
    ld bc, $0200
    call Call_000_00b5
    ld a, [$b522]
    ldh [$d7], a
    ld hl, $b0c0
    ld de, $da80
    ld bc, $0462
    call Call_000_00b5
    and a
    jp Jump_01c_76f8


Call_01c_7690:
    ld a, $0a
    ld [$0000], a
    ld a, $01
    ld [$6000], a
    ld [$4000], a
    ld hl, $a598
    ld bc, $0f8b
    call Call_01c_7856
    ld c, a
    ld a, [$b523]
    cp c
    jr nz, jr_01c_76f7

    ld hl, $b0c0
    ld de, $da80
    ld bc, $0462
    call Call_000_00b5
    and a
    jp Jump_01c_76f8


Call_01c_76bd:
Jump_01c_76bd:
    ld a, $0a
    ld [$0000], a
    ld a, $01
    ld [$6000], a
    ld [$4000], a
    ld hl, $a598
    ld bc, $0f8b
    call Call_01c_7856
    ld c, a
    ld a, [$b523]
    cp c
    jp nz, Jump_01c_76f7

    ld hl, $af2c
    ld de, $d163
    ld bc, $0194
    call Call_000_00b5
    ld hl, $a5a3
    ld de, $d2f7
    ld bc, $0026
    call Call_000_00b5
    and a
    jp Jump_01c_76f8


Jump_01c_76f7:
jr_01c_76f7:
    scf

Jump_01c_76f8:
    ld a, $00
    ld [$6000], a
    ld [$0000], a
    ret


    call Call_01c_7623
    call Call_01c_7690
    jp Jump_01c_76bd


    ld b, $01
    ld hl, $5def
    call Call_000_35d6
    ld hl, $777d
    call Call_01c_7768
    and a
    ret nz

    ld a, [$d088]
    dec a
    jr z, jr_01c_772d

    call Call_01c_7ad1
    jr z, jr_01c_772d

    ld hl, $7787
    call Call_01c_7768
    and a
    ret nz

jr_01c_772d:
    call Call_01c_7848
    ld hl, $c4a5
    ld bc, $0412
    call Call_000_18c4
    ld hl, $c4b9
    ld de, $775a
    call Call_000_1955
    ld c, $78
    call Call_000_3739
    ld hl, $7782
    call Call_000_3c49
    ld a, $b6
    call Call_000_3740
    call Call_000_3748
    ld c, $1e
    jp Jump_000_3739


    adc l
    xor [hl]
    or [hl]
    ld a, a
    or d
    and b
    or l
    xor b
    xor l
    and [hl]
    add sp, -$18
    add sp, $50

Call_01c_7768:
    call Call_000_3c49
    ld hl, $c42c
    ld bc, $0801
    ld a, $14
    ld [$d125], a
    call Call_000_30e8
    ld a, [$cc26]
    ret


    rla
    ld c, $46
    dec h
    ld d, b
    rla
    jr nc, jr_01c_77cb

    dec h
    ld d, b
    rla
    ld b, e
    ld b, [hl]
    dec h
    ld d, b

Call_01c_778c:
    ld a, $0a
    ld [$0000], a
    ld a, $01
    ld [$6000], a
    ld [$4000], a
    ld hl, $d158
    ld de, $a598
    ld bc, $000b
    call Call_000_00b5
    ld hl, $d2f7
    ld de, $a5a3
    ld bc, $0789
    call Call_000_00b5
    ld hl, $c100
    ld de, $ad2c
    ld bc, $0200
    call Call_000_00b5
    ld hl, $da80
    ld de, $b0c0
    ld bc, $0462
    call Call_000_00b5
    ldh a, [$d7]

jr_01c_77cb:
    ld [$b522], a
    ld hl, $a598
    ld bc, $0f8b
    call Call_01c_7856
    ld [$b523], a
    xor a
    ld [$6000], a
    ld [$0000], a
    ret


Call_01c_77e2:
    ld a, $0a
    ld [$0000], a
    ld a, $01
    ld [$6000], a
    ld [$4000], a
    ld hl, $da80
    ld de, $b0c0
    ld bc, $0462
    call Call_000_00b5
    ld hl, $a598
    ld bc, $0f8b
    call Call_01c_7856
    ld [$b523], a
    xor a
    ld [$6000], a
    ld [$0000], a
    ret


Jump_01c_780f:
    ld a, $0a
    ld [$0000], a
    ld a, $01
    ld [$6000], a
    ld [$4000], a
    ld hl, $d163
    ld de, $af2c
    ld bc, $0194
    call Call_000_00b5
    ld hl, $d2f7
    ld de, $a5a3
    ld bc, $0026
    call Call_000_00b5
    ld hl, $a598
    ld bc, $0f8b
    call Call_01c_7856
    ld [$b523], a
    xor a
    ld [$6000], a
    ld [$0000], a
    ret


Call_01c_7848:
    ld a, $02
    ld [$d088], a
    call Call_01c_778c
    call Call_01c_77e2
    jp Jump_01c_780f


Call_01c_7856:
    ld d, $00

jr_01c_7858:
    ld a, [hl+]
    add d
    ld d, a
    dec bc
    ld a, b
    or c
    jr nz, jr_01c_7858

    ld a, d
    cpl
    ret


Call_01c_7863:
    ld hl, $a000
    ld de, $ba4d
    ld b, $06

jr_01c_786b:
    push bc
    push de
    ld bc, $0462
    call Call_01c_7856
    pop de
    ld [de], a
    inc de
    pop bc
    dec b
    jr nz, jr_01c_786b

    ret


Call_01c_787b:
    ld hl, $7895
    ld a, [$d5a0]
    and $7f
    cp $06
    ld b, $02
    jr c, jr_01c_788c

    inc b
    sub $06

jr_01c_788c:
    ld e, a
    ld d, $00
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    nop
    and b
    ld h, d
    and h
    call nz, Call_000_26a8
    xor l
    adc b
    or c
    ld [$21b5], a
    add hl, bc
    ld a, c
    call Call_000_3c49
    call Call_000_35ec
    ld a, [$cc26]
    and a
    ret nz

    ld hl, $d5a0
    bit 7, [hl]
    call z, Call_01c_7a29
    call Call_01c_793f
    call Call_000_2429
    ld hl, $fff6
    set 1, [hl]
    call Call_000_3abe
    ld hl, $fff6
    res 1, [hl]
    bit 1, a
    ret nz

    call Call_01c_787b
    ld e, l
    ld d, h
    ld hl, $da80
    call Call_01c_790e
    ld a, [$cc26]
    set 7, a
    ld [$d5a0], a
    call Call_01c_787b
    ld de, $da80
    call Call_01c_790e
    ld hl, $d36c
    ld de, $cd3d
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    call Call_000_3f05
    call Call_01c_7848
    ld hl, $cd3d
    call Call_000_3f0f
    ld a, $b6
    call Call_000_3740
    call Call_000_3748
    ret


    rla
    ld [hl], c
    ld b, [hl]
    dec h
    ld d, b

Call_01c_790e:
    push hl
    ld a, $0a
    ld [$0000], a
    ld a, $01
    ld [$6000], a
    ld a, b
    ld [$4000], a
    ld bc, $0462
    call Call_000_00b5
    pop hl
    xor a
    ld [hl+], a
    dec a
    ld [hl], a
    ld hl, $a000
    ld bc, $1a4c
    call Call_01c_7856
    ld [$ba4c], a
    call Call_01c_7863
    xor a
    ld [$6000], a
    ld [$0000], a
    ret


Call_01c_793f:
    xor a
    ldh [$ba], a
    ld a, $03
    ld [$cc29], a
    ld a, $0b
    ld [$cc28], a
    ld a, $01
    ld [$cc24], a
    ld a, $0c
    ld [$cc25], a
    xor a
    ld [$cc37], a
    ld a, [$d5a0]
    and $7f
    ld [$cc26], a
    ld [$cc2a], a
    ld hl, $c3a0
    ld b, $02
    ld c, $09
    call Call_000_1922
    ld hl, $79d4
    call Call_000_3c49
    ld hl, $c3ab
    ld b, $0c
    ld c, $07
    call Call_000_1922
    ld hl, $fff6
    set 2, [hl]
    ld de, $79d9
    ld hl, $c3c1
    call Call_000_1955
    ld hl, $fff6
    res 2, [hl]
    ld a, [$d5a0]
    and $7f
    cp $09
    jr c, jr_01c_79a6

    sub $09
    ld hl, $c3d0
    ld [hl], $f7
    add $f6
    jr jr_01c_79a8

jr_01c_79a6:
    add $f7

jr_01c_79a8:
    ld [$c3d1], a
    ld hl, $c3c9
    ld de, $7a21
    call Call_000_1955
    call Call_01c_7a84
    ld hl, $c3c6
    ld de, $cd3d
    ld bc, $0014
    ld a, $0c

jr_01c_79c2:
    push af
    ld a, [de]
    and a
    jr z, jr_01c_79c9

    ld [hl], $78

Jump_01c_79c9:
jr_01c_79c9:
    add hl, bc
    inc de
    pop af
    dec a
    jr nz, jr_01c_79c2

    ld a, $01
    ldh [$ba], a
    ret


    rla
    or b
    ld b, [hl]
    dec h
    ld d, b
    add c
    adc [hl]
    sub a
    ld a, a
    rst $30
    ld c, [hl]
    add c
    adc [hl]
    sub a
    ld a, a
    ld hl, sp+$4e
    add c
    adc [hl]
    sub a
    ld a, a
    ld sp, hl
    ld c, [hl]
    add c
    adc [hl]
    sub a
    ld a, a
    ld a, [$814e]
    adc [hl]
    sub a
    ld a, a
    ei
    ld c, [hl]
    add c
    adc [hl]
    sub a
    ld a, a
    db $fc
    ld c, [hl]
    add c
    adc [hl]
    sub a
    ld a, a
    db $fd
    ld c, [hl]
    add c
    adc [hl]
    sub a
    ld a, a
    cp $4e
    add c
    adc [hl]
    sub a
    ld a, a
    rst $38
    ld c, [hl]
    add c
    adc [hl]
    sub a
    rst $30
    or $4e
    add c
    adc [hl]
    sub a
    rst $30
    rst $30
    ld c, [hl]
    add c
    adc [hl]
    sub a
    rst $30
    ld hl, sp+$50
    add c
    adc [hl]
    sub a
    ld a, a
    adc l
    xor [hl]
    add sp, $50

Call_01c_7a29:
    ld a, $0a
    ld [$0000], a
    ld a, $01
    ld [$6000], a
    ld a, $02
    ld [$4000], a
    call Call_01c_7a4b
    ld a, $03
    ld [$4000], a
    call Call_01c_7a4b
    xor a
    ld [$6000], a
    ld [$0000], a
    ret


Call_01c_7a4b:
    ld hl, $a000
    call Call_01c_7a7f
    ld hl, $a462
    call Call_01c_7a7f
    ld hl, $a8c4
    call Call_01c_7a7f
    ld hl, $ad26
    call Call_01c_7a7f
    ld hl, $b188
    call Call_01c_7a7f
    ld hl, $b5ea
    call Call_01c_7a7f
    ld hl, $a000
    ld bc, $1a4c
    call Call_01c_7856
    ld [$ba4c], a
    call Call_01c_7863
    ret


Call_01c_7a7f:
    xor a
    ld [hl+], a
    dec a
    ld [hl], a
    ret


Call_01c_7a84:
    ld hl, $cd3d
    push hl
    ld a, $0a
    ld [$0000], a
    ld a, $01
    ld [$6000], a
    ld a, $02
    ld [$4000], a
    call Call_01c_7ab8
    ld a, $03
    ld [$4000], a
    call Call_01c_7ab8
    xor a
    ld [$6000], a
    ld [$0000], a
    pop hl
    ld a, [$d5a0]
    and $7f
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [$da80]
    ld [hl], a
    ret


Call_01c_7ab8:
    ld a, [$a000]
    ld [hl+], a
    ld a, [$a462]
    ld [hl+], a
    ld a, [$a8c4]
    ld [hl+], a
    ld a, [$ad26]
    ld [hl+], a
    ld a, [$b188]
    ld [hl+], a
    ld a, [$b5ea]
    ld [hl+], a
    ret


Call_01c_7ad1:
    ld a, $0a
    ld [$0000], a
    ld a, $01
    ld [$6000], a
    ld [$4000], a
    ld a, [$a598]
    and a
    jr z, jr_01c_7b04

    ld hl, $a598
    ld bc, $0f8b
    call Call_01c_7856
    ld c, a
    ld a, [$b523]
    cp c
    jr nz, jr_01c_7b04

    ld hl, $a605
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d359]
    cp l
    jr nz, jr_01c_7b04

    ld a, [$d35a]
    cp h

jr_01c_7b04:
    ld a, $00
    ld [$6000], a
    ld [$0000], a
    ret


Call_01c_7b0d:
    ld a, [$d5a2]
    dec a
    cp $32
    jr nc, jr_01c_7b28

    ld hl, $a598
    ld bc, $0060
    call Call_000_3a87
    ld e, l
    ld d, h
    ld hl, $cc5b
    ld bc, $0060
    jr jr_01c_7b51

jr_01c_7b28:
    ld hl, $a5f8
    ld de, $a598
    ld bc, $1260
    call Call_01c_7b51
    ld hl, $cc5b
    ld de, $b7f8
    ld bc, $0060
    jr jr_01c_7b51

    ld hl, $a598
    ld bc, $0060
    ld a, [$cd3d]
    call Call_000_3a87
    ld de, $cc5b
    ld bc, $0060

Call_01c_7b51:
jr_01c_7b51:
    ld a, $0a
    ld [$0000], a
    ld a, $01
    ld [$6000], a
    xor a
    ld [$4000], a
    call Call_000_00b5
    xor a
    ld [$6000], a
    ld [$0000], a
    ret


    ld a, $0a
    ld [$0000], a
    ld a, $01
    ld [$6000], a
    xor a
    call Call_01c_7b8f
    ld a, $01
    call Call_01c_7b8f
    ld a, $02
    call Call_01c_7b8f
    ld a, $03
    call Call_01c_7b8f
    xor a
    ld [$6000], a
    ld [$0000], a
    ret


Call_01c_7b8f:
    ld [$4000], a
    ld hl, $a000
    ld bc, $2000
    ld a, $ff
    jp Jump_000_36e0


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_01c_7ec9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
