; Disassembly of "Pokemon Red (UE) [S][!].gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01e", ROMX[$4000], BANK[$1e]

Call_01e_4000:
    ld l, c
    ld h, b
    ld a, [hl+]
    ld [$d089], a
    ld a, [$d09d]
    ld e, a
    ld a, [$d09c]
    ld d, a
    xor a
    ld [$d084], a

Jump_01e_4012:
    ld a, [$d084]
    inc a
    ld [$d084], a
    ld a, [$d08b]
    dec a
    jr z, jr_01e_4053

    dec a
    jp z, Jump_01e_4088

    dec a
    jr z, jr_01e_4032

    ld a, [$d082]
    add [hl]
    ld [de], a
    inc hl
    inc de
    ld a, [$d081]
    jr jr_01e_4044

jr_01e_4032:
    ld a, [$d082]
    ld b, a
    ld a, $88
    sub b
    add [hl]
    ld [de], a
    inc hl
    inc de
    ld a, [$d081]
    ld b, a
    ld a, $a8
    sub b

jr_01e_4044:
    add [hl]
    ld [de], a
    inc hl
    inc de
    ld a, [hl+]
    add $31
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    jp Jump_01e_40ae


jr_01e_4053:
    ld a, [$d082]
    add [hl]
    ld b, a
    ld a, $88
    sub b
    ld [de], a
    inc hl
    inc de
    ld a, [$d081]
    add [hl]
    ld b, a
    ld a, $a8
    sub b
    ld [de], a
    inc hl
    inc de
    ld a, [hl+]
    add $31
    ld [de], a
    inc de
    ld a, [hl+]
    and a
    ld b, $60
    jr z, jr_01e_4082

    cp $20
    ld b, $40
    jr z, jr_01e_4082

    cp $40
    ld b, $20
    jr z, jr_01e_4082

    ld b, $00

jr_01e_4082:
    ld a, b
    ld [de], a
    inc de
    jp Jump_01e_40ae


Jump_01e_4088:
    ld a, [$d082]
    add [hl]
    add $28
    ld [de], a
    inc hl
    inc de
    ld a, [$d081]
    add [hl]
    ld b, a
    ld a, $a8
    sub b
    ld [de], a
    inc hl
    inc de
    ld a, [hl+]
    add $31
    ld [de], a
    inc de
    ld a, [hl+]
    bit 5, a
    jr nz, jr_01e_40aa

    set 5, a
    jr jr_01e_40ac

jr_01e_40aa:
    res 5, a

jr_01e_40ac:
    ld [de], a
    inc de

Jump_01e_40ae:
    ld a, [$d084]
    ld c, a
    ld a, [$d089]
    cp c
    jp nz, Jump_01e_4012

    ld a, [$d09e]
    cp $02
    jr z, jr_01e_40e8

    ld a, [$d086]
    ld c, a
    call Call_000_3739
    ld a, [$d09e]
    cp $03
    jr z, jr_01e_40e8

    cp $04
    jr z, jr_01e_40f0

    ld a, [$d07c]
    cp $2d
    jr z, jr_01e_40dc

    call Call_01e_4ec8

jr_01e_40dc:
    ld hl, $c300
    ld a, l
    ld [$d09d], a
    ld a, h
    ld [$d09c], a
    ret


jr_01e_40e8:
    ld a, e
    ld [$d09d], a
    ld a, d
    ld [$d09c], a

jr_01e_40f0:
    ret


Call_01e_40f1:
Jump_01e_40f1:
    xor a
    ldh [$8b], a
    ld [$d08b], a
    ld a, [$d07c]
    dec a
    ld l, a
    ld h, $00
    add hl, hl
    ld de, $607d
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_01e_4106:
    ld a, [hl+]
    cp $ff
    jr z, jr_01e_417b

    cp $c0
    jr c, jr_01e_413a

    ld c, a
    ld de, $50da

jr_01e_4113:
    ld a, [de]
    cp c
    jr z, jr_01e_411c

    inc de
    inc de
    inc de
    jr jr_01e_4113

jr_01e_411c:
    ld a, [hl+]
    cp $ff
    jr z, jr_01e_412e

    ld [$cf07], a
    push hl
    push de
    call Call_01e_586f
    call Call_000_23b1
    pop de
    pop hl

jr_01e_412e:
    push hl
    inc de
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    ld de, $4178
    push de
    jp hl


jr_01e_413a:
    ld c, a
    and $3f
    ld [$d086], a
    xor a
    sla c
    rla
    sla c
    rla
    ld [$d09f], a
    ld a, [hl+]
    ld [$cf07], a
    ld a, [hl+]
    ld c, l
    ld b, h
    ld l, a
    ld h, $00
    add hl, hl
    ld de, $676d
    add hl, de
    ld a, l
    ld [$d094], a
    ld a, h
    ld [$d095], a
    ld l, c
    ld h, b
    push hl
    ldh a, [rOBP0]
    push af
    ld a, [$cc79]
    ldh [rOBP0], a
    call Call_01e_41d2
    call Call_01e_417c
    call Call_01e_4e53
    pop af
    ldh [rOBP0], a
    pop hl
    jr jr_01e_4106

jr_01e_417b:
    ret


Call_01e_417c:
    ld a, [$d095]
    ld h, a
    ld a, [$d094]
    ld l, a
    ld a, [hl+]
    ld e, a
    ld a, [hl]
    ld d, a
    ld a, [de]
    ld b, a
    and $1f
    ld [$d087], a
    ld a, b
    and $e0
    cp $a0
    jr nz, jr_01e_419b

    call Call_01e_41ca
    jr jr_01e_419e

jr_01e_419b:
    call Call_01e_41c2

jr_01e_419e:
    srl a
    swap a
    ld [$d08b], a
    cp $04
    ld hl, $0000
    jr nz, jr_01e_41b7

    ld a, [$d087]
    dec a
    ld bc, $0003

jr_01e_41b3:
    add hl, bc
    dec a
    jr nz, jr_01e_41b3

jr_01e_41b7:
    inc de
    add hl, de
    ld a, l
    ld [$d096], a
    ld a, h
    ld [$d097], a
    ret


Call_01e_41c2:
    ld b, a
    ldh a, [$f3]
    and a
    ld a, b
    ret nz

    xor a
    ret


Call_01e_41ca:
    ldh a, [$f3]
    and a
    ld a, $40
    ret z

    xor a
    ret


Call_01e_41d2:
    ld a, [$d09f]
    add a
    add a
    ld hl, $41f2
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl+]
    ld [$d07d], a
    ld a, [hl+]
    ld e, a
    ld a, [hl]
    ld d, a
    ld hl, $8310
    ld b, $1e
    ld a, [$d07d]
    ld c, a
    jp Jump_000_1848


    ld c, a
    cp $41
    rst $38
    ld c, a
    xor $46
    rst $38
    ld b, b
    cp $41
    rst $38
    rrca
    rrca
    rra
    db $10
    ccf
    jr nz, jr_01e_4284

    ld l, b
    cp a
    add sp, $7f
    ld h, b
    ccf
    ld hl, $417f
    add b
    add b
    ret nz

    ld b, b
    ldh [rNR41], a
    ld hl, sp+$38
    db $fc
    ld h, h
    db $fc
    add h
    cp $06
    rst $38
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc c
    rrca
    ld de, $111e
    ld e, $18
    jr jr_01e_4265

    inc h
    ld h, d
    ld b, d
    pop de
    add c
    and c
    add c
    pop de
    add c
    xor e
    add c
    push de
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_01e_4247

jr_01e_4247:
    nop
    nop
    adc [hl]
    nop
    ccf
    jr nz, @+$61

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $0e
    ld sp, $601f
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01e_4265:
    nop
    rlca
    rlca
    jr jr_01e_4289

    inc hl
    inc a
    inc hl
    inc a
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
    ld h, b
    ldh [rNR10], a
    ldh a, [rNR10]
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop

jr_01e_4284:
    nop
    inc e
    nop
    ld a, $00

jr_01e_4289:
    ld h, a
    nop
    ld l, a
    nop
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_01e_4297

jr_01e_4297:
    ld a, h
    nop
    cp $00
    cp $00
    cp $03
    inc bc
    ld b, $05
    dec c
    ld a, [bc]
    ld a, [hl-]
    dec [hl]
    ld d, l
    ld l, d
    ld l, d
    ld d, l
    push de
    xor d
    ld [$00d5], a
    nop
    ldh [$e0], a
    ld d, b
    or b
    or b
    ld d, b
    ld e, b
    xor b
    xor h
    ld d, h
    ld d, [hl]
    xor d
    ld c, $f6
    nop
    nop
    nop
    nop
    ld bc, $0803
    add hl, de
    inc b
    dec c
    inc h
    ld l, h
    ld [de], a
    ld [hl], $12
    ld [hl], $10
    db $10
    ld c, b
    ld e, b
    inc h
    ld l, h
    sub d
    or [hl]
    sub d
    or [hl]
    ld c, c
    db $db
    ld c, c
    db $db
    ld c, c
    db $db
    rlca
    rlca
    rra
    rra
    ccf
    ccf
    ld [hl], e
    ld [hl], e
    ld h, c
    ld h, c
    ld [hl], e
    ld [hl], e
    ld a, a
    ld a, a
    dec a
    dec a
    rlca
    rlca
    ld h, l
    ld h, l
    ld a, b
    ld a, b
    ld c, $0e
    inc bc
    inc bc
    ld c, $0e
    ld a, b
    ld a, b
    ld h, b
    ld h, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ccf
    jr nz, jr_01e_4344

    jr nz, @+$21

    jr jr_01e_4310

    rlca
    nop
    nop
    nop
    nop
    rst $38
    add hl, bc

jr_01e_4310:
    cp $f2
    db $fc
    inc b
    ld hl, sp+$08
    ldh a, [$30]
    ret c

    ret c

    jr nc, jr_01e_434c

    ld h, b
    ld h, b
    jr nz, jr_01e_435f

    jr nz, jr_01e_4361

    jr c, @+$29

    ccf
    jr nz, jr_01e_4346

    db $10
    rra
    db $10
    rrca
    inc c
    inc bc
    inc bc
    db $eb
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    add c
    pop af
    ld b, d
    ld [hl], d
    inc h
    inc [hl]
    jr @+$1a

    dec sp
    ld b, h
    ld c, $f1
    ld b, b
    cp a

jr_01e_4344:
    ld h, [hl]
    sbc c

jr_01e_4346:
    ld a, a
    add b
    dec sp
    call nz, $7f00

jr_01e_434c:
    nop
    inc sp
    inc b
    ld a, e
    ld [hl], c
    adc [hl]
    ccf
    ret nz

    add hl, de
    and $00
    rst $38
    ld b, h
    cp e
    inc sp
    ld c, h
    nop
    inc sp
    ld b, b

jr_01e_435f:
    ld a, a
    ld b, b

jr_01e_4361:
    ld a, a
    ld b, b
    ld a, a
    ld b, c
    ld a, [hl]
    ccf
    jr nz, jr_01e_43a8

    jr nz, jr_01e_438a

    jr jr_01e_4374

    rlca
    ld [$18f8], sp
    add sp, $38
    ret z

jr_01e_4374:
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh [$60], a
    add b
    add b
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    rra
    nop
    rrca
    nop
    rlca

jr_01e_438a:
    nop
    inc bc
    nop
    ld bc, $fe00
    nop
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    add b
    or h
    db $eb
    sbc [hl]
    rst $38
    sub l
    rst $38
    xor d
    rst $38
    ld d, l
    ld a, a

jr_01e_43a8:
    ld a, [hl+]
    ccf
    dec e
    rra
    rlca
    rlca
    rrca
    ld sp, hl
    rra
    pop af
    rst $38
    pop hl
    cp [hl]
    ld a, [c]
    ld e, [hl]
    ld a, [$fcac]
    ld [hl], b
    ldh a, [$c0]
    ret nz

    nop
    nop
    ld [$2a00], sp
    nop
    inc e
    nop
    ld a, a
    nop
    inc e
    nop
    ld a, [hl+]
    nop
    ld [$0300], sp
    nop
    inc c
    nop
    jr nc, jr_01e_43d4

jr_01e_43d4:
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
    cp a
    cp a

jr_01e_43e0:
    ld c, $31
    ld b, a
    ld a, b
    adc a
    ldh a, [rSC]
    db $fd
    ld b, a
    ld a, c
    add [hl]
    cp $38

jr_01e_43ed:
    jr c, jr_01e_43ed

    cp $e1
    ld de, $8e76
    ld a, b
    sbc b
    ldh [$60], a
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    ld bc, $0302
    inc e
    dec e
    ld [hl+], a
    rra
    jr nz, jr_01e_444b

    ld b, c
    nop
    nop
    nop
    ldh a, [$f0]
    ld [$07f8], sp
    db $fd
    ld [bc], a
    ldh a, [rIF]
    ldh [rNR34], a
    ld b, b
    cp h
    jr nz, jr_01e_43e0

    ld b, b
    add b
    add b
    nop
    nop
    nop
    ld a, b
    nop
    rst $00
    jr c, jr_01e_4463

    rst $38
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
    nop
    nop
    nop
    ld b, $06
    add hl, sp
    ccf
    ld b, b
    nop
    nop
    nop
    ld bc, $0601
    rlca
    ld [$110e], sp
    ld e, $21
    inc e

jr_01e_444b:
    ld [hl+], a
    jr nc, jr_01e_449a

    nop
    ld [hl], b
    ld [hl], b
    adc h
    ldh a, [$0e]
    add b
    ld a, h
    nop
    ret nz

    nop
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

jr_01e_4463:
    nop
    nop
    ld bc, $0600
    nop
    ld [$3000], sp
    nop
    ret nz

    nop
    inc bc
    nop
    inc b
    nop
    ld [$b000], sp
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $181a
    dec h
    nop
    ld bc, $0201
    ld bc, $0002
    ld bc, $6000
    ld h, b
    sub b

jr_01e_449a:
    ld h, b
    sub b
    nop
    ld h, b
    rrca
    rrca
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, h
    ld a, h
    ld a, b
    ld a, b
    jr nc, jr_01e_44da

    nop
    nop
    ld bc, $f001
    ldh a, [$fc]
    db $fc
    cp $fe
    ccf
    ccf
    rra
    rra
    rra
    rra
    ld a, $3e
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_01e_44cf

    ld d, $06
    add hl, bc
    rlca
    ld [$0403], sp
    nop

jr_01e_44cf:
    jr jr_01e_44e9

    inc h
    jr @+$26

    inc a
    ld b, d
    inc a
    ld b, d
    ld a, [hl]

jr_01e_44d9:
    add c

jr_01e_44da:
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    ld bc, $0700
    inc bc
    inc c
    ld b, $19
    inc c

jr_01e_44e9:
    ld [hl-], a
    jr jr_01e_4510

    db $10
    ld l, b
    nop
    inc a
    jr jr_01e_44d9

    rst $38
    nop
    jp Jump_000_003c


    jp RST_00


    nop
    nop
    nop
    nop
    ld a, $41
    inc e
    ld h, e
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    rra
    nop
    inc e
    nop
    db $fc

jr_01e_4510:
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    ld bc, $0102
    ld [bc], a
    inc bc
    inc b
    inc bc
    inc b
    ld bc, $7f02
    add b
    cp $01
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [$0e]
    ret nz

    ld a, $c0
    inc a
    add b
    ld [hl], b
    jr nc, @+$4e

    ld h, b
    sbc b
    ld h, b
    sbc b
    ld h, b
    sub b
    nop
    ld [hl], b
    nop
    ld h, b
    nop
    jr nz, jr_01e_454d

jr_01e_454d:
    nop
    ld b, b
    ld b, b
    call nz, $fcc4
    db $fc
    inc a
    inc a
    rlca
    rlca
    ld b, $06
    inc c
    inc c
    jr c, jr_01e_4596

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
    inc bc
    inc b
    rlca
    ld [$0806], sp
    nop
    ld [$1408], sp
    ld [$1c14], sp
    ld [hl+], a
    ld a, $41
    ld [hl], $41
    inc e
    ld [hl+], a
    nop
    inc e
    jr @+$26

    nop
    jr jr_01e_4583

jr_01e_4583:
    rlca
    rlca
    jr jr_01e_45a6

    jr nz, jr_01e_45a8

    jr nz, jr_01e_4592

    jr jr_01e_458d

jr_01e_458d:
    rlca
    nop
    nop
    nop
    nop

jr_01e_4592:
    nop
    nop
    nop
    rlca

jr_01e_4596:
    rlca
    jr c, jr_01e_45d1

    ld b, b
    rlca
    jr c, jr_01e_459d

jr_01e_459d:
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    nop

jr_01e_45a6:
    inc bc
    inc bc

jr_01e_45a8:
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    ldh a, [$f0]
    ret nz

    ret nz

    add b
    add b

jr_01e_45b4:
    nop
    nop
    ret nz

    ret nz

    ldh [$e0], a

jr_01e_45ba:
    ldh [$e0], a
    ret nz

    ret nz

    inc bc
    inc b
    rlca
    jr jr_01e_45e2

    ld h, b
    ld a, a
    add b
    ld a, a
    add b
    rra
    ld h, b
    daa
    jr c, jr_01e_45d0

    inc b
    rst $38
    nop

jr_01e_45d0:
    rst $38

jr_01e_45d1:
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
    jr nc, jr_01e_4628

    jr nc, jr_01e_462a

jr_01e_45e2:
    jr nz, jr_01e_45b4

    ld h, b
    sub b
    ld h, b
    sub b
    jr nz, jr_01e_45ba

    jr nc, @+$4a

    jr nc, jr_01e_4636

    ld [hl], b
    ld [hl], b
    rrca
    rrca
    inc bc
    inc bc
    inc e
    inc e
    jr c, jr_01e_4630

    ret nz

    ret nz

    ldh a, [$f0]
    inc e
    inc e
    nop
    nop
    ld b, b
    ld b, b
    ld [c], a
    and d
    ld b, [hl]
    ld b, [hl]
    ld c, $0a
    ld e, $12
    ld e, $12
    inc c
    inc c
    nop
    rst $38
    ld e, d
    and l
    ld a, [hl]
    add c
    inc h
    db $db
    nop
    rst $38
    ld e, d
    and l
    ld a, [hl]
    add c
    inc h
    db $db
    ld a, [hl]
    add c
    inc h
    db $db
    nop
    rst $38
    ld e, d
    and l
    ld a, [hl]
    add c

jr_01e_4628:
    inc h
    db $db

jr_01e_462a:
    nop
    rst $38
    ld e, d
    and l
    rlca
    rlca

jr_01e_4630:
    jr jr_01e_4651

    daa
    jr c, @+$5a

    ld h, b

jr_01e_4636:
    ld d, b
    ld h, b
    and b
    ret nz

    and b
    ret nz

    and b
    ret nz

    nop
    ld bc, $4100
    ld bc, $1332
    inc l
    rrca
    db $10
    rrca
    db $10
    rra
    jr nz, jr_01e_468c

    ret nz

    inc a
    ret nz

    di

jr_01e_4651:
    nop
    rst $08
    nop
    inc a
    inc bc
    di
    rrca
    call z, Call_000_303c
    ldh a, [$c0]
    ret nz

    di
    rrca
    call z, Call_000_303c
    ldh a, [$c0]
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc b
    rlca
    ld [$110e], sp
    inc e
    ld [hl+], a
    jr c, jr_01e_46bc

    ld [hl], b
    adc b
    ldh [rNR10], a
    ret nz

    jr nz, jr_01e_467f

jr_01e_467f:
    nop
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    ld [$100f], sp
    rra
    db $10
    rra

jr_01e_468c:
    jr nz, @+$41

    inc a
    inc a
    ld c, [hl]
    ld b, d
    add l
    add e
    add l
    add e
    call $f983
    add a
    ld b, d
    ld a, [hl]
    inc a
    inc a

jr_01e_469e:
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $1e
    ld hl, $203f
    ccf
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $1e
    daa
    add hl, sp
    inc h
    dec sp
    ld c, l
    ld [hl], d

jr_01e_46bc:
    ld c, c
    halt
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ldh [$60], a
    or b
    ld d, b
    jr nc, jr_01e_469e

    inc a
    inc a
    ld b, d
    ld a, [hl]
    pop bc
    rst $38
    db $e3
    cp a
    push af
    sbc a
    ld a, e
    ld c, l
    ld a, [hl]
    ld c, d
    inc a
    inc a
    jr c, jr_01e_4718

    rra
    rla
    ld l, a
    ld [hl], c
    ld a, [c]
    ld e, $ff
    add c
    ld a, a
    ld b, c
    ld a, a
    ld h, e
    inc a
    inc a
    ret nz

    ret nz

    ldh [$a0], a
    ldh [$a0], a
    ldh a, [$90]
    ld hl, sp-$78
    cp h
    add h
    ld e, [hl]
    ld b, d
    ld c, a
    ld b, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_01e_4724

    inc [hl]
    inc l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc

jr_01e_4718:
    inc c
    rrca
    db $10
    rra
    db $10
    rra
    ld bc, $0301
    ld [bc], a
    inc bc
    ld [bc], a

jr_01e_4724:
    rlca
    inc b
    rst $38
    db $fc
    rst $38
    add b
    ld a, a
    ld b, b
    ccf
    jr nz, jr_01e_472f

jr_01e_472f:
    ld [$1d00], sp
    nop
    ld e, a
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    ld [bc], a
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
    ld bc, $0300
    nop
    nop
    inc a
    inc a
    ld a, [hl]
    ld b, d
    rst $00
    cp c
    ei
    add l
    ld a, h
    ld b, e
    ccf
    ld sp, $0f0f
    nop
    add c
    add c
    ld b, d
    add c
    ld b, d
    jp Jump_01e_6624


    sbc c
    inc h
    db $db
    inc a
    jp Jump_01e_6618


    nop
    nop
    nop
    nop
    inc de
    inc de
    ccf
    ccf
    rra
    rra
    jr jr_01e_4792

    rrca
    rrca
    ld [$0008], sp
    nop
    jr c, jr_01e_47ba

    ld hl, sp-$08
    add sp, -$18
    adc b
    adc b
    ld a, b
    ld a, b
    add h
    add h
    inc b
    inc b
    inc bc
    inc bc
    rrca
    inc c

jr_01e_4792:
    ccf
    jr nc, jr_01e_4814

    ld d, c
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    ld a, a
    ld b, b
    add b
    add b
    ldh [$60], a
    ldh a, [$f0]
    ld hl, sp+$08
    db $fc
    inc b
    cp $02
    cp $02
    cp $02
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0302
    inc b

jr_01e_47ba:
    ld b, $19
    inc e
    ld [hl+], a
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ccf
    ld a, $41
    ld b, c
    cp [hl]
    ld [$04f5], sp
    dec bc
    nop
    rlca
    rlca
    ld [$0000], sp
    nop
    nop
    nop
    add b
    nop
    ret nz

    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    nop
    add b
    daa
    jr nz, jr_01e_4804

    db $10
    inc c
    inc c
    inc bc
    inc bc
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    and h
    cp h
    add sp, $78
    add sp, $38

jr_01e_4804:
    ret c

    ld a, b
    sub $fe
    ld sp, $a9ff
    ld l, a
    add $c6
    jr nz, jr_01e_484f

    jr nz, jr_01e_4851

    jr nc, jr_01e_4853

jr_01e_4814:
    jr nc, jr_01e_4855

    inc e
    rra
    rra
    rra
    rrca
    rrca
    inc bc
    inc bc
    rra
    db $10
    rra
    db $10
    ccf
    jr nz, jr_01e_4864

    jr nz, jr_01e_48a6

    ld b, c
    ld a, [hl]
    ld b, [hl]
    ld hl, sp-$68
    ldh [$e0], a
    inc bc
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld a, b
    rlca
    ld a, b
    rlca
    jr c, jr_01e_483e

    inc a
    inc bc
    inc e

jr_01e_483e:
    nop
    rlca
    nop
    rlca
    nop
    rra
    ld bc, $033e
    inc a
    inc bc
    inc e

jr_01e_484a:
    inc bc
    inc e
    ld bc, $020e

jr_01e_484f:
    inc bc
    ld [bc], a

jr_01e_4851:
    inc bc
    dec b

jr_01e_4853:
    rlca
    dec b

jr_01e_4855:
    rlca
    ld [$080f], sp
    rrca
    inc b
    rlca
    inc bc
    inc bc
    ld b, b
    ret nz

    add b
    add b
    nop
    nop

jr_01e_4864:
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_01e_484a

    db $10
    ldh a, [$f0]
    ldh a, [$0c]
    inc c
    inc b
    inc b
    ld [$3808], sp
    jr c, jr_01e_48ef

    ld a, b
    ld a, b
    ld a, b
    jr nc, @+$32

    nop
    nop
    ld [$0808], sp
    ld [$1c1c], sp
    inc a
    inc a
    inc a
    inc a
    jr jr_01e_48a2

    nop
    nop
    nop
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    cp a
    ret nz

    ld c, [hl]
    ld [hl], c
    ld b, b
    ld a, a
    jr nc, jr_01e_48db

    rrca
    rrca
    db $fc
    inc b
    cp $02

jr_01e_48a2:
    ld a, [$a246]
    ld a, [hl]

jr_01e_48a6:
    inc h
    db $fc
    ld e, b
    ld hl, sp-$20
    ldh [rP1], a
    nop
    jr nc, jr_01e_48ff

    ccf
    ld b, b
    ld bc, $013e
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    nop
    add b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    inc b
    dec bc
    inc b
    ld a, [bc]
    inc b
    ld a, [bc]
    inc b
    ld a, [bc]
    ld [bc], a
    dec b
    ld bc, $0002

jr_01e_48db:
    ld bc, $0000
    add b
    ld b, b
    ld b, b
    or b
    jr nc, jr_01e_492c

    ld a, b
    add h
    sbc h
    ld h, d
    ld c, $91
    ld b, $89
    nop
    ld b, $00

jr_01e_48ef:
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_01e_48ff

    ld d, $06
    add hl, bc
    rlca
    ld [$0403], sp
    nop

jr_01e_48ff:
    ld bc, $0100
    ld bc, $0102
    ld [bc], a
    inc bc
    inc b
    rlca
    adc b
    adc a
    ld [hl], b
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rra
    rra
    rrca
    rrca
    ccf
    ccf
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

jr_01e_492c:
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    rlca
    rrca
    rrca
    ld e, $1f
    rlca
    rlca
    ccf
    ccf
    ld a, a
    ld a, a
    db $fc
    rst $38
    ldh [rIE], a
    jp Jump_000_0ffc


    ldh a, [$3e]
    ret nz

    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rra
    jr jr_01e_498f

    daa
    ld h, b
    ld e, b
    ret nz

    and a
    add a
    ret c

    nop
    nop
    ld [hl], b
    ld [hl], b
    cp $06
    ld [bc], a
    db $fc
    ld bc, $0103
    db $fd
    ld a, [hl]
    add d
    sbc h
    ld a, b
    nop
    ld b, c
    ld b, $37
    ld [$100e], sp
    add hl, de
    db $10
    ld d, $0c
    dec c
    inc bc
    ld [$0607], sp
    call nz, Call_000_02fc
    adc [hl]
    ld [bc], a
    ld [hl], d
    db $f4
    inc c

jr_01e_4986:
    ld a, [de]
    ld a, [de]
    ld a, d
    ld [c], a
    db $f4
    inc c
    jr jr_01e_4986

    nop

jr_01e_498f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    nop
    nop
    ld bc, $1c01
    inc e
    ccf
    ccf
    ld a, h
    ld a, h
    ld hl, sp-$08
    ldh [$e0], a

jr_01e_49a8:
    ld hl, sp-$08

jr_01e_49aa:
    db $fc
    db $fc

jr_01e_49ac:
    ldh [$e0], a

jr_01e_49ae:
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01e_49b5:
    nop
    nop
    ld [de], a
    ld [de], a
    dec l
    dec d
    ld a, [hl+]
    dec sp
    call nz, $b040
    ldh a, [$08]
    xor b
    ld d, h
    ld d, h
    xor d
    ld hl, sp+$04
    db $f4
    ld a, [bc]
    ld hl, sp+$04
    ldh [rNR23], a
    nop
    rst $38
    nop
    rst $38
    ccf
    ret nz

    jr nz, jr_01e_49b5

    jr nz, jr_01e_49a8

    jr nz, jr_01e_49aa

    jr nz, jr_01e_49ac

    jr nz, jr_01e_49ae

    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
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
    inc bc
    inc b
    ld bc, $0102
    ld [bc], a
    ld bc, $0302
    inc b
    rlca
    ld [$300f], sp
    ccf
    ret nz

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
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rlca
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc a
    ccf
    inc a
    ccf
    ld a, c
    ld a, [hl]
    ld [hl], c
    ld a, [hl]
    ld [hl], e
    ld a, h
    di
    db $fc
    rst $20
    ld hl, sp-$1a
    ld hl, sp+$78
    add b
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld h, c
    rst $28
    sbc [hl]
    adc [hl]
    sub b
    ld b, b
    ld h, c
    dec l
    ld e, $42
    ld c, h
    jr nz, jr_01e_4a8d

    ld b, $0f
    ld a, [c]
    ld [$6684], a
    jr jr_01e_4a7e

    call c, $f0e4
    ld a, [bc]
    db $10
    ld de, $e1c0
    jr c, jr_01e_4aa6

    add hl, bc
    add hl, bc
    dec bc
    ld [$050e], sp

jr_01e_4a74:
    inc de
    rra
    nop
    add hl, bc
    ld de, $0e16
    add hl, bc
    inc bc
    inc bc

jr_01e_4a7e:
    db $e4
    db $e4
    add sp, $08
    jr nc, jr_01e_4a74

    ret z

    ldh a, [$08]
    ret z

    ret z

    jr nc, jr_01e_4abb

    ldh a, [$c0]

jr_01e_4a8d:
    ret nz

    inc bc
    inc bc
    ld c, $0e
    jr c, jr_01e_4acc

    ld a, a
    ld a, a
    rra
    rra
    inc c
    inc c
    jr nc, jr_01e_4acc

    ld b, b
    ld b, b
    rrca
    rrca

jr_01e_4aa0:
    ccf
    ccf

jr_01e_4aa2:
    rst $38
    rst $38

jr_01e_4aa4:
    rst $00
    rst $38

jr_01e_4aa6:
    add e
    rst $00

jr_01e_4aa8:
    add e
    rst $00

jr_01e_4aaa:
    add e
    rst $00

jr_01e_4aac:
    rst $00
    rst $38

jr_01e_4aae:
    nop
    ld hl, $5720
    ld [hl+], a
    ld e, l
    dec [hl]
    jp z, $d42b

    rst $10
    jr z, @+$01

jr_01e_4abb:
    nop
    rst $38
    nop
    nop
    nop
    ld e, $1e
    ld a, $22
    ld a, d
    ld b, [hl]
    ld [hl], d
    ld c, [hl]
    ld h, h
    ld e, h
    ld a, b
    ld a, b

jr_01e_4acc:
    nop
    nop
    jr nz, jr_01e_4aa0

    jr nz, jr_01e_4aa2

    jr nz, jr_01e_4aa4

    jr nz, jr_01e_4aa6

    jr nz, jr_01e_4aa8

    jr nz, jr_01e_4aaa

    jr nz, jr_01e_4aac

    jr nz, jr_01e_4aae

    nop
    inc a
    nop
    inc a
    nop
    jr jr_01e_4ae5

jr_01e_4ae5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01e_4aef:
    ld bc, $0f00
    nop
    ccf
    nop
    ld a, $00
    ld a, [hl]
    nop
    ld c, [hl]
    nop
    inc e
    nop
    nop
    nop
    jr z, jr_01e_4b01

jr_01e_4b01:
    ld a, [hl+]
    nop
    ld l, [hl]
    nop
    ld a, [hl]
    jr jr_01e_4aef

    inc a
    jp $c33c


    inc a
    ld b, d
    nop
    nop
    nop
    stop
    inc d
    nop
    inc a
    nop
    ld a, [hl]
    jr jr_01e_4b80

    jr jr_01e_4b82

    jr jr_01e_4b42

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
    ld bc, $0301
    inc bc
    dec de
    dec de
    ccf
    ccf
    ccf
    ccf
    rra
    rra
    ld a, a
    ld a, a
    rst $38
    rst $38
    db $10
    db $10
    jr c, jr_01e_4b7a

jr_01e_4b42:
    jr c, jr_01e_4b7c

    ld a, h
    ld c, h
    ld c, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    jr c, jr_01e_4b86

    ld h, h
    inc e
    ld h, h
    inc e
    ld [hl-], a
    ld c, $32
    ld c, $32
    ld c, $19
    rlca
    add hl, de
    rlca
    add hl, de
    rlca
    ld [hl-], a
    ld c, $32
    ld c, $32
    ld c, $19
    rlca
    add hl, de
    rlca
    add hl, de
    rlca
    add hl, de
    rlca
    add hl, de
    rlca
    add hl, de
    rlca
    add hl, de
    rlca
    add hl, de
    rlca
    add hl, de
    rlca
    add hl, de
    rlca
    add hl, de
    rlca

jr_01e_4b7a:
    add hl, de
    rlca

jr_01e_4b7c:
    add hl, de
    rlca
    rst $38
    rst $38

jr_01e_4b80:
    rst $38
    rst $38

jr_01e_4b82:
    rst $38
    rst $38
    rst $38
    rst $38

jr_01e_4b86:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    nop
    ld a, $00
    db $fc
    nop
    ld h, b
    nop
    jr c, jr_01e_4b98

jr_01e_4b98:
    inc a
    nop
    inc a
    nop
    ldh a, [rP1]
    ld h, b
    nop
    ld a, h
    nop
    ccf
    nop
    sub e
    nop
    reti


    nop
    db $fc
    nop
    ld a, [hl]
    nop
    nop
    nop
    jr nc, jr_01e_4bb0

jr_01e_4bb0:
    ld [hl-], a
    nop
    halt
    ld a, a
    nop
    ld [hl], e
    nop
    ld h, a
    nop
    inc l
    nop
    inc c
    nop
    nop
    ccf
    nop
    ld a, a
    rra
    ld h, b
    ld [$0877], sp
    ld [hl], $04
    ld a, [hl-]
    ld b, $19
    ld [bc], a
    dec c
    ld bc, $010e
    ld b, $00
    rlca
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    inc b
    rlca
    inc b
    rlca
    ld [$0f0f], sp
    rrca
    nop
    nop
    sub b
    ldh a, [rNR10]
    ldh a, [rNR41]
    ldh [rNR41], a
    ldh [rLCDC], a
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    nop
    nop
    ld e, $1e
    inc de
    rra
    ld [hl+], a
    ccf
    jr nz, jr_01e_4c45

    ld b, a
    ld a, a
    ld b, l
    ld a, l
    adc b
    ld hl, sp-$08
    ld hl, sp+$03
    inc bc
    push bc
    rst $00
    ld a, c
    rst $38
    ld [bc], a
    cp $14
    db $fc
    db $e4
    db $fc
    ld l, b
    ld a, b
    ld c, b
    ld a, b
    ld l, d
    ld l, d
    ld h, [hl]
    ld h, [hl]
    ccf
    ccf
    nop
    ccf
    rra
    rra
    rrca
    rrca
    inc bc
    inc bc
    nop
    nop
    ld a, [hl+]
    ld a, [hl+]
    xor d
    xor d
    db $fc
    db $fc
    nop
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    nop

jr_01e_4c45:
    rra
    ccf
    ccf
    daa
    daa
    ld l, d
    ld l, d
    ld h, [hl]
    ld h, [hl]
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    nop
    ld hl, sp-$04
    db $fc
    ld h, h
    ld h, h
    xor d
    xor d
    and [hl]
    and [hl]
    dec h
    ccf
    ld b, b
    ld l, a
    ld b, b
    ld l, a
    ld b, b
    ld a, a
    ld hl, $1e3f
    ld e, $00
    nop
    nop
    nop
    sub h
    db $fc
    add d
    cp [hl]
    add d
    cp [hl]
    add d
    cp $84
    db $fc
    ld a, b
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $3601
    ld [hl], $28
    jr z, @+$15

    inc de
    inc c
    inc c
    dec de
    dec de
    nop
    nop
    nop
    nop
    call c, Call_000_34dc
    inc [hl]
    db $e4
    db $e4
    ld a, [bc]
    ld a, [bc]
    ld [$6aea], a
    ld l, d
    ld c, b
    ld a, c
    ld h, c
    ld [hl], e
    ld d, d
    ld e, [hl]
    ld d, d
    ld e, [hl]
    ld sp, $183f
    rra
    rlca
    rlca
    nop
    nop
    ld [bc], a
    ld a, [c]
    add d
    ld a, [c]
    ld b, d
    ld [hl], d
    ld [hl+], a
    ld [hl-], a
    ld a, [de]
    ld a, [de]
    or $f6
    add b
    add b
    nop
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    inc b
    inc b
    dec de
    rra
    jr nz, jr_01e_4cfd

    jr z, jr_01e_4d05

    ld c, b
    ld a, c
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_01e_4cf6

    ld h, $26
    ld [$3aea], a
    ld a, [$f212]
    ld b, b
    ld b, b
    ld b, b
    ld h, b
    ld b, b
    ld h, b
    jr nz, jr_01e_4d06

    db $10
    db $10
    ld c, h
    ld c, h
    inc sp
    inc sp
    nop
    nop
    adc b
    adc b
    add h
    adc h
    ld b, h
    ld e, h

jr_01e_4cf4:
    inc a
    inc a

jr_01e_4cf6:
    jr nz, jr_01e_4d18

    ld d, h
    ld d, h
    sbc b
    sbc b
    nop

jr_01e_4cfd:
    nop
    nop
    nop
    inc bc
    inc bc
    inc c
    rrca
    db $10

jr_01e_4d05:
    rra

jr_01e_4d06:
    db $10
    rra
    jr nz, jr_01e_4d46

    jr nz, jr_01e_4d44

    ld b, b
    ld a, b
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_01e_4cf4

    sbc b
    sbc b
    or b
    or b

jr_01e_4d18:
    jr nz, jr_01e_4d3a

    ld h, b
    ld h, b
    jr nc, jr_01e_4d4e

    ld d, b
    ld [hl], b
    ld b, b
    ld h, b
    ld h, h
    ld h, h
    db $e4
    db $e4
    jr nc, jr_01e_4d58

    ld a, b
    ld a, b
    ld h, a
    ld h, a
    nop
    nop
    inc d
    inc e
    inc b
    inc c
    adc h
    adc h
    adc h
    adc h
    ld d, $16
    ld [hl], b
    ld [hl], b

jr_01e_4d3a:
    sbc b
    sbc b
    jr @+$1a

    nop
    nop
    daa
    daa
    jr jr_01e_4d5c

jr_01e_4d44:
    inc bc
    inc bc

jr_01e_4d46:
    inc c
    inc c
    jr nc, @+$3a

    jr z, @+$2e

    ld h, h
    ld h, h

jr_01e_4d4e:
    nop
    nop
    ldh a, [$f0]
    ld [$c408], sp
    call nz, Call_000_3434

jr_01e_4d58:
    jr @+$3a

    jr z, jr_01e_4dc4

jr_01e_4d5c:
    ld c, h
    ld c, h
    push hl
    push de
    push bc
    push af
    call Call_000_3748
    call Call_01e_4e23
    ld a, [$d07c]
    and a
    jr z, jr_01e_4d90

    cp $c1
    jr nz, jr_01e_4d79

    ld de, $4d90
    push de
    jp Jump_01e_5e16


jr_01e_4d79:
    ld a, [$d355]
    bit 7, a
    jr nz, jr_01e_4d88

    call Call_01e_4da6
    call Call_01e_40f1
    jr jr_01e_4d8d

jr_01e_4d88:
    ld c, $1e
    call Call_000_3739

jr_01e_4d8d:
    call Call_01e_4dbd

jr_01e_4d90:
    call Call_000_3748
    xor a
    ld [$d096], a
    ld [$d09b], a
    ld [$d08b], a
    dec a
    ld [$cf07], a
    pop af
    pop bc
    pop de
    pop hl
    ret


Call_01e_4da6:
    ldh a, [$f3]
    and a
    ret z

    ld a, [$d07c]
    cp $85
    ld b, $bf
    jr z, jr_01e_4db8

    cp $9c
    ld b, $bd
    ret nz

jr_01e_4db8:
    ld a, b
    ld [$d07c], a
    ret


Call_01e_4dbd:
    ld a, [$cc5b]
    and a
    ret z

    dec a
    add a

jr_01e_4dc4:
    ld c, a
    ld b, $00
    ld hl, $4dcf
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    db $db
    ld c, l
    db $e3
    ld c, l
    db $eb
    ld c, l
    ldh a, [rKEY1]
    or $4d
    cp $4d
    call Call_01e_5e6a
    ld b, $08
    jp Jump_01e_5209


    call Call_01e_5e6a
    ld b, $08
    jp Jump_01e_5210


    ld bc, $0602
    jr jr_01e_4e01

    call Call_01e_5e6a
    jp Jump_01e_5369


    call Call_01e_5e6a
    ld b, $02
    jp Jump_01e_5210


    ld bc, $0302

jr_01e_4e01:
    push bc
    push bc

jr_01e_4e03:
    ldh a, [rWX]
    inc a
    ldh [rWX], a
    ld c, $02
    call Call_000_3739
    dec b
    jr nz, jr_01e_4e03

    pop bc

jr_01e_4e11:
    ldh a, [rWX]
    dec a
    ldh [rWX], a
    ld c, $02
    call Call_000_3739
    dec b
    jr nz, jr_01e_4e11

    pop bc
    dec c
    jr nz, jr_01e_4e01

    ret


Call_01e_4e23:
    ld a, [$cf1b]
    and a
    ld a, $e4
    jr z, jr_01e_4e47

    ld a, $f0
    ld [$cc79], a
    ld b, $e4
    ld a, [$d07c]
    cp $aa
    jr c, jr_01e_4e3f

    cp $ae
    jr nc, jr_01e_4e3f

    ld b, $f0

jr_01e_4e3f:
    ld a, b
    ldh [rOBP0], a
    ld a, $6c
    ldh [rOBP1], a
    ret


jr_01e_4e47:
    ld a, $e4
    ld [$cc79], a
    ldh [rOBP0], a
    ld a, $6c
    ldh [rOBP1], a
    ret


Call_01e_4e53:
    ld a, [$cf07]
    cp $ff
    jr z, jr_01e_4e60

    call Call_01e_586f
    call Call_000_23b1

jr_01e_4e60:
    ld hl, $c300
    ld a, l
    ld [$d09d], a
    ld a, h
    ld [$d09c], a
    ld a, [$d097]
    ld h, a
    ld a, [$d096]
    ld l, a

Jump_01e_4e73:
    push hl
    ld c, [hl]
    ld b, $00
    ld hl, $6f74
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    pop hl
    inc hl
    push hl
    ld e, [hl]
    ld d, $00
    ld hl, $7c85
    add hl, de
    add hl, de
    ld a, [hl+]
    ld [$d082], a
    ld a, [hl]
    ld [$d081], a
    pop hl
    inc hl
    ld a, [hl]
    ld [$d09e], a
    call Call_01e_4000
    call Call_01e_4ed7
    ld a, [$d087]
    dec a
    ld [$d087], a
    ret z

    ld a, [$d097]
    ld h, a
    ld a, [$d096]
    ld l, a
    ld a, [$d08b]
    cp $04
    ld bc, $0003
    jr nz, jr_01e_4ebc

    ld bc, $fffd

jr_01e_4ebc:
    add hl, bc
    ld a, h
    ld [$d097], a
    ld a, l
    ld [$d096], a
    jp Jump_01e_4e73


Call_01e_4ec8:
Jump_01e_4ec8:
    push hl
    push de
    push bc
    push af
    call Call_000_20af
    call Call_000_0082
    pop af
    pop bc
    pop de
    pop hl
    ret


Call_01e_4ed7:
    push hl
    push de
    push bc
    ld a, [$d07c]
    ld hl, $4ef5
    ld de, $0003
    call Call_000_3dab
    jr nc, jr_01e_4ef1

    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $4ef1
    push de
    jp hl


jr_01e_4ef1:
    pop bc
    pop de
    pop hl
    ret


    dec b
    cp [hl]
    ld d, c
    inc c
    cp [hl]
    ld d, c
    add hl, de
    cp [hl]
    ld d, c
    dec e
    cp [hl]
    ld d, c
    daa
    ret nc

    ld d, b
    dec l
    cp h
    ld d, b
    ld [hl-], a
    cp [hl]
    ld d, c
    dec sp
    ld d, $50
    dec a
    cp [hl]
    ld d, c
    ccf
    nop
    ld d, b
    ld d, l
    rst $30
    ld c, a
    ld [hl], e
    cp [hl]
    ld d, c
    ld a, b
    add hl, bc
    ld d, b
    sub e
    cp [hl]
    ld d, c
    sbc c
    add hl, bc
    ld d, b
    sbc l
    reti


    ld c, a
    xor d
    ld b, c
    ld d, b
    xor e
    ld c, h
    ld d, b
    xor h
    ld a, h
    ld d, b
    pop bc
    ld a, $4f
    jp nz, Jump_01e_4f96

    jp Jump_01e_4fce


    push bc
    ld a, $4f
    add $3e
    ld c, a
    rst $38
    ld a, [$cf91]
    cp $03
    jr nc, jr_01e_4f4b

    ldh a, [rOBP0]
    xor $3c
    ldh [rOBP0], a

jr_01e_4f4b:
    ld a, [$d087]
    cp $0b
    jr nz, jr_01e_4f57

    ld a, $91
    call Call_000_23b1

jr_01e_4f57:
    ld a, [$d057]
    cp $02
    jr z, jr_01e_4f8b

    ld a, [$d11e]
    cp $10
    ret nz

    ld a, [$d087]
    cp $03
    jr z, jr_01e_4f72

    cp $02
    jr z, jr_01e_4f72

    cp $01
    ret nz

jr_01e_4f72:
    ld hl, $c3b1
    ld de, $0014
    ld bc, $0707

jr_01e_4f7b:
    push hl
    push bc
    call Call_01e_5862
    pop bc
    pop hl
    add hl, de
    dec b
    jr nz, jr_01e_4f7b

    ld a, $08
    ldh [rNR10], a
    ret


jr_01e_4f8b:
    ld a, [$d087]
    cp $03
    ret nz

    dec a
    ld [$d087], a
    ret


Jump_01e_4f96:
    ld a, [$d087]
    cp $04
    jr nz, jr_01e_4fa7

    ld a, $8c
    call Call_000_23b1
    ld c, $28
    call Call_000_3739

jr_01e_4fa7:
    ld a, [$d087]
    dec a
    ret nz

    ld a, [$cd3d]
    dec a
    ld [$cd3d], a
    ret z

    ld a, [$d096]
    ld l, a
    ld a, [$d097]
    ld h, a
    ld de, $fff4
    add hl, de
    ld a, l
    ld [$d096], a
    ld a, h
    ld [$d097], a
    ld a, $05
    ld [$d087], a
    ret


Jump_01e_4fce:
    ld a, [$d087]
    cp $05
    ret nz

    ld a, $93
    jp Jump_000_23b1


    ld a, [$d087]
    cp $0c
    ret nc

    cp $08
    jr nc, jr_01e_4fe9

    cp $01
    jp z, Jump_01e_51be

    ret


jr_01e_4fe9:
    ld b, $01
    ld a, $24
    call Call_000_3e6d
    ld b, $01
    ld a, $21
    jp Jump_000_3e6d


    ld a, [$d087]
    and $07
    call z, Call_01e_51be
    ret


jr_01e_5000:
    ld a, [$d087]
    and $03
    call z, Call_01e_51be
    ret


    ld a, [$d087]
    cp $01
    jr nz, jr_01e_5000

    ld hl, $c405
    jp Jump_01e_5801


    ld a, [$d087]
    cp $0d
    jp z, Jump_01e_51be

    cp $09
    jp z, Jump_01e_51be

    cp $05
    jp z, Jump_01e_51be

    cp $01
    jp z, Jump_01e_51be

    ret


    ld a, [$d087]
    cp $0e
    jp z, Jump_01e_51be

    cp $09
    jp z, Jump_01e_51be

    cp $02
    jp z, Jump_01e_51be

    ret


    ld a, [$d087]
    cp $06
    ret nz

    ld a, $2f
    jp Jump_01e_580c


    ld a, [$d087]
    cp $01
    ret nz

    ld de, $5078

jr_01e_5055:
    ld hl, $c300
    ld bc, $0004

jr_01e_505b:
    ld a, [de]
    cp $ff
    jr z, jr_01e_5070

    add [hl]
    ld [hl], a
    add hl, bc
    ld a, l
    cp $10
    jr nz, jr_01e_505b

    inc de
    push bc
    call Call_000_3dd7
    pop bc
    jr jr_01e_5055

jr_01e_5070:
    call Call_01e_4ec8
    ld a, $98
    jp Jump_000_23b1


    db $f4
    db $f4
    ld hl, sp-$01
    ld de, $50b3

jr_01e_507f:
    ld hl, $c300
    ld bc, $0004

jr_01e_5085:
    ld a, [de]
    cp $ff
    jp z, Jump_000_190f

    add [hl]
    ld [hl], a
    add hl, bc
    ld a, l
    cp $10
    jr nz, jr_01e_5085

    inc de
    push de
    ld a, [de]
    cp $0c
    jr z, jr_01e_509e

    cp $ff
    jr nz, jr_01e_50a3

jr_01e_509e:
    ld a, $ae
    call Call_000_23b1

jr_01e_50a3:
    push bc
    ld c, $05
    call Call_000_3739
    pop bc
    ldh a, [$ae]
    sub $08
    ldh [$ae], a
    pop de
    jr jr_01e_507f

    dec bc
    inc c
    db $f4
    ld sp, hl
    rlca
    inc c
    ld hl, sp+$08
    rst $38
    ld hl, $c300
    ld de, $c310
    ld bc, $0010
    call Call_000_00b5
    ld a, [$d087]
    dec a
    call z, Call_01e_4ec8
    ret


    ld a, $01
    ld [$d087], a
    ld c, $14
    jp Jump_000_3739


    cp $be
    ld d, c
    db $fd
    sub $51
    db $fc
    ld [$fb51], a
    ld c, $52
    ld a, [$5215]
    ld sp, hl
    db $db
    ld d, c
    ld hl, sp+$65
    ld d, c
    rst $30
    ld a, d
    ld d, d
    or $97
    ld d, d
    push af
    adc c
    ld d, e
    db $f4
    xor a
    ld d, d
    di
    ld l, a
    ld d, e
    ld a, [c]
    ld sp, hl
    ld d, e
    pop af
    dec d
    ld d, h
    ldh a, [$f4]
    ld d, c
    rst $28
    ld bc, $ee58
    and c
    ld d, h
    db $ed
    ld sp, hl
    ld d, h
    db $ec
    ld h, [hl]
    ld d, l
    db $eb
    ld a, d
    ld d, a
    ld [$559f], a
    jp hl


    ret


    ld d, l
    add sp, -$79
    ld d, a
    rst $20
    ld [hl], h
    ld e, h
    and $8a
    ld e, h
    push hl
    ld b, l
    ld d, [hl]
    db $e4
    ld [hl], a
    ld e, l
    db $e3
    ld [hl], a
    ld e, l
    ld [c], a
    inc h
    ld d, h
    pop hl
    ld d, b
    ld d, c
    ldh [$98], a
    ld d, e
    rst $18
    ret c

    ld d, a
    sbc $69
    ld d, e
    db $dd
    sbc [hl]
    ld d, e
    call c, Call_01e_53ab
    db $db
    cp c
    ld d, d
    jp c, Jump_01e_53b1

    reti


    ldh [rRP], a
    ret c

    ld h, [hl]
    ld d, [hl]
    rst $38
    ld c, $0a
    jp Jump_000_3739


Call_01e_5155:
Jump_01e_5155:
    ldh a, [$f3]
    push af
    xor $01
    ldh [$f3], a
    ld de, $5161
    push de
    jp hl


    pop af
    ldh [$f3], a
    ret


    ld a, $03
    ld [$d08a], a
    ld a, [$cf1b]
    and a
    ld hl, $518e
    jr z, jr_01e_5176

    ld hl, $519b

jr_01e_5176:
    push hl

jr_01e_5177:
    ld a, [hl+]
    cp $01
    jr z, jr_01e_5183

    ldh [rBGP], a
    call $51a8
    jr jr_01e_5177

jr_01e_5183:
    ld a, [$d08a]
    dec a
    ld [$d08a], a
    pop hl
    jr nz, jr_01e_5176

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
    ld bc, $fcf8
    rst $38
    db $fc
    ld hl, sp-$1c
    sub b
    ld b, b
    nop
    ld b, b
    sub b
    db $e4
    ld bc, $8afa
    ret nc

    cp $04
    ld c, $04
    jr z, jr_01e_51bb

    cp $03
    ld c, $02
    jr z, jr_01e_51bb

    cp $02
    ld c, $01

jr_01e_51bb:
    jp Jump_000_3739


Call_01e_51be:
Jump_01e_51be:
    ldh a, [rBGP]
    push af
    ld a, $1b
    ldh [rBGP], a
    ld c, $02
    call Call_000_3739
    xor a
    ldh [rBGP], a
    ld c, $02
    call Call_000_3739
    pop af
    ldh [rBGP], a
    ret


    ld bc, $6f6f
    jr jr_01e_51fc

    ld bc, $f9f4
    jr jr_01e_51fc

    ld bc, $fef8
    jr jr_01e_51fc

    ld bc, $ffff
    jr jr_01e_51fc

    ld bc, $e4e4
    jr jr_01e_51fc

    ld bc, $0000
    jr jr_01e_51fc

    ld bc, $9090
    jr jr_01e_51fc

    ld bc, $4040

jr_01e_51fc:
    ld a, [$cf1b]
    and a
    ld a, b
    jr z, jr_01e_5204

    ld a, c

jr_01e_5204:
    ldh [rBGP], a
    ret


    ld b, $05

Jump_01e_5209:
    ld a, $21
    jp Jump_000_3e6d


    ld b, $08

Jump_01e_5210:
    ld a, $24
    jp Jump_000_3e6d


    xor a
    ld [$d09f], a
    call Call_01e_41d2
    ld d, $20
    ld a, $f0
    ld [$d081], a
    ld a, $71
    ld [$d09f], a

jr_01e_5228:
    ld a, $10
    ld [$d082], a
    ld a, $00
    ld [$d08a], a
    call Call_01e_5246
    ld a, $18
    ld [$d082], a
    ld a, $20
    ld [$d08a], a
    call Call_01e_5246
    dec d
    jr nz, jr_01e_5228

    ret


Call_01e_5246:
    ld hl, $c300

jr_01e_5249:
    ld a, [$d082]
    ld [hl+], a
    ld a, [$d081]
    add $1b
    ld [$d081], a
    ld [hl+], a
    ld a, [$d09f]
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, [$d081]
    cp $90
    jr c, jr_01e_5249

    sub $a8
    ld [$d081], a
    ld a, [$d082]
    add $10
    ld [$d082], a
    cp $70
    jr c, jr_01e_5249

    call Call_01e_4ec8
    jp Jump_000_20af


    ld c, $07
    ldh a, [$f3]
    and a
    ld hl, $c419
    ld de, $c405
    ld a, $30
    jr z, jr_01e_5291

    ld hl, $c3c0
    ld de, $c3ac
    ld a, $ff

jr_01e_5291:
    ld [$d09f], a
    jp Jump_01e_52bf


Call_01e_5297:
    xor a
    call Call_01e_5842

jr_01e_529b:
    call Call_01e_5820
    push bc
    push de
    call Call_01e_5aae
    call Call_000_3dd7
    call Call_01e_5801
    pop de
    pop bc
    dec b
    jr nz, jr_01e_529b

    ret


Call_01e_52af:
    ld e, $08
    ld a, $03
    ld [$d08b], a
    jp Jump_01e_55f8


    ld hl, $52af
    jp Jump_01e_5155


Jump_01e_52bf:
jr_01e_52bf:
    push de
    push hl
    push bc
    ld b, $06

jr_01e_52c4:
    push bc
    push de
    push hl
    ld bc, $0007
    call Call_000_00b5
    pop de
    pop hl
    ld bc, $0028
    add hl, bc
    pop bc
    dec b
    jr nz, jr_01e_52c4

    ldh a, [$f3]
    and a
    ld hl, $c47d
    jr z, jr_01e_52e2

    ld hl, $c424

jr_01e_52e2:
    ld a, [$d09f]
    inc a
    ld [$d09f], a
    ld c, $07

jr_01e_52eb:
    ld [hl+], a
    add $07
    dec c
    jr nz, jr_01e_52eb

    ld c, $02
    call Call_000_3739
    pop bc
    pop hl
    pop de
    dec c
    jr nz, jr_01e_52bf

    ret


Call_01e_52fd:
    ld a, $10
    ld [$d081], a
    ld a, $30
    ld [$d082], a
    ld hl, $c300
    ld d, $00
    ld c, $07

jr_01e_530e:
    ld a, [$d082]
    ld e, a
    ld b, $05

jr_01e_5314:
    call Call_01e_5329
    inc d
    dec b
    jr nz, jr_01e_5314

    dec c
    ret z

    inc d
    inc d
    ld a, [$d081]
    add $08
    ld [$d081], a
    jr jr_01e_530e

Call_01e_5329:
    ld a, e
    add $08
    ld e, a
    ld [hl+], a
    ld a, [$d081]
    ld [hl+], a
    ld a, d
    ld [hl+], a
    xor a
    ld [hl+], a
    ret


    ld l, e
    ld h, d

Call_01e_5339:
    ld de, $0004

jr_01e_533c:
    ld a, [$d08a]
    ld b, a
    ld a, [hl]
    add b
    cp $a8
    jr c, jr_01e_534a

    dec hl
    ld a, $a0
    ld [hl+], a

jr_01e_534a:
    ld [hl], a
    add hl, de
    dec c
    jr nz, jr_01e_533c

    ret


    ld l, e
    ld h, d

Call_01e_5352:
    ld de, $0004

jr_01e_5355:
    ld a, [$d08a]
    ld b, a
    ld a, [hl]
    add b
    cp $70
    jr c, jr_01e_5363

    dec hl
    ld a, $a0
    ld [hl+], a

jr_01e_5363:
    ld [hl], a
    add hl, de
    dec c
    jr nz, jr_01e_5355

    ret


Jump_01e_5369:
    ld hl, $536f
    jp Jump_01e_5155


    push af
    ld c, $06

jr_01e_5372:
    push bc
    call Call_01e_5801
    ld c, $05
    call Call_000_3739
    call Call_01e_539e
    ld c, $05
    call Call_000_3739
    pop bc
    dec c
    jr nz, jr_01e_5372

    pop af
    ret


Call_01e_5389:
    ld a, [$d014]
    ld [$ceea], a
    ld a, [$cfe5]
    ld [$cee9], a
    jp Jump_01e_5793


    ld hl, $5389
    jp Jump_01e_5155


Call_01e_539e:
Jump_01e_539e:
    xor a
    call Call_01e_5842
    call Call_01e_5820
    call Call_01e_5aae
    jp Jump_000_3dd7


Call_01e_53ab:
    ld hl, $539e
    jp Jump_01e_5155


Jump_01e_53b1:
    ldh a, [$f3]
    and a
    ld hl, $c404
    ld de, $c406
    jr z, jr_01e_53c2

    ld hl, $c3ab
    ld de, $c3ad

jr_01e_53c2:
    xor a
    ld c, $10

jr_01e_53c5:
    push af
    push bc
    push de
    push hl
    push hl
    push de
    push af
    push hl
    push hl
    call Call_01e_5842
    pop hl
    call Call_01e_5aae
    call Call_000_3dd7
    pop hl
    ld bc, $0709
    call Call_000_18c4
    pop af
    call Call_01e_5842
    pop hl
    call Call_01e_5aae
    call Call_000_3dd7
    pop hl
    ld bc, $0709
    call Call_000_18c4
    pop hl
    pop de
    pop bc
    pop af
    dec c
    jr nz, jr_01e_53c5

    ret


    call Call_01e_5801
    ldh a, [$f3]
    and a
    ld hl, $c406
    jr z, jr_01e_5407

    ld hl, $c3ab

jr_01e_5407:
    xor a
    push hl
    call Call_01e_5842
    pop hl
    call Call_01e_5aae
    ld c, $03
    jp Jump_000_3739


    ldh a, [$f3]
    and a
    ld a, $66
    jr z, jr_01e_541e

    ld a, $0b

jr_01e_541e:
    call Call_01e_580c
    jp Jump_01e_539e


    ldh a, [$f3]
    and a
    jr z, jr_01e_5435

    ld a, $d8
    ld [$d08a], a
    ld a, $50
    ld [$d08b], a
    jr jr_01e_543c

jr_01e_5435:
    xor a
    ld [$d08a], a
    ld [$d08b], a

jr_01e_543c:
    ld d, $7a
    ld c, $03
    xor a
    call Call_01e_57e8
    ld hl, $5476

jr_01e_5447:
    push hl
    ld c, $03
    ld de, $c300

jr_01e_544d:
    ld a, [hl]
    cp $ff
    jr z, jr_01e_546f

    ld a, [$d08a]
    add [hl]
    ld [de], a
    inc de
    inc hl
    ld a, [$d08b]
    add [hl]
    ld [de], a
    inc hl
    inc de
    inc de
    inc de
    dec c
    jr nz, jr_01e_544d

    ld c, $05
    call Call_000_3739
    pop hl
    inc hl
    inc hl
    jr jr_01e_5447

jr_01e_546f:
    pop hl
    call Call_01e_4ec8
    jp Jump_01e_51be


    jr c, @+$2a

    ld b, b
    jr @+$52

    db $10
    ld h, b
    jr jr_01e_54e7

    jr z, jr_01e_54e1

    jr c, @+$52

    ld b, b
    ld b, b
    jr c, @+$42

    jr z, jr_01e_54cf

    ld e, $50
    jr @+$5d

    ld e, $60
    jr z, @+$5d

    ld [hl-], a
    ld d, b
    jr c, @+$48

    ld [hl-], a
    ld c, b
    jr z, @+$52

    jr nz, jr_01e_54f3

    jr z, jr_01e_54ed

    jr nc, @+$52

    jr z, @+$01

    ld c, $04

jr_01e_54a3:
    push bc
    ldh a, [$f3]
    and a
    jr z, jr_01e_54b1

    ld hl, $c3b0
    ld de, $c3ae
    jr jr_01e_54b7

jr_01e_54b1:
    ld hl, $c409
    ld de, $c407

jr_01e_54b7:
    push de
    xor a
    ld [$d09f], a
    call Call_01e_54d4
    pop hl
    ld a, $01
    ld [$d09f], a
    call Call_01e_54d4
    pop bc
    dec c
    jr nz, jr_01e_54a3

    call Call_01e_5801

jr_01e_54cf:
    ld c, $02
    jp Jump_000_20af


Call_01e_54d4:
    ld c, $07

jr_01e_54d6:
    push bc
    push hl
    ld c, $03
    ld a, [$d09f]
    cp $00
    jr nz, jr_01e_54e7

jr_01e_54e1:
    call Call_01e_585b
    dec hl
    jr jr_01e_54eb

jr_01e_54e7:
    call Call_01e_5862
    inc hl

jr_01e_54eb:
    ld [hl], $7f

jr_01e_54ed:
    pop hl
    ld de, $0014
    add hl, de
    pop bc

jr_01e_54f3:
    dec c
    jr nz, jr_01e_54d6

    jp Jump_000_3dd7


    ldh a, [$f3]
    and a
    jr z, jr_01e_5503

    ld bc, $0080
    jr jr_01e_5506

jr_01e_5503:
    ld bc, $3028

jr_01e_5506:
    ld a, b
    ld [$d082], a
    ld a, c
    ld [$d081], a
    ld bc, $0501
    call Call_01e_5517
    jp Jump_01e_4ec8


Call_01e_5517:
    push bc
    xor a
    ld [$d09f], a
    call Call_01e_41d2
    pop bc
    ld d, $7a
    ld hl, $c300
    push bc
    ld a, [$d082]
    ld e, a

jr_01e_552a:
    call Call_01e_5329
    dec b
    jr nz, jr_01e_552a

    call Call_000_20af
    pop bc
    ld a, b
    ld [$d08a], a

jr_01e_5538:
    push bc
    ld hl, $c300

jr_01e_553c:
    ld a, [$d082]
    add $08
    ld e, a
    ld a, [hl]
    cp e
    jr z, jr_01e_554b

    add $fc
    ld [hl], a
    jr jr_01e_5554

jr_01e_554b:
    ld [hl], $00
    ld a, [$d08a]
    dec a
    ld [$d08a], a

jr_01e_5554:
    ld de, $0004
    add hl, de
    dec b
    jr nz, jr_01e_553c

    call Call_000_3739
    pop bc
    ld a, [$d08a]
    and a
    jr nz, jr_01e_5538

    ret


    ldh a, [$f3]
    and a
    ld hl, $5591
    ld a, $50
    jr z, jr_01e_5575

    ld hl, $5598
    ld a, $28

jr_01e_5575:
    ld [$cd3d], a

jr_01e_5578:
    ld a, [$cd3d]
    ld [$d082], a
    ld a, [hl+]
    cp $ff
    jp z, Jump_01e_4ec8

    ld [$d081], a
    ld bc, $0401
    push hl
    call Call_01e_5517
    pop hl
    jr jr_01e_5578

    db $10
    ld b, b
    jr z, @+$1a

    jr c, jr_01e_55c7

    rst $38
    ld h, b
    sub b
    ld a, b
    ld l, b
    adc b
    add b
    rst $38

Jump_01e_559f:
    ld hl, $c6e8
    push hl
    xor a
    ld bc, $0310
    call Call_000_36e0
    pop hl
    ld de, $0194
    add hl, de
    ld de, $55c4
    ld c, $05

jr_01e_55b4:
    ld a, [de]
    ld [hl+], a
    ld [hl+], a
    inc de
    dec c
    jr nz, jr_01e_55b4

    call Call_01e_5652
    call Call_000_3dd7
    jp Jump_01e_539e


    jr jr_01e_5602

    ld a, [hl]

jr_01e_55c7:
    inc a
    inc h
    ld a, $01
    ld c, $02

jr_01e_55cd:
    push bc
    push af
    call Call_01e_5801
    pop af
    push af
    call Call_01e_5842
    call Call_01e_5820
    call Call_01e_5aae
    ld c, $08
    call Call_000_3739
    pop af
    inc a
    pop bc
    dec c
    jr nz, jr_01e_55cd

    call Call_01e_5801
    ld hl, $c6e8
    ld bc, $0310
    xor a
    call Call_000_36e0
    jp Jump_01e_5652


Call_01e_55f8:
Jump_01e_55f8:
    ldh a, [$f3]
    and a
    jr z, jr_01e_5602

    ld hl, $c3ac
    jr jr_01e_5605

jr_01e_5602:
    ld hl, $c404

jr_01e_5605:
    ld d, $08

jr_01e_5607:
    push hl
    ld b, $07

jr_01e_560a:
    ld c, $08

jr_01e_560c:
    ldh a, [$f3]
    and a
    jr z, jr_01e_5616

    call Call_01e_563c
    jr jr_01e_5619

jr_01e_5616:
    call Call_01e_5633

jr_01e_5619:
    ld [hl+], a
    dec c
    jr nz, jr_01e_560c

    push de
    ld de, $000c
    add hl, de
    pop de
    dec b
    jr nz, jr_01e_560a

    ld a, [$d08b]
    ld c, a
    call Call_000_3739
    pop hl
    dec d
    dec e
    jr nz, jr_01e_5607

    ret


Call_01e_5633:
    ld a, [hl]
    add $07
    cp $61
    ret c

    ld a, $7f
    ret


Call_01e_563c:
    ld a, [hl]
    sub $07
    cp $30
    ret c

    ld a, $7f
    ret


    ld e, $04
    ld a, $04
    ld [$d08b], a
    call Call_01e_55f8
    jp Jump_000_3dd7


Call_01e_5652:
Jump_01e_5652:
    ldh a, [$f3]
    and a
    ld hl, $9310
    jr z, jr_01e_565d

    ld hl, $9000

jr_01e_565d:
    ld de, $c6e8
    ld bc, $0031
    jp Jump_000_1848


    ld hl, $9800
    call Call_01e_5e0d
    call Call_000_3dd7
    xor a
    ldh [$ba], a
    ld a, $90
    ldh [$b0], a
    ld d, $80
    ld e, $8f
    ld c, $ff
    ld hl, $56bf

jr_01e_567f:
    push hl

jr_01e_5680:
    call Call_01e_56ae
    ldh a, [rLY]
    cp e
    jr nz, jr_01e_5680

    pop hl
    inc hl
    ld a, [hl]
    cp d
    jr nz, jr_01e_5691

    ld hl, $56bf

jr_01e_5691:
    dec c
    jr nz, jr_01e_567f

    xor a
    ldh [$b0], a
    call Call_000_36f4
    call Call_000_190f
    ld a, $01
    ldh [$ba], a
    call Call_000_3dd7
    call Call_000_3701
    ld hl, $9c00
    call Call_01e_5e0d
    ret


Call_01e_56ae:
jr_01e_56ae:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_01e_56ae

    ld a, [hl]
    ldh [rSCX], a
    inc hl
    ld a, [hl]
    cp d
    ret nz

    ld hl, $56bf
    ret


    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    cp $ff
    rst $38
    rst $38
    add b

Call_01e_56e0:
    ld hl, $c6e8
    xor a
    ld bc, $0310
    call Call_000_36e0
    ldh a, [$f3]
    and a
    jr z, jr_01e_5715

    ld hl, $4780
    ld de, $c808
    call Call_01e_573f
    ld hl, $4790
    ld de, $c878
    call Call_01e_573f
    ld hl, $47a0
    ld de, $c818
    call Call_01e_573f
    ld hl, $47b0
    ld de, $c888
    call Call_01e_573f
    jr jr_01e_5739

jr_01e_5715:
    ld hl, $47c0
    ld de, $c878
    call Call_01e_573f
    ld hl, $47d0
    ld de, $c8e8
    call Call_01e_573f
    ld hl, $47e0
    ld de, $c888
    call Call_01e_573f
    ld hl, $47f0
    ld de, $c8f8
    call Call_01e_573f

jr_01e_5739:
    call Call_01e_5652
    jp Jump_01e_539e


Call_01e_573f:
    ld bc, $0010
    ld a, $05
    jp Jump_000_17f7


    ldh a, [$f3]
    and a
    ld hl, $ccf7
    ld a, [$d063]
    jr z, jr_01e_5758

    ld hl, $ccf3
    ld a, [$d068]

jr_01e_5758:
    push hl
    bit 4, a
    jr nz, jr_01e_5762

    call Call_01e_5297
    jr jr_01e_5765

jr_01e_5762:
    call Call_01e_52af

jr_01e_5765:
    pop hl
    ld a, [hl]
    and a
    jp nz, Jump_01e_559f

    call Call_01e_5389
    jp Jump_01e_539e


    call Call_01e_52af
    call Call_01e_56e0
    jp Jump_01e_539e


    ld c, $05

jr_01e_577c:
    push bc
    call Call_01e_5297
    pop bc
    dec c
    jr nz, jr_01e_577c

    jp Jump_01e_539e


    ld a, [$cfe5]
    ld [$ceea], a
    ld a, [$d014]
    ld [$cee9], a

Jump_01e_5793:
    ldh a, [$f3]
    and a
    jr z, jr_01e_57b0

    ld a, [$cee9]
    ld [$cf91], a
    ld [$d0b5], a
    xor a
    ld [$d0aa], a
    call Call_000_1537
    ld hl, $c3ac
    call Call_000_1389
    jr jr_01e_57d3

jr_01e_57b0:
    ld a, [$cfd9]
    push af
    ld a, [$ceea]
    ld [$cfd9], a
    ld [$d0b5], a
    call Call_000_1537
    ld a, $04
    call Call_000_3e6d
    xor a
    call Call_01e_5842
    call Call_01e_5820
    call Call_01e_5aae
    pop af
    ld [$cfd9], a

jr_01e_57d3:
    ld b, $01
    jp Jump_000_3def


    xor a
    ldh [$ba], a
    ld hl, $5801
    call Call_01e_5155
    ld a, $01
    ldh [$ba], a
    jp Jump_000_3dd7


Call_01e_57e8:
    push bc
    push de
    ld [$d09f], a
    call Call_01e_41d2
    pop de
    pop bc
    xor a
    ld e, a
    ld [$d081], a
    ld hl, $c300

jr_01e_57fa:
    call Call_01e_5329
    dec c
    jr nz, jr_01e_57fa

    ret


Call_01e_5801:
Jump_01e_5801:
    ldh a, [$f3]
    and a
    jr z, jr_01e_580a

    ld a, $0c
    jr jr_01e_580c

jr_01e_580a:
    ld a, $65

Call_01e_580c:
Jump_01e_580c:
jr_01e_580c:
    push hl
    push de
    push bc
    ld e, a
    ld d, $00
    ld hl, $c3a0
    add hl, de
    ld bc, $0707
    call Call_000_18c4
    pop bc
    pop de
    pop hl
    ret


Call_01e_5820:
    push de
    ldh a, [$f3]
    and a
    jr nz, jr_01e_582a

    ld a, $65
    jr jr_01e_582c

jr_01e_582a:
    ld a, $0c

jr_01e_582c:
    ld hl, $c3a0
    ld e, a
    ld d, $00
    add hl, de
    ld a, $07
    sub b
    and a
    jr z, jr_01e_5840

    ld de, $0014

jr_01e_583c:
    add hl, de
    dec a
    jr nz, jr_01e_583c

jr_01e_5840:
    pop de
    ret


Call_01e_5842:
    ld hl, $5aea
    ld e, a
    ld d, $00
    add hl, de
    add hl, de
    add hl, de
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld b, a
    and $0f
    ld c, a

jr_01e_5854:
    ld a, b
    swap a
    and $0f
    ld b, a
    ret


Call_01e_585b:
jr_01e_585b:
    ld a, [hl-]
    ld [hl+], a
    inc hl
    dec c
    jr nz, jr_01e_585b

    ret


Call_01e_5862:
jr_01e_5862:
    ld a, [hl+]
    ld [hl-], a
    dec hl
    dec c
    jr nz, jr_01e_5862

    ret


    ld a, b
    call Call_01e_586f
    ld b, a
    ret


Call_01e_586f:
    ld hl, $58bc
    ld e, a
    ld d, $00
    add hl, de
    add hl, de
    add hl, de
    ld a, [hl+]
    ld b, a
    call Call_01e_58ad
    jr nc, jr_01e_58a3

    ldh a, [$f3]
    and a
    jr nz, jr_01e_5889

    ld a, [$d014]
    jr jr_01e_588c

jr_01e_5889:
    ld a, [$cfe5]

jr_01e_588c:
    push hl
    call Call_000_13d9
    ld b, a
    pop hl
    ld a, [$c0f1]
    add [hl]
    ld [$c0f1], a
    inc hl
    ld a, [$c0f2]
    add [hl]
    ld [$c0f2], a
    jr jr_01e_58ab

jr_01e_58a3:
    ld a, [hl+]
    ld [$c0f1], a
    ld a, [hl+]
    ld [$c0f2], a

jr_01e_58ab:
    ld a, b
    ret


Call_01e_58ad:
    ld a, [$d07c]
    cp $2d
    jr z, jr_01e_58ba

    cp $2e
    jr z, jr_01e_58ba

    and a
    ret


jr_01e_58ba:
    scf
    ret


    and b
    nop
    add b
    and d
    db $10
    add b
    or e
    nop
    add b
    and c
    ld bc, $a380
    nop
    ld b, b
    jp hl


    nop
    rst $38
    and e
    db $10
    ld h, b
    and e
    jr nz, jr_01e_5854

    and e
    nop
    and b
    and [hl]
    nop
    add b
    and l
    jr nz, jr_01e_591d

    and l
    nop
    add b
    and h
    nop
    and b
    and a
    db $10
    ret nz

    and a
    nop
    and b
    xor b
    nop
    ret nz

    xor b
    db $10

jr_01e_58ee:
    and b
    xor c
    nop
    ldh [$a7], a
    jr nz, @-$3e

    xor d
    nop

jr_01e_58f7:
    add b
    cp c
    nop
    add b
    xor e
    ld bc, $b780
    nop
    add b
    xor l
    ldh a, [rLCDC]
    or b
    nop
    add b
    xor l
    nop
    add b
    cp b
    db $10
    add b
    or c
    ld bc, $aea0
    nop
    add b
    or h
    nop
    ld h, b
    or h
    ld bc, $b640
    nop
    and b
    or b

jr_01e_591d:
    db $10
    and b
    or a
    nop
    ret nz

    xor d
    db $10
    ld h, b
    or b
    nop
    and b
    cp c
    ld de, $b0c0
    jr nz, jr_01e_58ee

    cp b
    nop
    add b
    or c
    nop
    add b
    or c
    jr nz, jr_01e_58f7

    xor a
    nop
    add b
    db $db

jr_01e_593b:
    rst $38
    ld b, b
    or h
    nop
    add b
    and c
    nop
    ret nz

    and c
    nop
    ld b, b
    db $e4
    nop
    add b
    cp a
    ld b, b
    ld h, b
    cp a
    nop
    add b
    cp a
    rst $38
    ld b, b
    rst $00
    add b
    ret nz

    xor a
    db $10
    and b
    xor a
    ld hl, $c5e0
    nop
    add b
    cp e
    jr nz, jr_01e_59c1

    rst $00
    nop
    add b
    call z, $8000
    jp nz, $8040

    push bc
    ldh a, [$e0]
    rst $08
    nop
    add b
    rst $00
    ldh a, [$60]
    jp nz, $8000

    and $00
    add b
    sbc l
    ld bc, $a9a0

jr_01e_597d:
    ldh a, [rNR41]
    cp d
    ld bc, $bac0
    nop
    add b
    or b
    nop
    ldh [$be], a
    ld bc, $be60
    jr nz, jr_01e_59ce

jr_01e_598e:
    cp e
    nop
    add b
    cp e
    ld b, b
    ret nz

    or c
    inc bc
    ld h, b
    cp l
    ld de, $a8e0
    jr nz, jr_01e_597d

    jp nc, $8000

    or d
    nop
    add b
    or d
    ld de, $b2a0
    ld bc, $a9c0
    inc d
    ret nz

jr_01e_59ac:
    or c
    ld [bc], a
    and b
    push bc
    ldh a, [$80]
    push bc
    jr nz, @-$3e

    push de
    nop
    jr nz, jr_01e_598e

    jr nz, jr_01e_593b

    jp nc, Jump_01e_6012

    cp [hl]
    nop
    add b

jr_01e_59c1:
    xor d
    ld bc, $c5e0
    rrca
    ldh [$c5], a
    ld de, $a620
    db $10
    ld b, b
    and l

jr_01e_59ce:
    db $10
    ret nz

    xor d
    nop
    jr nz, jr_01e_59ac

    nop
    add b
    db $e4
    ld de, $9f18
    jr nz, @-$3e

    sbc [hl]
    jr nz, @-$3e

    cp l
    nop
    db $10
    cp [hl]
    ldh a, [rNR41]
    rst $18
    ldh a, [$c0]
    and a
    ldh a, [$e0]
    sbc a
    ldh a, [rLCDC]
    db $db
    nop

jr_01e_59f0:
    add b
    rst $18
    add b
    ld b, b

jr_01e_59f4:
    rst $18
    nop
    add b
    xor d
    ld de, $aa20
    ld [hl+], a
    db $10
    or c
    pop af
    rst $38
    xor c
    pop af
    rst $38

jr_01e_5a03:
    xor d
    inc sp
    jr nc, @-$21

    ld b, b
    ret nz

    and h
    jr nz, jr_01e_5a2c

    and h
    ldh a, [rNR10]
    and l
    ld hl, sp+$10
    and a
    ldh a, [rNR10]
    cp l
    nop
    add b
    xor [hl]
    nop
    ret nz

    db $dd
    ret nz

    rst $38
    sbc a
    ld a, [c]
    jr nz, jr_01e_5a03

    nop
    add b
    pop hl
    nop
    ld b, b
    sbc a
    nop
    ld b, b
    and a
    db $10

jr_01e_5a2c:
    rst $38
    rst $00
    jr nz, @+$22

    db $dd
    nop
    add b
    push bc
    rra
    jr nz, jr_01e_59f4

    cpl
    add b
    and l
    rra
    rst $38
    jp z, $601f

    cp [hl]
    ld e, $20
    cp [hl]
    rra
    jr jr_01e_59f0

    rrca
    add b

jr_01e_5a48:
    sbc a
    ld hl, sp+$10
    sbc [hl]
    jr jr_01e_5a6e

    db $dd
    ld [$ad40], sp
    ld bc, $a7e0
    add hl, bc
    rst $38
    db $e4
    ld b, d
    ld bc, $00b2
    rst $38
    db $dd
    ld [$bbe0], sp
    nop
    add b
    sbc a
    adc b
    db $10
    cp l
    ld c, b
    rst $38
    sbc [hl]
    rst $38
    rst $38
    cp e
    rst $38

jr_01e_5a6e:
    db $10
    sbc [hl]
    rst $38
    inc b
    or d
    ld bc, $a9ff
    ld hl, sp-$01
    and d
    ldh a, [$f0]
    and l
    ld [$a310], sp
    ldh a, [rIE]
    or b
    ldh a, [rIE]
    pop hl
    db $10
    rst $38
    and h
    ldh a, [rNR41]
    jp z, Jump_01e_60f0

    cp b
    ld [de], a
    db $10
    and $f0
    jr nz, jr_01e_5a48

    ld [de], a
    rst $38
    db $db
    add b
    inc b
    rst $18
    ldh a, [rNR10]
    push bc
    ld hl, sp-$01
    cp [hl]
    ldh a, [rIE]
    and a
    ld bc, $ccff
    ret c

    inc b
    and c
    nop
    add b
    and c
    nop
    add b

Call_01e_5aae:
    ldh a, [$f3]
    and a
    ld a, $31
    jr z, jr_01e_5ab6

    xor a

jr_01e_5ab6:
    ldh [$8b], a
    jr jr_01e_5acb

    call Call_000_3e94
    ld a, [$cd6c]
    and a
    jr nz, jr_01e_5ac8

    ld de, $5b02
    jr jr_01e_5acb

jr_01e_5ac8:
    ld de, $5b1b

jr_01e_5acb:
    xor a
    ldh [$ba], a

Jump_01e_5ace:
    push hl

jr_01e_5acf:
    push bc
    push hl
    ldh a, [$8b]
    ld b, a

jr_01e_5ad4:
    ld a, [de]
    add b
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_01e_5ad4

    pop hl
    ld bc, $0014
    add hl, bc
    pop bc
    dec b
    jr nz, jr_01e_5acf

    ld a, $01
    ldh [$ba], a
    pop hl
    ret


    inc h
    ld e, e
    ld [hl], a
    ld d, l
    ld e, e
    ld d, a
    ld a, b
    ld e, e
    scf
    adc l
    ld e, e
    ld [hl], a
    cp [hl]
    ld e, e
    ld [hl], a
    rst $28
    ld e, e
    ld [hl], a
    jr nz, jr_01e_5b5a

    add [hl]
    ld d, b
    ld e, h
    inc a
    ld sp, $4638
    ld d, h
    ld e, e
    ld [hl-], a
    add hl, sp
    ld b, a
    ld d, l
    ld e, h
    inc [hl]
    dec sp
    ld c, c
    ld d, a
    ld e, [hl]
    ld [hl], $3d
    ld c, e
    ld e, c
    ld h, b
    scf
    ld a, $4c
    ld e, d
    ld h, c
    ld sp, $5b46
    inc [hl]
    ld c, c
    ld e, [hl]
    scf
    ld c, h
    ld h, c
    nop
    rlca
    ld c, $15
    inc e
    inc hl
    ld a, [hl+]
    ld bc, $0f08
    ld d, $1d
    inc h
    dec hl
    ld [bc], a
    add hl, bc
    db $10
    rla
    ld e, $25
    inc l
    inc bc
    ld a, [bc]
    ld de, $1f18
    ld h, $2d
    inc b
    dec bc
    ld [de], a
    add hl, de
    jr nz, jr_01e_5b6d

    ld l, $05
    inc c
    inc de
    ld a, [de]
    ld hl, $2f28
    ld b, $0d
    inc d
    dec de
    ld [hl+], a
    add hl, hl
    jr nc, jr_01e_5b56

jr_01e_5b56:
    rlca
    ld c, $15
    inc e

jr_01e_5b5a:
    inc hl
    ld a, [hl+]
    ld bc, $0f08
    ld d, $1d
    inc h
    dec hl
    inc bc
    ld a, [bc]
    ld de, $1f18
    ld h, $2d
    inc b
    dec bc
    ld [de], a

jr_01e_5b6d:
    add hl, de
    jr nz, jr_01e_5b97

    ld l, $05
    inc c
    inc de
    ld a, [de]
    ld hl, $2f28
    nop
    rlca
    ld c, $15
    inc e
    inc hl
    ld a, [hl+]
    ld [bc], a
    add hl, bc
    db $10
    rla
    ld e, $25
    inc l
    inc b
    dec bc
    ld [de], a
    add hl, de
    jr nz, @+$29

    ld l, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01e_5b97:
    nop
    nop
    add hl, de
    nop
    ld [bc], a
    ld b, $0b
    db $10
    inc d
    ld a, [de]
    nop
    nop
    rlca
    inc c
    ld de, $1b15
    nop
    inc bc
    ld [$120d], sp
    ld d, $1c
    nop
    inc b
    add hl, bc
    ld c, $13
    rla
    dec e
    rra
    dec b
    ld a, [bc]
    rrca
    ld bc, $1e18
    jr nz, jr_01e_5bbf

jr_01e_5bbf:
    nop
    nop
    jr nc, jr_01e_5bc3

jr_01e_5bc3:
    scf
    nop
    nop
    nop
    dec hl
    ld sp, $3834
    dec a
    ld hl, $2c26
    ld bc, $3935
    ld a, $22
    daa
    dec l
    ld [hl-], a
    ld [hl], $01
    nop
    inc hl
    jr z, jr_01e_5c0b

    inc sp
    ld bc, $003a
    inc h
    add hl, hl
    cpl
    ld bc, $3b01
    nop
    dec h
    ld a, [hl+]
    ld bc, $0101
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, a
    ld c, l
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld c, [hl]
    ld d, d
    ld d, [hl]
    ld e, e
    ccf
    ld b, e
    ld c, c
    ld c, a
    ld d, e
    ld d, a
    ld e, h

jr_01e_5c0b:
    ld b, b
    ld b, h
    ld c, d
    ld d, b
    ld d, h
    ld e, b
    nop
    ld b, c
    ld b, l
    ld c, e
    ld d, c
    ld c, h
    ld e, c
    ld e, l
    ld b, d
    ld b, [hl]
    ld c, h
    ld c, h
    ld d, l
    ld e, d
    ld e, [hl]
    ld sp, $3232
    ld [hl-], a
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $36
    scf
    jr c, jr_01e_5c61

    add hl, sp
    ld a, [hl-]
    ld a, [hl-]
    dec sp
    jr c, jr_01e_5c6f

    dec a
    ld a, $3e
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld b, e
    ld c, b
    ld c, c
    ld c, d
    ld b, c
    ld b, e
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, b
    ld d, b
    ld d, c
    ld d, d
    ld b, e
    ld d, l
    ld d, [hl]
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    ld b, e
    ld d, a
    ld e, b
    ld d, h
    ld d, h

jr_01e_5c61:
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld b, e
    ld e, c
    ld e, d
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_01e_5c6f:
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ldh a, [rOBP0]
    push af
    ld a, [$cc79]
    ldh [rOBP0], a
    ld d, $37
    ld a, $03
    ld [$d08b], a
    call Call_01e_5c97
    pop af
    ldh [rOBP0], a
    ret


    ld d, $71
    ld a, $14
    ld [$d08b], a
    call Call_01e_5c97
    jp Jump_000_0082


Call_01e_5c97:
    ld c, a
    ld a, $01
    call Call_01e_57e8
    call Call_01e_5d2a
    call Call_01e_5d52
    ld hl, $c300
    ld [hl], $00

jr_01e_5ca8:
    ld hl, $cd3d
    ld de, $0000
    ld a, [$d08b]
    ld c, a

jr_01e_5cb2:
    push bc
    push hl
    push de
    ld a, [hl]
    ld [$d08a], a
    call Call_01e_5d16
    call Call_01e_5cdb
    pop de
    ld hl, $0004
    add hl, de
    ld e, l
    ld d, h
    pop hl
    ld a, [$d08a]
    ld [hl+], a
    pop bc
    dec c
    jr nz, jr_01e_5cb2

    call Call_000_3dd7
    ld hl, $c300
    ld a, [hl]
    cp $68
    jr nz, jr_01e_5ca8

    ret


Call_01e_5cdb:
    ld hl, $c300
    add hl, de
    ld a, [hl]
    inc a
    inc a
    cp $70
    jr c, jr_01e_5ce8

    ld a, $a0

jr_01e_5ce8:
    ld [hl+], a
    ld a, [$d08a]
    ld b, a
    ld de, $5d0d
    and $7f
    add e
    jr nc, jr_01e_5cf6

    inc d

jr_01e_5cf6:
    ld e, a
    ld a, b
    and $80
    jr nz, jr_01e_5d03

    ld a, [de]
    add [hl]
    ld [hl+], a
    inc hl
    xor a
    jr jr_01e_5d0b

jr_01e_5d03:
    ld a, [de]
    ld b, a
    ld a, [hl]
    sub b
    ld [hl+], a
    inc hl
    ld a, $20

jr_01e_5d0b:
    ld [hl], a
    ret


    nop
    ld bc, $0503
    rlca
    add hl, bc
    dec bc
    dec c
    rrca

Call_01e_5d16:
    ld a, [$d08a]
    inc a
    ld b, a
    and $7f
    cp $09
    ld a, b
    jr nz, jr_01e_5d26

    and $80
    xor $80

jr_01e_5d26:
    ld [$d08a], a
    ret


Call_01e_5d2a:
    ld hl, $c301
    ld de, $5d3e
    ld a, [$d08b]
    ld c, a

jr_01e_5d34:
    ld a, [de]
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    inc de
    dec c
    jr nz, jr_01e_5d34

    ret


    jr c, jr_01e_5d80

    ld d, b
    ld h, b
    ld [hl], b
    adc b
    sub b
    ld d, [hl]
    ld h, a
    ld c, d
    ld [hl], a
    add h
    sbc b
    ld [hl-], a
    ld [hl+], a
    ld e, h
    ld l, h
    ld a, l
    adc [hl]
    sbc c

Call_01e_5d52:
    ld hl, $cd3d
    ld de, $5d63
    ld a, [$d08b]
    ld c, a

jr_01e_5d5c:
    ld a, [de]
    ld [hl+], a
    inc de
    dec c
    jr nz, jr_01e_5d5c

    ret


    nop
    add h
    ld b, $81
    ld [bc], a
    adc b
    ld bc, $0583
    adc c
    add hl, bc
    add b
    rlca
    add a
    inc bc
    add d
    inc b
    add l
    ld [$1186], sp
    db $10
    sub e
    ld hl, $8000
    ld bc, $0031

jr_01e_5d80:
    call Call_000_1848
    xor a
    ldh [$ae], a
    ld hl, $9800
    call Call_01e_5e0d
    ld a, $90
    ldh [$b0], a
    ld hl, $9b20
    call Call_01e_5e0d
    ld a, $38
    ldh [$b0], a
    call Call_01e_52fd
    ld hl, $9800
    call Call_01e_5e0d
    call Call_01e_5801
    call Call_000_3dd7
    ld de, $0208
    call Call_01e_5de9
    call Call_01e_539e
    call Call_000_0082
    ld a, $90
    ldh [$b0], a
    ld hl, $9c00
    call Call_01e_5e0d
    xor a
    ldh [$b0], a
    call Call_000_3719
    ld hl, $9800
    call Call_01e_5e0d
    call Call_000_190f
    call Call_000_3dd7
    call Call_000_3725
    ld hl, $9c00
    jp Jump_01e_5e0d


    call Call_000_3e94
    ld a, c
    ldh [$8b], a
    ld a, b
    push hl
    call Call_01e_5842
    pop hl
    jp Jump_01e_5ace


Call_01e_5de9:
    ldh a, [$ae]
    ld [$cd3d], a

jr_01e_5dee:
    ld a, [$cd3d]
    add d
    ldh [$ae], a
    ld c, $02
    call Call_000_3739
    ld a, [$cd3d]
    sub d
    ldh [$ae], a
    ld c, $02
    call Call_000_3739
    dec e
    jr nz, jr_01e_5dee

    ld a, [$cd3d]
    ldh [$ae], a
    ret


Call_01e_5e0d:
Jump_01e_5e0d:
    ld a, h
    ldh [$bd], a
    ld a, l
    ldh [$bc], a
    jp Jump_000_3dd7


Jump_01e_5e16:
    ld a, [$d057]
    cp $02
    jr z, @+$3a

    ld a, [$d11e]
    ld b, a
    and $f0
    swap a
    ld c, a
    ld a, b
    and $0f
    ld [$cd3d], a
    ld hl, $5e50
    ld a, [$cf91]
    cp $04
    ld b, $c1
    jr z, jr_01e_5e40

    cp $03
    ld b, $c5
    jr z, jr_01e_5e40

    ld b, $c6

jr_01e_5e40:
    ld a, b

jr_01e_5e41:
    ld [$d07c], a
    push bc
    push hl
    call Call_01e_40f1
    pop hl
    ld a, [hl+]
    pop bc
    dec c
    jr nz, jr_01e_5e41

    ret


    jp $c2c8


    jp $3ea6


    pop bc
    ld [$d07c], a
    call Call_01e_40f1
    ld a, $95
    call Call_000_23b1
    ld a, $c4
    ld [$d07c], a
    jp Jump_01e_40f1


Call_01e_5e6a:
    call Call_000_3748
    ld a, [$d05b]
    and $7f
    ret z

    cp $0a
    ld a, $20
    ld b, $30
    ld c, $a6
    jr z, jr_01e_5e8b

    ld a, $e0
    ld b, $ff
    ld c, $b0
    jr nc, jr_01e_5e8b

    ld a, $50
    ld b, $01
    ld c, $a7

jr_01e_5e8b:
    ld [$c0f1], a
    ld a, b
    ld [$c0f2], a
    ld a, c
    jp Jump_000_23b1


    ld a, [$cd4d]
    cp $52
    jr z, jr_01e_5ec8

    ld c, $08

jr_01e_5e9f:
    push bc
    ld hl, $c391
    ld a, $01
    ld [$d08a], a
    ld c, $02
    call Call_01e_5339
    ld hl, $c399
    ld a, $ff
    ld [$d08a], a
    ld c, $02
    call Call_01e_5339
    ldh a, [rOBP1]
    xor $64
    ldh [rOBP1], a
    call Call_000_20af
    pop bc
    dec c
    jr nz, jr_01e_5e9f

    ret


jr_01e_5ec8:
    ld c, $02

jr_01e_5eca:
    push bc
    ld c, $08
    call Call_01e_5eed
    call Call_01e_5f30
    ld c, $08
    call Call_01e_5eed
    call Call_01e_5f30
    ld hl, $c390
    ld a, $02
    ld [$d08a], a
    ld c, $04
    call Call_01e_5352
    pop bc
    dec c
    jr nz, jr_01e_5eca

    ret


Call_01e_5eed:
jr_01e_5eed:
    push bc
    ld hl, $c391
    ld a, $01
    ld [$d08a], a
    ld c, $01
    call Call_01e_5339
    ld hl, $c395
    ld a, $02
    ld [$d08a], a
    ld c, $01
    call Call_01e_5339
    ld hl, $c399
    ld a, $fe
    ld [$d08a], a
    ld c, $01
    call Call_01e_5339
    ld hl, $c39d
    ld a, $ff
    ld [$d08a], a
    ld c, $01
    call Call_01e_5339
    ldh a, [rOBP1]
    xor $64
    ldh [rOBP1], a
    call Call_000_20af
    pop bc
    dec c
    jr nz, jr_01e_5eed

    ret


Call_01e_5f30:
    ld hl, $c390
    ld de, $cee9
    ld bc, $0008
    call Call_000_00b5
    ld hl, $c398
    ld de, $c390
    ld bc, $0008
    call Call_000_00b5
    ld hl, $cee9
    ld de, $c398
    ld bc, $0008
    jp Jump_000_00b5


    ld a, $01
    ld [$cd50], a
    ld a, [$cfcb]
    push af
    ld a, $ff
    ld [$cfcb], a
    ld a, $e4
    ldh [rOBP1], a
    call Call_01e_5fc0
    ld b, $03
    ld hl, $7055
    call Call_000_35d6
    ld c, $08

jr_01e_5f73:
    push bc
    call Call_01e_5f92
    ld bc, $5f7e
    push bc
    ld c, $04
    jp hl


    ldh a, [rOBP1]
    xor $64
    ldh [rOBP1], a
    call Call_000_3dd7
    pop bc
    dec c
    jr nz, jr_01e_5f73

    pop af
    ld [$cfcb], a
    jp Jump_000_0997


Call_01e_5f92:
    ld a, [$c109]
    ld hl, $5fb0
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld [$d08a], a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld hl, $c390
    ld d, $00
    add hl, de
    ld e, l
    ld d, h
    pop hl
    ret


    rst $38
    nop
    ld d, b
    ld d, e
    ld bc, $5000
    ld d, e
    ld bc, $3701
    ld d, e
    rst $38
    ld bc, $5337

Call_01e_5fc0:
    ld hl, $8fc0
    ld c, $04

jr_01e_5fc5:
    push bc
    push hl
    call Call_01e_5fd4
    pop hl
    ld bc, $0010
    add hl, bc
    pop bc
    dec c
    jr nz, jr_01e_5fc5

    ret


Call_01e_5fd4:
    ld de, $5fdd
    ld bc, $1e01
    jp Jump_000_1848


    nop
    jr jr_01e_5ffa

    ld h, [hl]
    inc b
    ld b, d
    dec bc
    add c
    ld d, [hl]
    adc c
    ld a, [de]
    ld l, $4c
    ld [de], a
    jr c, jr_01e_6025

    ccf
    ld [hl-], a
    rra
    jr jr_01e_6021

    ccf
    daa
    ccf
    rra
    add hl, de
    rra
    add hl, de
    rla

jr_01e_5ffa:
    rra
    rrca
    rrca
    db $fc
    ld c, h
    ld hl, sp+$18
    db $f4
    db $fc
    db $e4
    db $fc
    ld hl, sp-$68
    ld hl, sp-$68
    add sp, -$08
    ldh a, [$f0]
    ccf
    inc sp
    inc l
    ccf
    dec hl

Jump_01e_6012:
    ccf
    add hl, de
    ld e, $1c
    rra
    rla
    rra
    ld de, $0e1f
    ld c, $fc
    call z, $fc34

jr_01e_6021:
    call nc, $98fc
    ld a, b

jr_01e_6025:
    jr c, @-$06

    add sp, -$08
    adc b
    ld hl, sp+$70
    ld [hl], b
    rst $18
    ret nc

    ei
    db $fc
    ccf
    ccf

jr_01e_6033:
    inc a
    daa
    ccf
    daa
    ld e, $1f
    inc b
    rlca
    inc bc
    inc bc
    ldh a, [rNR10]
    ldh [$60], a
    jr nc, jr_01e_6033

    ld [hl], b
    ldh a, [$d0]
    ldh a, [rSVBK]
    ldh a, [rNR41]
    ldh [$c0], a
    ret nz

    jr jr_01e_6067

    jr jr_01e_6069

    jr jr_01e_606b

    jr jr_01e_606d

    jr jr_01e_606f

    jr jr_01e_6071

    jr jr_01e_6073

    jr jr_01e_6075

    ret nz

    ret nz

    ldh a, [$f0]
    inc a
    inc a
    rrca
    rrca
    inc bc
    inc bc

jr_01e_6067:
    nop
    nop

jr_01e_6069:
    nop
    nop

jr_01e_606b:
    nop
    nop

jr_01e_606d:
    ld [bc], a
    ld [bc], a

jr_01e_606f:
    rlca
    dec b

jr_01e_6071:
    rlca
    dec b

jr_01e_6073:
    adc l
    adc e

jr_01e_6075:
    db $ed
    db $eb
    sbc $d6
    cp b
    cp b
    ld h, b
    ld h, b
    ld d, $62
    ld a, [de]
    ld h, d
    ld e, $62
    dec h
    ld h, d
    inc l
    ld h, d
    jr nc, jr_01e_60eb

    scf
    ld h, d
    ld a, $62
    ld b, l
    ld h, d
    ld d, b
    ld h, d
    ld d, h
    ld h, d
    ld e, b
    ld h, d
    ld e, h
    ld h, d
    ld h, b
    ld h, d
    ld l, d
    ld h, d
    ld [hl], b
    ld h, d
    ld [hl], a
    ld h, d
    ld a, e
    ld h, d
    add c
    ld h, d
    add a
    ld h, d
    adc [hl]
    ld h, d
    sub d
    ld h, d
    sbc c
    ld h, d
    sbc l
    ld h, d
    and h
    ld h, d
    xor b
    ld h, d
    xor h
    ld h, d
    or d
    ld h, d
    or [hl]
    ld h, d
    cp d
    ld h, d
    pop bc
    ld h, d
    ret z

    ld h, d
    ret c

    ld h, d
    db $dd
    ld h, d
    and $62
    ldh a, [$62]
    rst $30
    ld h, d
    ei
    ld h, d
    add hl, bc
    ld h, e
    jr jr_01e_6130

    inc e
    ld h, e
    inc hl
    ld h, e
    daa
    ld h, e
    jr nc, jr_01e_6138

    inc [hl]
    ld h, e
    jr c, jr_01e_613c

    ld b, d
    ld h, e
    ld c, h
    ld h, e
    ld d, b
    ld h, e
    ld e, l
    ld h, e
    ld h, [hl]
    ld h, e
    ld l, l
    ld h, e
    ld [hl], c
    ld h, e
    ld a, e
    ld h, e
    add d
    ld h, e

jr_01e_60eb:
    add [hl]
    ld h, e
    adc l
    ld h, e
    sub e

Jump_01e_60f0:
    ld h, e
    sbc d
    ld h, e
    and c
    ld h, e
    and a
    ld h, e
    xor e
    ld h, e
    or e
    ld h, e
    call nz, $c863
    ld h, e
    call z, $d463
    ld h, e
    call c, $e463
    ld h, e
    cp $63
    ld b, $64
    ld de, $2064
    ld h, h
    daa
    ld h, h
    ld l, $64
    scf
    ld h, h
    ld a, $64
    ld b, d
    ld h, h
    ld b, [hl]
    ld h, h
    ld c, d
    ld h, h
    ld d, c
    ld h, h
    ld d, l
    ld h, h
    ld h, d
    ld h, h
    ld l, h
    ld h, h
    ld [hl], b
    ld h, h
    ld [hl], a
    ld h, h
    add c
    ld h, h
    sub b
    ld h, h
    sub h
    ld h, h
    sbc c

jr_01e_6130:
    ld h, h
    and d
    ld h, h
    xor b
    ld h, h
    xor [hl]
    ld h, h
    or c

jr_01e_6138:
    ld h, h
    or [hl]
    ld h, h
    cp c

jr_01e_613c:
    ld h, h
    jp $c864


    ld h, h
    ret nc

    ld h, h
    call nc, $d964
    ld h, h
    sbc $64
    push hl
    ld h, h
    jp hl


    ld h, h
    db $fd
    ld h, h
    ld b, $65
    db $10
    ld h, l
    add hl, de
    ld h, l
    ld a, [hl-]
    ld h, l
    ld b, d
    ld h, l
    ld c, [hl]
    ld h, l
    ld e, b
    ld h, l
    ld e, a
    ld h, l
    ld l, d
    ld h, l
    ld [hl], c
    ld h, l
    ld a, h
    ld h, l
    ld a, a
    ld h, l
    add e
    ld h, l
    sub d
    ld h, l
    sub [hl]
    ld h, l
    sbc d
    ld h, l
    and c
    ld h, l
    and l
    ld h, l
    xor l
    ld h, l
    or h
    ld h, l
    cp b
    ld h, l
    ret z

    ld h, l
    db $d3
    ld h, l
    db $dd
    ld h, l
    pop hl
    ld h, l
    push hl
    ld h, l
    jp hl


    ld h, l
    di
    ld h, l
    ld a, [$fe65]
    ld h, l
    inc c
    ld h, [hl]
    db $10
    ld h, [hl]
    add hl, de
    ld h, [hl]
    inc hl
    ld h, [hl]
    daa
    ld h, [hl]
    ld l, $66
    inc a
    ld h, [hl]
    ld b, b
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld e, d
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld l, e
    ld h, [hl]
    ld [hl], h
    ld h, [hl]
    ld a, d
    ld h, [hl]
    ld a, l
    ld h, [hl]
    add b
    ld h, [hl]
    add a
    ld h, [hl]
    adc e
    ld h, [hl]
    adc a
    ld h, [hl]
    sub e
    ld h, [hl]
    sbc d
    ld h, [hl]
    and h
    ld h, [hl]
    xor b
    ld h, [hl]
    or d
    ld h, [hl]
    cp l
    ld h, [hl]
    push bc
    ld h, [hl]
    call $d166
    ld h, [hl]
    ld d, $62
    db $ed
    ld h, [hl]
    di
    ld h, [hl]
    or $66
    ld sp, hl
    ld h, [hl]
    db $fc
    ld h, [hl]
    nop
    ld h, a
    inc b
    ld h, a
    ld [$0c67], sp
    ld h, a
    inc c
    ld h, a
    inc de
    ld h, a
    inc de
    ld h, a
    dec de
    ld h, a
    dec de
    ld h, a
    ld [hl+], a
    ld h, a
    ld [hl+], a
    ld h, a
    ld a, [hl+]
    ld h, a
    ld a, [hl+]
    ld h, a
    ld sp, $3167
    ld h, a
    jr c, jr_01e_6258

    jr c, jr_01e_625a

    ccf
    ld h, a
    ld b, [hl]
    ld h, a
    ld c, l
    ld h, a
    ld d, h
    ld h, a
    ld e, a
    ld h, a
    reti


    ld h, [hl]
    push hl
    ld h, [hl]
    jp hl


    ld h, [hl]
    ld e, e
    ld h, a
    db $dd
    ld h, [hl]
    pop hl
    ld h, [hl]
    ld h, d
    ld h, a
    ldh a, [$66]
    ld h, l
    ld h, a
    ld l, c
    ld h, a
    inc de
    ld h, d
    ret c

    rst $38
    rst $38
    ld [$0100], sp
    rst $38
    ld [$0301], sp
    rst $38
    dec b
    ld [bc], a
    ld bc, $0205
    ld bc, $04ff
    inc bc
    ld [bc], a
    inc b
    inc bc
    ld [bc], a
    rst $38
    ld b, [hl]
    inc b
    inc b
    rst $38
    ld [$0100], sp
    inc b
    dec b
    ld d, d
    rst $38
    ld b, $06
    ld [bc], a
    ld b, [hl]
    rst $38
    ld de, $06ff
    rlca
    ld [bc], a
    db $10
    rst $38
    cpl
    rst $38
    ld b, $08
    ld [bc], a
    db $fd
    rst $38
    ld b, [hl]
    rst $38
    dec hl
    db $fc
    rst $38
    rst $38
    ld b, $09
    rrca
    rst $38
    ld [$2a0a], sp
    rst $38

jr_01e_6258:
    ld b, $0b

jr_01e_625a:
    ld a, [hl+]
    rst $38
    inc b
    inc c
    ld d, $ff
    ld b, [hl]
    dec c
    jr jr_01e_62aa

    dec c
    jr @+$48

    dec c
    jr @+$01

    cp $0e
    inc b
    rst $38
    ld d, $ff
    ld b, [hl]
    rrca
    db $10
    ld b, $ff
    ld [bc], a
    rst $38
    ld b, [hl]
    db $10
    inc b
    rst $38
    ld b, [hl]
    ld de, $db10
    rst $38
    rst $38
    ld b, [hl]
    ld [de], a
    inc b
    db $dd
    rst $38
    rst $38
    inc b
    inc de
    inc hl
    inc b
    inc de
    inc hl
    rst $38
    ld b, $14
    ld [bc], a
    rst $38
    ld bc, $1615
    ld [$01ff], sp
    rst $38
    ld c, b
    ld d, $05
    rst $38
    ld [$0117], sp
    ld [$0117], sp
    rst $38
    ld b, [hl]
    jr jr_01e_62ab

    rst $38
    ld b, [hl]
    add hl, de

jr_01e_62aa:
    inc b

jr_01e_62ab:
    rst $38
    cp $1a
    ld b, [hl]
    rst $38
    inc b
    rst $38
    ld b, [hl]
    dec de
    jr z, @+$01

    ld b, [hl]
    inc e
    dec b
    rst $38
    ld b, $1d
    ld b, l
    ld b, [hl]
    rst $38
    dec b
    rst $38
    ld [bc], a
    ld e, $46
    ld [bc], a
    rst $38
    ld b, [hl]
    rst $38
    ld b, d
    rra
    dec b
    ld b, d
    rst $38
    dec b
    ld b, d
    rst $38
    dec b
    ld b, d
    rst $38
    dec b
    ld b, d
    rst $38
    dec b
    rst $38
    ld a, [c]
    ld c, b
    pop af
    rst $38
    rst $38
    ld a, [c]
    ld c, b
    cp $ff
    cp $ff
    pop af
    rst $38
    rst $38
    inc b
    ld [hl+], a
    inc hl
    inc b
    ld [hl+], a
    inc hl
    inc b
    ld [hl+], a
    inc hl
    rst $38
    ld a, [c]
    ld c, b
    cp $23
    pop af
    rst $38
    rst $38
    ld b, [hl]
    inc h
    inc b
    rst $38
    ldh a, [rOBP0]
    ld b, $ff
    dec l
    db $fc
    rst $38
    ld a, [c]
    rst $38
    cp $25
    pop af
    rst $38
    rst $38
    ld a, [c]
    add h
    pop hl
    rst $38
    pop af
    add h
    pop hl
    rst $38
    ld a, [c]
    add h
    pop hl
    rst $38
    pop af
    add h
    rst $38
    ld b, $27
    nop
    rst $38
    dec b
    jr z, jr_01e_6320

    dec b

jr_01e_6320:
    jr z, jr_01e_6323

    rst $38

jr_01e_6323:
    inc bc
    add hl, hl
    ld bc, $fdff
    ld c, b
    cp $2a
    cp $2a
    db $fc
    rst $38
    rst $38
    ld [$022b], sp
    rst $38
    ld b, [hl]
    inc l
    ld [de], a
    rst $38
    ld b, [hl]
    dec l
    dec d
    ld b, [hl]
    dec l
    dec d
    ld b, [hl]
    dec l
    dec d
    rst $38
    ld b, [hl]
    ld l, $12
    ld d, b
    rst $38
    ld b, b
    ld d, b
    rst $38
    ld b, b
    rst $38
    ld b, $2f
    ld sp, $46ff
    dec l
    dec d
    ld b, [hl]
    dec l
    dec d
    ld b, [hl]
    rrca
    db $10
    ld b, [hl]
    rst $38
    dec b
    rst $38
    db $fd
    ld c, b
    cp $2a
    cp $2a
    db $fc
    rst $38
    rst $38
    ld b, [hl]
    ld [hl-], a
    inc de
    ld b, [hl]
    ld [hl-], a
    inc d
    rst $38
    ld b, [hl]
    inc sp
    ld de, $46ff
    inc [hl]
    rra
    ld b, [hl]
    inc [hl]
    inc c
    ld b, [hl]
    inc [hl]
    dec c
    rst $38
    ldh a, [rIE]
    ld a, [$fc38]
    rst $38
    rst $38
    ld b, $36
    inc l
    rst $38
    ld b, $37
    ld a, [de]
    ld b, $37
    ld a, [de]
    rst $38
    ld a, [$0638]
    scf
    ld a, [de]
    rst $38
    inc bc
    add hl, sp
    ld l, $10
    rst $38
    cpl
    rst $38
    inc b
    ld a, [hl-]
    jr c, jr_01e_63a2

    scf
    jr c, @+$01

    inc bc

jr_01e_63a2:
    dec sp
    ld l, $f8
    rst $38
    rst $38
    ld [de], a
    inc a
    dec [hl]
    rst $38
    inc bc
    dec a
    ld l, $e1
    rst $38
    pop hl
    rst $38
    rst $38
    db $fd
    ld c, b
    ld [c], a
    rst $38
    ld [bc], a
    ld a, $2e
    cp $ff
    cp $ff
    ld b, [hl]
    inc b
    inc b
    db $fc
    rst $38
    rst $38
    ld [$013f], sp
    rst $38
    ld b, [hl]
    ld b, b
    inc b
    rst $38
    db $f4
    ld b, c
    ld b, $ff
    ld bc, $ffdd
    rst $38
    db $f4
    ld b, d
    ld b, [hl]
    rst $38
    inc b
    db $dd
    rst $38
    rst $38
    db $f4
    ld b, e
    ld b, [hl]
    rst $38
    inc b
    db $dd
    rst $38
    rst $38
    sbc $ff
    ld b, c
    adc e
    ld c, [hl]
    rst $18
    rst $38
    db $f4
    rst $38
    ld b, d
    ld b, h
    ld c, a
    pop hl
    rst $38
    pop hl
    rst $38
    db $dd
    rst $38
    ld b, c
    ld b, h
    ld d, b
    call c, $fbff
    rst $38
    rst $38
    ld a, [c]
    ld c, b
    pop af
    rst $38
    ld b, [hl]
    ld b, $04
    rst $38
    ldh a, [rDMA]
    ld b, $ff
    ld hl, $ff06
    ld [hl+], a
    db $fc
    rst $38
    rst $38
    ldh a, [rBGP]
    cp $ff
    ld b, $ff
    ld hl, $ff06
    ld [hl+], a
    cp $ff
    db $fc
    rst $38
    rst $38
    ld b, [hl]
    ld c, b
    dec de
    ld d, l
    ld c, l
    inc e
    rst $38
    ldh a, [rOBP1]
    ld [c], a
    rst $38
    db $fc
    rst $38
    rst $38
    rst $20
    ld c, d
    ld b, c
    add b
    ld b, h
    ld bc, $160c
    rst $38
    ld b, $4b
    ld l, $06
    rst $38
    ld bc, $06ff
    ld c, h
    ld [hl], $ff
    ld b, $4d
    ld [hl], $ff
    ld b, $4e
    ld [hl], $ff
    ldh a, [rVBK]
    and $ff
    db $fc
    rst $38
    rst $38
    ld [$3750], sp
    rst $38
    ld b, [hl]
    ld d, c
    rra
    ld b, [hl]
    rst $38
    inc c
    ld b, [hl]
    rst $38
    dec c
    ld b, [hl]
    rst $38
    ld c, $ff
    ld b, [hl]
    ld d, d
    inc c
    ld b, [hl]
    rst $38
    dec c
    ld b, [hl]
    rst $38
    ld c, $ff
    ld b, d
    ld d, e
    add hl, hl
    rst $38
    ld b, c
    ld d, h
    add hl, hl
    ld b, c
    ld d, h
    add hl, hl
    rst $38
    ld b, d
    ld d, l
    add hl, hl
    ld [bc], a
    rst $38
    inc hl
    inc b
    rst $38
    inc hl
    rst $38
    db $fd
    ld d, [hl]
    cp $ff
    ld b, [hl]
    rst $38
    dec hl
    cp $ff
    ld b, d
    ld d, h
    add hl, hl
    db $fc
    rst $38
    rst $38
    inc b
    ld d, a
    jr nc, @+$01

    ei
    ld e, b
    ei
    ld e, b
    rst $38
    cp $59
    ei
    rst $38
    cp $59
    ei
    rst $38
    rst $38
    ld b, [hl]
    ld e, d
    inc b
    rst $30
    rst $38
    rst $38
    ld a, [$4638]
    ld e, e
    inc d
    rst $38
    ld hl, sp+$5c
    rst $38
    ld hl, sp+$5d
    ret c

    rst $38
    rst $38
    ld hl, sp+$5e
    rst $38
    ldh a, [$5f]
    ld b, [hl]
    rst $38
    ld b, e
    cp $ff
    db $fc
    rst $38
    rst $38
    ldh a, [$60]
    db $fc
    rst $38
    rst $38
    db $f4
    ld h, c
    ld b, [hl]
    rst $38
    inc b
    db $dd
    rst $38
    rst $38
    ld b, $62
    ld bc, $eeff
    ld h, e
    db $ed
    rst $38
    rst $38
    ld hl, sp+$5c
    ret c

    rst $38
    rst $38
    ld b, [hl]
    ld h, l
    ld hl, $6546
    ld [hl+], a
    rst $38
    ld b, [hl]
    ld h, [hl]
    ld [de], a
    rst $38
    db $fd
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    jp c, $dd67

    rst $38
    ld b, [hl]
    ld l, a
    inc sp
    rst $38
    di
    ld l, b
    ldh a, [rIE]
    ld [c], a
    rst $38
    db $fc
    rst $38
    rst $38
    ldh a, [rBCPD]
    ld b, [hl]
    rst $38
    ld b, e
    cp $ff
    db $fc
    rst $38
    rst $38
    ldh a, [rOCPS]
    ld [c], a
    rst $38
    ld [$fcff], a
    rst $38
    rst $38
    ld b, [hl]
    ld l, e
    jr z, jr_01e_6521

    rst $38
    ld a, [bc]
    ld sp, hl
    rst $38

jr_01e_6521:
    pop hl
    rst $38
    pop hl
    rst $38
    db $fd
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    ld sp, hl
    rst $38
    pop hl
    rst $38
    db $fc
    rst $38
    rst $38
    db $fd
    ld l, h
    ld b, [hl]
    rst $38
    ld a, $fc
    rst $38
    rst $38
    ldh a, [$6e]
    or $ff
    ld b, $ff
    ld d, c
    db $fc
    rst $38
    db $dd
    rst $38
    rst $38
    ldh a, [$6e]
    ld b, $ff
    ld b, e
    cp $ff
    db $fc
    rst $38
    rst $38
    ld b, [hl]
    ld l, a
    inc sp
    ld b, [hl]
    ld l, a
    inc sp
    rst $38
    ldh a, [rIE]
    ld b, [hl]
    ld [hl], b
    inc sp
    ld b, [hl]
    ld [hl], b
    inc sp
    db $fc
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ld a, [$fc38]
    rst $38
    rst $38
    db $fd
    rst $38
    ld b, [hl]
    ld [hl], d
    inc sp
    ld b, [hl]
    ld [hl], d
    inc sp
    db $fc
    rst $38
    rst $38
    ld [c], a
    ld [hl], e
    rst $38
    ld b, [hl]
    ld [hl], h
    inc b
    rst $38
    ld a, [c]
    add h
    pop hl
    rst $38
    pop af
    add h
    pop hl
    rst $38
    ld a, [c]
    add h
    pop hl
    rst $38
    pop af
    add h
    rst $38
    ld [$0176], sp
    rst $38
    ld b, e
    ld [hl], a
    inc [hl]
    rst $38
    ld b, h
    ld a, b
    ld b, c
    ld b, h
    ld a, b
    ld b, d
    rst $38
    ld b, [hl]
    ld a, e
    inc d
    rst $38
    ld sp, hl
    ld c, b
    ld b, [hl]
    ld a, d
    add hl, de
    db $fc
    rst $38
    rst $38
    ld b, [hl]
    ld a, e
    inc de
    ld b, [hl]
    ld a, e
    inc d
    rst $38
    ld [$027c], sp
    rst $38
    ld b, [hl]
    ld a, l
    rra
    ld b, [hl]
    rst $38
    jr nz, jr_01e_6605

    rst $38
    jr nz, jr_01e_6608

    rst $38
    inc c
    ld b, [hl]
    rst $38
    dec c
    rst $38
    or $48
    ld b, $37
    ld a, [de]
    ld [$02ff], sp
    rst $30
    rst $38
    rst $38
    ld [$2a7f], sp
    ld b, $83
    inc hl
    ld b, $83
    inc hl
    rst $38
    ld b, e
    add b
    ccf
    rst $38
    ld b, [hl]
    add c
    dec b
    rst $38
    ld b, h
    add d
    inc b
    rst $38
    ld b, $83
    inc hl
    ld b, $83
    inc hl
    ld b, $83
    inc hl
    rst $38
    ld [$2584], sp
    ld [$2584], sp
    rst $38
    ld [$0185], sp
    rst $38
    push hl
    ld c, b
    ld [$4c86], sp
    ldh a, [rIE]

jr_01e_6605:
    ld [c], a
    rst $38
    db $fc

jr_01e_6608:
    rst $38
    db $dd
    rst $38
    rst $38
    ld b, [hl]
    add a
    inc b
    rst $38
    db $fd
    ld c, b
    cp $88
    cp $ff
    db $fc
    rst $38

Jump_01e_6618:
    rst $38
    ld hl, sp-$77
    db $fd
    adc c
    ld [$0289], sp
    db $fc
    rst $38
    rst $38
    ld b, [hl]

Jump_01e_6624:
    adc d
    add hl, de
    rst $38
    ld b, e
    adc e
    ld b, c
    dec b
    rst $38
    ld d, l
    rst $38
    ld [$028c], sp
    cp $ff
    ld b, $ff
    ld hl, $ff06
    ld [hl+], a
    cp $ff
    rst $38
    ld b, $8d
    ld [de], a
    rst $38
    xor $8e
    db $ed
    rst $38
    ld b, [hl]
    add a
    inc b
    db $dd
    rst $38
    rst $38
    ld b, [hl]
    adc a
    ld hl, $8f44
    ld [hl+], a
    ld [$47ff], sp
    add sp, -$01
    rst $38
    ld d, $90
    dec [hl]
    rst $38
    ld b, $91
    rla
    ld b, $91
    rla
    ld b, $91
    rla
    ld b, $02
    ld [bc], a
    rst $38
    ld b, $92
    ld [hl], $ff
    ldh a, [rOBP0]
    cp $88
    cp $ff
    db $fc
    rst $38
    rst $38
    ld b, $2f
    ld sp, $5cd8
    rst $38
    db $eb
    sub l
    rst $38
    jp hl


    sub [hl]
    rst $38
    ld b, [hl]
    sub a
    dec b
    ld b, $ff
    ld a, [hl+]
    rst $38
    ld b, e
    sbc b
    inc [hl]
    rst $38
    inc b
    sbc c
    rrca
    rst $38
    ld b, $9a
    ld [bc], a
    rst $38
    db $10
    sbc e
    ld a, [hl-]
    db $10
    sbc e
    ld a, [hl-]
    rst $38
    inc b
    sbc h
    dec e
    inc bc
    sbc h
    ld e, $46
    sbc l
    inc b
    rst $38
    ld b, $9d
    ld [bc], a
    rst $38
    ldh a, [$9e]
    ld b, [hl]
    rst $38
    ld b, e
    cp $ff
    db $fc
    rst $38
    rst $38
    cp $9f
    ld b, [hl]
    rst $38
    ld hl, $ff46
    ld [hl+], a
    cp $ff
    rst $38
    cp $a0
    ld b, [hl]
    rst $38
    ld c, l
    cp $ff
    rst $38
    db $fd
    ld c, b
    ld b, [hl]
    and c
    inc b
    db $fc
    rst $38
    rst $38
    ld b, $a2
    rrca
    rst $38
    db $f4
    and e
    ld [$47ff], sp
    reti


    rst $38
    rst $38
    inc bc
    rst $38
    ld b, $ff
    inc bc
    rst $38
    rlca
    rst $38
    ld [bc], a
    rst $38
    ld [$04ff], sp
    rst $38
    add hl, bc
    rst $38
    inc b
    rst $38
    ld a, [bc]
    rst $38
    call c, $ffff
    rst $18
    rst $38
    rst $38
    db $dd
    rst $38
    rst $38
    push af
    rst $38
    rst $38
    db $e4
    rst $38
    rst $38
    add [hl]
    rst $38
    ld c, b
    rst $38
    add h
    rst $38
    ld c, c
    rst $38
    add [hl]
    rst $38
    ld c, d
    rst $38
    add [hl]
    rst $38
    ld c, e
    rst $38
    ldh a, [rIE]
    ld [c], a
    rst $38
    db $fc
    rst $38
    rst $38
    ldh a, [rIE]
    ld b, [hl]
    rst $38
    ld b, e
    db $fc
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ld [c], a
    rst $38
    db $fc
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ld b, [hl]
    rst $38
    ld b, e
    db $fc
    rst $38
    rst $38
    ldh a, [rIE]
    db $ec
    rst $38
    db $fc
    rst $38
    rst $38
    inc b
    inc de
    inc h
    inc b
    inc de
    inc h
    rst $38
    ld [$2713], sp
    ld [$2713], sp
    rst $38
    db $10
    sbc e
    ld a, [hl-]
    db $10
    sbc e
    ld a, [hl-]
    rst $38
    db $10
    sbc e
    dec sp
    db $10
    sbc e
    dec sp
    rst $38
    ld [$2584], sp
    ld [$2584], sp
    rst $38
    ld [$2684], sp
    ld [$2684], sp
    rst $38
    inc bc
    rst $38
    dec bc
    rst $38
    or $5a
    rst $38
    ei
    rst $38
    rst $38
    inc bc
    adc e
    ld d, e
    rst $38
    inc bc
    adc e
    ld d, h
    rst $38
    ld b, [hl]
    ld l, c
    ld c, d
    ld l, c
    ld d, c
    ld l, c
    ld e, e
    ld l, c
    add hl, de
    ld l, b
    inc hl
    ld l, b
    ld l, e
    ld l, b
    ld c, c
    ld l, b
    daa
    ld l, b
    adc l
    ld l, b
    sbc d
    ld l, b
    xor l
    ld l, b
    ld l, b
    ld l, c
    ld [hl], d
    ld l, c
    add l
    ld l, c
    jr nz, jr_01e_67f7

    ld l, d
    ld l, d
    cp [hl]
    ld l, b
    ld a, [hl+]
    ld l, c
    and d
    ld l, d
    or l
    ld l, d
    db $eb
    ld l, d
    ld b, l
    ld l, d
    ld a, [c]
    ld l, d
    rst $38
    ld l, d
    rra
    ld l, e
    ld b, h
    ld l, e
    ld [hl], l
    ld l, e
    add d
    ld l, e
    adc h
    ld l, e
    cp d
    ld l, e
    and c
    ld l, c
    cp [hl]
    ld l, e
    push bc
    ld l, e
    rst $08
    ld l, e
    and b
    ld l, h
    and a
    ld l, h
    xor [hl]
    ld l, h
    or l
    ld l, h
    ret nc

    ld l, h
    rst $10
    ld l, h
    dec sp
    ld l, h
    sub e
    ld l, h
    db $e3
    ld l, b
    dec b
    ld l, c
    pop af
    ld l, e
    or c
    ld l, c
    call c, $e969
    ld l, c
    add e
    ld l, d
    pop hl
    ld l, h
    db $eb
    ld l, h
    dec l
    ld l, l
    ld l, l
    ld l, l
    ld a, d
    ld l, l
    sub e
    ld l, l
    or d
    ld l, l
    inc b
    ld l, h
    cp h
    ld l, h
    add $6c
    cp $6c
    inc d
    ld l, l
    db $e3
    ld l, l
    ld a, [de]
    ld l, [hl]
    inc c
    ld l, e
    pop de
    ld l, d
    pop hl
    ld l, d
    db $76
    ld l, [hl]
    ld d, c
    ld l, [hl]

jr_01e_67f7:
    add b
    ld l, [hl]
    adc l
    ld l, [hl]
    and b
    ld l, [hl]
    xor d
    ld l, [hl]
    cp l
    ld l, [hl]
    jp z, $ce6e

    ld l, [hl]
    ret c

    ld l, [hl]
    pop af
    ld l, [hl]
    ld [$0c6c], sp
    ld l, h
    ld [hl+], a
    ld l, h
    inc b
    ld l, a
    rla
    ld l, a
    dec l
    ld l, a
    ld d, d
    ld l, a
    cp d
    ld l, b
    ld b, e
    ld [bc], a
    ld a, [de]
    nop
    ld [bc], a
    stop
    ld [bc], a
    inc bc
    nop
    ld b, c
    ld [bc], a
    stop
    dec bc
    inc bc
    jr nc, jr_01e_682b

jr_01e_682b:
    inc bc
    ld b, h
    nop
    inc bc
    sub h
    nop
    inc bc
    ld h, b
    nop
    inc bc
    halt
    inc bc
    sbc a
    nop
    inc bc
    adc l
    nop
    inc bc
    and b
    nop
    inc bc
    ld a, [de]
    nop
    inc bc
    and c
    nop
    inc bc
    inc [hl]
    nop
    dec bc
    inc bc
    jr nc, jr_01e_684d

jr_01e_684d:
    inc bc
    and d
    nop
    inc bc
    ld sp, $0300
    and e
    nop
    inc bc
    ld [hl-], a
    nop
    inc bc
    and h
    nop
    inc bc
    sub d
    nop
    inc bc
    and l
    nop
    inc bc
    dec d
    nop
    inc bc
    and [hl]
    nop
    inc bc
    inc [hl]
    nop
    dec bc
    inc bc
    jr nc, jr_01e_686f

jr_01e_686f:
    inc bc
    and d
    nop
    inc bc
    sub e
    nop
    inc bc
    ld h, c
    nop
    inc bc
    ld [hl], e
    nop
    inc bc
    and a
    nop
    inc bc
    inc sp
    nop
    inc bc
    xor b
    nop
    inc bc
    ld c, $00
    inc bc
    xor c
    nop
    inc bc
    inc [hl]
    nop
    inc b
    inc bc
    ld hl, $0404
    ld hl, $0304
    ld hl, $0504
    ld hl, $4604
    ld b, $1b
    nop
    rlca
    dec de
    nop
    ld [$0036], sp
    add hl, bc
    ld [hl], $00
    ld a, [bc]
    dec d
    nop
    ld a, [bc]
    dec d
    nop
    inc b
    ld bc, $002d
    inc bc
    cpl
    nop
    inc bc
    dec [hl]
    nop
    inc bc
    ld c, l
    nop
    ld b, c
    ld bc, $009d
    ld c, h
    dec bc
    ld h, $00
    inc c
    ld h, $00
    dec bc
    ld h, $00
    inc c
    ld h, $00
    dec bc
    jr z, jr_01e_68ce

jr_01e_68ce:
    inc c
    jr z, jr_01e_68d1

jr_01e_68d1:
    dec bc
    jr z, jr_01e_68d4

jr_01e_68d4:
    inc c
    jr z, jr_01e_68d7

jr_01e_68d7:
    dec bc
    daa
    nop
    inc c
    daa
    nop
    dec bc
    daa
    nop
    inc c
    daa
    nop
    ld c, e
    dec c
    inc bc
    inc bc
    ld c, $03
    inc bc
    rrca
    inc bc
    nop
    dec c
    ld de, $0d00
    ld de, $0d00
    scf
    nop
    dec c
    scf
    nop
    db $10
    ld hl, $1000
    ld hl, $1100
    dec de
    nop
    ld de, $001b
    ld c, h
    ld [de], a
    ld bc, $1200
    rrca
    nop
    ld [de], a
    dec de
    nop
    ld [de], a
    dec h
    nop
    inc de
    jr c, jr_01e_6915

jr_01e_6915:
    inc de
    jr c, @+$04

    inc d
    jr c, jr_01e_691b

jr_01e_691b:
    inc d
    jr c, @+$04

    dec d
    jr c, jr_01e_6921

jr_01e_6921:
    dec d
    jr c, jr_01e_6924

jr_01e_6924:
    ld d, $38
    nop
    ld d, $38
    nop
    ld l, c
    rla
    jr nc, jr_01e_692e

jr_01e_692e:
    rla
    add hl, sp
    nop
    rla
    ld a, [hl-]
    nop
    rla
    dec sp
    nop
    rla
    inc a
    nop
    rla
    dec a
    nop
    rla
    ld a, $00
    rla
    ccf
    nop
    rla
    rra
    nop
    ld b, c
    ld bc, $0017
    ld b, d
    ld bc, $000f
    ld bc, $001d
    ld b, e
    ld bc, $0012
    ld bc, $0015
    ld bc, $001c
    ld b, h
    ld bc, $000b
    ld bc, $0011
    ld bc, $0018
    ld bc, $001d
    ld b, e
    inc c
    jr nz, jr_01e_696c

jr_01e_696c:
    inc c
    ld hl, $0c00
    inc hl
    nop
    ld b, [hl]
    inc c
    jr nz, jr_01e_6978

    inc c
    dec d

jr_01e_6978:
    nop
    inc c
    ld hl, $0c02
    rla
    nop
    inc c
    inc hl
    ld [bc], a
    inc c
    add hl, de
    nop
    ld c, c
    inc c
    jr nz, jr_01e_698b

    inc c
    dec d

jr_01e_698b:
    ld [bc], a
    inc c
    rlca
    nop
    inc c
    ld hl, $0c02
    rla
    ld [bc], a
    inc c
    add hl, bc
    nop
    inc c
    inc hl
    ld [bc], a
    inc c
    add hl, de
    ld [bc], a
    inc c
    inc c
    nop
    add l
    inc c
    jr nc, jr_01e_69a8

    inc c
    ld b, b
    inc bc

jr_01e_69a8:
    inc c
    ld b, c
    inc bc
    inc c
    ld b, d
    inc bc
    inc c
    ld hl, $2e00
    jr jr_01e_69f7

    ld [bc], a
    ld [hl], l
    ld d, d
    inc b
    add hl, de
    ld b, e
    ld [bc], a
    ld [hl], l
    ld h, e
    inc b
    ld a, [de]
    ld b, e
    ld [bc], a
    ld [hl], l
    ld c, l
    inc b
    dec de
    ld b, e
    ld [bc], a
    ld [hl], l
    sub a
    inc b
    inc e
    ld b, e
    ld [bc], a
    ld [hl], l
    sbc b
    inc b
    dec e
    ld b, e
    ld [bc], a
    ld [hl], l
    ld e, b
    inc b
    ld e, $43
    ld [bc], a
    ld [hl], l
    dec de
    nop
    ld b, h
    rra
    inc h
    nop
    jr nz, jr_01e_6a02

    nop
    ld hl, $001a
    ld [hl+], a
    dec d
    nop
    ld d, d
    inc hl
    nop
    ld [bc], a
    inc hl
    ld [bc], a
    ld [bc], a
    inc hl
    inc b
    nop
    inc hl
    rlca
    ld [bc], a
    inc hl

jr_01e_69f7:
    ld [bc], a
    ld [bc], a
    inc hl
    inc b
    nop
    inc hl
    ld c, $02
    inc hl
    ld [bc], a
    ld [bc], a

jr_01e_6a02:
    inc hl
    inc c
    nop
    dec h
    rlca
    nop
    dec h
    ld c, $00
    dec h
    dec d
    nop
    inc h
    inc h
    ld [bc], a
    inc hl
    inc e
    ld [bc], a
    inc hl
    inc hl
    nop
    inc hl
    ld hl, $2402
    jr z, jr_01e_6a1d

jr_01e_6a1d:
    inc h
    jr z, jr_01e_6a20

jr_01e_6a20:
    ld c, h
    ld h, $0e
    ld [bc], a
    ld h, $16
    ld [bc], a
    ld h, $1c
    nop
    daa
    ld c, $02
    daa
    ld d, $02
    daa
    inc e
    nop
    jr z, jr_01e_6a43

    ld [bc], a
    jr z, jr_01e_6a4e

    ld [bc], a
    jr z, jr_01e_6a57

    nop
    add hl, hl

jr_01e_6a3d:
    ld c, $02
    add hl, hl
    ld d, $02
    add hl, hl

jr_01e_6a43:
    inc e
    nop
    ld c, h
    ld a, [hl+]
    dec b
    nop
    dec hl
    dec b
    ld [bc], a
    dec hl
    inc c

jr_01e_6a4e:
    ld [bc], a
    ld a, [hl+]
    ld de, $2b04
    ld de, $2b02
    rla

jr_01e_6a57:
    ld [bc], a
    ld a, [hl+]
    dec de
    inc b
    dec hl
    dec de
    ld [bc], a
    dec hl
    jr nz, jr_01e_6a63

    ld a, [hl+]
    cpl

jr_01e_6a63:
    inc b
    inc l
    nop
    ld [bc], a
    inc l
    nop
    nop
    adc b
    dec l
    ld b, h
    nop
    ld l, $45
    nop
    dec l
    ld b, [hl]
    nop
    ld l, $47
    nop
    dec l
    ld c, b
    nop
    ld l, $49
    nop
    dec l
    cpl
    nop
    ld l, $1a
    nop
    ld a, [hl+]
    cpl
    ld b, [hl]
    nop
    cpl
    ld c, d
    nop
    cpl
    ld c, e
    nop
    cpl
    ld c, h
    nop
    cpl
    ld c, l
    nop
    cpl
    ld c, [hl]
    nop
    cpl
    ld c, a
    nop
    cpl
    ld d, b
    nop
    cpl
    ld l, $00
    cpl
    ld d, c
    nop
    add [hl]
    jr nc, jr_01e_6ad6

    nop
    jr nc, jr_01e_6ada

    nop
    jr nc, jr_01e_6a3d

    nop
    jr nc, jr_01e_6abc

    nop
    jr nc, @+$11

    nop
    jr nc, @+$12

    nop
    ld c, c
    jr nc, jr_01e_6ac8

    nop
    jr nc, jr_01e_6acb

    inc bc

jr_01e_6abc:
    ld sp, $041c
    ld sp, $0421
    ld sp, $0026
    jr nc, jr_01e_6ad7

    ld [bc], a

jr_01e_6ac8:
    ld sp, $041d

jr_01e_6acb:
    ld sp, $0422
    ld sp, $0027
    add l
    inc bc
    ld sp, $0300

jr_01e_6ad6:
    ld [hl-], a

jr_01e_6ad7:
    nop
    inc bc
    sub d

jr_01e_6ada:
    nop
    inc bc
    ld c, $00
    inc bc
    stop
    ld b, e
    ld c, b
    ld [$4900], sp
    ld [$5a00], sp
    ld [$2200], sp
    dec [hl]
    ld d, d
    nop
    dec [hl]
    ld d, e
    nop
    ld b, h
    ld [hl], $54
    nop
    ld [hl], $55
    nop
    scf
    ld d, [hl]
    nop
    scf
    ld d, a
    nop
    and h
    ld [hl], $54
    nop
    ld [hl], $55
    nop
    scf
    ld d, [hl]
    nop
    scf
    ld d, a
    nop
    ld b, [hl]
    rla
    ld d, h
    nop
    rla
    ld d, l
    nop
    rla
    ld c, $00
    rla
    ld d, [hl]
    nop
    rla
    ld d, a
    nop
    rla
    inc de
    nop
    adc h
    jr c, @+$33

    nop
    add hl, sp
    ld sp, $3800
    ld [hl-], a
    nop
    add hl, sp
    ld [hl-], a
    nop
    jr c, @-$6c

    nop
    add hl, sp
    sub d
    nop
    jr c, jr_01e_6b42

    nop
    add hl, sp
    ld c, $00
    jr c, jr_01e_6b49

    nop
    add hl, sp
    rrca
    nop
    jr c, @+$12

    nop
    add hl, sp

jr_01e_6b42:
    stop
    ld d, b
    ld a, [hl-]
    ld [$3b00], sp

jr_01e_6b49:
    ld [$3c00], sp
    ld [$3d00], sp
    ld [$3e00], sp
    ld [$3f00], sp
    ld [$3e00], sp
    ld [$3f00], sp
    ld [$3a00], sp
    dec bc
    nop
    dec sp
    dec bc
    nop
    inc a
    dec bc
    nop
    dec a
    dec bc
    nop
    ld a, $0b
    nop
    ccf
    dec bc
    nop
    ld a, $0b
    nop
    ccf
    dec bc
    nop
    add h
    ld b, b
    ld sp, $4000
    ld [hl-], a
    nop
    ld b, b
    sub d
    nop
    ld b, b
    dec d
    nop
    ld b, e
    ld b, c
    ld e, b
    nop
    ld b, c
    ld e, c
    nop
    ld b, c
    ld hl, $af00
    inc h
    sbc d
    nop
    inc hl
    dec de
    ld [bc], a
    inc h
    ld [hl+], a
    nop
    inc hl
    ld d, $02
    inc hl
    dec e
    ld [bc], a
    inc h
    sbc b
    nop
    dec h
    inc l
    inc b
    dec h
    ld a, [hl+]
    inc b
    dec h
    sbc c
    inc b
    dec h
    ld h, d
    inc b
    dec h
    sbc c
    inc b
    dec h
    ld h, d
    inc b
    dec h
    sbc c
    inc b
    dec h
    ld h, d
    inc b
    dec h
    sbc c
    inc bc
    ld bc, $7525
    nop
    ld b, d
    ld b, d
    rlca
    nop
    ld b, e
    rlca
    nop
    ld b, e
    ld b, h
    nop
    nop
    ld b, l
    ld [$4600], sp
    db $10
    ld [bc], a
    adc e
    ld b, a
    stop
    ld b, a
    ld d, [hl]
    nop
    ld b, a
    rlca
    nop
    ld b, a
    xor d
    nop
    ld b, a
    xor e
    nop
    ld b, a
    xor h
    nop
    ld b, a
    xor l
    nop
    ld b, a
    xor [hl]
    nop
    ld b, a
    xor a
    nop
    ld b, a
    adc c
    nop
    ld b, a
    or b
    nop
    ld h, [hl]
    ld b, h
    ld h, h
    nop
    ld b, l
    ld h, l
    nop
    ld b, [hl]
    ld h, [hl]
    nop
    ld b, a
    ld h, [hl]
    nop
    ld b, a
    ld h, [hl]
    nop
    ld b, a
    ld h, [hl]
    nop
    ld h, c
    ld b, a
    ld h, a
    nop
    ld b, c
    ld [hl], c
    rrca
    inc bc
    ld b, a
    ld [hl], c
    rrca
    nop
    ld [hl], c
    ld [$7100], sp
    ld bc, $7100
    sub l
    nop
    ld [hl], d
    sub l
    nop
    ld [hl], e
    sub l
    nop
    ld [hl], h
    sub l
    nop
    ld c, b
    ld [hl], h
    sub l
    nop
    ld [hl], e
    sub l
    nop
    ld [hl], d
    sub l
    nop
    ld [hl], c
    sub l
    nop
    ld [hl], c
    ld bc, $7100
    ld [$7100], sp
    rrca
    nop
    ld [hl], c
    ld d, $00
    ld e, l
    ld c, b
    rrca
    nop
    ld c, d
    ld l, b
    inc bc
    ld c, e
    ld a, [hl+]
    inc bc
    ld c, c
    rrca
    nop
    ld c, d
    ld l, b
    inc bc
    ld c, e
    ld a, [hl+]
    nop
    ld c, h
    ld l, d
    inc bc
    ld c, l
    ld l, c
    inc bc
    ld c, c
    ld l, e
    nop
    ld c, h
    ld l, d
    inc bc
    ld c, l
    ld l, c
    nop
    ld c, d
    ld l, b
    inc bc
    ld c, e
    ld a, [hl+]
    inc bc
    ld c, c
    ld l, h
    nop
    ld c, d
    ld l, b
    inc bc
    ld c, e
    ld a, [hl+]
    nop
    ld c, h
    ld l, d
    inc bc
    ld c, l
    ld l, c
    inc bc
    ld c, c
    ld l, l
    nop
    ld c, h
    ld l, d
    inc bc
    ld c, l
    ld a, [hl+]
    nop
    ld c, d
    ld l, b
    inc bc
    ld c, e
    ld a, [hl+]
    inc bc
    ld c, c
    rrca
    nop
    ld c, d
    ld l, b
    inc bc
    ld c, e
    ld a, [hl+]
    nop
    ld c, h
    ld l, d
    inc bc
    ld c, l
    ld a, [hl+]
    inc bc
    ld c, c
    ld l, e
    nop
    ld b, h
    ld c, [hl]
    dec hl
    nop
    ld c, a
    dec hl
    nop
    ld d, b
    dec hl
    nop
    ld d, b
    dec hl
    nop
    ld b, d
    ld d, c
    dec l
    nop
    ld d, c
    ld l, [hl]
    nop
    and d
    ld d, c
    dec l
    nop
    ld d, c
    ld l, [hl]
    nop
    ld h, d
    ld d, d
    ld [hl], c
    nop
    ld d, d
    ld [hl], d
    nop
    ld [bc], a
    ld d, d
    ld bc, $5200
    inc l
    nop
    ld h, e
    ld d, e
    ld [hl], c
    nop
    ld d, e
    ld a, a
    nop
    ld d, e
    add c
    nop
    inc bc
    ld d, e
    ld bc, $5300
    dec d
    nop
    ld d, e
    inc l
    nop
    and d
    ld d, h
    ld bc, $5400
    inc l
    nop
    inc hl
    ld d, l
    ld [hl], e
    inc bc
    ld d, [hl]
    ld [hl], e
    inc bc
    ld d, a
    ld [hl], e
    nop
    ld h, e
    ld b, a
    ld [hl], h
    nop
    ld b, a
    ld b, e
    nop
    ld b, a
    ld [hl], l
    nop
    ld h, $58
    halt
    inc [hl]
    halt
    ld e, b
    halt
    inc [hl]
    halt
    ld e, b
    halt
    inc [hl]
    halt
    ld h, a
    ld e, c
    ld a, c
    inc bc
    ld e, c
    ld a, e
    inc bc
    ld e, c
    ld [hl], a
    inc bc
    ld e, c
    ld a, d
    inc bc
    ld e, c
    ld a, b
    inc bc
    ld e, c
    ld a, h
    inc bc
    ld e, c
    halt
    ld [$4d3a], sp
    nop
    dec sp
    ld c, l
    nop
    inc a
    ld c, l
    nop
    dec a
    ld c, l
    nop
    ld a, $4d
    nop
    ccf
    ld c, l
    nop
    ld a, $4d
    nop
    ccf
    ld c, l
    nop
    dec [hl]
    ld c, b
    ld a, l
    nop
    ld c, c
    ld a, l
    nop
    ld e, d
    ld a, l
    nop
    ld c, b
    jr nc, jr_01e_6d3a

jr_01e_6d3a:
    ld c, c
    jr nc, jr_01e_6d3d

jr_01e_6d3d:
    ld e, d
    jr nc, jr_01e_6d40

jr_01e_6d40:
    ld c, b
    ld a, [hl]
    nop
    ld c, c
    ld a, [hl]
    nop
    ld e, d
    ld a, [hl]
    nop
    ld c, b
    ld a, a
    nop
    ld c, c
    ld a, a
    nop
    ld e, d
    ld a, a
    nop
    ld c, b
    add b
    nop
    ld c, c
    add b
    nop
    ld e, d
    add b
    nop
    ld c, b
    add c
    nop
    ld c, c
    add c
    nop
    ld e, d
    add c
    nop
    ld c, b
    add d
    nop
    ld c, c
    add d
    nop
    ld e, d
    add d
    nop
    inc h
    ld e, e
    add e
    inc bc
    ld e, h
    add h
    inc bc
    ld e, l
    add l
    inc bc
    ld e, [hl]
    add hl, bc
    nop
    ld c, b
    ld e, a
    ld a, [hl+]
    nop
    ld e, a
    nop
    nop
    ld h, b
    ld a, [hl+]
    nop
    ld h, b
    nop
    nop
    ld h, c
    ld a, [hl+]
    nop
    ld h, c
    nop
    nop
    ld h, d
    ld a, [hl+]
    nop
    ld h, d
    nop
    nop
    ld a, [hl+]
    ld h, e
    adc c
    nop
    ld h, h
    ld [hl], l
    nop
    ld h, e
    halt
    ld h, l
    dec c
    nop
    ld h, l
    add [hl]
    nop
    ld h, l
    ld [de], a
    nop
    ld h, l
    add a
    nop
    ld h, l
    rla
    nop
    ld h, l
    adc b
    nop
    ld h, l
    ld a, [de]
    nop
    ld d, b
    ld h, [hl]
    adc d
    nop
    ld h, [hl]
    inc sp
    nop
    ld h, [hl]
    ld l, $00
    ld h, a
    inc h
    inc bc
    ld h, [hl]
    ld bc, $6604
    db $10
    inc b
    ld h, [hl]
    dec e
    inc b
    ld h, a
    jr z, jr_01e_6dce

    ld h, [hl]
    ld a, [hl+]
    inc b

jr_01e_6dce:
    ld h, [hl]
    ld c, $04
    ld h, [hl]
    dec de
    inc b
    ld h, a
    ld h, $03
    ld h, [hl]
    inc bc
    inc b
    ld h, [hl]
    ld [de], a
    inc b
    ld h, [hl]
    ld e, $04
    ld h, a
    add hl, hl
    nop
    sub d
    ld [bc], a
    ld sp, $3400
    ld sp, $0200
    ld sp, $0200
    ld [hl-], a
    nop
    inc [hl]
    ld [hl-], a
    nop
    ld [bc], a
    ld [hl-], a
    nop
    ld [bc], a
    sub d
    nop
    inc [hl]
    sub d
    nop
    ld [bc], a
    sub d
    nop
    ld [bc], a
    ld c, $00
    inc [hl]
    ld c, $00
    ld [bc], a
    ld c, $00
    ld [bc], a
    rrca
    nop
    inc [hl]
    rrca
    nop
    ld [bc], a
    rrca
    nop
    ld [bc], a
    stop
    inc [hl]
    stop
    ld [bc], a
    stop
    ld [hl], d
    ld l, b
    ld c, e
    nop
    ld l, b
    adc h
    nop
    ld l, b
    jr nz, jr_01e_6e24

jr_01e_6e24:
    ld l, b
    inc e
    nop
    ld l, b
    add hl, de
    nop
    ld l, b
    inc d
    nop
    ld l, b
    halt
    ld l, b
    adc l
    nop
    ld l, b
    dec d
    nop
    ld l, b
    stop
    ld l, b
    inc c
    nop
    ld l, b
    ld b, $00
    ld l, b
    adc [hl]
    nop
    ld l, b
    adc a
    nop
    ld l, b
    sub b
    nop
    ld l, b
    ld h, $00
    ld l, b
    inc hl
    nop
    ld l, b
    rra
    nop
    inc l
    ld l, c
    ld c, e
    nop
    ld l, c
    adc h
    nop
    ld l, c
    jr nz, jr_01e_6e5b

jr_01e_6e5b:
    ld l, c
    inc e
    nop
    ld l, c
    add hl, de
    nop
    ld l, c
    inc d
    nop
    ld l, c
    halt
    ld l, c
    adc l
    nop
    ld l, c
    dec d
    nop
    ld l, c
    stop
    ld l, c
    inc c
    nop
    ld l, c
    ld b, $00
    and e
    ld l, d
    rlca
    nop
    ld l, e
    rrca
    nop
    ld l, h
    rla
    nop
    inc h
    ld l, l
    adc e
    nop
    ld l, l
    add h
    nop
    ld l, l
    ld h, e
    nop
    ld l, l
    adc h
    nop
    ld h, $6d
    adc e
    nop
    ld l, l
    add h
    nop
    ld l, l
    ld h, e
    nop
    ld l, l
    adc h
    nop
    ld l, l
    ld a, [bc]
    nop
    ld l, l
    adc c
    nop
    inc hl
    ld b, $82
    nop
    rlca
    add d
    nop
    ld [$0096], sp
    ld b, $03
    ld b, c
    inc b
    inc bc
    ld c, b
    inc b
    inc b
    ld c, b
    inc b
    inc bc
    ld c, b
    inc b
    dec b
    ld c, b
    inc b
    inc bc
    ld c, b
    inc bc
    inc b
    inc b
    ld c, b
    inc b
    inc bc
    ld c, b
    inc b
    dec b
    ld c, b
    inc b
    inc bc
    ld c, b
    inc bc
    ld bc, $8404
    inc bc
    inc bc
    ld b, $72
    nop
    rlca
    ld [hl], d
    nop
    ld [$0072], sp
    ld l, b
    ld l, a
    jr nc, jr_01e_6edc

jr_01e_6edc:
    ld l, [hl]
    jr nc, jr_01e_6edf

jr_01e_6edf:
    ld [hl], b
    jr nc, jr_01e_6ee2

jr_01e_6ee2:
    ld l, [hl]
    jr nc, jr_01e_6ee5

jr_01e_6ee5:
    ld l, a
    jr nc, jr_01e_6ee8

jr_01e_6ee8:
    ld l, [hl]
    jr nc, jr_01e_6eeb

jr_01e_6eeb:
    ld [hl], b
    jr nc, jr_01e_6eee

jr_01e_6eee:
    ld l, [hl]
    jr nc, jr_01e_6ef1

jr_01e_6ef1:
    ld h, $32
    ld c, e
    nop
    inc sp
    ld c, a
    nop
    ld [hl-], a
    jr nz, jr_01e_6efb

jr_01e_6efb:
    inc sp
    ld d, $00
    ld [hl-], a
    add hl, de
    nop
    inc sp
    dec c
    nop
    and [hl]
    db $76
    dec de
    nop
    inc [hl]
    dec de
    nop
    db $76
    dec de
    nop
    inc [hl]
    dec de
    nop
    db $76
    dec de
    nop
    inc [hl]
    dec de
    nop
    ld b, a
    ld [hl], a
    dec h
    nop
    ld [hl], a
    sbc e
    nop
    ld [hl], a
    ld a, [de]
    nop
    ld [hl], a
    sbc h
    nop
    ld [hl], a
    cpl
    nop
    ld [hl], a
    ld d, b
    nop
    ld [hl], a
    adc h
    nop
    inc c
    ld a, b
    jr nc, jr_01e_6f31

jr_01e_6f31:
    ld a, b
    and d
    nop
    ld a, b
    sub e
    nop
    ld a, b
    ld h, c
    nop
    ld a, b
    ld [hl], e
    nop
    ld a, b
    and a
    nop
    ld a, b
    inc sp
    nop
    ld a, b
    xor b
    nop
    ld a, b
    ld c, $00
    ld a, b
    xor c
    nop
    ld a, b
    inc [hl]
    nop
    ld bc, $009e
    dec bc
    ld a, c
    jr nc, jr_01e_6f56

jr_01e_6f56:
    ld a, c
    and d
    nop
    ld a, c
    sub e
    nop
    ld a, c
    ld h, c
    nop
    ld a, c
    ld [hl], e
    nop
    ld a, c
    and a
    nop
    ld a, c
    inc sp
    nop
    ld a, c
    xor b
    nop
    ld a, c
    ld c, $00
    ld a, c
    xor c
    nop
    ld a, c
    inc [hl]
    nop
    rst $20
    ld a, l
    ld l, b
    ld [hl], b
    adc l
    ld [hl], b
    adc $70
    rst $18
    ld [hl], b
    ldh a, [rSVBK]
    ld bc, $3271
    ld [hl], c
    ld [hl], e
    ld [hl], c
    or h
    ld [hl], c
    push hl
    ld [hl], c
    ld d, $72
    daa
    ld [hl], d
    jr c, jr_01e_7002

    ld e, c
    ld [hl], d
    ld l, d
    ld [hl], d
    ld a, e
    ld [hl], d
    sbc h
    ld [hl], d
    cp l
    ld [hl], d
    jp z, $db72

    ld [hl], d
    db $fc
    ld [hl], d
    dec l
    ld [hl], e
    ld c, [hl]
    ld [hl], e
    ld e, a
    ld [hl], e
    ld h, h
    ld [hl], e
    ld l, l
    ld [hl], e
    db $76
    ld [hl], e
    ld a, a
    ld [hl], e
    adc b
    ld [hl], e
    sub c
    ld [hl], e
    xor e
    ld [hl], e
    or h
    ld [hl], e
    call $fe73
    ld [hl], e
    ld c, e
    ld [hl], h
    ld e, h
    ld [hl], h
    ld h, l
    ld [hl], h
    sub [hl]
    ld [hl], h
    and a
    ld [hl], h
    cp h
    ld [hl], h
    push de
    ld [hl], h
    and $74
    rst $30
    ld [hl], h
    nop
    ld [hl], l
    dec b
    ld [hl], l
    ld h, $75
    ld b, a
    ld [hl], l
    ld e, b
    ld [hl], l
    ld l, c
    ld [hl], l
    ld l, [hl]
    ld [hl], l
    adc e
    ld [hl], l
    xor b
    ld [hl], l
    xor l
    ld [hl], l
    add $75
    rst $10
    ld [hl], l
    add sp, $75
    ld sp, hl
    ld [hl], l
    ld a, [bc]
    db $76
    dec de
    db $76
    jr nc, jr_01e_7064

    ld c, c
    db $76
    ld h, [hl]
    db $76
    add a
    db $76
    xor b
    db $76
    or l
    db $76
    add $76
    di
    db $76
    jr nz, @+$79

    ld sp, $4277
    ld [hl], a

jr_01e_7002:
    ld d, e
    ld [hl], a
    ld h, h
    ld [hl], a
    ld [hl], l
    ld [hl], a
    ld e, d
    ld a, b
    ld l, e
    ld a, b
    ld a, h
    ld a, b
    adc l
    ld a, b
    sbc [hl]
    ld a, b
    cp a
    ld a, b
    ldh a, [$78]
    ld de, $3279
    ld a, c
    ld b, e
    ld a, c
    ld d, b
    ld a, c
    ld h, c
    ld a, c
    ld l, [hl]
    ld a, c
    add a
    ld a, c
    xor h
    ld a, c
    ret


    ld a, c
    adc $79
    rst $38
    ld a, c
    db $10
    ld a, d
    ld sp, $5e7a
    ld a, d
    sbc e
    ld a, d
    xor h
    ld a, d
    call $fe7a
    ld a, d
    ccf
    ld a, e
    ld e, b
    ld a, e
    ld [hl], c
    ld a, e
    adc d
    ld a, e
    sub e
    ld a, e
    sbc b
    ld a, e
    xor c
    ld a, e
    xor [hl]
    ld a, e
    rst $08
    ld a, e
    ldh a, [$7b]
    ld de, $1a7c
    ld a, h
    dec hl
    ld a, h
    inc a
    ld a, h
    or [hl]
    ld [hl], a
    rst $30
    ld [hl], a
    jr z, jr_01e_70d4

    ld c, c
    ld a, b
    sbc d
    ld [hl], e
    ld c, l
    ld a, h
    ld l, d
    ld a, h

jr_01e_7064:
    ld a, e
    ld a, h
    add b
    ld a, h
    add hl, bc
    nop
    nop
    inc l
    nop
    nop
    ld [$002d], sp
    nop
    db $10
    inc l
    jr nz, @+$0a

    nop
    inc a
    nop
    ld [$3d08], sp
    nop
    ld [$3c10], sp
    jr nz, jr_01e_7092

    nop
    inc l
    ld b, b
    db $10
    ld [$402d], sp
    db $10
    db $10
    inc l
    ld h, b
    stop
    nop
    jr nz, jr_01e_7092

jr_01e_7092:
    nop
    ld [$0021], sp
    nop
    db $10
    ld hl, $0020
    jr jr_01e_70bd

    jr nz, @+$0a

    nop
    jr nc, jr_01e_70a2

jr_01e_70a2:
    ld [$3108], sp
    nop
    ld [$3110], sp
    jr nz, jr_01e_70b3

    jr @+$32

    jr nz, @+$12

    nop
    jr nc, jr_01e_70f2

    db $10

jr_01e_70b3:
    ld [$4031], sp
    db $10
    db $10
    ld sp, $1060
    jr @+$32

jr_01e_70bd:
    ld h, b
    jr jr_01e_70c0

jr_01e_70c0:
    jr nz, jr_01e_7102

    jr @+$0a

    ld hl, $1840
    db $10
    ld hl, $1860
    jr @+$22

    ld h, b
    inc b
    nop
    nop
    ld [bc], a
    nop
    nop

jr_01e_70d4:
    ld [$2002], sp
    ld [$1200], sp
    nop
    ld [$1208], sp
    jr nz, jr_01e_70e4

    nop
    nop
    ld b, $00

jr_01e_70e4:
    nop
    ld [$0007], sp
    ld [$1600], sp
    nop
    ld [$1708], sp
    nop
    inc b
    nop

jr_01e_70f2:
    nop
    rlca
    jr nz, jr_01e_70f6

jr_01e_70f6:
    ld [$2006], sp
    ld [$1700], sp
    jr nz, jr_01e_7106

    ld [$2016], sp
    inc c

jr_01e_7102:
    nop
    ld [$0023], sp

jr_01e_7106:
    ld [$3200], sp
    nop
    ld [$3308], sp
    nop
    nop
    db $10
    inc hl
    jr nz, jr_01e_711b

    db $10
    inc sp
    jr nz, jr_01e_711f

    jr @+$34

    jr nz, jr_01e_712b

jr_01e_711b:
    nop
    ld [hl-], a
    ld b, b
    db $10

jr_01e_711f:
    ld [$4033], sp
    jr @+$0a

    inc hl
    ld b, b
    db $10
    db $10
    inc sp
    ld h, b
    db $10

jr_01e_712b:
    jr jr_01e_715f

    ld h, b
    jr @+$12

    inc hl
    ld h, b
    stop
    nop
    jr nz, jr_01e_7137

jr_01e_7137:
    nop
    ld [$0021], sp
    ld [$3000], sp
    nop
    ld [$3108], sp
    nop
    nop
    db $10
    ld hl, $0020
    jr jr_01e_716a

    jr nz, jr_01e_7154

    db $10
    ld sp, $0820
    jr @+$32

    jr nz, jr_01e_7164

jr_01e_7154:
    nop
    jr nc, @+$42

    db $10
    ld [$4031], sp
    jr jr_01e_715d

jr_01e_715d:
    jr nz, @+$42

jr_01e_715f:
    jr @+$0a

    ld hl, $1040

jr_01e_7164:
    db $10
    ld sp, $1060
    jr jr_01e_719a

jr_01e_716a:
    ld h, b
    jr @+$12

    ld hl, $1860
    jr @+$22

    ld h, b
    stop
    nop
    jr nz, jr_01e_7178

jr_01e_7178:
    nop
    ld [$0021], sp
    ld [$3000], sp
    nop
    ld [$3108], sp
    nop
    nop
    jr jr_01e_71a8

    jr nz, jr_01e_7189

jr_01e_7189:
    jr nz, @+$22

    jr nz, jr_01e_7195

    jr jr_01e_71c0

    jr nz, @+$0a

    jr nz, @+$32

    jr nz, @+$1a

jr_01e_7195:
    nop
    jr nc, jr_01e_71d8

    jr jr_01e_71a2

jr_01e_719a:
    ld sp, $2040
    nop
    jr nz, jr_01e_71e0

    jr nz, jr_01e_71aa

jr_01e_71a2:
    ld hl, $1840
    jr jr_01e_71d8

    ld h, b

jr_01e_71a8:
    jr jr_01e_71ca

jr_01e_71aa:
    jr nc, jr_01e_720c

    jr nz, jr_01e_71c6

    ld hl, $2060
    jr nz, jr_01e_71d3

    ld h, b
    inc c
    nop
    nop
    inc h
    nop
    nop
    ld [$0025], sp
    ld [$3400], sp

jr_01e_71c0:
    nop
    nop
    jr jr_01e_71e9

    jr nz, jr_01e_71c6

jr_01e_71c6:
    jr nz, @+$26

    jr nz, @+$0a

jr_01e_71ca:
    jr nz, jr_01e_7200

    jr nz, jr_01e_71e6

    nop
    inc [hl]
    ld b, b
    jr nz, jr_01e_71d3

jr_01e_71d3:
    inc h
    ld b, b
    jr nz, jr_01e_71df

    dec h

jr_01e_71d8:
    ld b, b
    jr jr_01e_71fb

    inc [hl]
    ld h, b
    jr nz, jr_01e_71f7

jr_01e_71df:
    dec h

jr_01e_71e0:
    ld h, b
    jr nz, @+$22

    inc h
    ld h, b
    inc c

jr_01e_71e6:
    nop
    nop
    inc h

jr_01e_71e9:
    nop
    nop
    ld [$0025], sp
    ld [$3400], sp
    nop
    nop
    jr nz, jr_01e_721a

    jr nz, jr_01e_71f7

jr_01e_71f7:
    jr z, @+$26

    jr nz, @+$0a

jr_01e_71fb:
    jr z, @+$36

    jr nz, jr_01e_721f

    nop

jr_01e_7200:
    inc [hl]
    ld b, b
    jr z, jr_01e_7204

jr_01e_7204:
    inc h
    ld b, b
    jr z, jr_01e_7210

    dec h
    ld b, b
    jr nz, jr_01e_7234

jr_01e_720c:
    inc [hl]
    ld h, b
    jr z, jr_01e_7230

jr_01e_7210:
    dec h
    ld h, b
    jr z, jr_01e_723c

    inc h
    ld h, b
    inc b
    nop
    nop
    dec b

jr_01e_721a:
    nop
    nop
    ld [$2005], sp

jr_01e_721f:
    ld [$1500], sp
    nop
    ld [$1508], sp
    jr nz, jr_01e_722c

    nop
    nop
    inc b
    nop

jr_01e_722c:
    nop
    ld [$2004], sp

jr_01e_7230:
    ld [$1400], sp
    nop

jr_01e_7234:
    ld [$1408], sp
    jr nz, jr_01e_7241

    nop
    nop
    inc c

jr_01e_723c:
    nop
    nop
    ld [$000d], sp

jr_01e_7241:
    ld [$1c00], sp
    nop
    ld [$1d08], sp
    nop
    stop
    dec e
    ld h, b
    db $10
    ld [$601c], sp
    jr jr_01e_7253

jr_01e_7253:
    dec c
    ld h, b
    jr @+$0a

    inc c
    ld h, b
    inc b
    jr nz, jr_01e_725c

jr_01e_725c:
    inc c
    nop
    jr nz, jr_01e_7268

    dec c
    nop
    jr z, jr_01e_7264

jr_01e_7264:
    inc e
    nop
    jr z, @+$0a

jr_01e_7268:
    dec e
    nop
    inc b
    jr nc, jr_01e_726d

jr_01e_726d:
    dec e
    ld h, b
    jr nc, jr_01e_7279

    inc e
    ld h, b
    jr c, jr_01e_7275

jr_01e_7275:
    dec c
    ld h, b
    jr c, jr_01e_7281

jr_01e_7279:
    inc c
    ld h, b
    ld [$0000], sp
    ld c, $00
    nop

jr_01e_7281:
    ld [$000f], sp
    ld [$1e00], sp
    nop
    ld [$1f08], sp
    nop
    nop
    db $10
    rrca
    jr nz, jr_01e_7291

jr_01e_7291:
    jr jr_01e_72a1

    jr nz, jr_01e_729d

    db $10
    rra
    jr nz, jr_01e_72a1

    jr @+$20

    jr nz, jr_01e_72a5

jr_01e_729d:
    nop
    nop
    ld c, $00

jr_01e_72a1:
    nop
    ld [$000f], sp

jr_01e_72a5:
    ld [$1e00], sp
    nop
    ld [$1f08], sp
    nop
    nop
    jr nz, jr_01e_72bf

    jr nz, jr_01e_72b2

jr_01e_72b2:
    jr z, jr_01e_72c2

    jr nz, jr_01e_72be

    jr nz, jr_01e_72d7

    jr nz, jr_01e_72c2

    jr z, jr_01e_72da

    jr nz, jr_01e_72c1

jr_01e_72be:
    nop

jr_01e_72bf:
    nop
    scf

jr_01e_72c1:
    nop

jr_01e_72c2:
    ld [$3710], sp
    nop
    nop
    jr nz, @+$39

    nop
    inc b
    nop
    nop
    ld [hl], $00
    nop
    ld [$2036], sp
    ld [$3600], sp
    ld b, b

jr_01e_72d7:
    ld [$3608], sp

jr_01e_72da:
    ld h, b
    ld [$1000], sp
    jr z, jr_01e_72e0

jr_01e_72e0:
    nop
    jr @+$2a

    jr nz, jr_01e_72ed

    db $10
    jr c, jr_01e_72e8

jr_01e_72e8:
    ld [$3818], sp
    jr nz, jr_01e_72ed

jr_01e_72ed:
    jr nz, @+$38

    nop
    nop
    jr z, jr_01e_7329

    jr nz, jr_01e_72fd

    jr nz, @+$38

    ld b, b
    ld [$3628], sp
    ld h, b
    inc c

jr_01e_72fd:
    nop
    nop
    jr z, jr_01e_7301

jr_01e_7301:
    nop
    ld [$2028], sp
    ld [$3800], sp
    nop
    ld [$3808], sp
    jr nz, jr_01e_730e

jr_01e_730e:
    db $10
    add hl, hl
    nop
    nop
    jr jr_01e_733d

    jr nz, jr_01e_731e

    db $10
    add hl, sp
    nop
    ld [$3918], sp
    jr nz, jr_01e_731e

jr_01e_731e:
    jr nz, @+$2a

    nop
    nop
    jr z, @+$2a

    jr nz, jr_01e_732e

    jr nz, @+$3a

    nop

jr_01e_7329:
    ld [$3828], sp
    jr nz, jr_01e_7336

jr_01e_732e:
    nop
    nop
    add hl, hl
    nop
    nop
    ld [$2029], sp

jr_01e_7336:
    ld [$3900], sp
    nop
    ld [$3908], sp

jr_01e_733d:
    jr nz, jr_01e_733f

jr_01e_733f:
    jr nz, jr_01e_736a

    nop
    nop
    jr z, jr_01e_736e

    jr nz, jr_01e_734f

    jr nz, @+$3b

    nop
    ld [$3928], sp
    jr nz, @+$06

jr_01e_734f:
    nop
    nop
    ld [$0000], sp
    ld [$0009], sp
    ld [$1800], sp
    nop
    ld [$1908], sp
    nop
    ld bc, $0018
    ld b, l
    ld h, b
    ld [bc], a
    jr jr_01e_736f

    ld b, l
    nop
    db $10

jr_01e_736a:
    ld [$6046], sp
    ld [bc], a

jr_01e_736e:
    db $10

jr_01e_736f:
    db $10
    ld b, l
    ld h, b
    jr jr_01e_7384

    ld b, [hl]
    nop
    ld [bc], a
    db $10
    jr @+$47

    nop
    ld [$4618], sp
    ld h, b
    ld [bc], a
    ld [$4520], sp
    ld h, b

jr_01e_7384:
    db $10
    jr nz, @+$48

    nop
    ld [bc], a
    ld [$4528], sp
    nop
    nop
    jr z, @+$48

    ld h, b
    ld [bc], a
    nop
    jr nc, jr_01e_73da

    ld h, b
    ld [$4630], sp
    nop
    inc b
    nop
    nop
    ld b, e
    nop
    nop
    ld [$2043], sp
    ld [$2200], sp
    nop
    ld [$4308], sp
    ld h, b
    ld [bc], a
    nop
    nop
    inc bc
    nop
    nop
    jr nc, jr_01e_73b6

    jr nz, @+$08

    nop

jr_01e_73b6:
    nop
    inc bc
    nop
    nop
    jr nc, @+$05

    jr nz, jr_01e_73c6

    ld [$0003], sp
    ld [$0328], sp
    jr nz, jr_01e_73ce

jr_01e_73c6:
    nop
    inc de
    nop
    ld [$1330], sp
    jr nz, jr_01e_73da

jr_01e_73ce:
    nop
    nop
    inc bc
    nop
    nop
    jr nc, @+$05

    jr nz, jr_01e_73df

    ld [$0003], sp

jr_01e_73da:
    ld [$0328], sp
    jr nz, jr_01e_73e7

jr_01e_73df:
    nop
    inc de
    nop
    ld [$1330], sp
    jr nz, jr_01e_73f7

jr_01e_73e7:
    db $10
    inc bc
    nop
    db $10
    jr nz, @+$05

    jr nz, jr_01e_73ff

    ld [$0013], sp
    db $10
    jr z, @+$15

    jr nz, jr_01e_7407

jr_01e_73f7:
    nop
    inc bc
    nop
    db $10
    jr nc, jr_01e_7400

    jr nz, jr_01e_7412

jr_01e_73ff:
    nop

jr_01e_7400:
    nop
    inc bc
    nop
    ld [$1300], sp
    nop

jr_01e_7407:
    stop
    inc bc
    nop
    jr jr_01e_740d

jr_01e_740d:
    inc de
    nop
    ld [$0308], sp

jr_01e_7412:
    nop
    db $10
    ld [$0013], sp
    jr jr_01e_7421

    inc bc
    nop
    db $10
    db $10
    inc bc
    nop
    jr @+$12

jr_01e_7421:
    inc de
    nop
    jr @+$1a

    inc bc
    nop
    db $10
    jr nz, @+$05

    jr nz, jr_01e_7444

    jr nz, @+$15

    jr nz, jr_01e_7438

    jr z, @+$05

    jr nz, jr_01e_7444

    jr z, @+$15

    jr nz, jr_01e_7450

jr_01e_7438:
    jr z, @+$05

    jr nz, jr_01e_743c

jr_01e_743c:
    jr nc, @+$05

    jr nz, jr_01e_7448

    jr nc, @+$15

    jr nz, jr_01e_7454

jr_01e_7444:
    jr nc, @+$05

    jr nz, jr_01e_7460

jr_01e_7448:
    jr nc, jr_01e_745d

    jr nz, jr_01e_7450

    nop
    nop
    ld a, [bc]
    nop

jr_01e_7450:
    nop
    ld [$000b], sp

jr_01e_7454:
    ld [$1a00], sp
    nop
    ld [$1b08], sp
    nop
    ld [bc], a

jr_01e_745d:
    ld [$0a00], sp

jr_01e_7460:
    nop
    ld [$0b08], sp
    nop
    inc c
    stop
    ld a, [bc]
    nop
    db $10
    ld [$000b], sp
    jr jr_01e_7470

jr_01e_7470:
    ld a, [de]
    nop
    jr @+$0a

    dec de
    nop
    nop
    db $10
    ld a, [bc]
    nop
    nop
    jr @+$0d

    nop
    ld [$1a10], sp
    nop
    ld [$1b18], sp
    nop
    ld [$0a20], sp
    nop
    ld [$0b28], sp
    nop
    db $10
    jr nz, jr_01e_74ab

    nop
    db $10
    jr z, @+$1d

    nop
    inc b
    nop
    db $10
    ld b, h
    nop
    nop
    jr jr_01e_74e2

    jr nz, jr_01e_74a8

    db $10
    ld b, h
    ld b, b
    ld [$4418], sp
    ld h, b
    dec b

jr_01e_74a8:
    ld [$4408], sp

jr_01e_74ab:
    nop
    ld [$4410], sp
    jr nz, jr_01e_74c1

    ld [$4044], sp
    db $10
    db $10
    ld b, h
    ld h, b
    nop
    jr @+$49

    nop
    ld b, $10
    nop
    ld b, h
    nop

jr_01e_74c1:
    db $10
    ld [$2044], sp
    jr jr_01e_74c7

jr_01e_74c7:
    ld b, h
    ld b, b
    jr @+$0a

    ld b, h
    ld h, b
    ld [$4710], sp
    nop
    ld [bc], a
    ld d, $47
    nop
    inc b
    jr jr_01e_74d8

jr_01e_74d8:
    ld b, a
    nop
    ld [de], a
    ld b, $47
    nop
    inc c
    inc c
    ld b, a
    nop

jr_01e_74e2:
    ld b, $12
    ld b, a
    nop
    inc b
    nop
    nop
    ld b, h
    nop
    nop
    ld [$2044], sp
    ld [$4400], sp
    ld b, b
    ld [$4408], sp
    ld h, b
    ld [bc], a
    ld b, $02
    ld b, a
    nop
    nop
    ld [$0047], sp
    ld bc, $00a0
    ld c, l
    nop
    ld [$0000], sp
    ld h, $00
    nop
    ld [$0027], sp
    ld [$3600], sp
    nop
    ld [$3708], sp
    nop
    stop
    jr z, jr_01e_751a

jr_01e_751a:
    db $10
    ld [$0029], sp
    jr jr_01e_7520

jr_01e_7520:
    jr c, jr_01e_7522

jr_01e_7522:
    jr jr_01e_752c

    add hl, sp
    nop
    ld [$0000], sp
    daa
    jr nz, jr_01e_752c

jr_01e_752c:
    ld [$2026], sp
    ld [$3700], sp
    jr nz, jr_01e_753c

    ld [$2036], sp
    stop
    add hl, hl
    jr nz, jr_01e_754c

jr_01e_753c:
    ld [$2028], sp
    jr jr_01e_7541

jr_01e_7541:
    add hl, sp
    jr nz, jr_01e_755c

    ld [$2038], sp
    inc b
    nop
    nop
    inc c
    nop

jr_01e_754c:
    nop
    ld [$000d], sp
    ld [$0c00], sp
    ld b, b
    ld [$0d08], sp
    ld b, b
    inc b
    nop
    nop
    ld b, h

jr_01e_755c:
    nop
    nop
    ld [$2044], sp
    ld [$4400], sp
    ld b, b
    ld [$4408], sp
    ld h, b
    ld bc, $0000
    ld b, l
    nop
    rlca
    nop
    nop
    ld c, l
    nop
    nop
    ld [$002f], sp
    nop
    db $10
    ld c, l
    jr nz, @+$0a

    nop
    ld c, [hl]
    nop
    ld [$0708], sp
    nop
    ld [$4e10], sp
    jr nz, jr_01e_7598

    ld [$003f], sp
    rlca
    nop
    ld [$403f], sp
    ld [$4e00], sp
    ld b, b
    ld [$0708], sp
    ld b, b

jr_01e_7598:
    ld [$4e10], sp
    ld h, b
    stop
    ld c, l
    ld b, b
    db $10
    ld [$402f], sp
    db $10
    db $10
    ld c, l
    ld h, b
    ld bc, $00a0
    nop
    db $10
    ld b, $00
    nop
    ld a, [hl+]
    nop
    nop
    ld [$002b], sp
    ld [$3a00], sp
    nop
    stop
    ld a, [hl-]
    ld b, b
    jr jr_01e_75c0

jr_01e_75c0:
    ld a, [hl+]
    ld b, b
    jr jr_01e_75cc

    dec hl
    ld b, b
    inc b
    nop
    nop
    nop
    nop
    nop

jr_01e_75cc:
    ld [$0001], sp
    ld [$1000], sp
    nop
    ld [$1108], sp
    nop
    inc b
    nop
    nop
    ld bc, $00a0
    ld [$a000], sp
    ld [$1100], sp
    and b
    ld [$1008], sp
    and b
    inc b
    nop
    nop
    ld a, [bc]
    nop
    nop
    ld [$000b], sp
    ld [$1a00], sp
    nop
    ld [$1b08], sp
    nop
    inc b
    nop
    nop
    dec bc
    jr nz, jr_01e_75ff

jr_01e_75ff:
    ld [$200a], sp
    ld [$1b00], sp
    jr nz, jr_01e_760f

    ld [$201a], sp
    inc b
    jr nz, jr_01e_760d

jr_01e_760d:
    dec b
    nop

jr_01e_760f:
    jr nz, jr_01e_7619

    dec b
    jr nz, jr_01e_763c

    nop
    dec d
    nop
    jr z, @+$0a

jr_01e_7619:
    dec d
    jr nz, @+$07

    jr jr_01e_761e

jr_01e_761e:
    inc b
    nop
    jr jr_01e_762a

    inc b
    jr nz, jr_01e_7645

    nop
    inc d
    nop
    jr nz, jr_01e_7632

jr_01e_762a:
    inc d
    jr nz, jr_01e_7655

    inc b
    ld b, c
    nop
    ld b, $10

jr_01e_7632:
    nop
    dec b
    nop
    db $10
    ld [$2005], sp
    jr jr_01e_763b

jr_01e_763b:
    dec d

jr_01e_763c:
    nop
    jr jr_01e_7647

    dec d
    jr nz, jr_01e_7662

    inc b
    ld b, d
    nop

jr_01e_7645:
    jr z, @+$06

jr_01e_7647:
    ld b, d
    nop
    rlca
    ld [$0400], sp
    nop
    ld [$0408], sp
    jr nz, @+$12

    nop
    inc d

jr_01e_7655:
    nop
    db $10
    ld [$2014], sp
    jr jr_01e_7660

    ld b, c
    nop
    jr nz, jr_01e_7664

jr_01e_7660:
    ld b, c
    nop

jr_01e_7662:
    jr z, @+$06

jr_01e_7664:
    ld b, c
    nop
    ld [$0000], sp
    dec b
    nop
    nop
    ld [$2005], sp
    ld [$1500], sp
    nop
    ld [$1508], sp
    jr nz, @+$12

    inc b
    ld b, d
    nop
    jr jr_01e_7681

    ld b, d
    nop
    jr nz, jr_01e_7685

jr_01e_7681:
    ld b, d
    nop
    jr z, @+$06

jr_01e_7685:
    ld b, d
    nop
    ld [$0000], sp
    inc b
    nop
    nop
    ld [$2004], sp
    ld [$1400], sp
    nop
    ld [$1408], sp
    jr nz, jr_01e_76a9

    inc b
    ld b, c
    nop
    jr jr_01e_76a2

    ld b, c
    nop
    jr nz, jr_01e_76a6

jr_01e_76a2:
    ld b, c
    nop
    jr z, jr_01e_76aa

jr_01e_76a6:
    ld b, c
    nop
    inc bc

jr_01e_76a9:
    nop

jr_01e_76aa:
    nop
    dec a
    nop
    nop
    ld [$003d], sp
    ld [$3d08], sp
    nop
    inc b
    nop
    nop
    ld b, $00
    nop
    ld [$2006], sp
    ld [$1600], sp
    nop
    ld [$1708], sp
    nop
    dec bc
    nop
    db $10
    ld b, d
    nop
    ld [$4200], sp
    nop
    ld [$4208], sp
    nop
    ld [$4210], sp
    nop
    ld [$4218], sp
    nop
    ld [$4220], sp
    nop
    db $10
    db $10
    ld b, d
    nop
    jr jr_01e_76ed

    ld b, d
    nop
    jr @+$1a

    ld b, d
    nop
    jr nz, jr_01e_76ed

jr_01e_76ed:
    ld b, d
    nop
    jr nz, @+$22

    ld b, d
    nop
    dec bc
    nop
    db $10
    ld b, c
    nop
    ld [$4100], sp
    nop
    ld [$4108], sp
    nop
    ld [$4110], sp
    nop
    ld [$4118], sp
    nop
    ld [$4120], sp
    nop
    db $10
    db $10
    ld b, c
    nop
    jr jr_01e_771a

    ld b, c
    nop
    jr @+$1a

    ld b, c
    nop
    jr nz, jr_01e_771a

jr_01e_771a:
    ld b, c
    nop
    jr nz, jr_01e_773e

    ld b, c
    nop
    inc b
    nop
    nop
    ld c, c
    nop
    nop
    jr z, jr_01e_7771

    nop
    jr z, jr_01e_772b

jr_01e_772b:
    ld c, c
    nop
    jr z, jr_01e_7757

    ld c, c
    nop
    inc b
    nop
    nop
    ld c, c
    nop
    nop
    jr @+$4b

    nop
    jr jr_01e_773c

jr_01e_773c:
    ld c, c
    nop

jr_01e_773e:
    jr jr_01e_7758

    ld c, c
    nop
    inc b
    nop
    nop
    ld c, c
    nop
    nop
    ld [$0049], sp
    ld [$4900], sp
    nop
    ld [$4908], sp
    nop
    inc b
    nop
    nop
    ld b, e

jr_01e_7757:
    nop

jr_01e_7758:
    nop
    ld [$2043], sp
    ld [$4300], sp
    ld b, b
    ld [$4308], sp
    ld h, b
    inc b
    ld [$3308], sp
    nop
    ld [$3310], sp
    jr nz, jr_01e_777e

    ld [$4033], sp

jr_01e_7771:
    db $10
    db $10
    inc sp
    ld h, b
    stop
    nop
    ld [hl+], a
    nop
    nop
    ld [$0023], sp

jr_01e_777e:
    nop
    db $10
    inc hl
    jr nz, jr_01e_7783

jr_01e_7783:
    jr @+$24

    jr nz, @+$0a

    nop
    ld [hl-], a
    nop
    ld [$4308], sp
    nop
    ld [$4310], sp
    jr nz, jr_01e_779b

    jr @+$34

    jr nz, @+$12

    nop
    ld [hl-], a
    ld b, b
    db $10

jr_01e_779b:
    ld [$4043], sp
    db $10
    db $10
    ld b, e
    ld h, b
    db $10
    jr @+$34

    ld h, b
    jr jr_01e_77a8

jr_01e_77a8:
    ld [hl+], a
    ld b, b
    jr jr_01e_77b4

    inc hl
    ld b, b
    jr jr_01e_77c0

    inc hl
    ld h, b
    jr @+$1a

jr_01e_77b4:
    ld [hl+], a
    ld h, b
    stop
    nop
    ld [hl+], a
    nop
    nop
    ld [$003b], sp
    nop

jr_01e_77c0:
    db $10
    inc hl
    jr nz, jr_01e_77c4

jr_01e_77c4:
    jr @+$24

    jr nz, @+$0a

    nop
    ld [hl-], a
    nop
    ld [$4308], sp
    nop
    ld [$4310], sp
    jr nz, jr_01e_77dc

    jr @+$34

    jr nz, @+$12

    nop
    ld [hl-], a
    ld b, b
    db $10

jr_01e_77dc:
    ld [$4043], sp
    db $10
    db $10
    ld b, e
    ld h, b
    db $10
    jr jr_01e_7818

    ld h, b
    jr jr_01e_77e9

jr_01e_77e9:
    ld [hl+], a
    ld b, b
    jr jr_01e_77f5

    inc hl
    ld b, b
    jr jr_01e_7801

    inc hl
    ld h, b
    jr @+$1a

jr_01e_77f5:
    ld [hl+], a
    ld h, b
    inc c
    nop
    nop
    ld [hl-], a
    nop
    nop
    ld [$0043], sp
    nop

jr_01e_7801:
    db $10
    ld b, e
    jr nz, jr_01e_7805

jr_01e_7805:
    jr jr_01e_7839

    jr nz, @+$0a

    nop
    ld [hl-], a
    ld b, b
    ld [$4308], sp
    ld b, b
    ld [$4310], sp
    ld h, b
    ld [$3218], sp
    ld h, b

jr_01e_7818:
    stop
    ld [hl+], a
    ld b, b
    db $10
    ld [$4023], sp
    db $10
    db $10
    inc hl
    ld h, b
    db $10
    jr jr_01e_7849

    ld h, b
    ld [$0000], sp
    ld [hl-], a
    ld b, b
    nop
    ld [$4043], sp
    nop
    db $10
    ld b, e
    ld h, b
    nop
    jr jr_01e_786a

    ld h, b

jr_01e_7839:
    ld [$2200], sp
    ld b, b
    ld [$2308], sp
    ld b, b
    ld [$2310], sp
    ld h, b
    ld [$2218], sp
    ld h, b

jr_01e_7849:
    inc b
    nop
    nop
    ld [hl+], a
    ld b, b
    nop
    ld [$4023], sp
    nop
    db $10
    inc hl
    ld h, b
    nop
    jr jr_01e_787b

    ld h, b
    inc b
    ld [$4c18], sp
    jr nz, @+$22

    ld [$004b], sp
    jr nc, jr_01e_7885

    ld c, h
    nop
    jr jr_01e_7899

    ld c, e

jr_01e_786a:
    ld b, b
    inc b
    nop
    jr jr_01e_78bb

    nop
    jr nz, jr_01e_7872

jr_01e_7872:
    ld c, e
    ld b, b
    jr c, jr_01e_7896

    ld c, h
    jr nz, jr_01e_7891

    jr c, jr_01e_78c6

jr_01e_787b:
    nop
    inc b
    db $10
    ld [$404a], sp
    jr nc, jr_01e_7893

    ld c, d
    nop

jr_01e_7885:
    jr z, @+$32

    ld c, d
    jr nz, @+$0a

    jr z, @+$4c

    ld h, b
    inc b
    ld [$4a00], sp

jr_01e_7891:
    jr nz, jr_01e_78cb

jr_01e_7893:
    ld [$604a], sp

jr_01e_7896:
    jr nc, jr_01e_78d0

    ld c, d

jr_01e_7899:
    ld b, b
    nop
    jr nc, jr_01e_78e7

    nop
    ld [$3000], sp
    ld b, h
    nop
    nop
    jr c, jr_01e_78ea

    jr nz, @+$0a

    jr nc, @+$46

    ld b, b
    ld [$4438], sp
    ld h, b
    ld h, $0a
    ld b, h
    nop
    ld h, $12
    ld b, h
    jr nz, @+$30

    ld a, [bc]
    ld b, h
    ld b, b

jr_01e_78bb:
    ld l, $12
    ld b, h
    ld h, b
    inc c
    ld c, $22
    ld b, h
    nop
    ld c, $2a

jr_01e_78c6:
    ld b, h
    jr nz, jr_01e_78df

    ld [hl+], a
    ld b, h

jr_01e_78cb:
    ld b, b
    ld d, $2a
    ld b, h
    ld h, b

jr_01e_78d0:
    ld b, $32
    ld b, a
    nop
    nop
    jr c, jr_01e_791e

    nop
    ld a, [de]
    ld d, $44
    nop
    ld a, [de]
    ld e, $44

jr_01e_78df:
    jr nz, jr_01e_7903

    ld d, $44
    ld b, b
    ld [hl+], a
    ld e, $44

jr_01e_78e7:
    ld h, b
    jr nc, @+$0a

jr_01e_78ea:
    ld b, a
    nop
    ld a, [hl+]
    ld c, $47
    nop
    ld [$3206], sp
    ld b, a
    nop
    nop
    jr c, jr_01e_793f

    nop
    ld [de], a
    ld h, $47
    nop
    inc c
    inc l
    ld b, a
    nop
    ld e, $1a

jr_01e_7903:
    ld b, a
    nop
    jr @+$22

    ld b, a
    nop
    ld a, [hl+]
    ld c, $47
    nop
    inc h
    inc d
    ld b, a
    nop
    ld [$0000], sp
    dec [hl]
    jr nz, @+$0a

    nop
    dec [hl]
    ld b, b
    stop
    dec [hl]
    nop

jr_01e_791e:
    jr jr_01e_7920

jr_01e_7920:
    dec [hl]
    ld h, b
    nop
    ld b, b
    dec [hl]
    nop
    ld [$3540], sp
    ld h, b
    db $10
    ld b, b
    dec [hl]
    jr nz, jr_01e_7947

    ld b, b
    dec [hl]
    ld b, b
    inc b
    nop
    nop
    ld a, [hl+]
    nop
    nop
    ld [$002b], sp
    ld [$3a00], sp
    nop

jr_01e_793f:
    ld [$3b08], sp
    nop
    inc bc
    nop
    nop
    ccf

jr_01e_7947:
    nop
    nop
    ld [$003f], sp
    ld [$3f06], sp
    nop
    inc b
    nop
    nop
    ld c, $00
    nop
    ld [$200e], sp
    ld [$0f00], sp
    nop
    ld [$0f08], sp
    jr nz, jr_01e_7965

    stop
    inc l

jr_01e_7965:
    nop
    db $10
    ld [$003c], sp
    db $10
    db $10
    dec l
    nop
    ld b, $10
    db $10
    ld sp, $1000
    jr jr_01e_79a7

    nop
    ld [$2c10], sp
    nop
    ld [$3c18], sp
    nop
    ld [$2d20], sp
    nop
    db $10
    jr nz, @+$2f

    nop
    add hl, bc
    ld [$3120], sp
    nop
    db $10
    jr nz, jr_01e_79c0

    nop
    ld [$3128], sp
    nop
    db $10
    jr z, jr_01e_79c8

    nop
    nop
    jr nz, jr_01e_79c7

    nop
    nop
    jr z, jr_01e_79db

    nop
    nop
    jr nc, jr_01e_79d0

    nop
    ld [$2d30], sp

jr_01e_79a7:
    nop
    db $10
    jr nc, @+$2f

    nop
    rlca
    nop
    nop
    ld b, [hl]
    nop
    ld [$4702], sp
    nop
    db $10
    inc bc
    ld c, b
    nop
    jr jr_01e_79bf

    ld c, b
    nop
    jr nz, jr_01e_79c4

jr_01e_79bf:
    ld c, b

jr_01e_79c0:
    nop
    jr z, jr_01e_79c8

    ld c, b

jr_01e_79c4:
    nop
    jr nc, jr_01e_79cc

jr_01e_79c7:
    ld c, b

jr_01e_79c8:
    nop
    ld bc, $0000

jr_01e_79cc:
    ld b, d
    nop
    inc c
    nop

jr_01e_79d0:
    nop
    inc h
    nop
    nop
    ld [$0025], sp
    ld [$3400], sp
    nop

jr_01e_79db:
    nop
    db $10
    dec h
    jr nz, jr_01e_79e0

jr_01e_79e0:
    jr @+$26

    jr nz, @+$0a

    jr @+$36

    jr nz, @+$12

    nop
    inc [hl]
    ld b, b
    jr jr_01e_79ed

jr_01e_79ed:
    inc h
    ld b, b
    jr jr_01e_79f9

    dec h
    ld b, b
    db $10
    jr jr_01e_7a2a

    ld h, b
    jr @+$12

jr_01e_79f9:
    dec h
    ld h, b
    jr jr_01e_7a15

    inc h
    ld h, b
    inc b
    nop
    nop
    ld b, e
    nop
    nop
    ld [$2043], sp
    ld [$4300], sp
    ld b, b
    ld [$4308], sp
    ld h, b
    ld [$0000], sp
    ld c, c
    nop

jr_01e_7a15:
    ld [bc], a
    ld [$0049], sp
    jr jr_01e_7a1b

jr_01e_7a1b:
    ld c, c
    nop
    db $10
    db $10
    ld c, c
    nop
    ld [$4300], sp
    nop
    ld [$4308], sp
    jr nz, jr_01e_7a3a

jr_01e_7a2a:
    nop
    ld b, e
    ld b, b
    db $10
    ld [$6043], sp
    dec bc
    nop
    nop
    ld c, c
    nop
    jr jr_01e_7a3a

    ld c, c
    nop

jr_01e_7a3a:
    inc d
    db $10
    ld c, c
    nop
    ld [$4300], sp
    nop
    nop
    ld [$2043], sp
    stop
    ld b, e
    ld b, b
    db $10
    ld [$6043], sp
    inc b
    ld [$0043], sp
    inc b
    db $10
    ld b, e
    jr nz, jr_01e_7a63

    ld [$4043], sp
    inc c
    db $10
    ld b, e
    ld h, b
    rrca
    nop
    ld [$0049], sp

jr_01e_7a63:
    ld [$4910], sp
    nop
    jr nz, jr_01e_7a69

jr_01e_7a69:
    ld c, c
    nop
    ld [$4300], sp
    nop
    ld [$4308], sp
    jr nz, jr_01e_7a84

    nop
    ld b, e
    ld b, b
    db $10
    ld [$6043], sp
    db $10
    db $10
    ld b, e
    nop
    db $10
    jr jr_01e_7ac5

    jr nz, jr_01e_7a9c

jr_01e_7a84:
    db $10
    ld b, e
    ld b, b
    jr jr_01e_7aa1

    ld b, e
    ld h, b
    jr nz, @+$0a

    ld b, e
    nop
    jr nz, jr_01e_7aa1

    ld b, e
    jr nz, jr_01e_7abc

    ld [$4043], sp
    jr z, jr_01e_7aa9

    ld b, e
    ld h, b
    inc b

jr_01e_7a9c:
    nop
    nop
    ld c, c
    nop
    nop

jr_01e_7aa1:
    db $10
    ld c, c
    nop
    nop
    jr nz, jr_01e_7af0

    nop
    nop

jr_01e_7aa9:
    jr nc, jr_01e_7af4

    nop
    ld [$0000], sp
    ld c, c
    nop
    nop
    db $10
    ld c, c
    nop
    nop
    jr nz, jr_01e_7b01

    nop
    nop
    jr nc, jr_01e_7b05

jr_01e_7abc:
    nop
    ld [$4908], sp
    nop
    ld [$4918], sp
    nop

jr_01e_7ac5:
    ld [$4928], sp
    nop
    ld [$4938], sp
    nop
    inc c
    nop
    nop
    ld c, c
    nop
    nop
    db $10
    ld c, c
    nop
    nop
    jr nz, jr_01e_7b22

    nop
    nop
    jr nc, jr_01e_7b26

    nop
    ld [$4908], sp
    nop
    ld [$4918], sp
    nop
    ld [$4928], sp
    nop
    ld [$4938], sp
    nop
    stop

jr_01e_7af0:
    ld c, c
    nop
    db $10
    db $10

jr_01e_7af4:
    ld c, c
    nop
    db $10
    jr nz, jr_01e_7b42

    nop
    db $10
    jr nc, @+$4b

    nop
    rrca
    nop
    nop

jr_01e_7b01:
    ld c, c
    nop
    nop
    db $10

jr_01e_7b05:
    ld c, c
    nop
    nop
    jr nz, jr_01e_7b53

    nop
    nop
    jr nc, jr_01e_7b57

    nop
    ld [$4908], sp
    nop
    ld [$4918], sp
    nop
    ld [$4928], sp
    nop
    ld [$4938], sp
    nop
    stop
    ld c, c

jr_01e_7b22:
    nop
    db $10
    db $10
    ld c, c

jr_01e_7b26:
    nop
    db $10
    jr nz, jr_01e_7b73

    nop
    db $10
    jr nc, jr_01e_7b77

    nop
    jr jr_01e_7b39

    ld c, c
    nop
    jr @+$1a

    ld c, c
    nop
    jr jr_01e_7b61

jr_01e_7b39:
    ld c, c
    nop
    jr jr_01e_7b75

    ld c, c
    nop
    ld b, $10
    nop

jr_01e_7b42:
    ld h, $00
    db $10
    ld [$0027], sp
    ld [$2610], sp
    nop
    ld [$2718], sp
    nop
    nop
    jr nz, @+$28

jr_01e_7b53:
    nop
    nop
    jr z, jr_01e_7b7e

jr_01e_7b57:
    nop
    ld b, $18
    nop
    daa
    nop
    db $10
    ld [$0026], sp

jr_01e_7b61:
    db $10
    db $10
    daa
    nop
    ld [$2618], sp
    nop
    ld [$2720], sp
    nop
    nop
    jr z, jr_01e_7b96

    nop
    ld b, $00

jr_01e_7b73:
    nop
    inc e

jr_01e_7b75:
    nop
    nop

jr_01e_7b77:
    ld [$001d], sp
    stop
    inc e
    nop

jr_01e_7b7e:
    db $10
    ld [$001d], sp
    jr nz, jr_01e_7b84

jr_01e_7b84:
    inc e
    nop
    jr nz, @+$0a

    dec e
    nop
    ld [bc], a
    nop
    nop
    inc bc
    nop
    ld [$1300], sp
    nop
    ld bc, $0000

jr_01e_7b96:
    inc bc
    nop
    inc b
    nop
    nop
    inc bc
    nop
    nop
    ld [$2003], sp
    ld [$1300], sp
    nop
    ld [$1308], sp
    jr nz, jr_01e_7bab

    nop

jr_01e_7bab:
    nop
    ld b, $00
    ld [$0000], sp
    ld l, $00
    nop
    jr nc, jr_01e_7be4

    jr nz, jr_01e_7be8

    nop
    ld l, $40
    jr nc, jr_01e_7bed

    ld l, $60
    nop
    jr jr_01e_7bf1

    nop
    jr nc, @+$1a

    cpl
    ld b, b
    jr jr_01e_7bc9

jr_01e_7bc9:
    ld a, $00
    jr jr_01e_7bfd

    ld a, $20
    ld [$0000], sp
    ld l, $00
    nop
    jr nz, jr_01e_7c05

    jr nz, jr_01e_7bf9

    nop
    ld l, $40
    jr nz, jr_01e_7bfe

    ld l, $60
    nop
    db $10
    cpl
    nop

jr_01e_7be4:
    jr nz, jr_01e_7bf6

    cpl
    ld b, b

jr_01e_7be8:
    stop
    ld a, $00
    db $10

jr_01e_7bed:
    jr nz, jr_01e_7c2d

    jr nz, jr_01e_7bf9

jr_01e_7bf1:
    nop
    nop
    ld l, $00
    nop

jr_01e_7bf6:
    db $10
    ld l, $20

jr_01e_7bf9:
    stop
    ld l, $40

jr_01e_7bfd:
    db $10

jr_01e_7bfe:
    db $10
    ld l, $60
    nop
    ld [$002f], sp

jr_01e_7c05:
    db $10
    ld [$402f], sp
    ld [$3e00], sp
    nop
    ld [$3e10], sp
    jr nz, jr_01e_7c14

    nop
    nop

jr_01e_7c14:
    ld e, $00
    nop
    ld [$001f], sp
    inc b
    nop
    nop
    ld c, b
    nop
    nop
    ld [$2048], sp
    ld [$1200], sp
    nop

jr_01e_7c27:
    ld [$1208], sp
    jr nz, jr_01e_7c30

    nop

jr_01e_7c2d:
    nop
    ld c, d
    nop

jr_01e_7c30:
    nop
    ld [$0007], sp
    ld [$1600], sp

jr_01e_7c37:
    nop
    ld [$1708], sp
    nop
    inc b

jr_01e_7c3d:
    nop
    nop
    rlca
    jr nz, jr_01e_7c42

jr_01e_7c42:
    ld [$204a], sp
    ld [$1700], sp
    jr nz, jr_01e_7c52

    ld [$2016], sp
    rlca
    nop
    db $10
    cpl
    nop

jr_01e_7c52:
    ld bc, $2f08

jr_01e_7c55:
    nop
    ld bc, $2f18
    nop
    ld [bc], a
    nop
    ld l, $00
    ld [bc], a
    jr nz, jr_01e_7c8f

    jr nz, jr_01e_7c6d

    nop
    ld a, $00
    ld a, [bc]
    jr nz, jr_01e_7ca7

    jr nz, jr_01e_7c6f

    nop
    ld [bc], a

jr_01e_7c6d:
    ld c, e
    nop

jr_01e_7c6f:
    nop
    ld a, [bc]
    ld c, h
    nop
    ld [$4c00], sp
    ld h, b
    ld [$4b08], sp
    ld h, b
    ld bc, $0000
    ld c, l
    nop
    ld bc, $0000
    ld c, [hl]
    nop
    db $10
    ld l, b
    db $10
    ld [hl], b
    db $10
    ld a, b
    db $10
    add b
    db $10
    adc b

jr_01e_7c8f:
    db $10
    sub b
    db $10
    sbc b
    jr jr_01e_7cfd

    jr jr_01e_7d07

    jr @+$7a

    inc [hl]
    jr z, @+$1a

    add b
    jr jr_01e_7c27

    jr @-$66

    jr nz, jr_01e_7d0b

    jr nz, jr_01e_7d15

    jr nz, jr_01e_7d1f

jr_01e_7ca7:
    jr nz, @-$7e

    jr nz, @-$76

    jr nz, jr_01e_7c3d

    jr nz, @-$66

    jr z, jr_01e_7d19

    jr z, jr_01e_7d23

    jr z, jr_01e_7d2d

    jr z, jr_01e_7c37

    jr z, @-$76

    jr nc, jr_01e_7d23

    jr nc, jr_01e_7d2d

    jr nc, jr_01e_7d37

    jr nc, @-$7e

    jr nc, @-$6e

    jr nc, @-$66

    jr c, jr_01e_7d2f

    jr c, jr_01e_7d41

    jr c, @-$7e

    jr c, jr_01e_7c55

    ld b, b
    ld l, b
    ld b, b
    ld [hl], b
    ld b, b
    ld a, b
    ld b, b
    add b
    ld b, b
    adc b
    ld b, b
    sbc b
    db $10
    ld h, b
    jr jr_01e_7d3d

    jr nz, jr_01e_7d3f

    jr z, jr_01e_7d41

    jr nc, jr_01e_7d43

    ld b, b
    ld h, b
    ld e, b
    jr z, jr_01e_7d2b

    jr c, jr_01e_7d1d

    ld c, b
    jr nz, jr_01e_7d45

    ld [hl-], a
    ld a, b
    ld e, b
    ld e, b
    inc l
    ld l, h
    inc [hl]
    add b
    ld c, b
    ld [hl], b
    ld b, d
    ld [hl], $38
    ld b, h
    ld b, b
    ld d, d

jr_01e_7cfd:
    ld c, b
    ld h, b
    ld a, $6e
    jr z, jr_01e_7d7f

    jr z, jr_01e_7c8f

    ld d, b
    inc a

jr_01e_7d07:
    ld c, b
    ld d, b
    ld b, b
    ld h, h

jr_01e_7d0b:
    jr c, jr_01e_7d45

    ld d, b
    jr nc, jr_01e_7d60

    jr c, @+$52

    ld b, b
    ld d, b
    ld c, b

jr_01e_7d15:
    ld d, b
    ld d, b
    ld c, b
    ld e, b

jr_01e_7d19:
    ld d, b
    ld b, h
    ld c, b
    ld c, b

jr_01e_7d1d:
    ld c, b
    ld c, h

jr_01e_7d1f:
    ld b, b
    ld d, b
    ld b, b
    ld d, h

jr_01e_7d23:
    jr c, jr_01e_7d7d

    jr c, jr_01e_7d83

    jr nc, jr_01e_7d8d

    ld c, b
    ld b, b

jr_01e_7d2b:
    ld c, b
    add hl, sp

jr_01e_7d2d:
    inc h
    adc b

jr_01e_7d2f:
    inc h
    ld [hl], b
    inc e
    ld [hl], b
    inc e
    adc b
    inc [hl]
    ld l, b

jr_01e_7d37:
    inc [hl]
    adc b
    ld l, b
    ld d, b
    ld h, b
    ld d, b

jr_01e_7d3d:
    ld l, b
    ld h, b

jr_01e_7d3f:
    ld e, b
    ld d, b

jr_01e_7d41:
    ld h, b
    ld h, b

jr_01e_7d43:
    ld l, b
    ld b, b

jr_01e_7d45:
    ld b, b
    ld b, b
    jr c, @+$42

    dec bc
    ld h, b
    ld b, h
    ld c, b
    ld b, b
    inc d
    ld c, b
    inc e
    ld d, b
    inc h
    ld c, h
    inc h
    db $10
    ld h, d
    ld [de], a
    ld h, d
    ld [de], a
    ld h, b
    jr nz, jr_01e_7dcf

    ld [hl+], a
    ld [hl], d
    ld [hl+], a

jr_01e_7d60:
    ld [hl], b
    jr z, jr_01e_7dc5

    ld d, b
    ld a, [bc]
    ld d, d
    ld a, [bc]
    jr c, jr_01e_7d99

    ld b, b
    ld c, b
    jr nc, jr_01e_7db5

    ld b, b
    jr nc, @+$32

    ld b, b
    jr c, jr_01e_7dbb

    ld b, b
    ld c, d
    ld c, b
    ld c, e
    ld d, b
    ld c, h
    ld e, b
    ld c, l
    ld h, b
    ld c, l

jr_01e_7d7d:
    ld l, b
    ld c, l

jr_01e_7d7f:
    jr c, jr_01e_7d91

    ld d, b
    db $10

jr_01e_7d83:
    jr c, @+$2a

    ld c, b
    jr @+$42

    jr nz, jr_01e_7dd2

    jr nz, jr_01e_7dcc

    inc a

jr_01e_7d8d:
    jr c, jr_01e_7ddf

    jr z, jr_01e_7df5

jr_01e_7d91:
    inc e
    sub b
    inc h
    add b
    inc l
    ld [hl], b
    jr nc, jr_01e_7dd1

jr_01e_7d99:
    db $10
    ld d, b
    inc a
    ld b, b
    ld b, b
    ld e, b
    jr nc, @+$5a

    ld e, b
    ld c, b
    ld d, b
    ld e, b
    ld c, b
    ld l, b
    ld b, b
    jr jr_01e_7dd2

    ld e, b
    ld b, b
    jr c, @+$4a

    jr c, @+$0a

    ld [hl], b
    ld b, h
    inc e
    inc a
    ld e, b

jr_01e_7db5:
    jr c, @+$62

    ld [$3860], sp
    ld [hl], b

jr_01e_7dbb:
    jr c, @+$6e

    jr c, @+$66

    inc e
    ld [hl], h
    ld l, $74
    inc [hl]
    ld d, b

jr_01e_7dc5:
    cpl
    ld h, b
    ld sp, $4c70
    jr nc, @+$3d

jr_01e_7dcc:
    ld b, b
    dec l
    ld d, b

jr_01e_7dcf:
    ld h, $60

jr_01e_7dd1:
    dec l

jr_01e_7dd2:
    ld [hl], b
    jr z, @+$52

    ld e, $60
    add hl, hl
    ld [hl], b
    ld d, $60
    inc d
    ld e, b
    ld [de], a
    ld d, h

jr_01e_7ddf:
    inc d
    ld d, b
    jr @+$4e

    inc e
    ld c, b
    ld c, b
    jr z, jr_01e_7de8

jr_01e_7de8:
    nop
    push hl
    push de
    push bc
    ld a, [$cf91]
    push af
    ld a, [$d0b5]
    push af
    xor a

jr_01e_7df5:
    ld [$d083], a
    ld [$c02a], a
    dec a
    ld [$c0ee], a
    call Call_000_23b1
    ld a, $01
    ldh [$ba], a
    ld a, $8c
    call Call_000_23b1
    call Call_000_3dd7
    xor a
    ldh [$ba], a
    ldh [$d7], a
    ld a, [$cee9]
    ld [$cf1d], a
    ld c, $00
    call Call_01e_7eb4
    ld a, [$ceea]
    ld [$cf91], a
    ld [$d0b5], a
    call Call_01e_7eb9
    ld de, $9000
    ld hl, $9310
    ld bc, $0031
    call Call_000_1848
    ld a, [$cee9]
    ld [$cf91], a
    ld [$d0b5], a
    call Call_01e_7eb9
    ld a, $01
    ldh [$ba], a
    ld a, [$cee9]
    call Call_000_13d0
    call Call_000_3748
    ld c, $02
    ld a, $e5
    call Call_000_23a1
    ld c, $50
    call Call_000_3739
    ld c, $01
    call Call_01e_7eb4
    ld bc, $0110

jr_01e_7e63:
    push bc
    call Call_01e_7efa
    jr c, jr_01e_7ea9

    call Call_01e_7ec2
    pop bc
    inc b
    dec c
    dec c
    jr nz, jr_01e_7e63

    xor a
    ld [$ceec], a
    ld a, $31
    ld [$ceeb], a
    call Call_01e_7ed6
    ld a, [$ceea]

jr_01e_7e81:
    ld [$cf1d], a
    ld a, $ff
    ld [$c0ee], a
    call Call_000_23b1
    ld a, [$cf1d]
    call Call_000_13d0
    ld c, $00
    call Call_01e_7eb4
    pop af
    ld [$d0b5], a
    pop af
    ld [$cf91], a
    pop bc
    pop de
    pop hl
    ld a, [$ceec]
    and a
    ret z

    scf
    ret


jr_01e_7ea9:
    pop bc
    ld a, $01
    ld [$ceec], a
    ld a, [$cee9]
    jr jr_01e_7e81

Call_01e_7eb4:
    ld b, $0b
    jp Jump_000_3def


Call_01e_7eb9:
    call Call_000_1537
    ld hl, $c3cf
    jp Jump_000_1384


Call_01e_7ec2:
jr_01e_7ec2:
    ld a, $31
    ld [$ceeb], a
    call Call_01e_7ed6
    ld a, $cf
    ld [$ceeb], a
    call Call_01e_7ed6
    dec b
    jr nz, jr_01e_7ec2

    ret


Call_01e_7ed6:
    push bc
    xor a
    ldh [$ba], a
    ld hl, $c3cf
    ld bc, $0707
    ld de, $000d

jr_01e_7ee3:
    push bc

jr_01e_7ee4:
    ld a, [$ceeb]
    add [hl]
    ld [hl+], a
    dec c
    jr nz, jr_01e_7ee4

    pop bc
    add hl, de
    dec b
    jr nz, jr_01e_7ee3

    ld a, $01
    ldh [$ba], a
    call Call_000_3dd7
    pop bc
    ret


Call_01e_7efa:
jr_01e_7efa:
    call Call_000_20af
    push bc
    call Call_000_3831
    ldh a, [$b5]
    pop bc
    and $02
    jr nz, jr_01e_7f0d

jr_01e_7f08:
    dec c
    jr nz, jr_01e_7efa

    and a
    ret


jr_01e_7f0d:
    ld a, [$ccd4]
    and a
    jr nz, jr_01e_7f08

    scf
    ret


    ld de, $ffe0
    call Call_01e_7f64
    ld de, $0240
    call Call_01e_7f64
    call Call_000_3dd7
    ld a, $ff
    call Call_000_23b1
    ldh a, [$af]
    ld d, a
    ld e, $01
    ld b, $64

jr_01e_7f30:
    ld a, e
    xor $fe
    ld e, a
    add d
    ldh [$af], a
    push bc
    ld c, $02
    ld a, $b4
    call Call_000_23a1
    pop bc
    ld c, $02
    call Call_000_3739
    dec b
    jr nz, jr_01e_7f30

    ld a, d
    ldh [$af], a
    ld a, $ff
    call Call_000_23b1
    ld c, $02
    ld a, $b9
    call Call_000_23a1

jr_01e_7f57:
    ld a, [$c02a]
    cp $b9
    jr z, jr_01e_7f57

    call Call_000_2429
    jp Jump_000_2307


Call_01e_7f64:
    ld hl, $d527
    ld a, [hl-]
    push af
    ld a, [hl]
    push af
    push hl
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, h
    and $03
    or $98
    ld d, a
    ld a, l
    pop hl
    ld [hl+], a
    ld [hl], d
    call Call_000_0e91
    pop hl
    pop af
    ld [hl+], a
    pop af
    ld [hl], a
    jp Jump_000_3dd7


    ld a, [$cf91]
    sub $c9
    ret c

    ld d, a
    ld hl, $7fa7
    srl a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    srl d
    jr nc, jr_01e_7f9d

    swap a

jr_01e_7f9d:
    and $f0
    ldh [$8c], a
    xor a
    ldh [$8b], a
    ldh [$8d], a
    ret


    ld [hl-], a
    ld hl, $2434
    inc [hl]
    ld hl, $5545
    ld [hl-], a
    ld [hl-], a
    ld d, l
    ld d, d
    ld d, h
    ld d, d
    ld b, c
    ld hl, $4212
    dec h
    inc h
    ld [hl+], a
    ld d, d
    inc h
    inc [hl]
    ld b, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
