; Disassembly of "Pokemon Red (UE) [S][!].gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $001", ROMX[$4000], BANK[$1]

    add b
    ld b, b
    sbc b
    ld b, b
    add h
    ld b, b
    sbc b
    ld b, b
    add b
    ld b, b
    sbc b
    ld b, b
    add h
    ld b, b
    and h
    ld b, b
    adc b
    ld b, b
    sbc b
    ld b, b
    adc h
    ld b, b
    sbc b
    ld b, b
    adc b
    ld b, b
    sbc b
    ld b, b
    adc h
    ld b, b
    and h
    ld b, b
    sub b
    ld b, b
    sbc b
    ld b, b
    sub h
    ld b, b
    sbc b
    ld b, b
    sub b
    ld b, b
    sbc b
    ld b, b
    sub h
    ld b, b
    sbc b
    ld b, b
    sub b
    ld b, b
    and h
    ld b, b
    sub h
    ld b, b
    and h
    ld b, b
    sub b
    ld b, b
    and h
    ld b, b
    sub h
    ld b, b
    and h
    ld b, b
    add b
    ld b, b
    sbc b
    ld b, b
    add b
    ld b, b
    sbc b
    ld b, b
    add b
    ld b, b
    sbc b
    ld b, b
    add b
    ld b, b
    sbc b
    ld b, b
    add b
    ld b, b
    sbc b
    ld b, b
    add b
    ld b, b
    sbc b
    ld b, b
    add b
    ld b, b
    sbc b
    ld b, b
    add b
    ld b, b
    sbc b
    ld b, b
    add b
    ld b, b
    sbc b
    ld b, b
    add b
    ld b, b
    sbc b
    ld b, b
    add b
    ld b, b
    sbc b
    ld b, b
    add b
    ld b, b
    sbc b
    ld b, b
    add b
    ld b, b
    sbc b
    ld b, b
    add b
    ld b, b
    sbc b
    ld b, b
    add b
    ld b, b
    sbc b
    ld b, b
    add b
    ld b, b
    sbc b
    ld b, b
    nop
    ld bc, $0302
    add b
    add c
    add d
    add e
    inc b
    dec b
    ld b, $07
    add h
    add l
    add [hl]
    add a
    ld [$0a09], sp
    dec bc
    adc b
    adc c
    adc d
    adc e
    nop
    nop
    nop
    nop
    ld [$0800], sp
    nop
    ld [bc], a
    ld [$0308], sp
    nop
    ld [$0020], sp
    nop
    jr nz, @+$0a

    ld [$0822], sp
    nop
    inc hl
    xor a
    ld [$cf0b], a
    ld [$d700], a
    ld [$d057], a
    ld [$d35d], a
    ld [$cf10], a
    ldh [$b4], a
    ld [$cc57], a
    ld [$cd60], a
    ldh [$9f], a
    ldh [$a0], a
    ldh [$a1], a
    call Call_000_35a6
    jr c, jr_001_40ff

    ld a, [$d347]
    ldh [$9f], a
    ld a, [$d348]
    ldh [$a0], a
    ld a, [$d349]
    ldh [$a1], a
    xor a
    ldh [$a2], a
    ldh [$a3], a
    ld a, $02
    ldh [$a4], a
    ld a, $0d
    call Call_000_3e6d
    ldh a, [$a2]
    ld [$d347], a
    ldh a, [$a3]
    ld [$d348], a
    ldh a, [$a4]
    ld [$d349], a

jr_001_40ff:
    ld hl, $d732
    set 2, [hl]
    res 3, [hl]
    set 6, [hl]
    ld a, $ff
    ld [$cd6b], a
    ld a, $07
    jp Jump_000_3e6d


    ld d, l
    cp [hl]
    dec b
    ld d, e
    jp $af7e


    ld d, e
    inc b
    and $50
    ld a, l
    ld e, d
    jp nc, Jump_000_3563

    ld c, b
    ld d, l
    dec h
    ld b, [hl]
    xor l

jr_001_4127:
    add c
    jr @-$28

    ld l, e
    xor d
    push af
    add hl, hl
    ld b, d
    ld hl, $5036
    and b
    ld a, a
    ld hl, $a926
    ld h, $38
    sub $e4
    ld e, b
    db $10
    ld d, l
    ld c, [hl]
    ld a, [de]
    ld a, [hl+]
    ld [hl], l
    ld [hl+], a
    adc b
    adc b
    sub d
    jr @-$11

    adc e
    add c
    add hl, sp
    dec d
    ld c, b
    ld b, c
    adc d
    ld d, l
    dec [hl]
    ld c, d
    ld [hl], b
    pop bc
    inc d
    rst $00
    xor e
    ld d, e
    ld c, c
    ld hl, $157e
    sub h
    dec [hl]
    ld c, c
    ld d, [hl]
    dec h
    ld c, b
    ld e, b
    sbc d
    add l
    ld c, b
    ld d, b
    sbc a
    db $fc
    adc d
    rlca
    xor b
    add l
    xor l
    ld d, l
    ld [c], a
    sub h
    inc d
    sbc d
    ld hl, $5048
    xor d
    add d
    add d
    ld [hl-], a
    cp b
    cp d
    jr c, jr_001_4127

    ld c, [hl]
    dec [hl]
    ld l, b
    sub l
    dec h
    ld a, c
    ld c, [hl]
    ld e, b
    ld l, l
    ld b, [hl]
    rst $38
    or a
    adc [hl]
    cp d
    rst $38
    rst $38
    and e
    xor d
    ld a, h
    ld a, [bc]
    add hl, bc
    pop hl
    or b
    ret nc

    ld b, b

jr_001_4197:
    sbc b
    daa
    ld [hl-], a
    and h
    jr nz, jr_001_4197

    sub e
    add hl, de
    and l
    ld [hl+], a
    sub c
    pop de
    db $76
    sub c
    ld a, [de]
    jp c, $c3d0

    push bc
    inc h
    ld sp, $9c29
    ld sp, $111f
    and h
    ld b, e
    dec c
    ld l, b
    ld b, [hl]
    adc c
    ld a, $4e
    ld [de], a
    ld b, l
    ld a, [hl+]
    sbc h
    ld sp, $3e56
    ld c, e
    ld sp, hl
    ld d, $9d
    ld a, $4f
    push hl
    pop hl
    inc e
    ld l, d
    ld a, $28
    ld [hl], c
    add a
    ld a, [de]
    reti


    ld a, $4c
    and c
    db $e4
    or c
    add hl, bc
    or l
    inc de
    jp hl


    add l
    db $fd
    ld l, e
    sbc $5a
    ld e, d
    and l
    inc [hl]
    ld b, l
    ld a, d
    ld de, $0417
    inc c
    ld sp, $8635
    dec d
    sbc b
    call c, Call_000_0263
    ld d, d
    ld h, h
    pop af
    ret z

    add d
    ld l, [hl]
    db $f4
    ld [hl], c
    call nc, Call_000_0a09
    sub d
    adc e
    ld b, a
    ld d, a
    ld a, a
    sub b
    add [hl]
    ld [hl], a
    push bc
    ld d, c
    ret c

    ld b, h
    cp [hl]
    dec l
    ld e, a
    rst $38
    rst $10
    call nc, $eadd
    dec b
    ld d, l
    xor a
    rst $38
    jr c, jr_001_4282

    and b
    xor a
    ld e, d
    di
    add d
    adc b
    ld d, d
    ld l, e
    call nc, $f8d6
    ld e, [hl]
    ld [hl-], a
    and e
    db $d3
    or h
    ldh a, [$28]
    ld a, [c]
    ld e, h
    and $bf
    push de
    db $e3
    or d
    and e
    ld [$c527], a
    and e
    ld a, [bc]
    cp b
    ld l, $09
    cp d
    ld b, d
    and h
    or h

jr_001_423a:
    or $a7
    rlca
    ld [de], a
    adc h
    ld [$9a53], sp
    xor a
    dec d
    ld b, h
    ld d, h
    add hl, bc
    pop bc
    db $10
    sbc [hl]
    ld [bc], a
    ld h, b
    and a
    ld d, d
    and c
    ld b, a
    ld e, l
    jr jr_001_423a

    ld [hl-], a
    ld b, d
    ld b, e
    sbc l
    ld [hl], b
    ld e, c
    ld hl, sp+$40
    sub a
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    jr jr_001_427b

    dec l
    ld b, b
    ld d, l
    ld [de], a
    ld b, c
    dec b
    ld b, d
    ld bc, $0000
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, $cce9
    ld a, [hl]

jr_001_427b:
    and a
    jr z, jr_001_4284

    dec [hl]
    ld hl, $42a7

jr_001_4282:
    jr jr_001_429f

jr_001_4284:
    dec hl
    ld a, [hl]
    and a
    ret z

    dec [hl]
    ld hl, $42ac
    jr nz, jr_001_429f

    push hl
    ld a, [$cfe5]
    ld [$d0b5], a
    call Call_000_1537
    ld a, [$d0c0]
    ld [$d007], a
    pop hl

jr_001_429f:
    push hl
    call Call_000_3725
    pop hl
    jp Jump_000_3c49


    rla
    ld d, e
    ld e, l
    ld [hl+], a
    ld d, b
    rla
    ld l, d
    ld e, l
    ld [hl+], a
    ld d, b

Call_001_42b1:
    ld bc, $000b
    jp Jump_000_00b5


    ld hl, $45aa
    ld de, $d158
    call Call_001_42b1
    ld hl, $45b1
    ld de, $d34a
    call Call_001_42b1
    xor a
    ldh [$b0], a
    ld [$d358], a
    ld hl, $d732
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, $1f
    ld [$c0ef], a
    ld [$c0f0], a

Jump_001_42dd:
    call Call_000_3de5
    ld a, $01
    ldh [$ba], a
    xor a
    ldh [$d7], a
    ldh [$ae], a
    ld a, $40
    ldh [$af], a
    ld a, $90
    ldh [$b0], a
    call Call_000_190f
    call Call_000_0061
    call Call_000_3680
    ld hl, $60c8
    ld de, $9410
    ld bc, $0050
    ld a, $04
    call Call_000_17f7
    ld hl, $61f8
    ld de, $9460
    ld bc, $0090
    ld a, $04
    call Call_000_17f7
    ld hl, $5380
    ld de, $8800
    ld bc, $0600
    ld a, $04
    call Call_000_17f7
    ld hl, $5980
    ld de, $9310
    ld bc, $0100
    ld a, $04
    call Call_000_17f7
    ld hl, $402f
    ld de, $9600
    ld bc, $0050
    ld a, $1a
    call Call_000_182b
    call Call_001_4519
    ld hl, $c3b6
    ld a, $80
    ld de, $0014
    ld c, $06

jr_001_434d:
    ld b, $10
    push hl

jr_001_4350:
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_001_4350

    pop hl
    add hl, de
    dec c
    jr nz, jr_001_434d

    ld hl, $c42e
    ld a, $31
    ld b, $10

jr_001_4361:
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_001_4361

    call Call_001_44dd
    ld hl, $c328
    ld a, $74
    ld [hl], a
    ld hl, $c4f6
    ld de, $437f
    ld b, $10

jr_001_4377:
    ld a, [de]
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_001_4377

    jr jr_001_438f

    ld b, c
    ld b, d
    ld b, e
    ld b, d
    ld b, h
    ld b, d
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]

jr_001_438f:
    call Call_000_36f4
    call Call_000_3701
    call Call_000_007b
    ld a, $b0
    ld [$cd3d], a
    call Call_001_4524
    ld a, $9b
    call Call_001_4533
    call Call_000_3719
    ld a, $40
    ldh [$b0], a
    call Call_000_3701
    ld a, $98
    call Call_001_4533
    ld b, $06
    call Call_000_3def
    call Call_000_3ddc
    ld a, $e4
    ldh [rOBP0], a
    ld bc, $ffaf
    ld hl, $43db

jr_001_43c6:
    ld a, [hl+]
    and a
    jr z, jr_001_43f4

    ld d, a
    cp $fd
    jr nz, jr_001_43d4

    ld a, $bc
    call Call_000_23b1

jr_001_43d4:
    ld a, [hl+]
    ld e, a
    call Call_001_43ea
    jr jr_001_43c6

    db $fc
    db $10
    inc bc
    inc b
    db $fd
    inc b
    ld [bc], a
    ld [bc], a
    cp $02
    ld bc, $ff02
    ld [bc], a
    nop

Call_001_43ea:
jr_001_43ea:
    call Call_000_20af
    ld a, [bc]
    add d
    ld [bc], a
    dec e
    jr nz, jr_001_43ea

    ret


jr_001_43f4:
    call Call_000_3725
    ld c, $24
    call Call_000_3739
    ld a, $bd
    call Call_000_23b1
    call Call_001_4598
    ld a, $90
    ldh [$b0], a
    ld d, $90

jr_001_440a:
    ld h, d
    ld l, $40
    call Call_001_44cf
    ld h, $00
    ld l, $50
    call Call_001_44cf
    ld a, d
    add $04
    ld d, a
    and a
    jr nz, jr_001_440a

    ld a, $9c
    call Call_001_4533
    call Call_000_3701
    call Call_001_4598
    call Call_000_3dd7
    call Call_000_3748
    ld a, $c3
    ld [$c0ee], a
    call Call_000_23b1
    xor a
    ld [$cc5b], a

jr_001_443b:
    ld c, $c8
    call Call_000_12f8
    jr c, jr_001_4459

    call Call_001_44c1
    ld c, $01
    call Call_000_12f8
    jr c, jr_001_4459

    ld b, $0d
    ld hl, $72ac
    call Call_000_35d6
    call Call_001_4496
    jr jr_001_443b

jr_001_4459:
    ld a, [$cd3d]
    call Call_000_13d0
    call Call_000_3748
    call Call_000_3dd4
    call Call_000_0082
    xor a
    ldh [$b0], a
    inc a
    ldh [$ba], a
    call Call_000_190f
    ld a, $98
    call Call_001_4533
    ld a, $9c
    call Call_001_4533
    call Call_000_3dd7
    call Call_000_20ba
    ldh a, [$b4]
    ld b, a
    and $46
    cp $46
    jp z, Jump_001_448e

    jp Jump_001_5af2


Jump_001_448e:
    ld b, $07
    ld hl, $498a
    jp Jump_000_35d6


Call_001_4496:
    ld a, $98
    call Call_001_4533

jr_001_449b:
    call Call_000_3e5c
    and $0f
    ld c, a
    ld b, $00
    ld hl, $4588
    add hl, bc
    ld a, [hl]
    ld hl, $cd3d
    cp [hl]
    jr z, jr_001_449b

    ld [hl], a
    call Call_001_4524
    ld a, $90
    ldh [$b0], a
    ld d, $01
    ld b, $0d
    ld hl, $7258
    call Call_000_35d6
    ret


Call_001_44c1:
    ld d, $00
    ld b, $0d
    ld hl, $7258
    call Call_000_35d6
    xor a
    ldh [$b0], a
    ret


Call_001_44cf:
jr_001_44cf:
    ldh a, [rLY]
    cp l
    jr nz, jr_001_44cf

    ld a, h
    ldh [rSCX], a

jr_001_44d7:
    ldh a, [rLY]
    cp h
    jr z, jr_001_44d7

    ret


Call_001_44dd:
    ld hl, $66a8
    ld de, $8000
    ld bc, $0230
    ld a, $04
    call Call_000_17f7
    call Call_000_0082
    xor a
    ld [$cd3d], a
    ld hl, $c300
    ld de, $605a
    ld b, $07

jr_001_44fa:
    push de
    ld c, $05

jr_001_44fd:
    ld a, d
    ld [hl+], a
    ld a, e
    ld [hl+], a
    add $08
    ld e, a
    ld a, [$cd3d]
    ld [hl+], a
    inc a
    ld [$cd3d], a
    inc hl
    dec c
    jr nz, jr_001_44fd

    pop de
    ld a, $08
    add d
    ld d, a
    dec b
    jr nz, jr_001_44fa

    ret


Call_001_4519:
    ld hl, $9800
    ld bc, $0800
    ld a, $7f
    jp Jump_000_36e0


Call_001_4524:
    ld [$cf91], a
    ld [$d0b5], a
    ld hl, $c46d
    call Call_000_1537
    jp Jump_000_1389


Call_001_4533:
    ldh [$bd], a
    jp Jump_000_3dd7


    xor a
    ldh [$b0], a
    call Call_000_190f
    call Call_000_36a0
    ld de, $60c8
    ld hl, $9600
    ld bc, $041c
    call Call_000_1848
    ld hl, $c42e
    ld de, $4556
    jp Jump_000_1955


    ld h, b
    ld h, c
    ld h, d
    ld h, c
    ld h, e
    ld h, c
    ld h, h
    ld a, a
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld c, [hl]
    ld h, b
    ld h, c
    ld h, d
    ld h, c
    ld h, e
    ld h, c
    ld h, h
    ld a, a
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld c, [hl]
    ld h, b
    ld h, c
    ld h, d
    ld h, c
    ld h, e
    ld h, c
    ld h, h
    ld a, a
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld d, b
    or b
    or c
    sbc c
    ld [hl], b
    inc bc
    ld a, [de]
    ld d, h
    inc b
    ld bc, $1994
    ld c, h
    sub [hl]
    ld [hl+], a
    and e
    add l

Call_001_4598:
    ld hl, $c447
    ld de, $45a1
    jp Jump_000_1955


    ld h, b
    ld h, c
    ld a, a
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld d, b
    adc l
    adc b
    adc l
    sub e
    add h
    adc l
    ld d, b
    sub d
    adc [hl]
    adc l
    sbc b
    ld d, b
    ld a, [$da5f]
    ld [$cf91], a
    ld a, [$cc49]
    cp $03
    jr z, jr_001_45cf

    ld a, [$cf92]
    ld e, a
    ld hl, $5c37
    ld b, $0e
    call Call_000_35d6

jr_001_45cf:
    ld a, [$cf91]
    ld [$d0b5], a
    call Call_000_1537
    ld hl, $d16b
    ld bc, $002c
    ld a, [$cc49]
    cp $01
    jr c, jr_001_45f9

    ld hl, $d8a4
    jr z, jr_001_45f9

    cp $02
    ld hl, $da96
    ld bc, $0021
    jr z, jr_001_45f9

    ld hl, $da5f
    jr jr_001_45ff

jr_001_45f9:
    ld a, [$cf92]
    call Call_000_3a87

jr_001_45ff:
    ld de, $cf98
    ld bc, $002c
    jp Jump_000_00b5


    nop
    nop
    nop
    nop
    ld [de], a
    nop
    nop
    ld b, $00
    nop
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
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    ld [bc], a
    ld d, b
    nop
    ld [bc], a
    ld d, b
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    jr nc, jr_001_4638

jr_001_4638:
    nop
    dec h
    nop
    nop
    dec d
    nop
    nop
    rlca
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    ld d, b
    nop
    inc bc
    ld d, b
    nop
    nop
    nop
    nop
    ld hl, $0000
    ld hl, $0000
    ld hl, $0000
    sbc b
    nop
    nop
    sbc b
    nop
    nop
    sbc b
    nop
    nop
    sbc b
    nop
    nop
    sbc b
    nop
    nop
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
    nop
    nop
    nop
    add hl, bc
    ld d, b
    nop
    ld hl, $0000
    nop
    nop
    ld bc, $0000
    nop
    sbc b
    nop
    nop
    stop
    nop
    ld b, $00
    nop
    dec d
    nop
    nop
    ld b, b
    nop
    nop
    rlca
    nop
    nop
    dec b
    nop
    nop
    rlca
    nop
    nop
    ld b, $50
    nop
    nop
    stop
    ld [bc], a
    nop
    nop
    inc bc
    nop
    nop
    inc bc
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    nop
    nop
    dec b
    ld d, b
    nop
    inc bc
    ld d, b
    nop
    inc bc
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
    adc h
    add b
    sub d
    sub e
    add h
    sub c
    ld a, a
    add c
    add b
    adc e
    adc e
    ld d, b
    sub h
    adc e
    sub e
    sub c
    add b
    ld a, a
    add c
    add b
    adc e
    adc e
    ld d, b
    add [hl]
    sub c
    add h
    add b
    sub e
    ld a, a
    add c
    add b
    adc e
    adc e
    ld d, b
    adc a
    adc [hl]
    adc d
    cp d
    ld a, a
    add c
    add b
    adc e
    adc e
    ld d, b
    sub e
    adc [hl]
    sub [hl]
    adc l
    ld a, a
    adc h
    add b
    adc a
    ld d, b
    add c
    adc b
    add d
    sbc b
    add d
    adc e
    add h
    ld d, b
    and $e6
    and $e6
    and $50
    sub d
    add b
    add l
    add b
    sub c
    adc b
    ld a, a
    add c
    add b
    adc e
    adc e
    ld d, b
    adc a
    adc [hl]
    adc d
    cp d
    add e
    add h
    sub a
    ld d, b
    adc h
    adc [hl]
    adc [hl]
    adc l
    ld a, a
    sub d
    sub e
    adc [hl]
    adc l
    add h
    ld d, b
    add b
    adc l
    sub e
    adc b
    add e
    adc [hl]
    sub e
    add h
    ld d, b
    add c
    sub h
    sub c
    adc l
    ld a, a
    add a
    add h
    add b
    adc e
    ld d, b
    adc b
    add d
    add h
    ld a, a
    add a
    add h
    add b
    adc e
    ld d, b
    add b
    sub [hl]
    add b
    adc d
    add h
    adc l
    adc b
    adc l
    add [hl]
    ld d, b
    adc a
    add b
    sub c
    adc e
    sbc b
    sbc c
    ld a, a
    add a
    add h
    add b
    adc e
    ld d, b
    add l
    sub h
    adc e
    adc e
    ld a, a
    sub c
    add h
    sub d
    sub e
    adc [hl]
    sub c
    add h
    ld d, b
    adc h
    add b
    sub a
    ld a, a
    adc a
    adc [hl]
    sub e
    adc b
    adc [hl]
    adc l
    ld d, b
    add a
    sbc b
    adc a
    add h
    sub c
    ld a, a
    adc a
    adc [hl]
    sub e
    adc b
    adc [hl]
    adc l
    ld d, b
    sub d
    sub h
    adc a
    add h
    sub c
    ld a, a
    adc a
    adc [hl]
    sub e
    adc b
    adc [hl]
    adc l
    ld d, b
    adc a
    adc [hl]
    sub e
    adc b
    adc [hl]
    adc l
    ld d, b
    add c
    adc [hl]
    sub h
    adc e
    add e
    add h
    sub c
    add c
    add b
    add e
    add [hl]
    add h
    ld d, b
    add d
    add b
    sub d
    add d
    add b
    add e
    add h
    add c
    add b
    add e
    add [hl]
    add h
    ld d, b
    sub e
    add a
    sub h
    adc l
    add e
    add h
    sub c
    add c
    add b
    add e
    add [hl]
    add h
    ld d, b
    sub c
    add b
    adc b
    adc l
    add c
    adc [hl]
    sub [hl]
    add c
    add b
    add e
    add [hl]
    add h
    ld d, b
    sub d
    adc [hl]
    sub h
    adc e
    add c
    add b
    add e
    add [hl]
    add h
    ld d, b
    adc h
    add b
    sub c
    sub d
    add a
    add c
    add b
    add e
    add [hl]
    add h
    ld d, b
    sub l
    adc [hl]
    adc e
    add d
    add b
    adc l
    adc [hl]
    add c
    add b
    add e
    add [hl]
    add h
    ld d, b
    add h
    add b
    sub c
    sub e
    add a
    add c
    add b
    add e
    add [hl]
    add h
    ld d, b
    add h
    sub d
    add d
    add b
    adc a
    add h
    ld a, a
    sub c
    adc [hl]
    adc a
    add h
    ld d, b
    sub c
    add h
    adc a
    add h
    adc e
    ld d, b
    adc [hl]
    adc e
    add e
    ld a, a
    add b
    adc h
    add c
    add h
    sub c
    ld d, b
    add l
    adc b
    sub c
    add h
    ld a, a
    sub d
    sub e
    adc [hl]
    adc l
    add h
    ld d, b
    sub e
    add a
    sub h
    adc l
    add e
    add h
    sub c
    sub d
    sub e
    adc [hl]
    adc l
    add h
    ld d, b
    sub [hl]
    add b
    sub e
    add h
    sub c
    ld a, a
    sub d
    sub e
    adc [hl]
    adc l
    add h
    ld d, b
    add a
    adc a
    ld a, a
    sub h
    adc a
    ld d, b
    adc a
    sub c
    adc [hl]
    sub e
    add h
    adc b
    adc l
    ld d, b
    adc b
    sub c
    adc [hl]
    adc l
    ld d, b
    add d
    add b
    sub c
    add c
    adc [hl]
    sub d
    ld d, b
    add d
    add b
    adc e
    add d
    adc b
    sub h
    adc h
    ld d, b
    sub c
    add b
    sub c
    add h
    ld a, a
    add d
    add b
    adc l
    add e
    sbc b
    ld d, b
    add e
    adc [hl]
    adc h
    add h
    ld a, a
    add l
    adc [hl]
    sub d
    sub d
    adc b
    adc e
    ld d, b
    add a
    add h
    adc e
    adc b
    sub a
    ld a, a
    add l
    adc [hl]
    sub d
    sub d
    adc b
    adc e
    ld d, b
    sub d
    add h
    add d
    sub c
    add h
    sub e
    ld a, a
    adc d
    add h
    sbc b
    ld d, b
    and $e6
    and $e6
    and $50
    add c
    adc b
    adc d
    add h
    ld a, a
    sub l
    adc [hl]
    sub h
    add d
    add a
    add h
    sub c
    ld d, b
    sub a
    ld a, a
    add b
    add d
    add d
    sub h
    sub c
    add b
    add d
    sbc b
    ld d, b
    adc e
    add h
    add b
    add l
    ld a, a
    sub d
    sub e
    adc [hl]
    adc l
    add h
    ld d, b
    add d
    add b
    sub c
    add e
    ld a, a
    adc d
    add h
    sbc b
    ld d, b
    adc l
    sub h
    add [hl]
    add [hl]
    add h
    sub e
    ld d, b
    adc a
    adc a
    ld a, a
    sub h
    adc a
    ld d, b
    adc a
    adc [hl]
    adc d
    cp d
    ld a, a
    add e
    adc [hl]
    adc e
    adc e
    ld d, b
    add l
    sub h
    adc e
    adc e
    ld a, a
    add a
    add h
    add b
    adc e
    ld d, b
    sub c
    add h
    sub l
    adc b
    sub l
    add h
    ld d, b
    adc h
    add b
    sub a
    ld a, a
    sub c
    add h
    sub l
    adc b
    sub l
    add h
    ld d, b
    add [hl]
    sub h
    add b
    sub c
    add e
    ld a, a
    sub d
    adc a
    add h
    add d
    add sp, $50
    sub d
    sub h
    adc a
    add h
    sub c
    ld a, a
    sub c
    add h
    adc a
    add h
    adc e
    ld d, b
    adc h
    add b
    sub a
    ld a, a
    sub c
    add h
    adc a
    add h
    adc e
    ld d, b
    add e
    adc b
    sub c
    add h
    ld a, a
    add a
    adc b
    sub e
    ld d, b
    add d
    adc [hl]
    adc b
    adc l
    ld d, b
    add l
    sub c
    add h
    sub d
    add a
    ld a, a
    sub [hl]
    add b
    sub e
    add h
    sub c
    ld d, b
    sub d
    adc [hl]
    add e
    add b
    ld a, a
    adc a
    adc [hl]
    adc a
    ld d, b
    adc e
    add h
    adc h
    adc [hl]
    adc l
    add b
    add e
    add h
    ld d, b
    sub d
    add sp, -$6e
    add sp, -$6d
    adc b
    add d
    adc d
    add h
    sub e
    ld d, b
    add [hl]
    adc [hl]
    adc e
    add e
    ld a, a
    sub e
    add h
    add h
    sub e
    add a
    ld d, b
    sub a
    ld a, a
    add b
    sub e
    sub e
    add b
    add d
    adc d
    ld d, b
    sub a
    ld a, a
    add e
    add h
    add l
    add h
    adc l
    add e
    ld d, b
    sub a
    ld a, a
    sub d
    adc a
    add h
    add h
    add e
    ld d, b
    sub a
    ld a, a
    sub d
    adc a
    add h
    add d
    adc b
    add b
    adc e
    ld d, b
    add d
    adc [hl]
    adc b
    adc l
    ld a, a
    add d
    add b
    sub d
    add h
    ld d, b
    adc [hl]
    add b
    adc d
    cp l
    ld a, a
    adc a
    add b
    sub c
    add d
    add h
    adc e
    ld d, b
    adc b
    sub e
    add h
    adc h
    add l
    adc b
    adc l
    add e
    add h
    sub c
    ld d, b
    sub d
    adc b
    adc e
    adc a
    add a
    ld a, a
    sub d
    add d
    adc [hl]
    adc a
    add h
    ld d, b
    adc a
    adc [hl]
    adc d
    cp d
    ld a, a
    add l
    adc e
    sub h
    sub e
    add h
    ld d, b
    adc e
    adc b
    add l
    sub e
    ld a, a
    adc d
    add h
    sbc b
    ld d, b
    add h
    sub a
    adc a
    add sp, -$80
    adc e
    adc e
    ld d, b
    adc [hl]
    adc e
    add e
    ld a, a
    sub c
    adc [hl]
    add e
    ld d, b
    add [hl]
    adc [hl]
    adc [hl]
    add e
    ld a, a
    sub c
    adc [hl]
    add e
    ld d, b
    sub d
    sub h
    adc a
    add h
    sub c
    ld a, a
    sub c
    adc [hl]
    add e
    ld d, b
    adc a
    adc a
    ld a, a
    sub h
    adc a
    ld d, b
    add h
    sub e
    add a
    add h
    sub c
    ld d, b
    adc h
    add b
    sub a
    ld a, a
    add h
    sub e
    add a
    add h
    sub c
    ld d, b
    add h
    adc e
    adc b
    sub a
    add h
    sub c
    ld d, b
    adc h
    add b
    sub a
    ld a, a
    add h
    adc e
    adc b
    sub a
    add h
    sub c
    ld d, b
    add c
    ld hl, sp-$7b
    ld d, b
    add c
    rst $30
    add l
    ld d, b
    rst $30
    add l
    ld d, b
    ld hl, sp-$7b
    ld d, b
    ld sp, hl
    add l
    ld d, b
    ld a, [$5085]
    ei
    add l
    ld d, b
    db $fc
    add l
    ld d, b
    db $fd
    add l
    ld d, b
    cp $85
    ld d, b
    rst $38
    add l
    ld d, b
    rst $30
    or $85
    ld d, b
    rst $30
    rst $30
    add l
    ld d, b
    add c
    ld a, [$5085]
    or [hl]
    ret nc

    push bc
    ret c

    add hl, de
    xor h
    db $10
    ld d, b
    or [hl]
    or d
    ld h, $d7
    add hl, de
    xor h
    db $10
    ld d, b
    or l
    inc l
    cpl
    or e
    add hl, de
    xor h
    db $10
    ld d, b
    jp z, $3cd4

    cp e
    add hl, de
    xor h
    db $10
    ld d, b
    set 3, [hl]
    call nc, $19d8
    xor h
    db $10
    ld d, b
    push bc
    or [hl]
    sub $bc
    add hl, de
    xor h
    db $10
    ld d, b
    add hl, de
    and l
    add hl, de
    xor h
    db $10
    ld d, b
    set 1, c
    ret nz

    rst $08
    add hl, de
    xor h
    db $10
    ld d, b
    add hl, bc
    db $e3
    and [hl]
    inc de
    add hl, de
    xor h
    db $10
    ld d, b
    ret nz

    rst $08
    ld a, [hl+]
    ld d, b
    set 2, [hl]
    cp d
    ld d, b
    dec de
    xor b
    xor e
    inc c
    ld d, b
    adc e
    and [hl]
    add hl, de
    db $e3
    ld d, b
    add hl, bc
    db $e3
    and [hl]
    inc de
    ld d, b
    ld b, d
    sub b
    add [hl]
    xor l
    ld b, d
    sub d
    xor e
    ld d, b
    add [hl]
    xor l
    ld b, d
    sub d
    xor e
    ld d, b
    ld b, d
    sub b
    sbc l
    adc h
    adc a
    db $e3
    ld d, b
    sbc l
    adc h
    adc a
    db $e3
    ld d, b
    add e
    add a
    adc l
    and a
    xor e
    sub e
    ld a, [$cfcb]
    dec a
    jr z, jr_001_4b1e

    cp $ff
    ret nz

    ld [$cfcb], a
    jp Jump_000_008d


jr_001_4b1e:
    xor a
    ldh [$90], a

Jump_001_4b21:
    ldh [$8f], a
    ld d, $c1
    ldh a, [$8f]
    ld e, a
    ld a, [de]
    and a
    jp z, Jump_001_4bad

    inc e
    inc e
    ld a, [de]
    ld [$d5cd], a
    cp $ff
    jr nz, jr_001_4b3c

    call Call_001_4bd1
    jr jr_001_4bad

jr_001_4b3c:
    cp $a0
    jr c, jr_001_4b46

    and $0f
    add $10
    jr jr_001_4b48

jr_001_4b46:
    and $0f

jr_001_4b48:
    ld l, a
    push de
    inc d
    ld a, e
    add $05
    ld e, a
    ld a, [de]
    and $80
    ldh [$94], a
    pop de
    ld h, $00
    ld bc, $4000
    add hl, hl
    add hl, hl
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_001_4bd1
    ldh a, [$90]
    ld e, a
    ld d, $c3

jr_001_4b6c:
    ldh a, [$92]
    add $10
    add [hl]
    ld [de], a
    inc hl
    ldh a, [$91]
    add $08
    add [hl]
    inc e
    ld [de], a
    inc e
    ld a, [bc]
    inc bc
    push bc
    ld b, a
    ld a, [$d5cd]
    swap a
    and $0f
    cp $0b
    jr nz, jr_001_4b8e

    ld a, $7c
    jr jr_001_4b96

jr_001_4b8e:
    sla a
    sla a
    ld c, a
    sla a
    add c

jr_001_4b96:
    add b
    pop bc
    ld [de], a
    inc hl
    inc e
    ld a, [hl]
    bit 1, a
    jr z, jr_001_4ba3

    ldh a, [$94]
    or [hl]

jr_001_4ba3:
    inc hl
    ld [de], a
    inc e
    bit 0, a
    jr z, jr_001_4b6c

    ld a, e
    ldh [$90], a

Jump_001_4bad:
jr_001_4bad:
    ldh a, [$8f]
    add $10
    cp $00
    jp nz, Jump_001_4b21

    ldh a, [$90]
    ld l, a
    ld h, $c3
    ld de, $0004
    ld b, $a0
    ld a, [$d736]
    bit 6, a
    ld a, $a0
    jr z, jr_001_4bcb

    ld a, $90

jr_001_4bcb:
    cp l
    ret z

    ld [hl], b
    add hl, de
    jr jr_001_4bcb

Call_001_4bd1:
    inc e
    inc e
    ld a, [de]
    ldh [$92], a
    inc e
    inc e
    ld a, [de]
    ldh [$91], a
    ld a, $04
    add e
    ld e, a
    ldh a, [$92]
    add $04
    and $f0
    ld [de], a
    inc e
    ldh a, [$91]
    and $f0
    ld [de], a
    ret


    ld c, $80
    ld b, $0a
    ld hl, $4bfb

jr_001_4bf4:
    ld a, [hl+]
    ld [c], a
    inc c
    dec b
    jr nz, jr_001_4bf4

    ret


    ld a, $c3
    ldh [rDMA], a
    ld a, $28

jr_001_4c01:
    dec a
    jr nz, jr_001_4c01

    ret


    ld hl, $c46b
    ld b, $01
    ld c, $0b
    ld a, [$d057]
    and a
    jr z, jr_001_4c17

    call Call_000_1922
    jr jr_001_4c1a

jr_001_4c17:
    call Call_001_5ab3

jr_001_4c1a:
    ld hl, $c480
    ld de, $4c28
    call Call_000_1955
    ld c, $32
    jp Jump_000_3739


    sub [hl]
    and b
    xor b
    or e
    xor b
    xor l
    and [hl]
    add sp, -$18
    add sp, -$19
    ld d, b
    ld h, $c1
    inc h
    ld a, $0e

jr_001_4c39:
    ld l, a
    sub $0e
    ld c, a
    ldh [$da], a
    ld a, [hl]
    and a
    jr z, jr_001_4c4c

    push hl
    push de
    push bc
    call Call_001_4c54
    pop bc
    pop de
    pop hl

jr_001_4c4c:
    ld a, l
    add $10
    cp $0e
    jr nz, jr_001_4c39

    ret


Call_001_4c54:
    cp $01
    jp nz, Jump_001_4c5c

    jp Jump_001_4e31


Jump_001_4c5c:
    dec a
    swap a
    ldh [$93], a
    ld a, [$cf17]
    ld b, a
    ldh a, [$da]
    cp b
    jr nz, jr_001_4c6d

    jp Jump_001_5236


jr_001_4c6d:
    jp Jump_001_4ed1


Call_001_4c70:
    nop
    ld h, $c1
    ldh a, [$da]
    add $00
    ld l, a
    ld a, [hl]
    and a
    ret z

    ld a, l
    add $03
    ld l, a
    ld a, [hl+]
    call Call_001_4d72
    ld a, [hl+]
    add $04
    add b
    and $f0
    or c
    ldh [$90], a
    ld a, [hl+]
    call Call_001_4d72
    ld a, [hl]
    add b
    and $f0
    or c
    ldh [$91], a
    ld a, l
    add $07
    ld l, a
    xor a
    ld [hl-], a
    ld [hl-], a
    ldh a, [$91]
    ld [hl-], a
    ldh a, [$90]
    ld [hl], a
    xor a

Jump_001_4ca5:
    ldh [$8f], a
    swap a
    ld e, a
    ldh a, [$da]
    cp e
    jp z, Jump_001_4d69

    ld d, h
    ld a, [de]
    and a
    jp z, Jump_001_4d69

    inc e
    inc e
    ld a, [de]
    inc a
    jp z, Jump_001_4d69

    ldh a, [$da]
    add $0a
    ld l, a
    inc e
    ld a, [de]
    call Call_001_4d72
    inc e
    ld a, [de]
    add $04
    add b
    and $f0
    or c
    sub [hl]
    jr nc, jr_001_4cd4

    cpl
    inc a

jr_001_4cd4:
    ldh [$90], a
    push af
    rl c
    pop af
    ccf
    rl c
    ld b, $07
    ld a, [hl]
    and $0f
    jr z, jr_001_4ce6

    ld b, $09

jr_001_4ce6:
    ldh a, [$90]
    sub b
    ldh [$92], a
    ld a, b
    ldh [$90], a
    jr c, jr_001_4d01

    ld b, $07
    dec e
    ld a, [de]
    inc e
    and a
    jr z, jr_001_4cfa

    ld b, $09

jr_001_4cfa:
    ldh a, [$92]
    sub b
    jr z, jr_001_4d01

    jr nc, jr_001_4d69

jr_001_4d01:
    inc e
    inc l
    ld a, [de]
    push bc
    call Call_001_4d72
    inc e
    ld a, [de]
    add b
    and $f0
    or c
    pop bc
    sub [hl]
    jr nc, jr_001_4d14

    cpl
    inc a

jr_001_4d14:
    ldh [$91], a
    push af
    rl c
    pop af
    ccf
    rl c
    ld b, $07
    ld a, [hl]
    and $0f
    jr z, jr_001_4d26

    ld b, $09

jr_001_4d26:
    ldh a, [$91]
    sub b
    ldh [$92], a
    ld a, b
    ldh [$91], a
    jr c, jr_001_4d41

    ld b, $07
    dec e
    ld a, [de]
    inc e
    and a
    jr z, jr_001_4d3a

    ld b, $09

jr_001_4d3a:
    ldh a, [$92]
    sub b
    jr z, jr_001_4d41

    jr nc, jr_001_4d69

jr_001_4d41:
    ldh a, [$91]
    ld b, a
    ldh a, [$90]
    inc l
    cp b
    jr c, jr_001_4d4e

    ld b, $0c
    jr jr_001_4d50

jr_001_4d4e:
    ld b, $03

jr_001_4d50:
    ld a, c
    and b
    or [hl]
    ld [hl], a
    ld a, c
    inc l
    inc l
    ldh a, [$8f]
    ld de, $4d85
    add a
    add e
    ld e, a
    jr nc, jr_001_4d62

    inc d

jr_001_4d62:
    ld a, [de]
    or [hl]
    ld [hl+], a
    inc de
    ld a, [de]
    or [hl]
    ld [hl], a

Jump_001_4d69:
jr_001_4d69:
    ldh a, [$8f]
    inc a
    cp $10
    jp nz, Jump_001_4ca5

    ret


Call_001_4d72:
    and a
    ld b, $00
    ld c, $00
    jr z, jr_001_4d84

    ld c, $09
    cp $ff
    jr z, jr_001_4d83

    ld c, $07
    ld a, $00

jr_001_4d83:
    ld b, a

jr_001_4d84:
    ret


    nop
    ld bc, $0200
    nop
    inc b
    nop
    ld [$1000], sp
    nop
    jr nz, jr_001_4d92

jr_001_4d92:
    ld b, b
    nop
    add b
    ld bc, $0200
    nop
    inc b
    nop
    ld [$1000], sp
    nop
    jr nz, jr_001_4da1

jr_001_4da1:
    ld b, b
    nop
    add b
    nop
    ret


jr_001_4da6:
    call Call_000_3ddc
    ld a, $80
    ld [$d356], a
    ld hl, $d733
    set 0, [hl]
    ld hl, $d163
    xor a
    ld [hl+], a
    dec a
    ld [hl], a
    ld a, $01
    ld [$cf91], a
    ld a, $14
    ld [$d127], a
    xor a
    ld [$cc49], a
    ld [$d35e], a
    call Call_000_3927
    ld a, $01
    ld [$d059], a
    ld a, $2c
    call Call_000_3e6d
    ld a, $01
    ld [$cfcb], a
    ldh [$ba], a
    jr jr_001_4da6

    call Call_000_3c3c
    ldh a, [$8c]
    ld b, a
    ld hl, $d5ce

jr_001_4dea:
    ld a, [hl+]
    cp $ff
    ret z

    cp b
    jr z, jr_001_4df4

    inc hl
    jr jr_001_4dea

jr_001_4df4:
    ld a, [hl]
    ldh [$db], a
    ld hl, $d504
    ldh a, [$8c]
    dec a
    add a
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl]
    ld b, a
    ld c, $01
    call Call_000_3e2e
    jr nc, jr_001_4e1f

    ldh a, [$db]
    ld [$cc4d], a
    ld a, $11
    call Call_000_3e6d
    ld a, $01
    ld [$cc3c], a
    ld hl, $4e26
    jr jr_001_4e22

jr_001_4e1f:
    ld hl, $4e2c

jr_001_4e22:
    call Call_000_3c49
    ret


    rla
    add hl, de
    ld b, c
    jr nz, @+$0d

    ld d, b
    rla
    ld a, [hl+]
    ld b, c
    jr nz, jr_001_4e81

Jump_001_4e31:
    ld a, [$c200]
    and a
    jr z, jr_001_4e41

    cp $ff
    jr z, jr_001_4e4a

    dec a
    ld [$c200], a
    jr jr_001_4e4a

jr_001_4e41:
    ld a, [$c45c]
    ldh [$93], a
    cp $60
    jr c, jr_001_4e50

jr_001_4e4a:
    ld a, $ff
    ld [$c102], a
    ret


jr_001_4e50:
    call Call_001_4c70
    ld h, $c1
    ld a, [$cfc5]
    and a
    jr nz, jr_001_4e90

    ld a, [$d528]
    bit 2, a
    jr z, jr_001_4e65

    xor a
    jr jr_001_4e86

jr_001_4e65:
    bit 3, a
    jr z, jr_001_4e6d

    ld a, $04
    jr jr_001_4e86

jr_001_4e6d:
    bit 1, a
    jr z, jr_001_4e75

    ld a, $08
    jr jr_001_4e86

jr_001_4e75:
    bit 0, a
    jr z, jr_001_4e7d

    ld a, $0c
    jr jr_001_4e86

jr_001_4e7d:
    xor a
    ld [$c107], a

jr_001_4e81:
    ld [$c108], a
    jr jr_001_4eab

jr_001_4e86:
    ld [$c109], a
    ld a, [$cfc4]
    bit 0, a
    jr nz, jr_001_4e7d

jr_001_4e90:
    ld a, [$d736]
    bit 7, a
    jr nz, jr_001_4eb6

    ldh a, [$da]
    add $07
    ld l, a
    ld a, [hl]
    inc a
    ld [hl], a
    cp $04
    jr nz, jr_001_4eab

    xor a
    ld [hl], a
    inc hl
    ld a, [hl]
    inc a
    and $03
    ld [hl], a

jr_001_4eab:
    ld a, [$c108]
    ld b, a
    ld a, [$c109]
    add b
    ld [$c102], a

jr_001_4eb6:
    ldh a, [$93]
    ld c, a
    ld a, [$d535]
    cp c
    ld a, $00
    jr nz, jr_001_4ec3

    ld a, $80

jr_001_4ec3:
    ld [$c207], a
    ret


    push bc
    push af
    ldh a, [$da]
    ld c, a
    pop af
    add c
    ld l, a
    pop bc
    ret


Jump_001_4ed1:
    ldh a, [$da]
    swap a
    dec a
    add a
    ld hl, $d4e4
    add l
    ld l, a
    ld a, [hl]
    ld [$cf14], a
    ld h, $c1
    ldh a, [$da]
    ld l, a
    inc l
    ld a, [hl]
    and a
    jp z, Jump_001_50ad

    call Call_001_50dc
    ret c

    ld h, $c1
    ldh a, [$da]
    ld l, a
    inc l
    ld a, [hl]
    bit 7, a
    jp nz, Jump_001_507f

    ld b, a
    ld a, [$cfc4]
    bit 0, a
    jp nz, Jump_001_5073

    ld a, b
    cp $02
    jp z, Jump_001_5057

    cp $03
    jp z, Jump_001_4ffe

    ld a, [$cfc5]
    and a
    ret nz

    call Call_001_50bd
    ld h, $c2
    ldh a, [$da]
    add $06
    ld l, a
    ld a, [hl]
    inc a
    jr z, jr_001_4f59

    inc a
    jr z, jr_001_4f59

    dec a
    ld [hl], a
    dec a
    push hl
    ld hl, $cf0f
    dec [hl]
    pop hl
    ld de, $cc5b
    call Call_001_522f
    cp $e0
    jp z, Jump_001_4fc8

    cp $ff
    jr nz, jr_001_4f4b

    ld [hl], a
    ld hl, $d730
    res 0, [hl]
    xor a
    ld [$cd38], a
    ld [$cd3a], a
    ret


jr_001_4f4b:
    cp $fe
    jr nz, jr_001_4f5f

    ld [hl], $01
    ld de, $cc5b
    call Call_001_522f
    jr jr_001_4f5f

jr_001_4f59:
    call Call_001_5207
    call Call_000_3e5c

jr_001_4f5f:
    ld b, a
    ld a, [$cf14]
    cp $d0
    jr z, jr_001_4f7f

    cp $d1
    jr z, jr_001_4f96

    cp $d2
    jr z, jr_001_4fad

    cp $d3
    jr z, jr_001_4fbe

    ld a, b
    cp $40
    jr nc, jr_001_4f8b

    ld a, [$cf14]
    cp $02
    jr z, jr_001_4fad

jr_001_4f7f:
    ld de, $0028
    add hl, de
    ld de, $0100
    ld bc, $0400
    jr jr_001_4fcb

jr_001_4f8b:
    cp $80
    jr nc, jr_001_4fa2

    ld a, [$cf14]
    cp $02
    jr z, jr_001_4fbe

jr_001_4f96:
    ld de, $ffd8
    add hl, de
    ld de, $ff00
    ld bc, $0804
    jr jr_001_4fcb

jr_001_4fa2:
    cp $c0
    jr nc, jr_001_4fb7

    ld a, [$cf14]
    cp $01
    jr z, jr_001_4f96

jr_001_4fad:
    dec hl
    dec hl
    ld de, $00ff
    ld bc, $0208
    jr jr_001_4fcb

jr_001_4fb7:
    ld a, [$cf14]
    cp $01
    jr z, jr_001_4f7f

jr_001_4fbe:
    inc hl
    inc hl
    ld de, $0001
    ld bc, $010c
    jr jr_001_4fcb

Jump_001_4fc8:
    ld de, $0000

jr_001_4fcb:
    push hl
    ld h, $c1
    ldh a, [$da]
    add $09
    ld l, a
    ld [hl], c
    ldh a, [$da]
    add $03
    ld l, a
    ld [hl], d
    inc l
    inc l
    ld [hl], e
    pop hl
    push de
    ld c, [hl]
    call Call_001_516e
    pop de
    ret c

    ld h, $c2
    ldh a, [$da]
    add $04
    ld l, a
    ld a, [hl]
    add d
    ld [hl+], a
    ld a, [hl]
    add e
    ld [hl], a
    ldh a, [$da]
    ld l, a
    ld [hl], $10
    dec h
    inc l
    ld [hl], $03
    jp Jump_001_5157


Jump_001_4ffe:
    ldh a, [$da]
    add $07
    ld l, a
    ld a, [hl]
    inc a
    ld [hl], a
    cp $04
    jr nz, jr_001_5012

    xor a
    ld [hl], a
    inc l
    ld a, [hl]
    inc a
    and $03
    ld [hl], a

jr_001_5012:
    ldh a, [$da]
    add $03
    ld l, a
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    add b
    ld [hl+], a
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    add b
    ld [hl], a
    ldh a, [$da]
    ld l, a
    inc h
    ld a, [hl]
    dec a
    ld [hl], a
    ret nz

    ld a, $06
    add l
    ld l, a
    ld a, [hl]
    cp $fe
    jr nc, jr_001_503a

    ldh a, [$da]
    inc a
    ld l, a
    dec h
    ld [hl], $01
    ret


jr_001_503a:
    call Call_000_3e5c
    ldh a, [$da]
    add $08
    ld l, a
    ldh a, [$d3]
    and $7f
    ld [hl], a
    dec h
    ldh a, [$da]
    inc a
    ld l, a
    ld [hl], $02
    inc l
    inc l
    xor a
    ld b, [hl]
    ld [hl+], a
    inc l
    ld c, [hl]
    ld [hl], a
    ret


Jump_001_5057:
    ld h, $c2
    ldh a, [$da]
    add $06
    ld l, a
    ld a, [hl]
    inc l
    inc l
    cp $fe
    jr nc, jr_001_5069

    ld [hl], $00
    jr jr_001_506c

jr_001_5069:
    dec [hl]
    jr nz, jr_001_5073

jr_001_506c:
    dec h
    ldh a, [$da]
    inc a
    ld l, a
    ld [hl], $01

Jump_001_5073:
jr_001_5073:
    ld h, $c1
    ldh a, [$da]
    add $08
    ld l, a
    ld [hl], $00
    jp Jump_001_5157


Jump_001_507f:
    ld a, [$d72d]
    bit 5, a
    jr nz, jr_001_5073

    res 7, [hl]
    ld a, [$d52a]
    bit 3, a
    jr z, jr_001_5093

    ld c, $00
    jr jr_001_50a5

jr_001_5093:
    bit 2, a
    jr z, jr_001_509b

    ld c, $04
    jr jr_001_50a5

jr_001_509b:
    bit 1, a
    jr z, jr_001_50a3

    ld c, $0c
    jr jr_001_50a5

jr_001_50a3:
    ld c, $08

jr_001_50a5:
    ldh a, [$da]
    add $09
    ld l, a
    ld [hl], c
    jr jr_001_5073

Jump_001_50ad:
    ld [hl], $01
    inc l
    ld [hl], $ff
    inc h
    ldh a, [$da]
    add $02
    ld l, a
    ld a, $08
    ld [hl+], a
    ld [hl], a
    ret


Call_001_50bd:
    ld h, $c2
    ldh a, [$da]
    add $04
    ld l, a
    ld a, [$d361]
    ld b, a
    ld a, [hl]
    sub b
    swap a
    sub $04
    dec h
    ld [hl+], a
    inc h
    ld a, [$d362]
    ld b, a
    ld a, [hl+]
    sub b
    swap a
    dec h
    ld [hl], a
    ret


Call_001_50dc:
    ld a, $12
    call Call_000_3e6d
    ldh a, [$e5]
    and a
    jp nz, Jump_001_512e

    ld h, $c2
    ldh a, [$da]
    add $06
    ld l, a
    ld a, [hl]
    cp $fe
    jr c, jr_001_5115

    ldh a, [$da]
    add $04
    ld l, a
    ld b, [hl]
    ld a, [$d361]
    cp b
    jr z, jr_001_5106

    jr nc, jr_001_512e

    add $08
    cp b
    jr c, jr_001_512e

jr_001_5106:
    inc l
    ld b, [hl]
    ld a, [$d362]
    cp b
    jr z, jr_001_5115

    jr nc, jr_001_512e

    add $09
    cp b
    jr c, jr_001_512e

jr_001_5115:
    call Call_001_5207
    ld d, $60
    ld a, [hl+]
    cp d
    jr nc, jr_001_512e

    ld a, [hl-]
    cp d
    jr nc, jr_001_512e

    ld bc, $ffec
    add hl, bc
    ld a, [hl+]
    cp d
    jr nc, jr_001_512e

    ld a, [hl]
    cp d
    jr c, jr_001_513a

Jump_001_512e:
jr_001_512e:
    ld h, $c1
    ldh a, [$da]
    add $02
    ld l, a
    ld [hl], $ff
    scf
    jr jr_001_5156

jr_001_513a:
    ld c, a
    ld a, [$cfc5]
    and a
    jr nz, jr_001_5156

    call Call_001_5157
    inc h
    ldh a, [$da]
    add $07
    ld l, a
    ld a, [$d535]
    cp c
    ld a, $00
    jr nz, jr_001_5154

    ld a, $80

jr_001_5154:
    ld [hl], a
    and a

jr_001_5156:
    ret


Call_001_5157:
Jump_001_5157:
    ld h, $c1
    ldh a, [$da]
    add $08
    ld l, a
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    add b
    ld b, a
    ldh a, [$93]
    add b
    ld b, a
    ldh a, [$da]
    add $02
    ld l, a
    ld [hl], b
    ret


Call_001_516e:
    ld h, $c2
    ldh a, [$da]
    add $06
    ld l, a
    ld a, [hl]
    cp $fe
    jr nc, jr_001_517c

    and a
    ret


jr_001_517c:
    ld a, [$d530]
    ld l, a
    ld a, [$d531]
    ld h, a

jr_001_5184:
    ld a, [hl+]
    cp $ff
    jr z, jr_001_51e9

    cp c
    jr nz, jr_001_5184

    ld h, $c2
    ldh a, [$da]
    add $06
    ld l, a
    ld a, [hl]
    inc a
    jr z, jr_001_51e9

    ld h, $c1
    ldh a, [$da]
    add $04
    ld l, a
    ld a, [hl+]
    add $04
    add d
    cp $80
    jr nc, jr_001_51e9

    inc l
    ld a, [hl]
    add e
    cp $90
    jr nc, jr_001_51e9

    push de
    push bc
    call Call_001_4c70
    pop bc
    pop de
    ld h, $c1
    ldh a, [$da]
    add $0c
    ld l, a
    ld a, [hl]
    and b
    jr nz, jr_001_51e9

    ld h, $c2
    ldh a, [$da]
    add $02
    ld l, a
    ld a, [hl+]
    bit 7, d
    jr nz, jr_001_51d2

    add d
    cp $05
    jr c, jr_001_51e9

    jr jr_001_51d6

jr_001_51d2:
    sub $01
    jr c, jr_001_51e9

jr_001_51d6:
    ld d, a
    ld a, [hl]
    bit 7, e
    jr nz, jr_001_51e1

    add e
    cp $05
    jr jr_001_51e5

jr_001_51e1:
    sub $01
    jr c, jr_001_51e9

jr_001_51e5:
    ld [hl-], a
    ld [hl], d
    and a
    ret


jr_001_51e9:
    ld h, $c1
    ldh a, [$da]
    inc a
    ld l, a
    ld [hl], $02
    inc l
    inc l
    xor a
    ld [hl+], a
    inc l
    ld [hl], a
    inc h
    ldh a, [$da]
    add $08
    ld l, a
    call Call_000_3e5c
    ldh a, [$d3]
    and $7f
    ld [hl], a
    scf
    ret


Call_001_5207:
    ld h, $c1
    ldh a, [$da]
    add $04
    ld l, a
    ld a, [hl+]
    add $04
    and $f0
    srl a
    ld c, a
    ld b, $00
    inc l
    ld a, [hl]
    srl a
    srl a
    srl a
    add $14
    ld d, $00
    ld e, a
    ld hl, $c3a0
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, de
    ret


Call_001_522f:
    add e
    ld e, a
    jr nc, jr_001_5234

    inc d

jr_001_5234:
    ld a, [de]
    ret


Jump_001_5236:
    ld a, [$d730]
    bit 7, a
    ret z

    ld hl, $d72e
    bit 7, [hl]
    set 7, [hl]
    jp z, Jump_001_52a6

    ld hl, $cc97
    ld a, [$cd37]
    add l
    ld l, a
    jr nc, jr_001_5251

    inc h

jr_001_5251:
    ld a, [hl]
    cp $40
    jr nz, jr_001_525f

    call Call_001_52b2
    ld c, $04
    ld a, $fe
    jr jr_001_5289

jr_001_525f:
    cp $00
    jr nz, jr_001_526c

    call Call_001_52b2
    ld c, $00
    ld a, $02
    jr jr_001_5289

jr_001_526c:
    cp $80
    jr nz, jr_001_5279

    call Call_001_52b7
    ld c, $08
    ld a, $fe
    jr jr_001_5289

jr_001_5279:
    cp $c0
    jr nz, jr_001_5286

    call Call_001_52b7
    ld c, $0c
    ld a, $02
    jr jr_001_5289

jr_001_5286:
    cp $ff
    ret


jr_001_5289:
    ld b, a
    ld a, [hl]
    add b
    ld [hl], a
    ldh a, [$da]
    add $09
    ld l, a
    ld a, c
    ld [hl], a
    call Call_001_52c3
    ld hl, $cf18
    dec [hl]
    ret nz

    ld a, $08
    ld [$cf18], a
    ld hl, $cd37
    inc [hl]
    ret


Jump_001_52a6:
    xor a
    ld [$cd37], a
    ld a, $08
    ld [$cf18], a
    jp Jump_001_52c3


Call_001_52b2:
    ld a, $04
    ld b, a
    jr jr_001_52ba

Call_001_52b7:
    ld a, $06
    ld b, a

jr_001_52ba:
    ld hl, $c100
    ldh a, [$da]
    add l
    add b
    ld l, a
    ret


Call_001_52c3:
Jump_001_52c3:
    ld hl, $c200
    ldh a, [$da]
    add $0e
    ld l, a
    ld a, [hl]
    dec a
    swap a
    ld b, a
    ld hl, $c100
    ldh a, [$da]
    add $09
    ld l, a
    ld a, [hl]
    cp $00
    jr z, jr_001_52ea

    cp $04
    jr z, jr_001_52ea

    cp $08
    jr z, jr_001_52ea

    cp $0c
    jr z, jr_001_52ea

    ret


jr_001_52ea:
    add b
    ld b, a
    ldh [$e9], a
    call Call_001_5301
    ld hl, $c100
    ldh a, [$da]
    add $02
    ld l, a
    ldh a, [$e9]
    ld b, a
    ldh a, [$ea]
    add b
    ld [hl], a
    ret


Call_001_5301:
    ldh a, [$da]
    add $07
    ld l, a
    ld a, [hl]
    inc a
    ld [hl], a
    cp $04
    ret nz

    xor a
    ld [hl], a
    inc l
    ld a, [hl]
    inc a
    and $03
    ld [hl], a
    ldh [$ea], a
    ret


Call_001_5317:
    ld c, $50
    call Call_000_3739
    call Call_000_190f
    call Call_000_2429
    call Call_000_3680
    call Call_000_36c0
    call Call_001_5ae6
    ld hl, $c443
    ld b, $02
    ld c, $0c
    call Call_001_5ab3
    ld hl, $c46c
    ld de, $550f
    call Call_000_1955
    ld hl, $d074
    xor a
    ld [hl+], a
    ld [hl], $50

Jump_001_5345:
    ld hl, $d152
    ld a, $fd
    ld b, $06

jr_001_534c:
    ld [hl+], a
    dec b
    jr nz, jr_001_534c

    ld hl, $d141
    ld a, $fd
    ld b, $07

jr_001_5357:
    ld [hl+], a
    dec b
    jr nz, jr_001_5357

    ld b, $0a

jr_001_535d:
    call Call_000_3e5c
    cp $fd
    jr nc, jr_001_535d

    ld [hl+], a
    dec b
    jr nz, jr_001_535d

    ld hl, $c508
    ld a, $fd
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld b, $c8
    xor a

jr_001_5373:
    ld [hl+], a
    dec b
    jr nz, jr_001_5373

    ld hl, $d887
    ld bc, $01a9

jr_001_537d:
    xor a
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_001_537d

    ld hl, $d16a
    ld de, $c512
    ld bc, $0000

jr_001_538d:
    inc c
    ld a, c
    cp $fd
    jr z, jr_001_53a9

    ld a, b
    dec a
    jr nz, jr_001_539c

    ld a, c
    cp $0d
    jr z, jr_001_53b2

jr_001_539c:
    inc hl
    ld a, [hl]
    cp $fe
    jr nz, jr_001_538d

    ld a, c
    ld [de], a
    inc de
    ld [hl], $ff
    jr jr_001_538d

jr_001_53a9:
    ld a, $ff
    ld [de], a
    inc de
    ld bc, $0100
    jr jr_001_538d

jr_001_53b2:
    ld a, $ff
    ld [de], a
    call Call_000_227f
    ldh a, [$aa]
    cp $02
    jr nz, jr_001_53d2

    call Call_000_3dd7
    xor a
    ldh [$ac], a
    ld a, $81
    ldh [rSC], a
    call Call_000_20af
    xor a
    ldh [$ac], a
    ld a, $81
    ldh [rSC], a

jr_001_53d2:
    call Call_000_3dd7
    ld a, $08
    ldh [rIE], a
    ld hl, $d141
    ld de, $cd81
    ld bc, $0011
    call Call_000_216f
    ld a, $fe
    ld [de], a
    ld hl, $d152
    ld de, $d893
    ld bc, $01a8
    call Call_000_216f
    ld a, $fe
    ld [de], a
    ld hl, $c508
    ld de, $c5d0
    ld bc, $00c8
    call Call_000_216f
    ld a, $0d
    ldh [rIE], a
    ld a, $ff
    call Call_000_23b1
    ldh a, [$aa]
    cp $02
    jr z, jr_001_5431

    ld hl, $cd81

jr_001_5415:
    ld a, [hl+]
    and a
    jr z, jr_001_5415

    cp $fd
    jr z, jr_001_5415

    cp $fe
    jr z, jr_001_5415

    dec hl
    ld de, $d148
    ld c, $0a

jr_001_5427:
    ld a, [hl+]
    cp $fe
    jr z, jr_001_5427

    ld [de], a
    inc de
    dec c
    jr nz, jr_001_5427

jr_001_5431:
    ld hl, $d896

jr_001_5434:
    ld a, [hl+]
    and a
    jr z, jr_001_5434

    cp $fd
    jr z, jr_001_5434

    cp $fe
    jr z, jr_001_5434

    dec hl
    ld de, $d887
    ld c, $0b

jr_001_5446:
    ld a, [hl+]
    cp $fe
    jr z, jr_001_5446

    ld [de], a
    inc de
    dec c
    jr nz, jr_001_5446

    ld de, $d89c
    ld bc, $0194

jr_001_5456:
    ld a, [hl+]
    cp $fe
    jr z, jr_001_5456

    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_001_5456

    ld de, $c508
    ld hl, $d16b
    ld c, $02

jr_001_546a:
    ld a, [de]
    inc de
    and a
    jr z, jr_001_546a

    cp $fd
    jr z, jr_001_546a

    cp $fe
    jr z, jr_001_546a

    cp $ff
    jr z, jr_001_5489

    push hl
    push bc
    ld b, $00
    dec a
    ld c, a
    add hl, bc
    ld a, $fe
    ld [hl], a
    pop bc
    pop hl
    jr jr_001_546a

jr_001_5489:
    ld hl, $d267
    dec c
    jr nz, jr_001_546a

    ld de, $c5d0
    ld hl, $d8a4
    ld c, $02

jr_001_5497:
    ld a, [de]
    inc de
    and a
    jr z, jr_001_5497

    cp $fd
    jr z, jr_001_5497

    cp $fe
    jr z, jr_001_5497

    cp $ff
    jr z, jr_001_54b6

    push hl
    push bc
    ld b, $00
    dec a
    ld c, a
    add hl, bc
    ld a, $fe
    ld [hl], a
    pop bc
    pop hl
    jr jr_001_5497

jr_001_54b6:
    ld hl, $d9a0
    dec c
    jr nz, jr_001_5497

    ld a, $ac
    ld [$cf8d], a
    ld a, $d9
    ld [$cf8e], a
    xor a
    ld [$cc38], a
    ld a, $ff
    call Call_000_23b1
    ldh a, [$aa]
    cp $02
    ld c, $42
    call z, Call_000_3739
    ld a, [$d12b]
    cp $03
    ld a, $32
    ld [$d12b], a
    jr nz, jr_001_5506

    ld a, $04
    ld [$d12b], a
    ld a, $e1
    ld [$d059], a
    call Call_000_190f
    call Call_000_3dd7
    ld hl, $d355
    res 7, [hl]
    ld a, $2c
    call Call_000_3e6d
    ld a, $07
    call Call_000_3e6d
    jp Jump_001_577d


jr_001_5506:
    ld c, $1f
    ld a, $d9
    call Call_000_23a1
    jr jr_001_551c

    adc a
    adc e
    add h
    add b
    sub d
    add h
    ld a, a
    sub [hl]
    add b
    adc b
    sub e
    rst $20
    ld d, b

Jump_001_551c:
jr_001_551c:
    ld hl, $5a5b
    ld b, $00
    ld a, [$cc38]
    cp $ff
    jp z, Jump_001_42dd

    add a
    ld c, a
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    call Call_000_190f
    call Call_001_5ae6
    call Call_001_57f2
    call Call_001_57a2
    xor a
    ld hl, $cc3d
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld [$cc37], a
    ld [$cc26], a
    ld [$cc2a], a
    ld [$cc34], a
    inc a
    ld [$cc42], a
    jp Jump_001_55dc


Jump_001_5557:
    xor a
    ld [$cc37], a
    inc a
    ld [$cc49], a
    ld a, $a1
    ld [$cc29], a
    ld a, [$d89c]
    ld [$cc28], a
    ld a, $09
    ld [$cc24], a
    ld a, $01
    ld [$cc25], a

Jump_001_5574:
    ld hl, $fff6
    set 1, [hl]
    call Call_000_3abe
    ld hl, $fff6
    res 1, [hl]
    and a
    jp z, Jump_001_565b

    bit 0, a
    jr z, jr_001_55b0

    ld a, [$cc28]
    ld c, a
    ld a, [$cc26]
    cp c
    jr c, jr_001_559a

    ld a, [$cc28]
    dec a
    ld [$cc26], a

jr_001_559a:
    ld a, $01
    ld [$d11b], a
    ld hl, $5bd5
    ld b, $0e
    call Call_000_35d6
    ld hl, $d8a4
    call Call_001_57d6
    jp Jump_001_565b


jr_001_55b0:
    bit 5, a
    jr z, jr_001_55d4

    xor a
    ld [$cc49], a
    ld a, [$cc30]
    ld l, a
    ld a, [$cc31]
    ld h, a
    ld a, [$cc27]
    ld [hl], a
    ld a, [$cc26]
    ld b, a
    ld a, [$d163]
    dec a
    cp b
    jr nc, jr_001_55dc

    ld [$cc26], a
    jr jr_001_55dc

jr_001_55d4:
    bit 7, a
    jp z, Jump_001_565b

    jp Jump_001_572f


Jump_001_55dc:
jr_001_55dc:
    xor a
    ld [$cc49], a
    ld [$cc37], a
    ld a, $91
    ld [$cc29], a
    ld a, [$d163]
    ld [$cc28], a
    ld a, $01
    ld [$cc24], a
    ld a, $01
    ld [$cc25], a
    ld hl, $c3b5
    ld bc, $0601
    call Call_000_18c4

Jump_001_5601:
    ld hl, $fff6
    set 1, [hl]
    call Call_000_3abe
    ld hl, $fff6
    res 1, [hl]
    and a
    jr nz, jr_001_5614

    jp Jump_001_565b


jr_001_5614:
    bit 0, a
    jr z, jr_001_562e

    jp Jump_001_5665


    ld a, $04
    ld [$d11b], a
    ld hl, $5bd5
    ld b, $0e
    call Call_000_35d6
    call Call_001_57d6
    jp Jump_001_565b


jr_001_562e:
    bit 4, a
    jr z, jr_001_5654

    ld a, $01
    ld [$cc49], a
    ld a, [$cc30]
    ld l, a
    ld a, [$cc31]
    ld h, a
    ld a, [$cc27]
    ld [hl], a
    ld a, [$cc26]
    ld b, a
    ld a, [$d89c]
    dec a
    cp b
    jr nc, jr_001_5651

    ld [$cc26], a

jr_001_5651:
    jp Jump_001_5557


jr_001_5654:
    bit 7, a
    jr z, jr_001_565b

    jp Jump_001_572f


Jump_001_565b:
jr_001_565b:
    ld a, [$cc49]
    and a
    jp z, Jump_001_5601

    jp Jump_001_5574


Jump_001_5665:
    call Call_000_3719
    call Call_000_3bec
    ld a, [$cc28]
    ld c, a
    ld a, [$cc26]
    cp c
    jr c, jr_001_5679

    ld a, [$cc28]
    dec a

jr_001_5679:
    push af
    ld hl, $c4b8
    ld b, $02
    ld c, $12
    call Call_001_5ab3
    ld hl, $c4e2
    ld de, $571f
    call Call_000_1955
    xor a
    ld [$cc26], a
    ld [$cc2a], a
    ld [$cc34], a
    ld [$cc28], a
    ld a, $10
    ld [$cc24], a

jr_001_569f:
    ld a, $7f
    ld [$c4eb], a
    ld a, $13
    ld [$cc29], a
    ld a, $01
    ld [$cc25], a
    call Call_000_3abe
    bit 4, a
    jr nz, jr_001_56c3

    bit 1, a
    jr z, jr_001_56df

jr_001_56b9:
    pop af
    ld [$cc26], a
    call Call_000_3725
    jp Jump_001_55dc


jr_001_56c3:
    ld a, $7f
    ld [$c4e1], a
    ld a, $23
    ld [$cc29], a
    ld a, $0b
    ld [$cc25], a
    call Call_000_3abe
    bit 5, a
    jr nz, jr_001_569f

    bit 1, a
    jr nz, jr_001_56b9

    jr jr_001_56f9

jr_001_56df:
    pop af
    ld [$cc26], a
    ld a, $04
    ld [$d11b], a
    ld hl, $5bd5
    ld b, $0e
    call Call_000_35d6
    call Call_001_57d6
    call Call_000_3725
    jp Jump_001_55dc


jr_001_56f9:
    call Call_000_3bec
    pop af
    ld [$cc26], a
    ld [$cd3d], a
    ld [$cc42], a
    call Call_000_226e
    ld a, [$cc3d]
    cp $0f
    jp z, Jump_001_551c

    ld [$cd3e], a
    call Call_001_57c7
    ld a, $01
    ld [$cc38], a
    jp Jump_001_551c


    sub d
    sub e
    add b
    sub e
    sub d
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    sub e
    sub c
    add b
    add e
    add h
    ld d, b

Jump_001_572f:
    ld a, [$cc26]
    ld b, a
    ld a, [$cc28]
    cp b
    jp nz, Jump_001_565b

    ld a, [$cc30]
    ld l, a
    ld a, [$cc31]
    ld h, a
    ld a, $7f
    ld [hl], a

jr_001_5745:
    ld a, $ed
    ld [$c4e1], a

jr_001_574a:
    call Call_000_3831
    ldh a, [$b5]
    and a
    jr z, jr_001_574a

    bit 0, a
    jr nz, jr_001_5769

    bit 6, a
    jr z, jr_001_574a

    ld a, $7f
    ld [$c4e1], a
    ld a, [$d163]
    dec a
    ld [$cc26], a
    jp Jump_001_55dc


jr_001_5769:
    ld a, $ec
    ld [$c4e1], a
    ld a, $0f
    ld [$cc42], a
    call Call_000_226e
    ld a, [$cc3d]
    cp $0f
    jr nz, jr_001_5745

Jump_001_577d:
    call Call_000_3dd4
    ld hl, $cfc4
    ld a, [hl]
    push af
    push hl
    res 0, [hl]
    xor a
    ld [$d72d], a
    dec a
    ld [$d42f], a
    call Call_000_1241
    ld b, $03
    ld hl, $4335
    call Call_000_35d6
    pop hl
    pop af
    ld [hl], a
    call Call_000_20f6
    ret


Call_001_57a2:
Jump_001_57a2:
    ld hl, $c4d7
    ld a, $7e
    ld bc, $0031
    call Call_000_36e0
    ld hl, $c4cc
    ld b, $01
    ld c, $09
    call Call_001_5ab3
    ld hl, $c4e2
    ld de, $57c0
    jp Jump_000_1955


    add d
    add b
    adc l
    add d
    add h
    adc e
    ld d, b

Call_001_57c7:
    ld a, [$cc3d]
    ld hl, $c455
    ld bc, $0014
    call Call_000_3a87
    ld [hl], $ec
    ret


Call_001_57d6:
    ld a, [$cc26]
    ld [$cf92], a
    ld a, $36
    call Call_000_3e6d
    ld a, $37
    call Call_000_3e6d
    call Call_000_3ddc
    call Call_001_5ae6
    call Call_001_57f2
    jp Jump_001_57a2


Call_001_57f2:
    ld hl, $c3a0
    ld b, $06
    ld c, $12
    call Call_001_5ab3
    ld hl, $c440
    ld b, $06
    ld c, $12
    call Call_001_5ab3
    ld hl, $c3a5
    ld de, $d158
    call Call_000_1955
    ld hl, $c445
    ld de, $d887
    call Call_000_1955
    ld hl, $c3b6
    ld de, $d164
    call Call_001_5827
    ld hl, $c456
    ld de, $d89d

Call_001_5827:
    ld c, $00

jr_001_5829:
    ld a, [de]
    cp $ff
    ret z

    ld [$d11e], a
    push bc
    push hl
    push de
    push hl
    ld a, c
    ldh [$95], a
    call Call_000_2f9e
    pop hl
    call Call_000_1955
    pop de
    inc de
    pop hl
    ld bc, $0014
    add hl, bc
    pop bc
    inc c
    jr jr_001_5829

    ld c, $64
    call Call_000_3739
    xor a
    ld [$cc43], a
    ld [$cc3e], a
    ld [$cc37], a
    ld [$cc34], a
    ld hl, $c490
    ld b, $04
    ld c, $12
    call Call_001_5ab3
    ld a, [$cd3d]
    ld hl, $d164
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    ld [$d11e], a
    call Call_000_2f9e
    ld hl, $cd6d
    ld de, $cd3f
    ld bc, $000b
    call Call_000_00b5
    ld a, [$cd3e]
    ld hl, $d89d
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    ld [$d11e], a
    call Call_000_2f9e
    ld hl, $5a24
    ld bc, $c4b9
    call Call_000_1b40
    call Call_000_3719
    ld hl, $c436
    ld bc, $080b
    ld a, $05
    ld [$d12c], a
    ld a, $14
    ld [$d125], a
    call Call_000_30e8
    call Call_000_3725
    ld a, [$cc26]
    and a
    jr z, jr_001_58d9

    ld a, $01
    ld [$cc42], a
    ld hl, $c490
    ld b, $04
    ld c, $12
    call Call_001_5ab3
    ld hl, $c4b9
    ld de, $5a3a
    call Call_000_1955
    call Call_000_226e
    jp Jump_001_5a18


jr_001_58d9:
    ld a, $02
    ld [$cc42], a
    call Call_000_226e
    ld a, [$cc3d]
    dec a
    jr nz, jr_001_58fd

    ld hl, $c490
    ld b, $04
    ld c, $12
    call Call_001_5ab3
    ld hl, $c4b9
    ld de, $5a3a
    call Call_000_1955
    jp Jump_001_5a18


jr_001_58fd:
    ld a, [$cd3d]
    ld hl, $d273
    call Call_000_3a7d
    ld de, $cd41
    ld bc, $000b
    call Call_000_00b5
    ld hl, $d16b
    ld a, [$cd3d]
    ld bc, $002c
    call Call_000_3a87
    ld bc, $000c
    add hl, bc
    ld a, [hl+]
    ld [$cd4c], a
    ld a, [hl]
    ld [$cd4d], a
    ld a, [$cd3e]
    ld hl, $d9ac
    call Call_000_3a7d
    ld de, $cd4e
    ld bc, $000b
    call Call_000_00b5
    ld hl, $d8a4
    ld a, [$cd3e]
    ld bc, $002c
    call Call_000_3a87
    ld bc, $000c
    add hl, bc
    ld a, [hl+]
    ld [$cd59], a
    ld a, [hl]
    ld [$cd5a], a
    ld a, [$cd3d]
    ld [$cf92], a
    ld hl, $d164
    ld b, $00
    ld c, a
    add hl, bc
    ld a, [hl]
    ld [$cd3d], a
    xor a
    ld [$cf95], a
    call Call_000_391f
    ld a, [$cd3e]
    ld c, a
    ld [$cf92], a
    ld hl, $d89d
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl]
    ld [$cf91], a
    ld hl, $d8a4
    ld a, c
    ld bc, $002c
    call Call_000_3a87
    ld de, $cf98
    ld bc, $002c
    call Call_000_00b5
    call Call_000_3a53
    ld a, [$d163]
    dec a
    ld [$cf92], a
    ld a, $01
    ld [$ccd4], a
    ld a, [$cd3e]
    ld hl, $d89d
    ld b, $00
    ld c, a
    add hl, bc
    ld a, [hl]
    ld [$cd3e], a
    ld a, $0a
    ld [$cfc7], a
    ld a, $02
    ld [$c0f0], a
    ld a, $e5
    ld [$c0ee], a
    call Call_000_23b1
    ld c, $64
    call Call_000_3739
    call Call_000_190f
    call Call_000_36c0
    xor a
    ld [$cc5b], a
    ldh a, [$aa]
    cp $01
    jr z, jr_001_59d9

    ld a, $38
    call Call_000_3e6d
    jr jr_001_59de

jr_001_59d9:
    ld a, $2f
    call Call_000_3e6d

jr_001_59de:
    ld hl, $6d0e
    ld b, $0e
    call Call_000_35d6
    call Call_000_190f
    call Call_001_5ae6
    call Call_000_226e
    ld c, $28
    call Call_000_3739
    ld hl, $c490
    ld b, $04
    ld c, $12
    call Call_001_5ab3
    ld hl, $c4b9
    ld de, $5a29
    call Call_000_1955
    ld a, $50
    call Call_000_3e6d
    ld c, $32
    call Call_000_3739
    xor a
    ld [$cc38], a
    jp Jump_001_5345


Jump_001_5a18:
    ld c, $64
    call Call_000_3739
    xor a
    ld [$cc38], a
    jp Jump_001_551c


    rla
    ld [hl], a
    ld h, [hl]
    ld [hl+], a
    ld d, b
    sub e
    or c
    and b
    and e
    and h
    ld a, a
    and d
    xor [hl]
    xor h
    xor a
    xor e
    and h
    or e
    and h
    and e
    rst $20
    ld d, b
    sub e
    xor [hl]
    xor [hl]
    ld a, a
    and c
    and b
    and e
    rst $20
    ld a, a
    sub e
    and a
    and h
    ld a, a
    or e
    or c
    and b
    and e
    and h
    ld c, [hl]
    or [hl]
    and b
    or d
    ld a, a
    and d
    and b
    xor l
    and d
    and h
    xor e
    and h
    and e
    rst $20
    ld d, b
    jr nc, @+$57

    ld c, c
    ld e, b
    ld a, [$d12b]
    cp $02
    jr z, jr_001_5a75

    cp $03
    jr z, jr_001_5a75

    cp $05
    ret nz

    ld a, $4d
    call Call_000_3e6d
    jp Jump_000_1f54


jr_001_5a75:
    call Call_001_5317
    ld hl, $7670
    ld a, h
    ld [$d52f], a
    ld a, l
    ld [$d52e], a
    ld a, $1b
    ld [$d52b], a
    ld hl, $17d1
    ld a, h
    ld [$d531], a
    ld a, l
    ld [$d530], a
    xor a
    ld [$d887], a
    inc a
    ld [$d12b], a
    ldh [$b5], a
    ld a, $0a
    ld [$cfc7], a
    ld a, $02
    ld [$c0f0], a
    ld a, $ca
    ld [$c0ee], a
    jp Jump_000_23b1


    ret


    call Call_000_3e94

Call_001_5ab3:
    push hl
    ld a, $78
    ld [hl+], a
    inc a
    call Call_001_5ae0
    inc a
    ld [hl], a
    pop hl
    ld de, $0014
    add hl, de

jr_001_5ac2:
    push hl
    ld a, $7b
    ld [hl+], a
    ld a, $7f
    call Call_001_5ae0
    ld [hl], $77
    pop hl
    ld de, $0014
    add hl, de
    dec b
    jr nz, jr_001_5ac2

    ld a, $7c
    ld [hl+], a
    ld a, $76
    call Call_001_5ae0
    ld [hl], $7d
    ret


Call_001_5ae0:
    ld d, c

jr_001_5ae1:
    ld [hl+], a
    dec d
    jr nz, jr_001_5ae1

    ret


Call_001_5ae6:
    ld de, $7b98
    ld hl, $9760
    ld bc, $0b09
    jp Jump_000_1848


Jump_001_5af2:
    call Call_001_5bff
    xor a
    ld [$d08a], a
    inc a
    ld [$d088], a
    call Call_001_609e
    jr nc, jr_001_5b07

    ld a, $52
    call Call_000_3e6d

Jump_001_5b07:
jr_001_5b07:
    ld c, $14
    call Call_000_3739
    xor a
    ld [$d12b], a
    ld hl, $cc2b
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld [$d07c], a
    ld hl, $d72e
    res 6, [hl]
    call Call_000_190f
    call Call_000_3ded
    call Call_000_36a0
    call Call_000_3680
    ld hl, $d730
    set 6, [hl]
    ld a, [$d088]
    cp $01
    jr z, jr_001_5b4c

    ld hl, $c3a0
    ld b, $06
    ld c, $0d
    call Call_000_1922
    ld hl, $c3ca
    ld de, $5d7e
    call Call_000_1955
    jr jr_001_5b5f

jr_001_5b4c:
    ld hl, $c3a0
    ld b, $04
    ld c, $0d
    call Call_000_1922
    ld hl, $c3ca
    ld de, $5d87
    call Call_000_1955

jr_001_5b5f:
    ld hl, $d730
    res 6, [hl]
    call Call_000_2429
    xor a
    ld [$cc26], a
    ld [$cc2a], a
    ld [$cc34], a
    inc a
    ld [$cc25], a
    inc a
    ld [$cc24], a
    ld a, $0b
    ld [$cc29], a
    ld a, [$d088]
    ld [$cc28], a
    call Call_000_3abe
    bit 1, a
    jp nz, Jump_001_42dd

    ld c, $14
    call Call_000_3739
    ld a, [$cc26]
    ld b, a
    ld a, [$d088]
    cp $02
    jp z, Jump_001_5b9e

    inc b

Jump_001_5b9e:
    ld a, b
    and a
    jr z, jr_001_5bb2

    cp $01
    jp z, Jump_001_5d52

    call Call_001_5e8a
    ld a, $01
    ld [$d08a], a
    jp Jump_001_5b07


jr_001_5bb2:
    call Call_001_5db5
    ld hl, $d126
    set 5, [hl]

jr_001_5bba:
    xor a
    ldh [$b3], a
    ldh [$b2], a
    ldh [$b4], a
    call Call_000_019a
    ldh a, [$b4]
    bit 0, a
    jr nz, jr_001_5bd1

    bit 1, a
    jp nz, Jump_001_5b07

    jr jr_001_5bba

jr_001_5bd1:
    call Call_000_3dd4
    call Call_000_190f
    ld a, $04
    ld [$d52a], a
    ld c, $0a
    call Call_000_3739
    ld a, [$d5a2]
    and a
    jp z, Jump_001_5d5f

    ld a, [$d35e]
    cp $76
    jp nz, Jump_001_5d5f

    xor a
    ld [$d71a], a
    ld hl, $d732
    set 2, [hl]
    call Call_001_62ce
    jp Jump_001_5d5f


Call_001_5bff:
    ld a, $01
    ld [$d358], a
    ld a, $03
    ld [$d355], a
    ret


    xor a
    ld [$d358], a
    ld hl, $d72e
    set 6, [hl]
    ld hl, $6b20
    call Call_000_3c49
    call Call_000_3719
    ld hl, $5d43
    call Call_000_3c49
    ld hl, $c409
    ld b, $06
    ld c, $0d
    call Call_000_1922
    call Call_000_2429
    ld hl, $c433
    ld de, $5d97
    call Call_000_1955
    xor a
    ld [$cd37], a
    ld [$d72d], a
    ld hl, $cc24
    ld a, $07
    ld [hl+], a
    ld a, $06
    ld [hl+], a
    xor a
    ld [hl+], a
    inc hl
    ld a, $02
    ld [hl+], a
    inc a
    ld [hl+], a
    xor a
    ld [hl], a

jr_001_5c52:
    call Call_000_3abe
    and $03
    add a
    add a
    ld b, a
    ld a, [$cc26]
    add b
    add $d0
    ld [$cc42], a
    ld [$cc43], a

jr_001_5c66:
    call Call_000_2247
    ld a, [$cc3d]
    ld b, a
    and $f0
    cp $d0
    jr z, jr_001_5c7d

    ld a, [$cc3e]
    ld b, a
    and $f0
    cp $d0
    jr nz, jr_001_5c66

jr_001_5c7d:
    ld a, b
    and $0c
    jr nz, jr_001_5c8b

    ld a, [$cc42]
    and $0c
    jr z, jr_001_5c52

    jr jr_001_5ca1

jr_001_5c8b:
    ld a, [$cc42]
    and $0c
    jr z, jr_001_5c98

    ldh a, [$aa]
    cp $02
    jr z, jr_001_5ca1

jr_001_5c98:
    ld a, b
    ld [$cc42], a
    and $03
    ld [$cc26], a

jr_001_5ca1:
    ldh a, [$aa]
    cp $02
    jr nz, jr_001_5cb1

    call Call_000_20af
    call Call_000_20af
    ld a, $81
    ldh [rSC], a

jr_001_5cb1:
    ld b, $7f
    ld c, $7f
    ld d, $ec
    ld a, [$cc42]
    and $08
    jr nz, jr_001_5ccc

    ld a, [$cc26]
    cp $02
    jr z, jr_001_5ccc

    ld c, d
    ld d, b
    dec a
    jr z, jr_001_5ccc

    ld b, c
    ld c, d

jr_001_5ccc:
    ld a, b
    ld [$c432], a
    ld a, c
    ld [$c45a], a
    ld a, d
    ld [$c482], a
    ld c, $28
    call Call_000_3739
    call Call_000_3725
    ld a, [$cc42]
    and $08
    jr nz, jr_001_5d2d

    ld a, [$cc26]
    cp $02
    jr z, jr_001_5d2d

    xor a
    ld [$d700], a
    ld a, [$cc26]
    and a
    ld a, $f0
    jr nz, jr_001_5cfc

    ld a, $ef

jr_001_5cfc:
    ld [$d72d], a
    ld hl, $5d48
    call Call_000_3c49
    ld c, $32
    call Call_000_3739
    ld hl, $d732
    res 1, [hl]
    ld a, [$d07c]
    ld [$d71a], a
    call Call_001_62ce
    ld c, $14
    call Call_000_3739
    xor a
    ld [$cc34], a
    ld [$cc42], a
    inc a
    ld [$d12b], a
    ld [$cc47], a
    jr jr_001_5d5f

jr_001_5d2d:
    xor a
    ld [$cc34], a
    call Call_000_3dd7
    call Call_001_72d7
    ld hl, $5d4d
    call Call_000_3c49
    ld hl, $d72e
    res 6, [hl]
    ret


    rla
    ret nc

    ld h, e
    ld [hl+], a
    ld d, b
    rla
    db $ed
    ld h, e
    ld [hl+], a
    ld d, b
    rla
    dec c
    ld h, h
    ld [hl+], a
    ld d, b

Jump_001_5d52:
    ld hl, $d732
    res 1, [hl]
    call Call_001_6115
    ld c, $14
    call Call_000_3739

Jump_001_5d5f:
jr_001_5d5f:
    xor a
    ldh [$b3], a
    ldh [$b4], a
    ldh [$b5], a
    ld [$d72d], a
    ld hl, $d732
    set 0, [hl]
    call Call_000_28a6
    ld c, $14
    call Call_000_3739
    ld a, [$cc47]
    and a
    ret nz

    jp Jump_000_03a6


    add d
    adc [hl]
    adc l
    sub e
    adc b
    adc l
    sub h
    add h
    ld c, [hl]
    adc l
    add h
    sub [hl]
    ld a, a
    add [hl]
    add b
    adc h
    add h
    ld c, [hl]
    adc [hl]
    adc a
    sub e
    adc b
    adc [hl]
    adc l
    ld d, b
    sub e
    sub c
    add b
    add e
    add h
    ld a, a
    add d
    add h
    adc l
    sub e
    add h
    sub c
    ld c, [hl]
    add d
    adc [hl]
    adc e
    adc [hl]
    sub d
    sub d
    add h
    sub h
    adc h
    ld c, [hl]
    add d
    add b
    adc l
    add d
    add h
    adc e
    ld d, b

Call_001_5db5:
    xor a
    ldh [$ba], a
    ld hl, $c430
    ld b, $08
    ld c, $0e
    call Call_000_1922
    ld hl, $c459
    ld de, $5e6a
    call Call_000_1955
    ld hl, $c460
    ld de, $d158
    call Call_000_1955
    ld hl, $c48d
    call Call_001_5e2f
    ld hl, $c4b4
    call Call_001_5e42
    ld hl, $c4d9
    call Call_001_5e55
    ld a, $01
    ldh [$ba], a
    ld c, $1e
    jp Jump_000_3739


    xor a
    ldh [$ba], a
    ld hl, $c3a4
    ld b, $08
    ld c, $0e
    call Call_000_1922
    call Call_000_36a0
    call Call_000_2429
    ld hl, $c3cd
    ld de, $5e6a
    call Call_000_1955
    ld hl, $c3d4
    ld de, $d158
    call Call_000_1955
    ld hl, $c401
    call Call_001_5e2f
    ld hl, $c428
    call Call_001_5e42
    ld hl, $c44d
    call Call_001_5e55
    ld a, $01
    ldh [$ba], a
    ld c, $1e
    jp Jump_000_3739


Call_001_5e2f:
    push hl
    ld hl, $d356
    ld b, $01
    call Call_000_2b7f
    pop hl
    ld de, $d11e
    ld bc, $0102
    jp Jump_000_3c5f


Call_001_5e42:
    push hl
    ld hl, $d2f7
    ld b, $13
    call Call_000_2b7f
    pop hl
    ld de, $d11e
    ld bc, $0103
    jp Jump_000_3c5f


Call_001_5e55:
    ld de, $da41
    ld bc, $0103
    call Call_000_3c5f
    ld [hl], $6d
    inc hl
    ld de, $da43
    ld bc, $8102
    jp Jump_000_3c5f


    adc a
    adc e
    add b
    sbc b
    add h
    sub c
    ld c, [hl]
    add c
    add b
    add e
    add [hl]
    add h
    sub d
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld c, [hl]
    ld d, h
    add e
    add h
    sub a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld c, [hl]
    sub e
    adc b
    adc h
    add h
    ld d, b

Call_001_5e8a:
    ld hl, $c3a0
    ld b, $03
    ld c, $12
    call Call_000_1922
    ld hl, $c404
    ld b, $03
    ld c, $12
    call Call_000_1922
    ld hl, $c468
    ld b, $03
    ld c, $12
    call Call_000_1922
    ld hl, $c3b5
    ld de, $5fc0
    call Call_000_1955
    ld hl, $c419
    ld de, $5fde
    call Call_000_1955
    ld hl, $c47d
    ld de, $5ffd
    call Call_000_1955
    ld hl, $c4e2
    ld de, $6018
    call Call_000_1955
    xor a
    ld [$cc26], a
    ld [$cc2a], a
    inc a
    ld [$d358], a
    ld [$cd40], a
    ld a, $03
    ld [$cc24], a
    call Call_001_604c
    ld a, [$cd3d]
    ld [$cc25], a
    ld a, $01
    ldh [$ba], a
    call Call_000_3dd7

Jump_001_5eef:
jr_001_5eef:
    call Call_000_3b7c
    call Call_001_601f

jr_001_5ef5:
    call Call_000_3831
    ldh a, [$b5]
    ld b, a
    and $fb
    jr z, jr_001_5ef5

    bit 1, b
    jr nz, jr_001_5f12

    bit 3, b
    jr nz, jr_001_5f12

    bit 0, b
    jr z, jr_001_5f21

    ld a, [$cc24]
    cp $10
    jr nz, jr_001_5eef

jr_001_5f12:
    ld a, $90
    call Call_000_23b1
    ret


Jump_001_5f18:
    ld [$cc25], a
    call Call_000_3bf9
    jp Jump_001_5eef


jr_001_5f21:
    ld a, [$cc24]
    bit 7, b
    jr nz, jr_001_5f40

    bit 6, b
    jr nz, jr_001_5f5a

    cp $08
    jr z, jr_001_5f80

    cp $0d
    jr z, jr_001_5f8b

    cp $10
    jr z, jr_001_5eef

    bit 5, b
    jp nz, Jump_001_5f96

    jp Jump_001_5fa9


jr_001_5f40:
    cp $10
    ld b, $f3
    ld hl, $cd3d
    jr z, jr_001_5f72

    ld b, $05
    cp $03
    inc hl
    jr z, jr_001_5f72

    cp $08
    inc hl
    jr z, jr_001_5f72

    ld b, $03
    inc hl
    jr jr_001_5f72

jr_001_5f5a:
    cp $08
    ld b, $fb
    ld hl, $cd3d
    jr z, jr_001_5f72

    cp $0d
    inc hl
    jr z, jr_001_5f72

    cp $10
    ld b, $fd
    inc hl
    jr z, jr_001_5f72

    ld b, $0d
    inc hl

jr_001_5f72:
    add b
    ld [$cc24], a
    ld a, [hl]
    ld [$cc25], a
    call Call_000_3bec
    jp Jump_001_5eef


jr_001_5f80:
    ld a, [$cd3e]
    xor $0b
    ld [$cd3e], a
    jp Jump_001_5f18


jr_001_5f8b:
    ld a, [$cd3f]
    xor $0b
    ld [$cd3f], a
    jp Jump_001_5f18


Jump_001_5f96:
    ld a, [$cd3d]
    cp $01
    jr z, jr_001_5fba

    cp $07
    jr nz, jr_001_5fa5

    sub $06
    jr jr_001_5fba

jr_001_5fa5:
    sub $07
    jr jr_001_5fba

Jump_001_5fa9:
    ld a, [$cd3d]
    cp $0e
    jr z, jr_001_5fba

    cp $07
    jr nz, jr_001_5fb8

    add $07
    jr jr_001_5fba

jr_001_5fb8:
    add $06

jr_001_5fba:
    ld [$cd3d], a
    jp Jump_001_5f18


    sub e
    add h
    sub a
    sub e
    ld a, a
    sub d
    adc a
    add h
    add h
    add e
    ld c, [hl]
    ld a, a
    add l
    add b
    sub d
    sub e
    ld a, a
    ld a, a
    adc h
    add h
    add e
    adc b
    sub h
    adc h
    ld a, a
    sub d
    adc e
    adc [hl]
    sub [hl]
    ld d, b
    add c
    add b
    sub e
    sub e
    adc e
    add h
    ld a, a
    add b
    adc l
    adc b
    adc h
    add b
    sub e
    adc b
    adc [hl]
    adc l
    ld c, [hl]
    ld a, a
    adc [hl]
    adc l
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    adc [hl]
    add l
    add l
    ld d, b
    add c
    add b
    sub e
    sub e
    adc e
    add h
    ld a, a
    sub d
    sub e
    sbc b
    adc e
    add h
    ld c, [hl]
    ld a, a
    sub d
    add a
    adc b
    add l
    sub e
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    sub d
    add h
    sub e
    ld d, b
    add d
    add b
    adc l
    add d
    add h
    adc e
    ld d, b

Call_001_601f:
    ld hl, $6096
    ld a, [$cd3d]
    ld c, a

jr_001_6026:
    ld a, [hl+]
    cp c
    jr z, jr_001_602d

    inc hl
    jr jr_001_6026

jr_001_602d:
    ld a, [hl]
    ld d, a
    ld a, [$cd3e]
    dec a
    jr z, jr_001_6039

    set 7, d
    jr jr_001_603b

jr_001_6039:
    res 7, d

jr_001_603b:
    ld a, [$cd3f]
    dec a
    jr z, jr_001_6045

    set 6, d
    jr jr_001_6047

jr_001_6045:
    res 6, d

jr_001_6047:
    ld a, d
    ld [$d355], a
    ret


Call_001_604c:
    ld hl, $6097
    ld a, [$d355]
    ld c, a
    and $3f
    push bc
    ld de, $0002
    call Call_000_3dab
    pop bc
    dec hl
    ld a, [hl]
    ld [$cd3d], a
    ld hl, $c3dc
    call Call_001_608f
    sla c
    ld a, $01
    jr nc, jr_001_6070

    ld a, $0a

jr_001_6070:
    ld [$cd3e], a
    ld hl, $c440
    call Call_001_608f
    sla c
    ld a, $01
    jr nc, jr_001_6081

    ld a, $0a

jr_001_6081:
    ld [$cd3f], a
    ld hl, $c4a4
    call Call_001_608f
    ld hl, $c4e0
    ld a, $01

Call_001_608f:
    ld e, a
    ld d, $00
    add hl, de
    ld [hl], $ec
    ret


    ld c, $05
    rlca
    inc bc
    ld bc, $0701
    rst $38

Call_001_609e:
    ld a, $0a
    ld [$0000], a
    ld a, $01
    ld [$6000], a
    ld [$4000], a
    ld b, $0b
    ld hl, $a598

jr_001_60b0:
    ld a, [hl+]
    cp $50
    jr z, jr_001_60c1

    dec b
    jr nz, jr_001_60b0

    xor a
    ld [$0000], a
    ld [$6000], a
    and a
    ret


jr_001_60c1:
    xor a
    ld [$0000], a
    ld [$6000], a
    scf
    ret


Call_001_60ca:
    ld a, [$d358]
    push af
    ld a, [$d355]
    push af
    ld a, [$d732]
    push af
    ld hl, $d158
    ld bc, $0d8a
    xor a
    call Call_000_36e0
    ld hl, $c100
    ld bc, $0200
    xor a
    call Call_000_36e0
    pop af
    ld [$d732], a
    pop af
    ld [$d355], a
    pop af
    ld [$d358], a
    ld a, [$d08a]
    and a
    call z, Call_001_5bff
    ld hl, $45aa
    ld de, $d158
    ld bc, $000b
    call Call_000_00b5
    ld hl, $45b1
    ld de, $d34a
    ld bc, $000b
    jp Jump_000_00b5


Call_001_6115:
    ld a, $ff
    call Call_000_23b1
    ld a, $02
    ld c, a
    ld a, $ef
    call Call_000_23a1
    call Call_000_190f
    call Call_000_36a0
    call Call_001_60ca
    ld a, $18
    call Call_000_3e6d
    ld hl, $d53a
    ld a, $14
    ld [$cf91], a
    ld a, $01
    ld [$cf96], a
    call Call_000_2bcf
    ld a, [$d07c]
    ld [$d71a], a
    call Call_001_62ce
    xor a
    ldh [$d7], a
    ld a, [$d732]
    bit 1, a
    jp nz, Jump_001_61bc

    ld de, $615f
    ld bc, $1300
    call Call_001_62a4
    call Call_001_6271
    ld hl, $6253
    call Call_000_3c49
    call Call_000_20d8
    call Call_000_190f
    ld a, $a7
    ld [$d0b5], a
    ld [$cf91], a
    call Call_000_1537
    ld hl, $c3f6
    call Call_000_1384
    call Call_001_6288
    ld hl, $6258
    call Call_000_3c49
    call Call_000_20d8
    call Call_000_190f
    ld de, $6ede
    ld bc, $0400
    call Call_001_62a4
    call Call_001_6288
    ld hl, $6262
    call Call_000_3c49
    call Call_001_695d
    call Call_000_20d8
    call Call_000_190f
    ld de, $6049
    ld bc, $1300
    call Call_001_62a4
    call Call_001_6271
    ld hl, $6267
    call Call_000_3c49
    call Call_001_69a4

Jump_001_61bc:
    call Call_000_20d8
    call Call_000_190f
    ld de, $6ede
    ld bc, $0400
    call Call_001_62a4
    call Call_000_20f6
    ld a, [$d72d]
    and a
    jr nz, jr_001_61da

    ld hl, $626c
    call Call_000_3c49

jr_001_61da:
    ldh a, [$b8]
    push af
    ld a, $9c
    call Call_000_23b1
    pop af
    ldh [$b8], a
    ld [$2000], a
    ld c, $04
    call Call_000_3739
    ld de, $4180
    ld hl, $8000
    ld bc, $050c
    call Call_000_1848
    ld de, $6fe8
    ld bc, $0400
    call Call_001_62a4
    ld c, $04
    call Call_000_3739
    ld de, $7042
    ld bc, $0400
    call Call_001_62a4
    call Call_000_28a6
    ldh a, [$b8]
    push af
    ld a, $02
    ld [$c0ef], a
    ld [$c0f0], a
    ld a, $0a
    ld [$cfc7], a
    ld a, $ff
    ld [$c0ee], a
    call Call_000_23b1
    pop af
    ldh [$b8], a
    ld [$2000], a
    ld c, $14
    call Call_000_3739
    ld hl, $c40a
    ld b, $07
    ld c, $07
    call Call_000_18c4
    call Call_000_36a0
    ld a, $01
    ld [$cfcb], a
    ld c, $32
    call Call_000_3739
    call Call_000_20d8
    jp Jump_000_190f


    rla
    dec h
    ld h, h
    ld [hl+], a
    ld d, b
    rla
    ld a, a
    ld h, h
    ld [hl+], a
    inc d
    rla
    or e
    ld h, h
    ld [hl+], a
    ld d, b
    rla
    add hl, de
    ld h, l
    ld [hl+], a
    ld d, b
    rla
    inc [hl]
    ld h, l
    ld [hl+], a
    ld d, b
    rla
    sub a
    ld h, l
    ld [hl+], a
    ld d, b

Call_001_6271:
    ld hl, $6282
    ld b, $06

jr_001_6276:
    ld a, [hl+]
    ldh [rBGP], a
    ld c, $0a
    call Call_000_3739
    dec b
    jr nz, jr_001_6276

    ret


    ld d, h
    xor b
    db $fc
    ld hl, sp-$0c
    db $e4

Call_001_6288:
    ld a, $77
    ldh [rWX], a
    call Call_000_20af
    ld a, $e4
    ldh [rBGP], a

jr_001_6293:
    call Call_000_20af
    ldh a, [rWX]
    sub $08
    cp $ff
    ret z

    ldh [rWX], a
    jr jr_001_6293

    call Call_000_3e94

Call_001_62a4:
    push bc
    ld a, b
    call Call_000_36eb
    ld hl, $a188
    ld de, $a000
    ld bc, $0310
    call Call_000_00b5
    ld de, $9000
    call Call_000_16ea
    pop bc
    ld a, c
    and a
    ld hl, $c3c3
    jr nz, jr_001_62c6

    ld hl, $c3f6

jr_001_62c6:
    xor a
    ldh [$e1], a
    ld a, $01
    jp Jump_000_3e6d


Call_001_62ce:
    call Call_001_62ff
    ld a, $19
    call Call_000_3e6d
    ld hl, $d732
    bit 2, [hl]
    res 2, [hl]
    jr z, jr_001_62e4

    ld a, [$d71a]
    jr jr_001_62ed

jr_001_62e4:
    bit 1, [hl]
    jr z, jr_001_62eb

    call Call_001_64ea

jr_001_62eb:
    ld a, $00

jr_001_62ed:
    ld b, a
    ld a, [$d72d]
    and a
    jr nz, jr_001_62f5

    ld a, b

jr_001_62f5:
    ld hl, $d732
    bit 4, [hl]
    ret nz

    ld [$d365], a
    ret


Call_001_62ff:
    ld a, [$d72d]
    cp $ef
    jr nz, jr_001_6314

    ld hl, $6428
    ldh a, [$aa]
    cp $02
    jr z, jr_001_6334

    ld hl, $6430
    jr jr_001_6334

jr_001_6314:
    cp $f0
    jr nz, jr_001_6326

    ld hl, $6438
    ldh a, [$aa]
    cp $02
    jr z, jr_001_6334

    ld hl, $6440
    jr jr_001_6334

jr_001_6326:
    ld a, [$d732]
    bit 1, a
    jr nz, jr_001_6346

    bit 2, a
    jr nz, jr_001_6346

    ld hl, $6420

jr_001_6334:
    ld de, $d35e
    ld c, $07

jr_001_6339:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_001_6339

    ld a, [hl+]
    ld [$d367], a
    xor a
    jr jr_001_63b3

jr_001_6346:
    ld a, [$d365]
    ld hl, $d732
    bit 4, [hl]
    jr nz, jr_001_635b

    bit 6, [hl]
    res 6, [hl]
    jr z, jr_001_638e

    ld a, [$d719]
    jr jr_001_6391

jr_001_635b:
    ld hl, $d72d
    res 4, [hl]
    ld a, [$d71d]
    ld b, a
    ld [$d35e], a
    ld a, [$d71e]
    ld c, a
    ld hl, $63bf
    ld de, $0000
    ld a, $06
    ld [$d12f], a

jr_001_6376:
    ld a, [hl+]
    cp b
    jr z, jr_001_637d

    inc hl
    jr jr_001_6381

jr_001_637d:
    ld a, [hl+]
    cp c
    jr z, jr_001_6388

jr_001_6381:
    ld a, [$d12f]
    add e
    ld e, a
    jr jr_001_6376

jr_001_6388:
    ld hl, $63d8
    add hl, de
    jr jr_001_63a4

jr_001_638e:
    ld a, [$d71a]

jr_001_6391:
    ld b, a
    ld [$d35e], a
    ld hl, $6448

jr_001_6398:
    ld a, [hl+]
    inc hl
    cp b
    jr z, jr_001_63a1

    inc hl
    inc hl
    jr jr_001_6398

jr_001_63a1:
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_001_63a4:
    ld de, $d35f
    ld c, $06

jr_001_63a9:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_001_63a9

    xor a
    ld [$d367], a

jr_001_63b3:
    ld [$d4e2], a
    ld [$d4e3], a
    ld a, $ff
    ld [$d42f], a
    ret


    sbc a
    ld bc, $029f
    and b
    ld bc, $02a0
    and c
    ld bc, $02a1
    and d
    ld bc, $02a2
    jp nz, $a502

    ld bc, $02a5
    sub $03
    rst $38
    ld b, [hl]
    rst $00
    rlca
    ld [de], a
    ld bc, $4800
    rst $00
    rlca
    rla
    ld bc, $4601
    rst $00
    rlca
    inc de
    ld bc, $4801
    rst $00
    rlca
    ld d, $01
    nop
    ld b, [hl]
    rst $00
    rlca
    ld [de], a
    ld bc, $4600
    rst $00
    rlca
    inc de
    ld bc, $9301
    rst $00
    ld c, $04
    nop
    nop
    sub e
    rst $00
    ld c, $05
    nop
    ld bc, $c7b1
    db $10
    ld d, $00
    nop
    sbc c
    rst $00
    ld c, $10
    nop
    nop
    sbc c
    rst $00
    ld c, $10
    nop
    nop
    sbc d
    rst $00
    ld c, $12
    nop
    nop
    ld h, $12
    rst $00
    ld b, $03
    nop
    ld bc, $ef04
    dec bc
    rst $00
    inc b
    inc bc
    nop
    ld bc, $ef15
    dec c
    rst $00
    inc b
    ld b, $00
    nop
    dec d
    ldh a, [$0b]
    rst $00
    inc b
    inc bc
    nop
    ld bc, $f015
    dec c
    rst $00
    inc b
    ld b, $00
    nop
    dec d
    nop
    nop
    ld a, h
    ld h, h
    ld bc, $8200
    ld h, h
    ld [bc], a
    nop
    adc b
    ld h, h
    inc bc
    nop
    adc [hl]
    ld h, h
    inc b
    nop
    sub h
    ld h, h
    dec b
    nop
    sbc d
    ld h, h
    ld b, $00
    and b
    ld h, h
    rlca
    nop
    and [hl]
    ld h, h
    ld [$ac00], sp
    ld h, h
    add hl, bc
    nop
    or d
    ld h, h
    ld a, [bc]
    nop
    cp b
    ld h, h
    rrca
    nop
    cp [hl]
    ld h, h
    dec d
    nop
    call nz, $2b64
    rst $00
    ld b, $05
    nop
    ld bc, $c860
    ld a, [de]
    rla
    nop
    ld bc, $c85b
    ld a, [de]
    dec c
    nop
    ld bc, $c7f6
    ld [de], a
    inc de
    nop
    ld bc, $c72a
    ld b, $03
    nop
    ld bc, $c73c
    inc b
    dec bc
    nop
    ld bc, $c7b7
    ld a, [bc]
    add hl, hl
    nop
    ld bc, $c878
    inc e
    inc de
    nop
    ld bc, $c75e
    inc c
    dec bc
    nop
    ld bc, $c72d
    ld b, $09
    nop
    ld bc, $c88d
    ld e, $09
    nop
    ld bc, $c7ba
    ld b, $0b
    nop
    ld bc, $c79e
    inc d
    dec bc
    nop
    ld bc, $df11
    ld h, h

jr_001_64cd:
    ld a, [de]
    cp $ff
    ret z

    ld [$cf91], a
    inc de
    ld a, [de]
    ld [$d127], a
    inc de
    call Call_000_3927
    jr jr_001_64cd

    ld a, [bc]
    ld e, d
    dec d
    inc d
    ld l, b
    jr c, jr_001_655c

    jr c, jr_001_6532

    add hl, sp
    rst $38

Call_001_64ea:
    ret


    call Call_000_3719
    call Call_000_3e94
    push hl
    ld a, [$d057]
    dec a
    ld hl, $c3a0
    ld b, $04
    ld c, $0b
    call z, Call_000_18c4
    ld a, [$cf91]
    ld [$d11e], a
    call Call_000_2f9e
    ld hl, $6557
    call Call_000_3c49
    ld hl, $c43a
    ld bc, $080f
    ld a, $14
    ld [$d125], a
    call Call_000_30e8
    pop hl
    ld a, [$cc26]
    and a
    jr nz, jr_001_654c

    ld a, [$cfcb]
    push af
    xor a
    ld [$cfcb], a
    push hl
    ld a, $02
    ld [$d07d], a

jr_001_6532:
    call Call_001_6596
    ld a, [$d057]
    and a
    jr nz, jr_001_653e

    call Call_000_3e08

jr_001_653e:
    call Call_000_3725
    pop hl
    pop af
    ld [$cfcb], a
    ld a, [$cf4b]
    cp $50
    ret nz

jr_001_654c:
    ld d, h
    ld e, l
    ld hl, $cd6d
    ld bc, $000b
    jp Jump_000_00b5


    rla
    dec b
    ld h, [hl]
    ld [hl+], a
    ld d, b

jr_001_655c:
    ld hl, $cee9
    xor a
    ld [$cfcb], a
    ld a, $02
    ld [$d07d], a
    call Call_001_6596
    call Call_000_3dd4
    call Call_000_3dbe
    call Call_000_20ba
    ld a, [$cf4b]
    cp $50
    jr z, jr_001_6594

    ld hl, $d2b5
    ld bc, $000b
    ld a, [$cf92]
    call Call_000_3a87
    ld e, l
    ld d, h
    ld hl, $cee9
    ld bc, $000b
    call Call_000_00b5
    and a
    ret


jr_001_6594:
    scf
    ret


Call_001_6596:
    push hl
    ld hl, $d730
    set 6, [hl]
    call Call_000_3dd4
    call Call_000_190f
    call Call_000_2429
    ld b, $08
    call Call_000_3def
    call Call_000_36c0
    call Call_001_675b
    ld b, $1c
    ld hl, $576c
    call Call_000_35d6
    ld hl, $c3f0
    ld b, $09
    ld c, $12
    call Call_000_1922
    call Call_001_68f8
    ld a, $03
    ld [$cc24], a
    ld a, $01
    ld [$cc25], a
    ld [$cc2a], a
    ld [$cc26], a
    ld a, $ff
    ld [$cc29], a
    ld a, $07
    ld [$cc28], a
    ld a, $50
    ld [$cf4b], a
    xor a
    ld hl, $ceea
    ld [hl+], a
    ld [hl+], a
    ld [$d08b], a
    call $676f
    call Call_000_3ddc
    ld a, [$ceea]
    and a
    jr nz, jr_001_662d

    call Call_001_680e
    call Call_000_3b7c

jr_001_65ff:
    ld a, [$cc26]
    push af
    ld b, $1c
    ld hl, $56f7
    call Call_000_35d6
    pop af
    ld [$cc26], a
    call Call_000_3831
    ldh a, [$b3]
    and a
    jr z, jr_001_65ff

    ld hl, $665e

jr_001_661a:
    sla a
    jr c, jr_001_6624

    inc hl
    inc hl
    inc hl
    inc hl
    jr jr_001_661a

jr_001_6624:
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push de
    jp hl


jr_001_662d:
    pop de
    ld hl, $cf4b
    ld bc, $000b
    call Call_000_00b5
    call Call_000_3dd4
    call Call_000_190f
    call Call_000_0082
    call Call_000_3ded
    call Call_000_3ddc
    xor a
    ld [$d08b], a
    ld hl, $d730
    res 6, [hl]
    ld a, [$d057]
    and a
    jp z, Jump_000_36a0

    ld hl, $6e5b
    ld b, $0f
    jp Jump_000_35d6


    db $fc
    ld h, l
    ld a, $67
    db $fc
    ld h, l
    inc l
    ld h, a
    db $fc
    ld h, l
    jr @+$69

    db $fc
    ld h, l
    ld [bc], a
    ld h, a
    di
    ld h, l
    adc h
    ld h, [hl]
    db $ed
    ld h, l
    add e
    ld h, [hl]
    di
    ld h, l
    or $66
    di
    ld h, l
    sub d
    ld h, [hl]

jr_001_667e:
    pop de
    ld de, $65ed
    push de
    ld a, [$ceeb]
    xor $01
    ld [$ceeb], a
    ret


jr_001_668c:
    ld a, $01
    ld [$ceea], a
    ret


    ld a, [$cc26]
    cp $05
    jr nz, jr_001_66a0

    ld a, [$cc25]
    cp $11
    jr z, jr_001_668c

jr_001_66a0:
    ld a, [$cc26]
    cp $06
    jr nz, jr_001_66ae

    ld a, [$cc25]
    cp $01
    jr z, jr_001_667e

jr_001_66ae:
    ld hl, $cc30
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    ld a, [hl]
    ld [$ceed], a
    call Call_001_68eb
    ld a, [$ceed]
    cp $e5
    ld de, $6885
    jr z, jr_001_66e3

    cp $e4
    ld de, $68d6
    jr z, jr_001_66e3

    ld a, [$d07d]
    cp $02
    jr nc, jr_001_66db

    ld a, [$cee9]
    cp $07
    jr jr_001_66e0

jr_001_66db:
    ld a, [$cee9]
    cp $0a

jr_001_66e0:
    jr c, jr_001_66ea

    ret


jr_001_66e3:
    push hl
    call Call_001_6871
    pop hl
    ret nc

    dec hl

jr_001_66ea:
    ld a, [$ceed]
    ld [hl+], a
    ld [hl], $50
    ld a, $90
    call Call_000_23b1
    ret


    ld a, [$cee9]
    and a
    ret z

    call Call_001_68eb
    dec hl
    ld [hl], $50
    ret


    ld a, [$cc26]
    cp $06
    ret z

    ld a, [$cc25]
    cp $11
    jp z, Jump_001_6714

    inc a
    inc a
    jr jr_001_6755

Jump_001_6714:
    ld a, $01
    jr jr_001_6755

    ld a, [$cc26]
    cp $06
    ret z

    ld a, [$cc25]
    dec a
    jp z, Jump_001_6728

    dec a
    jr jr_001_6755

Jump_001_6728:
    ld a, $11
    jr jr_001_6755

    ld a, [$cc26]
    dec a
    ld [$cc26], a
    and a
    ret nz

    ld a, $06
    ld [$cc26], a
    ld a, $01
    jr jr_001_6755

    ld a, [$cc26]
    inc a
    ld [$cc26], a
    cp $07
    jr nz, jr_001_6750

    ld a, $01
    ld [$cc26], a
    jr jr_001_6755

jr_001_6750:
    cp $06
    ret nz

    ld a, $01

jr_001_6755:
    ld [$cc25], a
    jp Jump_000_3bf9


Call_001_675b:
    ld de, $6767
    ld hl, $8f00
    ld bc, $0001
    jp Jump_000_1886


    ldh a, [$c0]
    ldh a, [$ce]
    db $fd
    dec c
    dec c
    ld c, $af
    ldh [$ba], a
    ld a, [$ceeb]
    and a
    ld de, $679e
    jr nz, jr_001_677e

    ld de, $67d6

jr_001_677e:
    ld hl, $c406
    ld bc, $0509

jr_001_6784:
    push bc

jr_001_6785:
    ld a, [de]
    ld [hl+], a
    inc hl
    inc de
    dec c
    jr nz, jr_001_6785

    ld bc, $0016
    add hl, bc
    pop bc
    dec b
    jr nz, jr_001_6784

    call Call_000_1955
    ld a, $01
    ldh [$ba], a
    jp Jump_000_3dd7


    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    ld a, a
    pop af
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    pop hl
    ld [c], a
    db $e3
    and $e7
    rst $28
    push af
    di
    ld a, [c]
    db $f4
    ldh a, [$94]
    adc a
    adc a
    add h
    sub c
    ld a, a
    add d
    add b
    sub d
    add h
    ld d, b
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    ld a, a
    pop af
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    pop hl
    ld [c], a
    db $e3
    and $e7
    rst $28
    push af
    di
    ld a, [c]
    db $f4
    ldh a, [$ab]
    xor [hl]
    or [hl]
    and h
    or c
    ld a, a
    and d
    and b
    or d
    and h
    ld d, b

Call_001_680e:
    call Call_001_68eb
    ld a, c
    ld [$cee9], a
    ld hl, $c3d2
    ld bc, $010a
    call Call_000_18c4
    ld hl, $c3d2
    ld de, $cf4b
    call Call_000_1955
    ld hl, $c3e6
    ld a, [$d07d]
    cp $02
    jr nc, jr_001_6835

    ld b, $07
    jr jr_001_6837

jr_001_6835:
    ld b, $0a

jr_001_6837:
    ld a, $76

jr_001_6839:
    ld [hl+], a
    dec b
    jr nz, jr_001_6839

    ld a, [$d07d]
    cp $02
    ld a, [$cee9]

jr_001_6845:
    jr nc, jr_001_684b

    cp $07
    jr jr_001_684d

jr_001_684b:
    cp $0a

jr_001_684d:
    jr nz, jr_001_6867

    call Call_000_3bf9
    ld a, $11
    ld [$cc25], a
    ld a, $05
    ld [$cc26], a
    ld a, [$d07d]
    cp $02
    ld a, $09
    jr nc, jr_001_6867

    ld a, $06

jr_001_6867:
    ld c, a
    ld b, $00
    ld hl, $c3e6
    add hl, bc
    ld [hl], $77
    ret


Call_001_6871:
    push de
    call Call_001_68eb
    dec hl
    ld a, [hl]
    pop hl
    ld de, $0002
    call Call_000_3dab
    ret nc

    inc hl
    ld a, [hl]
    ld [$ceed], a
    ret


    or [hl]
    ld h, $b7
    daa
    cp b
    jr z, jr_001_6845

    add hl, hl
    cp d
    ld a, [hl+]
    cp e
    dec hl
    cp h
    inc l
    cp l
    dec l
    cp [hl]
    ld l, $bf
    cpl
    ret nz

    jr nc, @-$3d

    ld sp, $32c2
    jp $c433


    inc [hl]
    jp z, $cb3a

    dec sp
    call z, $cd3c
    dec a
    adc $3e
    add l
    dec b
    add [hl]
    ld b, $87
    rlca
    adc b
    ld [$0989], sp
    adc d
    ld a, [bc]
    adc e
    dec bc
    adc h
    inc c
    adc l
    dec c
    adc [hl]
    ld c, $8f
    rrca
    sub b
    db $10
    sub c
    ld de, $1292
    sub e
    inc de
    sbc c
    add hl, de
    sbc d
    ld a, [de]
    sbc e
    dec de
    call $9c3d
    inc e
    rst $38
    jp z, $cb44

    ld b, l
    call z, $cd46
    ld b, a
    adc $48
    sbc c
    ld b, b
    sbc d
    ld b, c
    sbc e
    ld b, d
    call $9c47
    ld b, e
    rst $38

Call_001_68eb:
    ld hl, $cf4b
    ld c, $00

jr_001_68f0:
    ld a, [hl]
    cp $50
    ret z

    inc hl
    inc c
    jr jr_001_68f0

Call_001_68f8:
    ld hl, $c3b4
    ld a, [$d07d]
    ld de, $693f
    and a
    jr z, jr_001_6934

    ld de, $6945
    dec a
    jr z, jr_001_6934

    ld a, [$cf91]
    ld [$cd5d], a
    push af
    ld b, $1c
    ld hl, $5882
    call Call_000_35d6
    pop af
    ld [$d11e], a
    call Call_000_2f9e
    ld hl, $c3b8
    call Call_000_1955
    ld hl, $0001
    add hl, bc
    ld [hl], $c9
    ld hl, $c3dd
    ld de, $6953
    jr jr_001_693c

jr_001_6934:
    call Call_000_1955
    ld l, c
    ld h, b
    ld de, $694d

jr_001_693c:
    jp Jump_000_1955


    sbc b
    adc [hl]
    sub h
    sub c
    ld a, a
    ld d, b
    sub c
    adc b
    sub l
    add b
    adc e
    cp l
    ld a, a
    ld d, b
    adc l
    add b
    adc h
    add h
    and $50
    adc l
    adc b
    add d
    adc d
    adc l
    add b
    adc h
    add h
    and $50

Call_001_695d:
    call Call_001_6a12
    ld de, $6aa8
    call Call_001_6a6c
    ld a, [$cc26]
    and a
    jr z, jr_001_697a

    ld hl, $6af2
    call Call_001_6ad6
    ld de, $d158
    call Call_001_69ec
    jr jr_001_6999

jr_001_697a:
    ld hl, $d158
    xor a
    ld [$d07d], a
    call Call_001_6596
    ld a, [$cf4b]
    cp $50
    jr z, jr_001_697a

    call Call_000_190f
    call Call_000_3dd7
    ld de, $6ede
    ld b, $04
    call Call_001_62a4

jr_001_6999:
    ld hl, $699f
    jp Jump_000_3c49


    rla
    cpl
    ld h, [hl]
    ld [hl+], a
    ld d, b

Call_001_69a4:
    call Call_001_6a12
    ld de, $6abe
    call Call_001_6a6c
    ld a, [$cc26]
    and a
    jr z, jr_001_69c1

    ld hl, $6b08
    call Call_001_6ad6
    ld de, $d34a
    call Call_001_69ec
    jr jr_001_69e1

jr_001_69c1:
    ld hl, $d34a
    ld a, $01
    ld [$d07d], a
    call Call_001_6596
    ld a, [$cf4b]
    cp $50
    jr z, jr_001_69c1

    call Call_000_190f
    call Call_000_3dd7
    ld de, $6049
    ld b, $13
    call Call_001_62a4

jr_001_69e1:
    ld hl, $69e7
    jp Jump_000_3c49


    rla
    ld c, d
    ld h, [hl]
    ld [hl+], a
    ld d, b

Call_001_69ec:
    push de
    ld hl, $c3a0
    ld bc, $0c0b
    call Call_000_18c4
    ld c, $0a
    call Call_000_3739
    pop de
    ld hl, $cd6d
    ld bc, $000b
    call Call_000_00b5
    call Call_000_3dd7
    ld hl, $c3fc
    ld de, $067d
    ld a, $ff
    jr jr_001_6a19

Call_001_6a12:
    ld hl, $c3f5
    ld de, $067d
    xor a

jr_001_6a19:
    push hl
    push de
    push bc
    ldh [$8d], a
    ld a, d
    ldh [$8b], a
    ld a, e
    ldh [$8c], a
    ld c, a
    ldh a, [$8d]
    and a
    jr nz, jr_001_6a2d

    ld d, $00
    add hl, de

jr_001_6a2d:
    ld d, h
    ld e, l

jr_001_6a2f:
    xor a
    ldh [$ba], a
    ldh a, [$8d]
    and a
    jr nz, jr_001_6a3c

    ld a, [hl+]
    ld [hl-], a
    dec hl
    jr jr_001_6a3f

jr_001_6a3c:
    ld a, [hl-]
    ld [hl+], a
    inc hl

jr_001_6a3f:
    dec c
    jr nz, jr_001_6a2f

    ldh a, [$8d]
    and a
    jr z, jr_001_6a4a

    xor a
    dec hl
    ld [hl], a

jr_001_6a4a:
    ld a, $01
    ldh [$ba], a
    call Call_000_3dd7
    ldh a, [$8c]
    ld c, a
    ld h, d
    ld l, e
    ldh a, [$8d]
    and a
    jr nz, jr_001_6a5e

    inc hl
    jr jr_001_6a5f

jr_001_6a5e:
    dec hl

jr_001_6a5f:
    ld d, h
    ld e, l
    ldh a, [$8b]
    dec a
    ldh [$8b], a
    jr nz, jr_001_6a2f

    pop bc
    pop de
    pop hl
    ret


Call_001_6a6c:
    push de
    ld hl, $c3a0
    ld b, $0a
    ld c, $09
    call Call_000_1922
    ld hl, $c3a3
    ld de, $6aa3
    call Call_000_1955
    pop de
    ld hl, $c3ca
    call Call_000_1955
    call Call_000_2429
    xor a
    ld [$cc26], a
    ld [$cc2a], a
    inc a
    ld [$cc25], a
    ld [$cc29], a
    inc a
    ld [$cc24], a
    inc a
    ld [$cc28], a
    jp Jump_000_3abe


    adc l
    add b
    adc h
    add h
    ld d, b
    adc l
    add h
    sub [hl]
    ld a, a
    adc l
    add b
    adc h
    add h
    ld c, [hl]
    sub c
    add h
    add e
    ld c, [hl]
    add b
    sub d
    add a
    ld c, [hl]
    adc c
    add b
    add d
    adc d
    ld d, b
    adc l
    add h
    sub [hl]
    ld a, a
    adc l
    add b
    adc h
    add h
    ld c, [hl]
    add c
    adc e
    sub h
    add h
    ld c, [hl]
    add [hl]
    add b
    sub c
    sbc b
    ld c, [hl]
    adc c
    adc [hl]
    add a
    adc l
    ld d, b

Call_001_6ad6:
    ld b, a
    ld c, $00

jr_001_6ad9:
    ld d, h
    ld e, l

jr_001_6adb:
    ld a, [hl+]
    cp $50
    jr nz, jr_001_6adb

    ld a, b
    cp c
    jr z, jr_001_6ae7

    inc c
    jr jr_001_6ad9

jr_001_6ae7:
    ld h, d
    ld l, e
    ld de, $cd6d
    ld bc, $0014
    jp Jump_000_00b5


    adc l
    add h
    sub [hl]
    ld a, a
    adc l
    add b
    adc h
    add h
    ld d, b
    sub c
    add h
    add e
    ld d, b
    add b
    sub d
    add a
    ld d, b
    adc c
    add b
    add d
    adc d
    ld d, b
    adc l
    add h
    sub [hl]
    ld a, a
    adc l
    add b
    adc h
    add h
    ld d, b
    add c
    adc e
    sub h
    add h
    ld d, b
    add [hl]
    add b
    sub c
    sbc b
    ld d, b
    adc c
    adc [hl]
    add a
    adc l
    ld d, b
    ld d, b
    ld de, $d347
    ld hl, $ff9f
    ld c, $03
    call Call_000_3a8e
    ret c

    ld de, $d349
    ld hl, $ffa1
    ld c, $03
    ld a, $0c
    call Call_000_3e6d
    ld a, $13
    ld [$d125], a
    call Call_000_30e8
    and a
    ret


    ld a, [$cf94]
    cp $03
    jp nz, Jump_000_2c53

    push hl
    ld hl, $cf8b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    ld a, [$cc26]
    ld b, a
    ld a, [$cc36]
    add b
    add a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    pop hl
    inc a
    jp z, Jump_000_2c53

    ld a, [$cc35]
    and a
    jr nz, jr_001_6b81

    ld a, [$cc26]
    inc a
    ld b, a
    ld a, [$cc36]
    add b
    ld [$cc35], a
    ld c, $14
    call Call_000_3739
    jp Jump_000_2c53


jr_001_6b81:
    ld a, [$cc26]
    inc a
    ld b, a
    ld a, [$cc36]
    add b
    ld b, a
    ld a, [$cc35]
    cp b
    jp z, Jump_000_2c53

    dec a
    ld [$cc35], a
    ld c, $14
    call Call_000_3739
    push hl
    push de
    ld hl, $cf8b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    ld d, h
    ld e, l
    ld a, [$cc26]
    ld b, a
    ld a, [$cc36]
    add b
    add a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [$cc35]
    add a
    add e
    ld e, a
    jr nc, jr_001_6bbc

    inc d

jr_001_6bbc:
    ld a, [de]
    ld b, a
    ld a, [hl+]
    cp b
    jr z, jr_001_6bdc

    ldh [$95], a
    ld a, [hl-]
    ldh [$96], a
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl], a
    ldh a, [$96]
    ld [de], a
    dec de
    ldh a, [$95]
    ld [de], a
    xor a
    ld [$cc35], a
    pop de
    pop hl
    jp Jump_000_2c53


jr_001_6bdc:
    inc de
    ld a, [hl]
    ld b, a
    ld a, [de]
    add b
    cp $64
    jr c, jr_001_6bed

    sub $63
    ld [de], a
    ld a, $63
    ld [hl], a
    jr jr_001_6c17

jr_001_6bed:
    ld [hl], a
    ld hl, $cf8b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    dec [hl]
    ld a, [hl]
    ld [$d12a], a
    cp $01
    jr nz, jr_001_6c00

    ld [$cc28], a

jr_001_6c00:
    dec de
    ld h, d
    ld l, e
    inc hl
    inc hl

jr_001_6c05:
    ld a, [hl+]
    ld [de], a
    inc de
    inc a
    jr z, jr_001_6c10

    ld a, [hl+]
    ld [de], a
    inc de
    jr jr_001_6c05

jr_001_6c10:
    xor a
    ld [$cc36], a
    ld [$cc26], a

jr_001_6c17:
    xor a
    ld [$cc35], a
    pop de
    pop hl
    jp Jump_000_2c53


    ld a, [$cc36]
    ld [$d07e], a
    call Call_000_2429
    xor a
    ld [$cf0a], a

Jump_001_6c2d:
    xor a
    ld [$cc36], a
    ld [$cc26], a
    ld [$cc2f], a
    inc a
    ld [$cf93], a
    ld a, $13
    ld [$d125], a
    call Call_000_30e8
    ld a, $15
    ld [$d125], a
    call Call_000_30e8
    ld hl, $d128
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    ld a, [$d12e]
    cp $02
    jp z, Jump_001_6df7

    ld a, [$d12d]
    and a
    jp z, Jump_001_6d1e

    dec a
    jp z, Jump_001_6c68

    dec a
    jp z, Jump_001_6df7

Jump_001_6c68:
    xor a
    ld [$cf93], a
    ld a, $02
    ld [$d11b], a
    ld hl, $5bd5
    ld b, $0e
    call Call_000_35d6
    ld a, [$d31d]
    and a
    jp z, Jump_001_6d12

    ld hl, $6e25
    call Call_000_3c49
    call Call_000_3719

Jump_001_6c89:
jr_001_6c89:
    call Call_000_3725
    ld a, $13
    ld [$d125], a
    call Call_000_30e8
    ld hl, $d31d
    ld a, l
    ld [$cf8b], a
    ld a, h
    ld [$cf8c], a
    xor a
    ld [$cf93], a
    ld [$cc26], a
    ld a, $03
    ld [$cf94], a
    call Call_000_2be6
    jp c, Jump_001_6dc8

    call Call_000_30d9
    ld a, [$d124]
    and a
    jr nz, jr_001_6d09

    ld a, [$cf91]
    call Call_000_3040
    jr c, jr_001_6d09

    ld a, $02
    ld [$cf94], a
    ldh [$8e], a
    call Call_000_2d57
    inc a
    jr z, jr_001_6c89

    ld hl, $6e2a
    ld bc, $0e01
    call Call_000_3c49
    ld hl, $c43a
    ld bc, $080f
    ld a, $14
    ld [$d125], a
    call Call_000_30e8
    ld a, [$d12e]
    cp $02
    jr z, jr_001_6c89

    ld a, [$d12d]
    dec a
    jr z, jr_001_6c89

    ld a, [$cf0a]
    and a
    jr nz, jr_001_6cfd

    inc a
    ld [$cf0a], a

jr_001_6cfd:
    call Call_000_2b9e
    ld hl, $d31d
    call Call_000_2bbb
    jp Jump_001_6c89


jr_001_6d09:
    ld hl, $6e34
    call Call_000_3c49
    jp Jump_001_6dc8


Jump_001_6d12:
    ld hl, $6e2f
    call Call_000_3c49
    call Call_000_3719
    jp Jump_001_6dc8


Jump_001_6d1e:
    ld a, $01
    ld [$cf93], a
    ld a, $03
    ld [$d11b], a
    ld hl, $5bd5
    ld b, $0e
    call Call_000_35d6
    ld hl, $6e0c
    call Call_000_3c49
    call Call_000_3719

Jump_001_6d39:
jr_001_6d39:
    call Call_000_3725
    ld a, $13
    ld [$d125], a
    call Call_000_30e8
    ld hl, $cf7b
    ld a, l
    ld [$cf8b], a
    ld a, h
    ld [$cf8c], a
    xor a
    ld [$cc26], a
    inc a
    ld [$cf93], a
    inc a
    ld [$cf94], a
    call Call_000_2be6
    jr c, jr_001_6dc8

    ld a, $63
    ld [$cf97], a
    xor a
    ldh [$8e], a
    call Call_000_2d57
    inc a
    jr z, jr_001_6d39

    ld a, [$cf91]
    ld [$d11e], a
    call Call_000_2fcf
    call Call_000_3826
    ld hl, $6e11
    call Call_000_3c49
    ld hl, $c43a
    ld bc, $080f
    ld a, $14
    ld [$d125], a
    call Call_000_30e8
    ld a, [$d12e]
    cp $02
    jp z, Jump_001_6d39

    ld a, [$d12d]
    dec a
    jr z, jr_001_6d39

    call Call_001_6ddc
    jr c, jr_001_6de7

    ld hl, $d31d
    call Call_000_2bcf
    jr nc, jr_001_6def

    call Call_000_2b96
    ld a, [$cf0a]
    and a
    jr nz, jr_001_6db7

    ld a, $01
    ld [$cf0a], a

jr_001_6db7:
    ld a, $b2
    call Call_000_3740
    call Call_000_3748
    ld hl, $6e16
    call Call_000_3c49
    jp Jump_001_6d39


Jump_001_6dc8:
jr_001_6dc8:
    call Call_000_3725
    ld a, $13
    ld [$d125], a
    call Call_000_30e8
    ld hl, $6e3e
    call Call_000_3c49
    jp Jump_001_6c2d


Call_001_6ddc:
    ld de, $d347
    ld hl, $ff9f
    ld c, $03
    jp Jump_000_3a8e


jr_001_6de7:
    ld hl, $6e1b
    call Call_000_3c49
    jr jr_001_6dc8

jr_001_6def:
    ld hl, $6e20
    call Call_000_3c49
    jr jr_001_6dc8

Jump_001_6df7:
    ld hl, $6e39
    call Call_000_3c49
    ld a, $01
    ld [$cfcb], a
    call Call_000_2429
    ld a, [$d07e]
    ld [$cc36], a
    ret


    rla
    ld [$2866], sp
    ld d, b
    rla
    add hl, de
    ld h, [hl]
    jr z, @+$52

    rla
    add hl, sp
    ld h, [hl]
    jr z, jr_001_6e6b

    rla
    ld d, e
    ld h, [hl]
    jr z, jr_001_6e70

    rla
    ld [hl], b
    ld h, [hl]
    jr z, @+$52

    rla
    sub b
    ld h, [hl]
    jr z, @+$52

    rla
    xor [hl]
    ld h, [hl]
    jr z, @+$52

    rla
    rst $08
    ld h, [hl]
    jr z, @+$52

    rla
    ldh a, [$66]
    jr z, jr_001_6e89

    rla
    dec c
    ld h, a
    jr z, jr_001_6e8e

    rla
    add hl, de
    ld h, a
    jr z, jr_001_6e93

    call Call_000_3719
    ld a, [$cf92]
    ld hl, $d2b5
    call Call_000_15ba
    ld hl, $cd6d
    ld de, $d036
    ld bc, $000b
    call Call_000_00b5

Jump_001_6e5b:
    ld hl, $d173
    ld bc, $002c
    ld a, [$cf92]
    call Call_000_3a87
    ld d, h
    ld e, l
    ld b, $04

jr_001_6e6b:
    ld a, [hl]
    and a
    jr z, jr_001_6e8b

    inc hl

jr_001_6e70:
    dec b
    jr nz, jr_001_6e6b

    push de
    call Call_001_6f07
    pop de
    jp c, Jump_001_6eda

    push hl
    push de
    ld [$d11e], a
    call Call_000_3058
    ld hl, $6fc8
    call Call_000_3c49

jr_001_6e89:
    pop de
    pop hl

jr_001_6e8b:
    ld a, [$d0e0]

jr_001_6e8e:
    ld [hl], a
    ld bc, $0015
    add hl, bc

jr_001_6e93:
    push hl
    push de
    dec a
    ld hl, $4000
    ld bc, $0006
    call Call_000_3a87
    ld de, $cee9
    ld a, $0e
    call Call_000_009d
    ld a, [$ceee]
    pop de
    pop hl
    ld [hl], a
    ld a, [$d057]
    and a
    jp z, Jump_001_6efe

    ld a, [$cf92]
    ld b, a
    ld a, [$cc2f]
    cp b
    jp nz, Jump_001_6efe

    ld h, d
    ld l, e
    ld de, $d01c
    ld bc, $0004
    call Call_000_00b5
    ld bc, $0011
    add hl, bc
    ld de, $d02d
    ld bc, $0004
    call Call_000_00b5
    jp Jump_001_6efe


Jump_001_6eda:
    ld hl, $6fb9
    call Call_000_3c49
    ld hl, $c43a
    ld bc, $080f
    ld a, $14
    ld [$d125], a
    call Call_000_30e8
    ld a, [$cc26]
    and a
    jp nz, Jump_001_6e5b

    ld hl, $6fbe
    call Call_000_3c49
    ld b, $00
    ret


Jump_001_6efe:
    ld hl, $6fad
    call Call_000_3c49
    ld b, $01
    ret


Call_001_6f07:
    push hl
    ld hl, $6fc3
    call Call_000_3c49
    ld hl, $c43a
    ld bc, $080f
    ld a, $14
    ld [$d125], a
    call Call_000_30e8
    pop hl
    ld a, [$cc26]
    rra
    ret c

    ld bc, $fffc
    add hl, bc
    push hl
    ld de, $d0dc
    ld bc, $0004
    call Call_000_00b5
    ld hl, $5b87
    ld b, $0e
    call Call_000_35d6
    pop hl

jr_001_6f39:
    push hl
    ld hl, $6fb4
    call Call_000_3c49
    ld hl, $c430
    ld b, $04
    ld c, $0e
    call Call_000_1922
    ld hl, $c446
    ld de, $d0e1
    ldh a, [$f6]
    set 2, a
    ldh [$f6], a
    call Call_000_1955
    ldh a, [$f6]
    res 2, a
    ldh [$f6], a
    ld hl, $cc24
    ld a, $08
    ld [hl+], a
    ld a, $05
    ld [hl+], a
    xor a
    ld [hl+], a
    inc hl
    ld a, [$cd6c]
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    ld [hl], $00
    ld hl, $fff6
    set 1, [hl]
    call Call_000_3abe
    ld hl, $fff6
    res 1, [hl]
    push af
    call Call_000_3725
    pop af
    pop hl
    bit 1, a
    jr nz, jr_001_6fab

    push hl
    ld a, [$cc26]
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    push af
    push bc
    call Call_000_3049
    pop bc
    pop de
    ld a, d
    jr c, jr_001_6fa2

    pop hl
    add hl, bc
    and a
    ret


jr_001_6fa2:
    ld hl, $6fe1
    call Call_000_3c49
    pop hl
    jr jr_001_6f39

jr_001_6fab:
    scf
    ret


    rla
    dec sp
    ld h, a
    jr z, @+$0d

    ld b, $50
    rla
    ld d, b
    ld h, a
    jr z, jr_001_7009

    rla
    ld [hl], c
    ld h, a
    jr z, @+$52

    rla
    adc d
    ld h, a
    jr z, @+$52

    rla
    and h
    ld h, a
    jr z, @+$52

    rla
    add hl, de
    ld l, b
    jr z, jr_001_6fd7

    ld [$ae3e], sp
    call Call_000_3740
    ld hl, $6fd7
    ret


jr_001_6fd7:
    rla
    daa
    ld l, b
    jr z, jr_001_6fe6

    rla
    jr nc, @+$6a

    jr z, jr_001_7031

    rla
    ld c, l
    ld l, b
    jr z, @+$52

jr_001_6fe6:
    call Call_000_3719
    ld hl, $705d
    call Call_000_3c49
    ld hl, $d72e
    bit 2, [hl]
    set 1, [hl]
    set 2, [hl]
    jr nz, jr_001_7000

    ld hl, $7062
    call Call_000_3c49

jr_001_7000:
    call Call_000_360a
    ld a, [$cc26]
    and a
    jr nz, jr_001_7051

jr_001_7009:
    call Call_001_7078
    call Call_000_3725
    ld hl, $7068
    call Call_000_3c49
    ld a, $18
    ld [$c112], a
    call Call_000_3dd7
    ld a, $07
    call Call_000_3e6d
    ld b, $1c
    ld hl, $4433
    call Call_000_35d6
    xor a
    ld [$cfc7], a
    ld a, [$c0f0]

jr_001_7031:
    ld [$c0ef], a
    ld a, [$d35b]
    ld [$cfca], a
    ld [$c0ee], a
    call Call_000_23b1
    ld hl, $706d
    call Call_000_3c49
    ld a, $14
    ld [$c112], a
    ld c, a
    call Call_000_3739
    jr jr_001_7054

jr_001_7051:
    call Call_000_3725

jr_001_7054:
    ld hl, $7072
    call Call_000_3c49
    jp Jump_000_2429


    rla
    ld l, l
    ld l, b
    jr z, jr_001_70b2

    ld a, [bc]
    rla
    or h
    ld l, b
    jr z, @+$52

    rla
    adc $68
    jr z, jr_001_70bd

    rla
    add sp, $68
    jr z, jr_001_70c2

    ld a, [bc]
    rla
    db $10
    ld l, c
    jr z, @+$52

Call_001_7078:
    push hl
    ld hl, $7092
    ld a, [$d35e]
    ld b, a

jr_001_7080:
    ld a, [hl+]
    cp $ff
    jr z, jr_001_708a

    cp b
    jr nz, jr_001_7080

    jr jr_001_7090

jr_001_708a:
    ld a, [$d365]
    ld [$d719], a

jr_001_7090:
    pop hl
    ret


    rst $18
    ldh [$e1], a
    rst $38
    xor a
    ld [$cf94], a
    ld a, [$cf0c]
    bit 0, a
    jr nz, jr_001_70c7

    ldh a, [$8c]
    and a
    jr nz, jr_001_70bd

    ld a, [$d74b]
    bit 5, a
    ld hl, $c3aa
    ld b, $0e
    ld c, $08

jr_001_70b2:
    jr nz, jr_001_70c4

    ld hl, $c3aa
    ld b, $0c
    ld c, $08
    jr jr_001_70c4

jr_001_70bd:
    ld hl, $c490
    ld b, $04

jr_001_70c2:
    ld c, $12

jr_001_70c4:
    call Call_000_1922

jr_001_70c7:
    ld hl, $cfc4
    set 0, [hl]
    ld hl, $cd60
    bit 4, [hl]
    res 4, [hl]
    jr nz, jr_001_70d8

    call Call_000_2429

jr_001_70d8:
    ld hl, $c119
    ld c, $0f
    ld de, $0010

jr_001_70e0:
    ld a, [hl]
    inc h
    ld [hl], a
    dec h
    add hl, de
    dec c
    jr nz, jr_001_70e0

    ld hl, $c102
    ld de, $0010
    ld c, e

jr_001_70ef:
    ld a, [hl]
    cp $ff
    jr z, jr_001_70f7

    and $fc
    ld [hl], a

jr_001_70f7:
    add hl, de
    dec c
    jr nz, jr_001_70ef

    ld b, $9c
    call Call_000_18d6
    xor a
    ldh [$b0], a
    call Call_000_3680
    ld a, $01
    ldh [$ba], a
    ret


    ld a, [$d74b]
    bit 5, a
    ld hl, $c3aa
    ld b, $0e
    ld c, $08
    jr nz, jr_001_7120

    ld hl, $c3aa
    ld b, $0c
    ld c, $08

jr_001_7120:
    call Call_000_1922
    ld a, $cb
    ld [$cc29], a
    ld a, $02
    ld [$cc24], a
    ld a, $0b
    ld [$cc25], a
    ld a, [$cc2d]
    ld [$cc26], a
    ld [$cc2a], a
    xor a
    ld [$cc37], a
    ld hl, $d730
    set 6, [hl]
    ld hl, $c3d4
    ld a, [$d74b]
    bit 5, a
    ld a, $06
    jr z, jr_001_7158

    ld de, $718f
    call Call_001_71bb
    ld a, $07

jr_001_7158:
    ld [$cc28], a
    ld de, $7197
    call Call_001_71bb
    ld de, $719f
    call Call_001_71bb
    ld de, $d158
    call Call_001_71bb
    ld a, [$d72e]
    bit 6, a
    ld de, $71a4
    jr z, jr_001_717a

    ld de, $71a9

jr_001_717a:
    call Call_001_71bb
    ld de, $71b4
    call Call_001_71bb
    ld de, $71af
    call Call_000_1955
    ld hl, $d730
    res 6, [hl]
    ret


    adc a
    adc [hl]
    adc d
    cp d
    add e
    add h
    sub a
    ld d, b
    adc a
    adc [hl]
    adc d
    cp d
    adc h
    adc [hl]
    adc l
    ld d, b
    adc b
    sub e
    add h
    adc h
    ld d, b
    sub d
    add b
    sub l
    add h
    ld d, b
    sub c
    add h
    sub d
    add h
    sub e
    ld d, b
    add h
    sub a
    adc b
    sub e
    ld d, b
    adc [hl]
    adc a
    sub e
    adc b
    adc [hl]
    adc l
    ld d, b

Call_001_71bb:
    push hl
    call Call_000_1955
    pop hl
    ld de, $0028
    add hl, de
    ret


    ld hl, $72b8
    call Call_000_3c49
    ld a, [$d74b]
    bit 5, a
    jp nz, Jump_001_71e1

    ld c, $3c
    call Call_000_3739
    ld hl, $72d2
    call Call_000_3c49
    jp Jump_001_7298


Jump_001_71e1:
    ld a, $01
    ld [$cc34], a
    ld a, $5a
    ld [$cc47], a

jr_001_71eb:
    ldh a, [$aa]
    cp $02
    jr z, jr_001_721a

    cp $01
    jr z, jr_001_721a

    ld a, $ff
    ldh [$aa], a
    ld a, $02
    ldh [rSB], a
    xor a
    ldh [$ad], a
    ld a, $80
    ldh [rSC], a
    ld a, [$cc47]
    dec a
    ld [$cc47], a
    jr z, jr_001_7287

    ld a, $01
    ldh [rSB], a
    ld a, $81
    ldh [rSC], a
    call Call_000_20af
    jr jr_001_71eb

jr_001_721a:
    call Call_000_22ed
    call Call_000_20af
    call Call_000_22ed
    ld c, $32
    call Call_000_3739
    ld hl, $72bd
    call Call_000_3c49
    xor a
    ld [$cc34], a
    call Call_000_35ec
    ld a, $01
    ld [$cc34], a
    ld a, [$cc26]
    and a
    jr nz, jr_001_728f

    ld hl, $7848
    ld b, $1c
    call Call_000_35d6
    call Call_000_3748
    ld a, $b6
    call Call_000_3740
    ld hl, $72c2
    call Call_000_3c49
    ld hl, $cc47
    ld a, $03
    ld [hl+], a
    xor a
    ld [hl], a
    ldh [$a9], a
    ld [$cc42], a
    call Call_000_227f
    ld hl, $cc47
    ld a, [hl+]
    inc a
    jr nz, jr_001_72a8

    ld a, [hl]
    inc a
    jr nz, jr_001_72a8

    ld b, $0a

jr_001_7273:
    call Call_000_20af
    call Call_000_22ed
    dec b
    jr nz, jr_001_7273

    call Call_001_72d7
    ld hl, $72c8
    call Call_000_3c49
    jr jr_001_7298

jr_001_7287:
    ld hl, $72b3
    call Call_000_3c49
    jr jr_001_7298

jr_001_728f:
    call Call_001_72d7
    ld hl, $72cd
    call Call_000_3c49

Jump_001_7298:
jr_001_7298:
    xor a
    ld hl, $cc47
    ld [hl+], a
    ld [hl], a
    ld hl, $d72e
    res 6, [hl]
    xor a
    ld [$cc34], a
    ret


jr_001_72a8:
    xor a
    ld [hl-], a
    ld [hl], a
    ld hl, $5c0a
    ld b, $01
    jp Jump_000_35d6


    rla
    dec hl
    ld l, c
    jr z, @+$52

    rla
    ld l, c
    ld l, c
    jr z, @+$52

    rla
    add l
    ld l, c
    jr z, jr_001_7312

    rla
    call z, $2869
    ld a, [bc]
    ld d, b
    rla
    db $db
    ld l, c
    jr z, jr_001_731d

    rla
    nop
    ld b, b
    add hl, hl
    ld d, b
    rla
    inc d
    ld b, b
    add hl, hl
    ld d, b

Call_001_72d7:
    call Call_000_3dd7
    ld a, $ff
    ldh [$aa], a
    ld a, $02
    ldh [rSB], a
    xor a
    ldh [$ad], a
    ld a, $80
    ldh [rSC], a
    ret


    ld a, [$d125]
    cp $14
    jp z, Jump_001_7559

    ld c, a
    ld hl, $7387
    ld de, $0003
    call Call_001_734c
    jr c, jr_001_7315

    ld hl, $7391
    ld de, $0005
    call Call_001_734c
    jr c, jr_001_731d

    ld hl, $73b0
    ld de, $0009
    call Call_001_734c

jr_001_7312:
    jr c, jr_001_7327

    ret


jr_001_7315:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $7314
    push de
    jp hl


jr_001_731d:
    call Call_001_735a
    call Call_001_7375
    call Call_000_1922
    ret


jr_001_7327:
    call Call_001_735a
    push hl
    call Call_001_7375
    call Call_000_1922
    pop hl
    call Call_001_7367
    ld a, [$d730]
    push af
    ld a, [$d730]
    set 6, a
    ld [$d730], a
    call Call_000_1955
    pop af
    ld [$d730], a
    call Call_000_2429
    ret


Call_001_734c:
    dec de

jr_001_734d:
    ld a, [hl+]
    cp $ff
    jr z, jr_001_7359

    cp c
    jr z, jr_001_7358

    add hl, de
    jr jr_001_734d

jr_001_7358:
    scf

jr_001_7359:
    ret


Call_001_735a:
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    sub e
    dec a
    ld c, a
    ld a, [hl+]
    sub d
    dec a
    ld b, a
    ret


Call_001_7367:
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push de
    ld a, [hl+]
    ld e, a
    ld a, [hl]
    ld d, a
    call Call_001_7375
    pop de
    ret


Call_001_7375:
    push bc
    ld hl, $c3a0
    ld bc, $0014

jr_001_737c:
    ld a, d
    and a
    jr z, jr_001_7384

    add hl, bc
    dec d
    jr jr_001_737c

jr_001_7384:
    pop bc
    add hl, de
    ret


    inc de
    cp d
    ld [hl], h
    dec d
    ld [$0474], a
    pop hl
    db $76
    rst $38
    ld bc, $0c00
    inc de
    ld de, $0003
    nop
    inc de
    ld c, $07
    nop
    nop
    dec bc
    ld b, $0d
    inc b
    ld [bc], a
    inc de
    inc c
    db $10
    rlca
    nop
    inc de
    ld de, $0611
    inc b
    ld c, $0d
    rst $38
    dec b
    nop
    nop
    ld c, $11
    ld b, e
    ld [hl], h
    inc bc
    nop
    ld b, $0d
    ld a, [bc]
    inc de
    ld c, $22
    ld [hl], h
    rrca
    dec bc
    ld [$0000], sp
    rlca
    dec b
    dec hl
    ld [hl], h
    ld [bc], a
    ld [bc], a
    add hl, bc
    nop
    ld b, $05
    ld a, [bc]
    dec [hl]
    ld [hl], h
    ld [bc], a
    rlca
    dec bc
    ld [$130c], sp
    ld de, $7455
    ld a, [bc]
    ld c, $1b
    nop
    inc c
    inc de
    ld de, $7468
    ld [bc], a
    ld c, $0c
    dec bc
    dec bc
    inc de
    ld de, $7489
    dec c
    inc c
    ld c, $00
    nop
    ld a, [bc]
    ld b, $13
    ld [hl], h
    ld [bc], a
    ld bc, $0b0f
    nop
    inc de
    ld [bc], a
    dec a
    ld [hl], h
    dec c
    nop
    ld [de], a
    rlca
    ld b, $0b
    ld a, [bc]
    sbc l
    ld [hl], h
    ld [$1a08], sp
    dec bc
    ld [$1113], sp
    and c
    ld [hl], h
    inc c
    ld a, [bc]
    add c
    sub h
    sbc b
    ld c, [hl]
    sub d
    add h
    adc e
    adc e
    ld c, [hl]
    sub b
    sub h
    adc b
    sub e
    ld d, b
    ld d, b
    sub h
    sub d
    add h
    ld c, [hl]
    sub e
    adc [hl]
    sub d
    sub d
    ld d, b
    or a
    db $db
    cp b
    ld c, [hl]
    and b
    xor h
    adc l
    db $e3
    dec bc
    ld d, b
    jp z, $b2d4

    ld c, [hl]
    or l
    cp a
    or d
    ld d, b
    adc h
    adc [hl]
    adc l
    add h
    sbc b
    ld d, b
    db $d3
    pop bc
    db $d3
    ret


    ld d, b
    jp nz, $b732

    or [hl]
    rst $10
    ld c, [hl]
    cp e
    or d
    cp h
    ld [c], a
    or [hl]
    rst $10
    ld d, b
    add l
    adc b
    add [hl]
    add a
    sub e
    ld a, a
    pop hl
    ld [c], a
    ld c, [hl]
    adc b
    sub e
    add h
    adc h
    ld a, a
    ld a, a
    sub c
    sub h
    adc l
    ld d, b
    add c
    add b
    adc e
    adc e
    pop af
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    add c
    add b
    adc b
    sub e
    ld c, [hl]
    sub e
    add a
    sub c
    adc [hl]
    sub [hl]
    ld a, a
    sub c
    adc [hl]
    add d
    adc d
    ld a, a
    ld a, a
    sub c
    sub h
    adc l
    ld d, b
    sub d
    sub [hl]
    adc b
    sub e
    add d
    add a
    ld c, [hl]
    sub d
    sub e
    add b
    sub e
    sub d
    ld c, [hl]
    add d
    add b
    adc l
    add d
    add h
    adc e
    ld d, b
    add b
    xor h
    rst $20
    ld d, b
    ld [de], a
    db $e3
    adc a
    db $dd
    ret nc

    reti


    ld c, [hl]
    push bc
    or a
    ld a, [hl+]
    or h
    ld c, [hl]
    inc a
    sbc $46
    db $dd
    ret nc

    reti


    ld c, [hl]
    add [hl]
    xor l
    xor e
    adc l
    and [hl]
    ld d, b
    ld hl, $d730
    set 6, [hl]
    ld a, $0f
    ld [$d125], a
    call Call_000_30e8
    ld hl, $c3c1
    ld b, $01
    ld c, $06
    call Call_000_18c4
    ld hl, $c3c0
    ld de, $d347
    ld c, $a3
    call Call_000_15cd
    ld hl, $d730
    res 6, [hl]
    ret


    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ldh a, [$50]
    ld a, [$d730]
    set 6, a
    ld [$d730], a
    xor a
    ld [$d12d], a
    ld a, $0e
    ld [$d125], a
    call Call_000_30e8
    ld a, $03
    ld [$cc29], a
    ld a, $02
    ld [$cc28], a
    ld a, $01
    ld [$cc24], a
    ld a, $01
    ld [$cc25], a
    xor a
    ld [$cc26], a
    ld [$cc2a], a
    ld [$cc37], a
    ld a, [$d730]
    res 6, a
    ld [$d730], a
    call Call_000_3abe
    call Call_000_3bec
    bit 0, a
    jr nz, jr_001_7539

    bit 1, a
    jr z, jr_001_7539

    ld a, $02
    ld [$d12e], a
    jr jr_001_754c

jr_001_7539:
    ld a, $01
    ld [$d12e], a
    ld a, [$cc26]
    ld [$d12d], a
    ld b, a
    ld a, [$cc28]
    cp b
    jr z, jr_001_754c

    ret


jr_001_754c:
    ld a, $02
    ld [$d12e], a
    ld a, [$cc26]
    ld [$d12d], a
    scf
    ret


Jump_001_7559:
    push hl
    ld a, [$d730]
    set 6, a
    ld [$d730], a
    xor a
    ld [$d12d], a
    ld [$d12e], a
    ld a, $03
    ld [$cc29], a
    ld a, $01
    ld [$cc28], a
    ld a, b
    ld [$cc24], a
    ld a, c
    ld [$cc25], a
    xor a
    ld [$cc2a], a
    ld [$cc37], a
    push hl
    ld hl, $d12c
    bit 7, [hl]
    res 7, [hl]
    jr z, jr_001_758d

    inc a

jr_001_758d:
    ld [$cc26], a
    pop hl
    push hl
    push hl
    call Call_001_763e
    ld a, [$d12c]
    ld hl, $7671
    ld e, a
    ld d, $00
    ld a, $05

jr_001_75a1:
    add hl, de
    dec a
    jr nz, jr_001_75a1

    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld e, l
    ld d, h
    pop hl
    push de
    ld a, [$d12c]
    cp $05
    jr nz, jr_001_75b9

    call Call_001_5ab3
    jr jr_001_75bc

jr_001_75b9:
    call Call_000_1922

jr_001_75bc:
    call Call_000_2429
    pop hl
    ld a, [hl+]
    and a
    ld bc, $0016
    jr z, jr_001_75ca

    ld bc, $002a

jr_001_75ca:
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    pop hl
    add hl, bc
    call Call_000_1955
    ld hl, $d730
    res 6, [hl]
    ld a, [$d12c]
    cp $07
    jr nz, jr_001_7603

    xor a
    ld [$d12c], a
    ld a, [$cd60]
    push af
    push hl
    ld hl, $cd60
    bit 5, [hl]
    set 5, [hl]
    pop hl

jr_001_75f0:
    call Call_000_3abe
    bit 1, a
    jr nz, jr_001_75f0

    pop af
    pop hl
    ld [$cd60], a
    ld a, $90
    call Call_000_23b1
    jr jr_001_760f

jr_001_7603:
    xor a
    ld [$d12c], a
    call Call_000_3abe
    pop hl
    bit 1, a
    jr nz, jr_001_7627

jr_001_760f:
    ld a, [$cc26]
    ld [$d12d], a
    and a
    jr nz, jr_001_7627

    ld a, $01
    ld [$d12e], a
    ld c, $0f
    call Call_000_3739
    call Call_001_7656
    and a
    ret


jr_001_7627:
    ld a, $01
    ld [$cc26], a
    ld [$d12d], a
    ld a, $02
    ld [$d12e], a
    ld c, $0f
    call Call_000_3739
    call Call_001_7656
    scf
    ret


Call_001_763e:
    ld de, $cee9
    ld bc, $0506

jr_001_7644:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_001_7644

    push bc
    ld bc, $000e
    add hl, bc
    pop bc
    ld c, $06
    dec b
    jr nz, jr_001_7644

    ret


Call_001_7656:
    ld de, $cee9
    ld bc, $0506

jr_001_765c:
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_001_765c

    push bc
    ld bc, $000e
    add hl, bc
    pop bc
    ld c, $06
    dec b
    jr nz, jr_001_765c

    call Call_000_2429
    ret


    inc b
    inc bc
    nop
    and b
    db $76
    ld b, $03
    nop
    and a
    db $76
    ld b, $03
    nop
    or d
    db $76
    ld b, $03
    nop
    and b
    db $76
    ld b, $03
    nop
    cp l
    db $76
    rlca
    inc bc
    nop
    ret z

    db $76
    rlca
    inc b
    ld bc, $76d5
    inc b
    inc bc
    nop
    sbc c
    db $76
    adc l
    adc [hl]
    ld c, [hl]
    sbc b
    add h
    sub d
    ld d, b
    sbc b
    add h
    sub d
    ld c, [hl]
    adc l
    adc [hl]
    ld d, b
    adc l
    adc [hl]
    sub c
    sub e
    add a
    ld c, [hl]
    sub [hl]
    add h
    sub d
    sub e
    ld d, b
    sub d
    adc [hl]
    sub h
    sub e
    add a
    ld c, [hl]
    add h
    add b
    sub d
    sub e
    ld d, b
    adc l
    adc [hl]
    sub c
    sub e
    add a
    ld c, [hl]
    add h
    add b
    sub d
    sub e
    ld d, b
    sub e
    sub c
    add b
    add e
    add h
    ld c, [hl]
    add d
    add b
    adc l
    add d
    add h
    adc e
    ld d, b
    add a
    add h
    add b
    adc e
    ld c, [hl]
    add d
    add b
    adc l
    add d
    add h
    adc e
    ld d, b
    xor a
    ld hl, $cd3d
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], $0c
    call Call_001_77d6
    ld a, [$cd41]
    and a
    jr nz, jr_001_770f

    ld hl, $c487
    ld b, $05
    ld c, $07
    call Call_000_1922
    call Call_000_2429
    ld a, $0c
    ldh [$f7], a
    ld hl, $c49d
    ld de, $77c2
    jp Jump_000_1955


jr_001_770f:
    push af
    ld hl, $c47c
    ld a, [$cd42]
    dec a
    ld e, a
    ld d, $00
    add hl, de
    ld b, $05
    ld a, $12
    sub e
    ld c, a
    pop af
    ld de, $ffd8

jr_001_7725:
    add hl, de
    inc b
    inc b
    dec a
    jr nz, jr_001_7725

    ld de, $ffec
    add hl, de
    inc b
    call Call_000_1922
    call Call_000_2429
    ld hl, $c490
    ld a, [$cd42]
    inc a
    ld e, a
    ld d, $00
    add hl, de
    ld de, $ffd8
    ld a, [$cd41]

jr_001_7747:
    add hl, de
    dec a
    jr nz, jr_001_7747

    xor a
    ld [$cd41], a
    ld de, $cd3d

jr_001_7752:
    push hl
    ld hl, $778d
    ld a, [de]
    and a
    jr z, jr_001_7776

    inc de
    ld b, a

jr_001_775c:
    dec b
    jr z, jr_001_7766

jr_001_775f:
    ld a, [hl+]
    cp $50
    jr nz, jr_001_775f

    jr jr_001_775c

jr_001_7766:
    ld b, h
    ld c, l
    pop hl
    push de
    ld d, b
    ld e, c
    call Call_000_1955
    ld bc, $0028
    add hl, bc
    pop de
    jr jr_001_7752

jr_001_7776:
    pop hl
    ld a, [$cd42]
    ldh [$f7], a
    ld hl, $c490
    ld a, [$cd42]
    inc a
    ld e, a
    ld d, $00
    add hl, de
    ld de, $77c2
    jp Jump_000_1955


    add d
    sub h
    sub e
    ld d, b
    add l
    adc e
    sbc b
    ld d, b
    ld d, b
    sub d
    sub h
    sub c
    add l
    ld d, b
    sub d
    sub e
    sub c
    add h
    adc l
    add [hl]
    sub e
    add a
    ld d, b
    add l
    adc e
    add b
    sub d
    add a
    ld d, b
    add e
    adc b
    add [hl]
    ld d, b
    sub e
    add h
    adc e
    add h
    adc a
    adc [hl]
    sub c
    sub e
    ld d, b
    sub d
    adc [hl]
    add l
    sub e
    add c
    adc [hl]
    adc b
    adc e
    add h
    add e
    ld d, b
    sub d
    sub e
    add b
    sub e
    sub d
    ld c, [hl]
    sub d
    sub [hl]
    adc b
    sub e
    add d
    add a
    ld c, [hl]
    add d
    add b
    adc l
    add d
    add h
    adc e
    ld d, b

Call_001_77d6:
    ld a, [$cf92]
    ld hl, $d173
    ld bc, $002c
    call Call_000_3a87
    ld d, h
    ld e, l
    ld c, $05
    ld hl, $cd3d

jr_001_77e9:
    push hl

jr_001_77ea:
    dec c
    jr z, jr_001_7821

    ld a, [de]
    and a
    jr z, jr_001_7821

    ld b, a
    inc de
    ld hl, $7823

jr_001_77f6:
    ld a, [hl+]
    cp $ff
    jr z, jr_001_77ea

    cp b
    jr z, jr_001_7802

    inc hl
    inc hl
    jr jr_001_77f6

jr_001_7802:
    ld a, b
    ld [$cd43], a
    ld a, [hl+]
    ld b, [hl]
    pop hl
    ld [hl+], a
    ld a, [$cd41]
    inc a
    ld [$cd41], a
    ld a, [$cd42]
    cp b
    jr c, jr_001_781b

    ld a, b
    ld [$cd42], a

jr_001_781b:
    ld a, [$cd43]
    ld b, a
    jr jr_001_77e9

jr_001_7821:
    pop hl
    ret


    rrca
    ld bc, $130c
    ld [bc], a
    inc c
    or h
    inc bc
    inc c
    add hl, sp
    inc b
    inc c
    ld b, [hl]
    dec b
    ld a, [bc]
    sub h
    ld b, $0c
    ld e, e
    rlca
    inc c
    ld h, h
    ld [$870a], sp
    add hl, bc
    ld [$21ff], sp
    rst $10
    ret nc

    ld a, [hl]
    srl a
    ld [hl+], a
    ld a, [hl]
    rr a
    ld [hl-], a
    or [hl]
    jr nz, jr_001_784f

    inc hl
    inc [hl]

jr_001_784f:
    ld hl, $d015
    ld de, $d023
    ldh a, [$f3]
    and a
    jp z, Jump_001_7861

    ld hl, $cfe6
    ld de, $cff4

Jump_001_7861:
    ld bc, $ceec
    ld a, [hl+]
    ld [bc], a
    ld a, [hl]
    dec bc
    ld [bc], a
    ld a, [de]
    dec bc
    ld [bc], a
    inc de
    ld a, [de]
    dec bc
    ld [bc], a
    ld a, [$d0d8]
    ld b, [hl]
    add b
    ld [hl-], a
    ld [$ceed], a
    ld a, [$d0d7]
    ld b, [hl]
    adc b
    ld [hl+], a
    ld [$ceee], a
    jr c, jr_001_7890

    ld a, [hl-]
    ld b, a
    ld a, [de]
    dec de
    sub b
    ld a, [hl+]
    ld b, a
    ld a, [de]
    inc de
    sbc b
    jr nc, jr_001_789c

jr_001_7890:
    ld a, [de]
    ld [hl-], a
    ld [$ceed], a
    dec de
    ld a, [de]
    ld [hl+], a
    ld [$ceee], a
    inc de

jr_001_789c:
    ldh a, [$f3]
    and a
    ld hl, $c45e
    ld a, $01
    jr z, jr_001_78aa

    ld hl, $c3ca
    xor a

jr_001_78aa:
    ld [$cf94], a
    ld a, $48
    call Call_000_3e6d
    ld a, $00
    call Call_000_3e6d
    ld a, $49
    call Call_000_3e6d
    ld hl, $4d43
    ld b, $0f
    call Call_000_35d6
    ld hl, $78dc
    ldh a, [$f3]
    and a
    ld a, [$cfd3]
    jr z, jr_001_78d2

    ld a, [$cfcd]

jr_001_78d2:
    cp $08
    jr nz, jr_001_78d9

    ld hl, $78e1

jr_001_78d9:
    jp Jump_000_3c49


    rla
    push de
    ld c, d
    dec h
    ld d, b
    rla
    db $ec
    ld c, d
    dec h
    ld d, b
    ld hl, $d730
    set 6, [hl]
    ld a, $04
    ld [$d0b6], a
    call Call_000_3719
    xor a
    ld [$cc2c], a
    ld [$ccd3], a
    ld a, [$cd60]
    bit 3, a
    jr nz, jr_001_790c

    ld a, $99
    call Call_000_23b1
    ld hl, $7b22
    call Call_000_3c49

Jump_001_790c:
jr_001_790c:
    ld a, [$ccd3]
    ld [$cc26], a
    ld hl, $cd60
    set 5, [hl]
    call Call_000_3701
    ld hl, $c3a0
    ld b, $08
    ld c, $0e
    call Call_000_1922
    call Call_000_2429
    ld hl, $c3ca
    ld de, $7af5
    call Call_000_1955
    ld hl, $cc24
    ld a, $02
    ld [hl+], a
    dec a
    ld [hl+], a
    inc hl
    inc hl
    ld a, $03
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    xor a
    ld [hl], a
    ld hl, $cc36
    ld [hl+], a
    ld [hl], a
    ld [$cc2f], a
    ld hl, $7b27
    call Call_000_3c49
    call Call_000_3abe
    bit 1, a
    jp nz, Jump_001_796d

    call Call_000_3bec
    ld a, [$cc26]
    ld [$ccd3], a
    and a
    jp z, Jump_001_7a12

    dec a
    jp z, Jump_001_7995

    dec a
    jp z, Jump_001_7a8f

Jump_001_796d:
    ld a, [$cd60]
    bit 3, a
    jr nz, jr_001_797c

    ld a, $9a
    call Call_000_23b1
    call Call_000_3748

jr_001_797c:
    ld hl, $cd60
    res 5, [hl]
    call Call_000_3701
    xor a
    ld [$cc36], a
    ld [$cc2c], a
    ld hl, $d730
    res 6, [hl]
    xor a
    ld [$cc3c], a
    ret


Jump_001_7995:
    xor a
    ld [$cc26], a
    ld [$cc36], a
    ld a, [$d31d]
    and a
    jr nz, jr_001_79ab

    ld hl, $7b3b
    call Call_000_3c49
    jp Jump_001_790c


Jump_001_79ab:
jr_001_79ab:
    ld hl, $7b2c
    call Call_000_3c49
    ld hl, $d31d
    ld a, l
    ld [$cf8b], a
    ld a, h
    ld [$cf8c], a
    xor a
    ld [$cf93], a
    ld a, $03
    ld [$cf94], a
    call Call_000_2be6
    jp c, Jump_001_790c

    call Call_000_30d9
    ld a, $01
    ld [$cf96], a
    ld a, [$d124]
    and a
    jr nz, jr_001_79e7

    ld hl, $7b31
    call Call_000_3c49
    call Call_000_2d57
    cp $ff
    jp z, Jump_001_79ab

jr_001_79e7:
    ld hl, $d53a
    call Call_000_2bcf
    jr c, jr_001_79f8

    ld hl, $7b40
    call Call_000_3c49
    jp Jump_001_79ab


jr_001_79f8:
    ld hl, $d31d
    call Call_000_2bbb
    call Call_000_3748
    ld a, $ab
    call Call_000_23b1
    call Call_000_3748
    ld hl, $7b36
    call Call_000_3c49
    jp Jump_001_79ab


Jump_001_7a12:
    xor a
    ld [$cc26], a
    ld [$cc36], a
    ld a, [$d53a]
    and a
    jr nz, jr_001_7a28

    ld hl, $7b54
    call Call_000_3c49
    jp Jump_001_790c


Jump_001_7a28:
jr_001_7a28:
    ld hl, $7b45
    call Call_000_3c49
    ld hl, $d53a
    ld a, l
    ld [$cf8b], a
    ld a, h
    ld [$cf8c], a
    xor a
    ld [$cf93], a
    ld a, $03
    ld [$cf94], a
    call Call_000_2be6
    jp c, Jump_001_790c

    call Call_000_30d9
    ld a, $01
    ld [$cf96], a
    ld a, [$d124]
    and a
    jr nz, jr_001_7a64

    ld hl, $7b4a
    call Call_000_3c49
    call Call_000_2d57
    cp $ff
    jp z, Jump_001_7a28

jr_001_7a64:
    ld hl, $d31d
    call Call_000_2bcf
    jr c, jr_001_7a75

    ld hl, $7b59
    call Call_000_3c49
    jp Jump_001_7a28


jr_001_7a75:
    ld hl, $d53a
    call Call_000_2bbb
    call Call_000_3748
    ld a, $ab
    call Call_000_23b1
    call Call_000_3748
    ld hl, $7b4f
    call Call_000_3c49
    jp Jump_001_7a28


Jump_001_7a8f:
    xor a
    ld [$cc26], a
    ld [$cc36], a
    ld a, [$d53a]
    and a
    jr nz, jr_001_7aa5

    ld hl, $7b54
    call Call_000_3c49
    jp Jump_001_790c


Jump_001_7aa5:
jr_001_7aa5:
    ld hl, $7b5e
    call Call_000_3c49
    ld hl, $d53a
    ld a, l
    ld [$cf8b], a
    ld a, h
    ld [$cf8c], a
    xor a
    ld [$cf93], a
    ld a, $03
    ld [$cf94], a
    push hl
    call Call_000_2be6
    pop hl
    jp c, Jump_001_790c

    push hl
    call Call_000_30d9
    pop hl
    ld a, $01
    ld [$cf96], a
    ld a, [$d124]
    and a
    jr nz, jr_001_7aef

    ld a, [$cf91]
    call Call_000_3040
    jr c, jr_001_7aef

    push hl
    ld hl, $7b63
    call Call_000_3c49
    call Call_000_2d57
    pop hl
    cp $ff
    jp z, Jump_001_7aa5

jr_001_7aef:
    call Call_000_30c4
    jp Jump_001_7aa5


    sub [hl]
    adc b
    sub e
    add a
    add e
    sub c
    add b
    sub [hl]
    ld a, a
    adc b
    sub e
    add h
    adc h
    ld c, [hl]
    add e
    add h
    adc a
    adc [hl]
    sub d
    adc b
    sub e
    ld a, a
    adc b
    sub e
    add h
    adc h
    ld c, [hl]
    sub e
    adc [hl]
    sub d
    sub d
    ld a, a
    adc b
    sub e
    add h
    adc h
    ld c, [hl]
    adc e
    adc [hl]
    add [hl]
    ld a, a
    adc [hl]
    add l
    add l
    ld d, b
    rla
    xor c
    ld e, a
    ld [hl+], a
    ld d, b
    rla
    cp [hl]
    ld e, a
    ld [hl+], a
    ld d, b
    rla
    rst $10
    ld e, a
    ld [hl+], a
    ld d, b
    rla
    push af
    ld e, a
    ld [hl+], a
    ld d, b
    rla
    nop
    ld h, b
    ld [hl+], a
    ld d, b
    rla
    jr @+$62

    ld [hl+], a
    ld d, b
    rla
    ld [hl], $60
    ld [hl+], a
    ld d, b
    rla
    ld d, h
    ld h, b
    ld [hl+], a
    ld d, b
    rla
    ld [hl], e
    ld h, b
    ld [hl+], a
    ld d, b
    rla
    ld a, [hl]
    ld h, b
    ld [hl+], a
    ld d, b
    rla
    adc a
    ld h, b
    ld [hl+], a
    ld d, b
    rla
    xor c
    ld h, b
    ld [hl+], a
    ld d, b
    rla
    ret


    ld h, b
    ld [hl+], a
    ld d, b
    rla
    jp hl


    ld h, b
    ld [hl+], a
    ld d, b
    ld hl, $d163
    ld a, [$cf95]
    and a
    jr z, jr_001_7b74

    ld hl, $da80

jr_001_7b74:
    ld a, [hl]
    dec a
    ld [hl+], a
    ld a, [$cf92]
    ld c, a
    ld b, $00
    add hl, bc
    ld e, l
    ld d, h
    inc de

jr_001_7b81:
    ld a, [de]
    inc de
    ld [hl+], a
    inc a
    jr nz, jr_001_7b81

    ld hl, $d273
    ld d, $05
    ld a, [$cf95]
    and a
    jr z, jr_001_7b97

    ld hl, $dd2a
    ld d, $13

jr_001_7b97:
    ld a, [$cf92]
    call Call_000_3a7d
    ld a, [$cf92]
    cp d
    jr nz, jr_001_7ba6

    ld [hl], $ff
    ret


jr_001_7ba6:
    ld d, h
    ld e, l
    ld bc, $000b
    add hl, bc
    ld bc, $d2b5
    ld a, [$cf95]
    and a
    jr z, jr_001_7bb8

    ld bc, $de06

jr_001_7bb8:
    call Call_000_3913
    ld hl, $d16b
    ld bc, $002c
    ld a, [$cf95]
    and a
    jr z, jr_001_7bcd

    ld hl, $da96
    ld bc, $0021

jr_001_7bcd:
    ld a, [$cf92]
    call Call_000_3a87
    ld d, h
    ld e, l
    ld a, [$cf95]
    and a
    jr z, jr_001_7be4

    ld bc, $0021
    add hl, bc
    ld bc, $dd2a
    jr jr_001_7beb

jr_001_7be4:
    ld bc, $002c
    add hl, bc
    ld bc, $d273

jr_001_7beb:
    call Call_000_3913
    ld hl, $d2b5
    ld a, [$cf95]
    and a
    jr z, jr_001_7bfa

    ld hl, $de06

jr_001_7bfa:
    ld bc, $000b
    ld a, [$cf92]
    call Call_000_3a87
    ld d, h
    ld e, l
    ld bc, $000b
    add hl, bc
    ld bc, $d2f7
    ld a, [$cf95]
    and a
    jr z, jr_001_7c15

    ld bc, $dee2

jr_001_7c15:
    jp Jump_000_3913


    ld hl, $d730
    set 6, [hl]
    ld a, $3d
    call Call_000_3e6d
    ld hl, $d730
    res 6, [hl]
    call Call_000_3071
    ld c, $0a
    call Call_000_3739
    ld a, $3a
    call Call_000_3e6d
    ld a, [$d11e]
    dec a
    ld c, a
    ld b, $01
    ld hl, $d30a
    ld a, $10
    call Call_000_3e6d
    ld a, $01
    ld [$cc3c], a
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
