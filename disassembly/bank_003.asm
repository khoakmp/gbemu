; Disassembly of "Pokemon Red (UE) [S][!].gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $003", ROMX[$4000], BANK[$3]

    ldh a, [$f8]
    cp $0f
    jp z, Jump_003_403c

    ld b, a
    ldh a, [$b1]
    ld e, a
    xor b
    ld d, a
    and e
    ldh [$b2], a
    ld a, d
    and b
    ldh [$b3], a
    ld a, b
    ldh [$b1], a
    ld a, [$d730]
    bit 5, a
    jr nz, jr_003_4034

    ldh a, [$b1]
    ldh [$b4], a
    ld a, [$cd6b]
    and a
    ret z

    cpl
    ld b, a
    ldh a, [$b4]
    and b
    ldh [$b4], a
    ldh a, [$b3]
    and b
    ldh [$b3], a
    ret


Call_003_4034:
jr_003_4034:
    xor a
    ldh [$b4], a
    ldh [$b3], a
    ldh [$b2], a
    ret


Jump_003_403c:
    call Call_000_20af
    ld a, $30
    ldh [rP1], a
    ld hl, $ff8a
    dec [hl]
    jp z, $1f49

    jp Jump_000_019a


    cp d
    ld [bc], a
    jp $c302


    ld [bc], a
    rst $00
    ld [bc], a
    call nc, $d002
    ld [bc], a
    jp z, $c702

    ld [bc], a
    call $fb02
    ld [bc], a
    jp $c302


    ld [bc], a
    db $eb
    ld [bc], a
    db $eb
    ld [bc], a
    di
    ld [bc], a
    di
    ld [bc], a
    di
    ld [bc], a
    di
    ld [bc], a
    di
    ld [bc], a
    di
    ld [bc], a
    di
    ld [bc], a
    di
    ld [bc], a
    rst $30
    ld [bc], a
    rst $30
    ld [bc], a
    rst $30
    ld [bc], a
    rst $30
    ld [bc], a
    rst $30
    ld [bc], a
    di
    ld [bc], a
    di
    ld [bc], a
    di
    ld [bc], a
    di
    ld [bc], a
    di
    ld [bc], a
    di
    ld [bc], a
    di
    ld [bc], a
    ei
    ld [bc], a
    rst $28
    ld [bc], a
    rst $28
    ld [bc], a
    cp d
    ld [bc], a
    cp d
    ld [bc], a
    cp d
    ld [bc], a
    call $bd1f
    ld [bc], a
    cp l
    ld [bc], a
    jp $c302


    ld [bc], a
    ret nz

    ld [bc], a
    db $e4
    rra
    jp $c302


    ld [bc], a
    jp $c302


    ld [bc], a
    db $e4
    rra
    jp $c302


    ld [bc], a
    ret nz

    ld [bc], a
    jp $bd02


    ld [bc], a
    jp $bd02


    ld [bc], a
    add sp, $1f
    add sp, $1f
    add sp, $1f
    rst $00
    ld [bc], a
    rst $00
    ld [bc], a
    cp l
    ld [bc], a
    ret nz

    ld [bc], a
    rst $00
    ld [bc], a
    cp l
    ld [bc], a
    cp l
    ld [bc], a
    add sp, $1f
    jp $c302


    ld [bc], a
    jp $c302


    ld [bc], a
    jp $d002


    ld [bc], a
    jp $c302


    ld [bc], a
    jp z, $c302

    ld [bc], a
    jp $bd02


    ld [bc], a
    add sp, $1f
    ldh [$1f], a
    ret nc

    ld [bc], a
    db $e4
    rra
    ret nc

    ld [bc], a
    jp $c702


    ld [bc], a
    cp l
    ld [bc], a
    ret nc

    ld [bc], a
    cp l
    ld [bc], a
    ret nz

    ld [bc], a
    ret nc

    ld [bc], a
    ret c

    ld [bc], a
    ret c

    ld [bc], a
    ret c

    ld [bc], a
    ret c

    ld [bc], a
    ret c

    ld [bc], a
    ret c

    ld [bc], a
    ret c

    ld [bc], a
    ret c

    ld [bc], a
    ret c

    ld [bc], a
    ret c

    ld [bc], a
    ret c

    ld [bc], a
    db $e4
    rra
    db $e4
    rra
    ret c

    ld [bc], a
    add sp, $1f
    ldh a, [$1f]
    ldh [$1f], a
    di
    rra
    di
    rra
    ei
    ld [bc], a
    ret c

    ld [bc], a
    ret c

    ld [bc], a
    ret c

    ld [bc], a
    ret c

    ld [bc], a
    cp d
    ld [bc], a
    db $eb
    ld [bc], a
    ei
    ld [bc], a
    db $eb
    ld [bc], a
    cp l
    ld [bc], a
    cp l
    ld [bc], a
    cp l
    ld [bc], a
    cp l
    ld [bc], a
    cp l
    ld [bc], a
    cp l
    ld [bc], a
    jp z, $ca02

    ld [bc], a
    jp z, $ca02

    ld [bc], a
    jp z, $bd02

    ld [bc], a
    ret nz

    ld [bc], a
    reti


    rra
    cp l
    ld [bc], a
    jp z, $ca02

    ld [bc], a
    jp z, $ca02

    ld [bc], a
    cp l
    ld [bc], a
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    call nc, $bd02
    ld [bc], a
    call nc, $bd02
    ld [bc], a
    rst $00
    ld [bc], a
    cp l
    ld [bc], a
    rst $00
    ld [bc], a
    rst $00
    ld [bc], a
    ret nz

    ld [bc], a
    rst $00
    ld [bc], a
    db $e4
    rra
    db $e4
    rra
    db $e4
    rra
    db $e4
    rra
    rst $00
    ld [bc], a
    rst $00
    ld [bc], a
    db $ec
    rra
    ret nz

    ld [bc], a
    call $cd02
    ld [bc], a
    call $cd02
    ld [bc], a
    cp l
    ld [bc], a
    cp l
    ld [bc], a
    call $fb02
    ld [bc], a
    jp $c302


    ld [bc], a
    jp $c002


    ld [bc], a
    jp $bd02


    ld [bc], a
    di
    rra
    cp l
    ld [bc], a
    jp $c302


    ld [bc], a
    jp $c302


    ld [bc], a
    jp $ca02


    ld [bc], a
    jp z, $c302

    ld [bc], a
    jp $e402


    rra
    db $e4
    rra
    add sp, $1f
    jp $d002


    ld [bc], a
    db $e4
    rra
    add sp, $1f
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    di
    rra
    di
    rra
    di
    rra
    di
    rra
    di
    rra
    di
    rra
    di
    rra
    db $ec
    rra
    db $ec
    rra
    db $ec
    rra
    push hl
    ld [bc], a
    push hl
    ld [bc], a
    push hl
    ld [bc], a
    push hl
    ld [bc], a
    push hl
    ld [bc], a
    push hl
    ld [bc], a
    push hl
    ld [bc], a
    push hl
    ld [bc], a
    push hl
    ld [bc], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    rst $00
    ld [bc], a
    jp $cd02


    ld [bc], a
    add sp, $1f
    di
    rra
    di
    rra
    di
    rra
    di
    rra
    di
    rra
    di
    rra
    jp z, $ca02

    ld [bc], a
    di
    rra
    di
    rra
    di
    rra
    di
    rra
    ret nz

    ld [bc], a
    ldh [$1f], a
    ldh a, [$1f]
    ld b, $06
    ld b, $06
    ld de, $0606
    ld b, $07
    inc d
    inc d
    ld bc, $1507
    dec d
    dec d
    dec d
    ld d, $12
    ld d, $15
    ld d, $16
    ld d, $15
    dec d
    ld d, $16
    dec d
    ld d, $15
    inc d
    dec d
    inc d
    inc d
    inc d
    inc d
    ld [de], a
    rla
    ld b, $07
    ld de, $0707
    rlca
    dec e
    rlca
    rla
    rlca
    rla
    rla
    jr jr_003_4289

    rla
    rla
    rlca
    dec e
    rlca
    rla
    ld [de], a
    inc d
    ld [de], a
    rlca
    rlca
    rla
    rla
    rlca
    rla
    ld [de], a
    rlca
    rlca
    rla
    dec d
    rlca
    rla
    rla

jr_003_4289:
    rlca
    rla
    rla
    rlca
    rlca
    ld [de], a
    ld de, $1207
    rlca
    ld [de], a
    ld [de], a
    rlca
    rla
    ld d, $17
    rla
    rlca
    rlca
    jr jr_003_42b6

    ld de, $1818
    jr jr_003_42bb

    jr jr_003_42bd

    jr jr_003_42c4

    dec e
    dec e
    rla
    dec e
    dec e
    dec e
    dec e
    ld d, $1d
    dec e
    dec e
    dec e
    ld d, $18
    dec e

jr_003_42b6:
    jr @+$1a

    dec d
    ld [de], a
    ld [de], a

jr_003_42bb:
    ld [de], a
    ld [de], a

jr_003_42bd:
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    rlca
    ld [de], a
    ld [de], a

jr_003_42c4:
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    rla
    jr jr_003_42e5

    jr jr_003_42e7

    jr jr_003_42e9

    jr jr_003_42da

    rla
    rlca
    rlca
    dec e
    dec e
    dec e
    dec e

jr_003_42da:
    dec e
    dec e
    ld de, $1111
    ld de, $1515
    ld de, $1d1d

jr_003_42e5:
    dec e
    dec e

jr_003_42e7:
    dec e
    dec e

jr_003_42e9:
    dec e
    dec e
    ld b, $1d
    rla
    rla
    rla
    rlca
    rla
    rla
    rla
    rlca
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    rlca
    dec d
    ld [de], a
    ld [de], a
    ld de, $1407
    ld [de], a
    ld b, $18
    ld de, $1111
    ld de, $1111
    ld bc, $0101
    ld d, $16
    ld b, $06
    ld b, $14
    dec d
    inc d
    inc d
    inc d
    ld de, $1211
    ld de, $1211
    ld de, $1111
    ld de, $1d11
    rlca
    dec e
    ld bc, $1711
    ld d, $18
    ld de, $1111
    inc de
    inc de
    ld de, $1111
    ld de, $1d1d
    dec e
    ld a, $90
    ldh [$b0], a
    ldh [rWY], a
    xor a
    ldh [$ba], a
    ld [$d13b], a
    ld [$d05c], a
    ldh [$b3], a
    ldh [$b2], a
    ldh [$b4], a
    ld [$cd6a], a
    ld [$d5a3], a
    ld hl, $d73f
    ld [hl+], a
    ld [hl], a
    ld hl, $cd3d
    ld bc, $001e
    call Call_000_36e0
    ret


    ld a, [$d3ae]
    and a
    ret z

    ld c, a
    ld hl, $d3af

jr_003_4368:
    ld a, [$d361]
    cp [hl]
    jr nz, jr_003_4383

    inc hl
    ld a, [$d362]
    cp [hl]
    jr nz, jr_003_4384

    inc hl
    ld a, [hl+]
    ld [$d42f], a
    ld a, [hl]
    ldh [$8b], a
    ld hl, $d736
    set 2, [hl]
    ret


jr_003_4383:
    inc hl

jr_003_4384:
    inc hl
    inc hl
    inc hl
    dec c
    jr nz, jr_003_4368

    ret


    ld hl, $d732
    bit 5, [hl]
    ret nz

    ld hl, $43e6
    ld a, [$d361]
    ld b, a
    ld a, [$d362]
    ld c, a
    ld a, [$d35e]
    ld d, a

jr_003_43a0:
    ld a, [hl+]
    cp $ff
    ret z

    cp d
    jr nz, jr_003_43d7

    ld a, [hl+]
    cp b
    jr nz, jr_003_43d8

    ld a, [hl+]
    cp c
    jr nz, jr_003_43a0

    ld a, [$d35e]
    cp $a1
    ld a, $02
    ld [$d666], a
    jr z, jr_003_43db

    ld a, [$d35e]
    cp $a2
    ld a, $02
    ld [$d668], a
    jr z, jr_003_43db

    ld hl, $d732
    set 5, [hl]
    ld a, $01
    ld [$d700], a
    ld [$d11a], a
    jp Jump_000_12ed


jr_003_43d7:
    inc hl

jr_003_43d8:
    inc hl
    jr jr_003_43a0

jr_003_43db:
    ld a, $02
    ld [$d700], a
    ld [$d11a], a
    jp Jump_000_12ed


    dec de
    ld a, [bc]
    ld de, $0b1b
    ld de, $081d
    ld hl, $091d
    ld hl, $07a1
    ld [de], a
    and c
    rlca
    inc de
    and d
    ld c, $04
    and d
    ld c, $05
    rst $38
    push hl
    push de
    push bc
    ld a, [$c109]
    srl a
    ld c, a
    ld b, $00
    ld hl, $4422
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d361]
    ld b, a
    ld a, [$d362]
    ld c, a
    ld de, $441e
    push de
    jp hl


    pop bc
    pop de
    pop hl
    ret


    ld a, [hl+]
    ld b, h
    inc [hl]
    ld b, h
    ld a, [hl-]
    ld b, h
    ld b, b
    ld b, h
    ld a, [$d368]
    add a
    dec a
    cp b
    jr z, jr_003_444c

    jr jr_003_444a

    ld a, b
    and a
    jr z, jr_003_444c

    jr jr_003_444a

    ld a, c
    and a
    jr z, jr_003_444c

    jr jr_003_444a

    ld a, [$d369]
    add a
    dec a
    cp c
    jr z, jr_003_444c

    jr jr_003_444a

jr_003_444a:
    and a
    ret


jr_003_444c:
    scf
    ret


    push hl
    push de
    push bc
    call Call_003_4589
    ld a, [$d35e]
    cp $63
    jr z, jr_003_4490

    ld a, [$c109]
    srl a
    ld c, a
    ld b, $00
    ld hl, $4477
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$cfc6]
    ld de, $0001
    call Call_000_3dab

jr_003_4473:
    pop bc
    pop de
    pop hl
    ret


    ld a, a
    ld b, h
    add a
    ld b, h
    adc d
    ld b, h
    adc l
    ld b, h
    ld bc, $1712
    dec a
    inc b
    jr @+$35

    rst $38
    ld bc, $ff5c
    ld a, [de]
    ld c, e
    rst $38
    rrca
    ld c, [hl]
    rst $38

jr_003_4490:
    ld a, [$cfc6]
    cp $15
    jr nz, jr_003_449a

    scf
    jr jr_003_4473

jr_003_449a:
    and a
    jr jr_003_4473

    push hl
    push de
    push bc
    ld b, $06
    ld hl, $6609
    call Call_000_35d6
    jr c, jr_003_44c8

    ld a, [$d367]
    add a
    ld c, a
    ld b, $00
    ld hl, $44cc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0001
    ld a, [$c45c]
    call Call_000_3dab
    jr nc, jr_003_44c8

    ld hl, $d736
    res 2, [hl]

jr_003_44c8:
    pop bc
    pop de
    pop hl
    ret


    db $fc
    ld b, h
    nop
    ld b, l
    inc bc
    ld b, l
    dec b
    ld b, l
    nop
    ld b, l
    add hl, bc
    ld b, l
    inc bc
    ld b, l
    add hl, bc
    ld b, l
    dec bc
    ld b, l
    rst $38
    ld b, h
    rst $38
    ld b, h
    ld a, [hl+]
    ld b, l
    rst $38
    ld b, h
    rrca
    ld b, l
    ld l, $45
    add hl, hl
    ld b, l
    inc d
    ld b, l
    jr jr_003_4535

    inc e
    ld b, l
    jr nz, @+$47

    inc h
    ld b, l
    ld l, $45
    ld h, $45
    inc l
    ld b, l
    dec de
    ld e, b
    rst $38
    dec sp
    ld a, [de]
    inc e
    rst $38
    ld e, [hl]
    rst $38
    ld e, d
    ld e, h
    ld a, [hl-]
    rst $38
    ld c, d
    rst $38
    ld d, h
    ld e, h
    ld [hl-], a
    rst $38
    scf
    add hl, sp
    ld e, $4a
    rst $38
    dec d
    ld d, l
    inc b
    rst $38
    jr jr_003_4534

    ld [hl+], a
    rst $38
    ld a, [de]
    inc e
    jr c, @+$01

    ld a, [de]
    inc e
    ld d, e
    rst $38
    inc [hl]
    rst $38
    ld b, e
    ld e, b
    jr nz, jr_003_4545

    inc de
    rst $38
    dec de
    dec sp
    rst $38
    ld a, [$d35e]
    cp $d9

jr_003_4534:
    ret c

jr_003_4535:
    cp $e2
    ret nc

    ld hl, $c3a0
    ld b, $03
    ld c, $07
    call Call_000_1922
    ld hl, $c3b5

jr_003_4545:
    ld de, $d70d
    ld bc, $0203
    call Call_000_3c5f
    ld hl, $c3b8
    ld de, $4579
    call Call_000_1955
    ld hl, $c3dd
    ld de, $457e
    call Call_000_1955
    ld a, [$da47]
    cp $0a
    jr nc, jr_003_456d

    ld hl, $c3e1
    ld a, $7f
    ld [hl], a

jr_003_456d:
    ld hl, $c3e2
    ld de, $da47
    ld bc, $0102
    jp Jump_000_3c5f


    di
    ei
    or $f6
    ld d, b
    add c
    add b
    adc e
    adc e
    pop af
    pop af
    ld a, a
    ld d, b

Call_003_4586:
    call Call_000_3e94

Call_003_4589:
    ld a, [$d361]
    ld d, a
    ld a, [$d362]
    ld e, a
    ld a, [$c109]
    and a
    jr nz, jr_003_459d

    ld a, [$c484]
    inc d
    jr jr_003_45b9

jr_003_459d:
    cp $04
    jr nz, jr_003_45a7

    ld a, [$c434]
    dec d
    jr jr_003_45b9

jr_003_45a7:
    cp $08
    jr nz, jr_003_45b1

    ld a, [$c45a]
    dec e
    jr jr_003_45b9

jr_003_45b1:
    cp $0c
    jr nz, jr_003_45b9

    ld a, [$c45e]
    inc e

jr_003_45b9:
    ld c, a
    ld [$cfc6], a
    ret


Call_003_45be:
    xor a
    ldh [$db], a
    ld hl, $d361
    ld a, [hl+]
    ld d, a
    ld e, [hl]
    ld a, [$c109]
    and a
    jr nz, jr_003_45d8

    ld hl, $ffdb
    set 0, [hl]
    ld a, [$c4ac]
    inc d
    jr jr_003_4603

jr_003_45d8:
    cp $04
    jr nz, jr_003_45e7

    ld hl, $ffdb
    set 1, [hl]
    ld a, [$c40c]
    dec d
    jr jr_003_4603

jr_003_45e7:
    cp $08
    jr nz, jr_003_45f6

    ld hl, $ffdb
    set 2, [hl]
    ld a, [$c458]
    dec e
    jr jr_003_4603

jr_003_45f6:
    cp $0c
    jr nz, jr_003_4603

    ld hl, $ffdb
    set 3, [hl]
    ld a, [$c460]
    inc e

jr_003_4603:
    ld c, a
    ld [$d71c], a
    ld [$cfc6], a
    ret


    call Call_003_45be
    ld hl, $d530
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_003_4614:
    ld a, [hl+]
    cp $ff
    jr z, jr_003_4632

    cp c
    jr nz, jr_003_4614

    ld hl, $0c7e
    call Call_000_0c44
    ld a, $ff
    jr c, jr_003_4632

    ld a, [$d71c]
    cp $15
    ld a, $ff
    jr z, jr_003_4632

    call Call_003_4636

jr_003_4632:
    ld [$d71c], a
    ret


Call_003_4636:
    ld a, [$d718]
    dec a
    swap a
    ld d, $00
    ld e, a
    ld hl, $c214
    add hl, de
    ld a, [hl+]
    ldh [$dc], a
    ld a, [hl]
    ldh [$dd], a
    ld a, [$d4e1]
    ld c, a
    ld de, $000f
    ld hl, $c214
    ldh a, [$db]
    and $03
    jr z, jr_003_4678

jr_003_4659:
    inc hl
    ldh a, [$dd]
    cp [hl]
    jr nz, jr_003_4672

    dec hl
    ld a, [hl+]
    ld b, a
    ldh a, [$db]
    rrca
    jr c, jr_003_466c

    ldh a, [$dc]
    dec a
    jr jr_003_466f

jr_003_466c:
    ldh a, [$dc]
    inc a

jr_003_466f:
    cp b
    jr z, jr_003_4697

jr_003_4672:
    dec c
    jr z, jr_003_469a

    add hl, de
    jr jr_003_4659

jr_003_4678:
    ld a, [hl+]
    ld b, a
    ldh a, [$dc]
    cp b
    jr nz, jr_003_4691

    ld b, [hl]
    ldh a, [$db]
    bit 2, a
    jr nz, jr_003_468b

    ldh a, [$dd]
    inc a
    jr jr_003_468e

jr_003_468b:
    ldh a, [$dd]
    dec a

jr_003_468e:
    cp b
    jr z, jr_003_4697

jr_003_4691:
    dec c
    jr z, jr_003_469a

    add hl, de
    jr jr_003_4678

jr_003_4697:
    ld a, $ff
    ret


jr_003_469a:
    xor a
    ret


    ld a, [$d730]
    add a
    jp c, Jump_003_474f

    ld a, [$d163]
    and a
    jp z, Jump_003_474f

    call $48de
    ld a, [$d13b]
    and $03
    jp nz, Jump_003_474f

    ld [$cf92], a
    ld hl, $d16f
    ld de, $d164

jr_003_46be:
    ld a, [hl]
    and $08
    jr z, jr_003_46fd

    dec hl
    dec hl
    ld a, [hl-]
    ld b, a
    ld a, [hl+]
    or b
    jr z, jr_003_46fb

    ld a, [hl]
    dec a
    ld [hl-], a
    inc a
    jr nz, jr_003_46d5

    dec [hl]
    inc hl
    jr jr_003_46fb

jr_003_46d5:
    ld a, [hl+]
    or [hl]
    jr nz, jr_003_46fb

    push hl
    inc hl
    inc hl
    ld [hl], a
    ld a, [de]
    ld [$d11e], a
    push de
    ld a, [$cf92]
    ld hl, $d2b5
    call Call_000_15ba
    xor a
    ld [$cd6b], a
    call Call_000_3c3c
    ld a, $d0
    ldh [$8c], a
    call Call_000_2920
    pop de
    pop hl

jr_003_46fb:
    inc hl
    inc hl

jr_003_46fd:
    inc de
    ld a, [de]
    inc a
    jr z, jr_003_470e

    ld bc, $002c
    add hl, bc
    push hl
    ld hl, $cf92
    inc [hl]
    pop hl
    jr jr_003_46be

jr_003_470e:
    ld hl, $d16f
    ld a, [$d163]
    ld d, a
    ld e, $00

jr_003_4717:
    ld a, [hl]
    and $08
    or e
    ld e, a
    ld bc, $002c
    add hl, bc
    dec d
    jr nz, jr_003_4717

    ld a, e
    and a
    jr z, jr_003_4733

    ld b, $02
    ld a, $1f
    call Call_000_3e6d
    ld a, $97
    call Call_000_23b1

jr_003_4733:
    ld a, $14
    call Call_000_3e6d
    ld a, d
    and a
    jr nz, jr_003_474f

    call Call_000_3c3c
    ld a, $d1
    ldh [$8c], a
    call Call_000_2920
    ld hl, $d72e
    set 5, [hl]
    ld a, $ff
    jr jr_003_4750

Jump_003_474f:
jr_003_474f:
    xor a

jr_003_4750:
    ld [$d12d], a
    ret


    call Call_000_3e94
    push hl
    ld d, $00
    ld a, [$d367]
    add a
    add a
    ld b, a
    add a
    add b
    jr nc, jr_003_4765

    inc d

jr_003_4765:
    ld e, a
    ld hl, $47be
    add hl, de
    ld de, $d52b
    ld c, $0b

jr_003_476f:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_003_476f

    ld a, [hl]
    ldh [$d7], a
    xor a
    ldh [$d8], a
    pop hl
    ld a, [$d367]
    push hl
    push de
    ld hl, $47b2
    ld de, $0001
    call Call_000_3dab
    pop de
    pop hl
    jr c, jr_003_4797

    ld a, [$d367]
    ld b, a
    ldh a, [$8b]
    cp b
    jr z, jr_003_47b1

jr_003_4797:
    ld a, [$d42f]
    cp $ff
    jr z, jr_003_47b1

    call Call_000_1313
    ld a, [$d361]
    and $01
    ld [$d363], a
    ld a, [$d362]
    and $01
    ld [$d364], a

jr_003_47b1:
    ret


    inc bc
    ld a, [bc]
    dec c
    ld de, $1312
    inc c
    inc d
    ld d, $0f
    rlca
    rst $38
    add hl, de
    ldh [rLYC], a
    nop
    ld b, b
    dec [hl]
    rla
    rst $38
    rst $38
    rst $38
    ld d, d
    ld [bc], a
    add hl, de
    ld [hl], b
    ld d, d
    ldh [rKEY1], a
    ld c, c
    rla
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld a, [de]
    cp a
    ld d, e
    cp a
    ld c, l
    ld d, e
    rla
    jr jr_003_47f8

    ld e, $ff
    nop
    ld a, [de]
    rst $38
    ld l, c
    rst $38
    ld h, e
    ld h, l
    rla
    rst $38
    rst $38
    rst $38
    jr nz, jr_003_47ef

    add hl, de

jr_003_47ef:
    ld [hl], b
    ld d, d
    ldh [rKEY1], a
    ld c, c
    rla
    rst $38
    rst $38
    rst $38

jr_003_47f8:
    rst $38
    nop
    ld a, [de]
    ld a, a
    ld b, [hl]
    ld a, a
    ld b, b
    ld e, c
    rla
    ld a, [hl-]
    rst $38
    rst $38
    rst $38
    ld [bc], a
    ld a, [de]
    cp a
    ld d, e
    cp a
    ld c, l
    ld d, e
    rla
    jr jr_003_4828

    ld e, $ff
    nop
    ld a, [de]
    ld a, a
    ld b, [hl]
    ld a, a
    ld b, b
    ld e, c
    rla
    ld a, [hl-]
    rst $38
    rst $38
    rst $38
    ld [bc], a
    add hl, de
    add b
    ld e, c
    and b
    ld d, e
    ld [hl], l
    rla
    rst $38
    rst $38
    rst $38

jr_003_4828:
    rst $38
    nop
    ld a, [de]
    rst $38
    ld e, e
    rrca
    ld d, [hl]
    ld a, a
    rla
    rla
    ld [hl-], a
    rst $38

Call_003_4834:
    rst $38
    nop
    ld a, [de]
    rst $38
    ld e, e
    rrca
    ld d, [hl]
    ld a, a
    rla
    rla
    ld [hl-], a
    rst $38
    rst $38
    nop
    dec de
    ldh a, [$7e]
    ld h, b
    ld a, l
    cpl
    rla
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld a, [de]
    rst $38
    ld e, e
    rrca
    ld d, [hl]
    ld a, a
    rla
    rla
    ld [hl-], a
    rst $38
    rst $38
    nop
    dec de
    jr nc, jr_003_48c6

    sub b
    ld h, e
    adc d
    rla
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $f019
    ld l, e
    db $10
    ld h, [hl]
    sub l
    rla
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $c01b
    ld b, l
    nop
    ld b, b
    sbc d
    rla
    ld [de], a
    rst $38
    rst $38
    rst $38
    nop
    add hl, de
    ld d, b
    ld [hl], e
    ld h, b
    ld l, l
    and d
    rla
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    dec de
    ret nz

    ld d, b
    and b
    ld c, h
    xor h
    rla
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $a01b
    ld e, [hl]
    ret nz

    ld e, b
    cp b
    rla
    dec d
    ld [hl], $ff
    rst $38
    nop
    add hl, de
    sub b
    ld h, c
    or b
    ld e, e
    ret nz

    rla
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    dec de
    ret nc

    ld [hl], d
    db $10
    ld l, l
    jp z, $ff17

    rst $38
    rst $38
    rst $38
    nop
    dec de
    jr nz, jr_003_4938

    ld [hl], b
    db $76
    pop de
    rla
    rlca
    rla
    rst $38
    rst $38
    nop

jr_003_48c6:
    ld a, [de]
    rst $38
    ld [hl], a
    rst $38
    ld [hl], c
    db $dd
    rla
    ld [de], a
    rst $38
    rst $38
    rst $38
    ld bc, $5019
    ld a, e
    ldh a, [rPCM12]
    ldh a, [rNR22]
    rst $38
    rst $38
    rst $38
    ld b, l
    ld bc, $48fa
    jp c, $c8a7

    ld hl, $da6f
    inc [hl]
    ret nz

    dec hl
    inc [hl]
    ret nz

    dec hl
    inc [hl]
    ld a, [hl]
    cp $50
    ret c

    ld a, $50
    ld [hl], a
    ret


    ld [$ed4a], a
    ld c, d
    di
    ld c, d
    ld sp, hl
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    ld [$e74b], sp
    ld c, d
    rst $20
    ld c, d
    dec [hl]
    ld c, e
    rst $20
    ld c, d
    dec sp
    ld c, e
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    ld a, $4b
    rst $20
    ld c, d
    rst $20
    ld c, d
    ld b, c
    ld c, e
    rst $20
    ld c, d
    rst $20
    ld c, d
    ld c, d
    ld c, e
    ld c, l
    ld c, e
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    ld d, b

jr_003_4938:
    ld c, e
    rst $20
    ld c, d
    ld d, [hl]
    ld c, e
    ld e, h
    ld c, e
    rst $20
    ld c, d
    rst $20
    ld c, d
    ld e, a
    ld c, e
    ld l, b
    ld c, e
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    add b
    ld c, e
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    ld d, $4c
    add [hl]
    ld c, e
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rra
    ld c, h
    rst $20
    ld c, d

Call_003_496f:
    ld sp, $e74c
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    pop de
    ld c, e
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    dec c
    ld c, h
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    dec a
    ld c, h
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    ld b, b
    ld c, h
    ld b, e
    ld c, h
    ld c, c
    ld c, h
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    ld h, [hl]
    ld c, l
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    ld l, h
    ld c, l
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    cp c
    ld c, e
    rst $20
    ld c, d
    rst $20
    ld c, d
    cp h
    ld c, e
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    sub d
    ld c, e
    sub l
    ld c, e
    sbc b
    ld c, e
    and c
    ld c, e
    and h
    ld c, e
    xor d
    ld c, e
    or [hl]
    ld c, e
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    cp a
    ld c, e
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    ld [hl], l
    ld c, l
    ld a, e
    ld c, l
    add c
    ld c, l
    adc l
    ld c, l
    rst $20
    ld c, d
    rst $20
    ld c, d
    jp nz, $e74b

    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    ret z

    ld c, e
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    adc $4b
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    ld l, a
    ld c, l
    rst $20
    ld c, d
    ei
    ld c, e
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    ld d, d
    ld c, h
    ld e, e
    ld c, h
    ld h, c
    ld c, h
    ld l, l
    ld c, h
    ld [hl], e
    ld c, h
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    add l
    ld c, h
    sub h
    ld c, h
    sbc l
    ld c, h
    xor a
    ld c, h
    call nz, $d34c
    ld c, h
    db $eb
    ld c, h
    dec de
    ld c, l
    ld e, $4d
    inc h
    ld c, l
    inc sp
    ld c, l
    ccf
    ld c, l
    ld b, l
    ld c, l
    ld d, c
    ld c, l
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    ld d, h
    ld c, l
    ld e, l
    ld c, l
    adc c
    ld c, e
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    db $f4
    ld c, h
    db $fd
    ld c, h
    rrca
    ld c, l
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    jr @+$4f

    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $20
    ld c, d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld bc, $0111
    dec b
    dec d
    ld bc, $1107
    ld [bc], a
    inc bc
    dec d
    ld [bc], a
    dec b
    dec d
    inc bc
    ld bc, $0311
    ld [bc], a
    dec d
    inc bc
    ld b, $11
    inc bc
    ld a, [bc]
    dec d
    inc bc
    dec bc
    dec d
    ld a, [bc]
    ld bc, $0a15
    ld [bc], a
    dec d
    ld a, [bc]
    inc bc
    dec d
    ld a, [bc]
    inc b
    dec d
    ld a, [bc]
    dec b
    dec d
    ld a, [bc]
    ld b, $15
    ld a, [bc]
    rlca
    dec d
    ld a, [bc]
    ld [$0a11], sp
    add hl, bc
    ld de, $0a0a
    ld de, $0b0a
    ld de, $0c0a
    ld de, $0d0a
    ld de, $0e0a
    dec d
    ld a, [bc]
    rrca
    ld de, $010d
    dec d
    dec c
    ld [bc], a
    dec d
    rrca
    inc bc
    dec d
    inc d
    ld a, [bc]
    dec d
    rla
    ld bc, $1715
    add hl, bc
    dec d
    rla
    ld a, [bc]
    dec d
    ld a, [de]
    dec bc
    dec d
    dec de
    rlca
    dec d
    ld hl, $1101
    ld hl, $1102
    inc hl
    ld bc, $2315
    ld [$2415], sp
    ld a, [bc]
    dec d
    daa
    ld bc, $2715
    ld [bc], a
    ld de, $0327
    dec d
    jr z, jr_003_4b6b

    dec d

jr_003_4b6b:
    jr z, @+$04

    dec d
    jr z, jr_003_4b73

    dec d
    jr z, @+$06

jr_003_4b73:
    dec d
    jr z, @+$07

    ld de, $0628
    dec d
    jr z, jr_003_4b83

    dec d
    jr z, jr_003_4b87

    ld de, $012d
    dec d

jr_003_4b83:
    dec l
    dec bc
    dec d
    inc [hl]

jr_003_4b87:
    dec b
    dec d
    db $e4
    ld bc, $e415
    ld [bc], a
    dec d
    db $e4
    inc bc
    dec d
    adc a
    ld bc, $9015
    inc b
    dec d
    sub c
    inc b
    dec d
    sub c
    dec b
    dec d
    sub c
    ld b, $15
    sub d
    ld b, $15
    sub e
    inc b
    dec d
    sub e
    dec b
    dec d
    sub h
    ld bc, $9415
    ld [bc], a
    dec d
    sub h
    inc bc
    dec d
    sub h
    inc b
    dec d
    sub l
    dec b
    ld de, $0284
    dec d
    add a
    dec bc
    dec d
    sbc e
    ld [bc], a
    dec d
    and l
    ld [bc], a
    dec d
    and l
    inc bc
    dec d
    or c
    ld b, $15
    or c
    rlca
    dec d
    or l
    ld bc, $5311
    ld bc, $5315
    ld [bc], a
    dec d
    ld d, e
    inc bc
    dec d
    ld d, e
    inc b
    dec d
    ld d, e
    dec b
    dec d
    ld d, e
    ld b, $15
    ld d, e
    rlca
    dec d
    ld d, e
    ld [$5315], sp
    add hl, bc
    dec d
    ld d, e
    ld a, [bc]
    dec d
    ld d, e
    dec bc
    dec d
    ld d, e
    inc c
    dec d
    ld d, e
    dec c
    dec d
    ld d, e
    ld c, $15
    jp nz, $1506

    jp nz, Jump_000_1507

    jp nz, $1508

    jp nz, $1509

    jp nz, Jump_000_150a

    jp nz, Jump_000_150d

    ld e, b
    ld bc, $5815
    ld [bc], a
    ld de, $0358
    ld de, $0533
    dec d
    inc sp
    ld b, $15
    inc sp
    rlca
    dec d
    dec sp
    ld [$3b15], sp
    add hl, bc
    dec d
    dec sp
    ld a, [bc]
    dec d
    dec sp
    dec bc
    dec d
    dec sp
    inc c
    dec d
    dec sp
    dec c
    dec d
    dec a
    ld b, $15
    dec a
    rlca
    dec d
    dec a
    ld [$3d15], sp
    add hl, bc
    dec d
    ld h, b
    ld [bc], a
    ld de, $0a66
    dec d
    ld h, a
    ld b, $15
    ld h, a
    add hl, bc
    dec d
    ld l, b
    add hl, bc
    dec d
    ld l, b
    ld a, [bc]
    dec d
    ld l, b
    dec bc
    dec d
    add $05
    dec d
    add $06
    dec d
    add $0a
    dec d
    rst $00
    ld b, $15
    rst $00
    rlca
    dec d
    ret z

    ld [bc], a
    dec d
    ret z

    inc bc
    dec d
    ret z

    inc b
    dec d
    ret z

    dec b
    dec d
    ret


    inc bc
    dec d
    ret


    inc b
    dec d
    jp z, $1501

    jp z, Jump_000_1505

    jp z, $1506

    jp z, Jump_000_1507

    jp z, $1108

    jp z, $1109

    rst $08
    ld bc, $cf15
    ld [bc], a
    dec d
    rst $08
    inc bc
    dec d
    rst $08
    inc b
    dec d
    rst $08
    dec b
    dec d
    ret nc

    ld [bc], a
    dec d
    ret nc

    inc bc
    dec d
    ret nc

    inc b
    dec d
    pop de
    ld [bc], a
    dec d
    pop de
    inc bc
    dec d
    pop de
    inc b
    dec d
    pop de
    dec b
    dec d
    pop de
    ld b, $15
    pop de
    rlca
    dec d
    jp nc, $1502

    jp nc, Jump_000_1503

    jp nc, Jump_000_1504

    jp nc, Jump_000_1505

    jp nc, $1506

    jp nc, Jump_000_1507

    jp nc, $1508

    db $d3
    ld b, $15
    db $d3
    rlca
    dec d
    db $d3
    ld [$d315], sp
    add hl, bc
    dec d
    db $d3
    ld a, [bc]
    dec d
    call nc, Call_000_1505
    call nc, $1506
    call nc, Call_000_1507
    call nc, $1508
    call nc, $1509
    call nc, Call_000_150a
    call nc, Call_000_150b
    call nc, $150c
    push de
    ld [bc], a
    dec d
    push de
    inc bc
    dec d
    push de
    inc b
    dec d
    jp hl


    ld [bc], a
    dec d
    jp hl


    inc bc
    dec d
    jp hl


    inc b
    dec d
    ld [$1501], a
    ld [$1502], a
    ld [$1503], a
    ld [$1504], a
    ld [$1505], a
    ld [$1506], a
    db $eb
    inc bc
    dec d
    db $eb
    inc b
    dec d
    db $eb
    dec b
    dec d
    db $f4
    ld [bc], a
    dec d
    sub $02
    dec d
    rst $10
    inc bc
    dec d
    rst $10
    inc b
    dec d
    ret c

    inc bc
    dec d
    ret c

    inc b
    dec d
    ret c

    dec b
    dec d
    ret c

    ld b, $15
    ret c

    ld [$d915], sp
    ld bc, $d915
    ld [bc], a
    dec d
    reti


    inc bc
    dec d
    reti


    inc b
    dec d
    jp c, $1501

    jp c, $1502

    db $db
    ld bc, $db15
    ld [bc], a
    dec d
    db $db
    inc bc
    dec d
    db $db
    inc b
    dec d
    call c, $1501
    ld [c], a
    ld bc, $e215
    ld [bc], a
    dec d
    ld [c], a
    inc bc
    dec d
    db $e3
    ld bc, $e315
    ld [bc], a
    dec d
    db $e3
    inc bc
    dec d
    ld l, h
    inc bc
    dec d
    ld l, h
    inc b
    dec d
    ld a, b
    ld [bc], a
    ld de, $01c0
    dec d
    ret nz

jr_003_4d73:
    ld [bc], a
    dec d
    sbc a
    ld bc, $9f11
    ld [bc], a
    ld de, $01a0
    ld de, $02a0
    ld de, $02a1
    dec d
    and c
    inc bc
    dec d
    and c
    dec b
    ld de, $06a1
    ld de, $01a2
    ld de, $02a2
    ld de, $03a2
    dec d
    rst $38
    ld bc, $2115
    jr z, jr_003_4d73

    set 0, [hl]
    ld hl, $4daa
    call Call_000_3c49
    ld hl, $4dbb
    jp Jump_000_3c49


    rla
    inc a
    ld b, b
    add hl, hl
    ld [$91fa], sp
    rst $08
    call Call_000_13d0
    call Call_000_3dd7
    jp Jump_000_24d7


    rla
    ld d, c
    ld b, b
    add hl, hl
    ld d, b
    ld hl, $d728
    set 1, [hl]
    ld a, [$d732]
    bit 5, a
    jr nz, jr_003_4dec

    ld a, [$d35e]
    cp $a2
    ret nz

    ld a, [$d881]
    and $03
    cp $03
    ret z

    ld hl, $4df7
    call Call_000_34bf
    ret nc

    ld hl, $d728
    res 1, [hl]
    ld hl, $4dfa
    jp Jump_000_3c49


jr_003_4dec:
    ld hl, $d728
    res 1, [hl]
    ld hl, $4dff
    jp Jump_000_3c49


    dec bc
    rlca
    rst $38
    rla
    ld l, c
    ld b, b
    add hl, hl
    ld d, b
    rla
    adc b
    ld b, b
    add hl, hl
    ld d, b
    ld a, [$cf96]
    push af
    push bc
    push de
    push hl
    push hl
    ld d, $32
    ld a, $1d
    cp l
    jr nz, jr_003_4e1a

    ld a, $d3
    cp h
    jr nz, jr_003_4e1a

    ld d, $14

jr_003_4e1a:
    ld a, [hl]
    sub d
    ld d, a
    ld a, [hl+]
    and a
    jr z, jr_003_4e30

Jump_003_4e21:
jr_003_4e21:
    ld a, [hl+]
    ld b, a
    ld a, [$cf91]
    cp b
    jp z, Jump_003_4e4a

    inc hl
    ld a, [hl]
    cp $ff
    jr nz, jr_003_4e21

jr_003_4e30:
    pop hl
    ld a, d
    and a
    jr z, jr_003_4e6b

    inc [hl]
    ld a, [hl]
    add a
    dec a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [$cf91]
    ld [hl+], a
    ld a, [$cf96]
    ld [hl+], a
    ld [hl], $ff
    jp Jump_003_4e6a


Jump_003_4e4a:
    ld a, [$cf96]
    ld b, a
    ld a, [hl]
    add b
    cp $64
    jp c, Jump_003_4e68

    sub $63
    ld [$cf96], a
    ld a, d
    and a
    jr z, jr_003_4e64

    ld a, $63
    ld [hl+], a
    jp Jump_003_4e21


jr_003_4e64:
    pop hl
    and a
    jr jr_003_4e6b

Jump_003_4e68:
    ld [hl], a
    pop hl

Jump_003_4e6a:
    scf

jr_003_4e6b:
    pop hl
    pop de
    pop bc
    pop bc
    ld a, b
    ld [$cf96], a
    ret


    push hl
    inc hl
    ld a, [$cf92]
    sla a
    add l
    ld l, a
    jr nc, jr_003_4e80

    inc h

jr_003_4e80:
    inc hl
    ld a, [$cf96]
    ld e, a
    ld a, [hl]
    sub e
    ld [hl-], a
    ld [$cf97], a
    and a
    jr nz, jr_003_4eb6

    ld e, l
    ld d, h
    inc de
    inc de

jr_003_4e92:
    ld a, [de]
    inc de
    ld [hl+], a
    cp $ff
    jr nz, jr_003_4e92

    xor a
    ld [$cc36], a
    ld [$cc26], a
    ld [$cc2c], a
    ld [$d07e], a
    pop hl
    ld a, [hl]
    dec a
    ld [hl], a
    ld [$d12a], a
    cp $02
    jr c, jr_003_4eb7

    ld [$cc28], a
    jr jr_003_4eb7

jr_003_4eb6:
    pop hl

jr_003_4eb7:
    ret


    ld hl, $4eeb
    ld a, [$d35e]
    ld c, a
    ld b, $00
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld [$d887], a
    and a
    jr z, jr_003_4edc

    push hl
    ld de, $d888
    ld bc, $0014
    call Call_000_00b5
    pop hl
    ld bc, $0014
    add hl, bc

jr_003_4edc:
    ld a, [hl+]
    ld [$d8a4], a
    and a
    ret z

    ld de, $d8a5
    ld bc, $0014
    jp Jump_000_00b5


    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    rst $18
    ld d, b
    push af
    ld d, b
    scf
    ld d, c
    adc a
    ld d, c
    rst $20
    ld d, c
    db $fd
    ld d, c
    sub a
    ld d, d
    add c
    ld d, d
    pop de
    ld d, c
    ld d, l
    ld d, d
    inc de
    ld d, d
    ld l, e
    ld d, d
    rra
    ld d, e
    dec [hl]
    ld d, e
    ld c, e
    ld d, e
    ld h, c
    ld d, e
    ld [hl], a
    ld d, e
    adc l
    ld d, e
    ei
    ld d, e
    ei
    ld d, e
    rst $10
    ld d, h
    dec bc
    ld d, c
    ld e, c
    ld d, l
    and l
    ld d, c
    cp e
    ld d, c
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    ld hl, $dd51
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    ld c, l
    ld d, c
    ld h, e
    ld d, c
    ld a, c
    ld d, c
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    add hl, hl
    ld d, d
    ld b, e
    ld d, l
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    sbc e
    ld d, l
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    xor l
    ld d, d
    xor a
    ld d, d
    or c
    ld d, d
    rst $00
    ld d, d
    db $dd
    ld d, d
    di
    ld d, d
    add hl, bc
    ld d, e
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    daa
    ld d, h
    dec a
    ld d, h
    ld d, e
    ld d, h
    ld l, c
    ld d, h
    db $dd
    ld d, b
    db $dd
    ld d, b
    ld a, a
    ld d, h
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    ld de, $dd54
    ld d, b
    ld l, a
    ld d, l
    db $dd
    ld d, b
    db $dd
    ld d, b
    or c
    ld d, l
    add l
    ld d, l
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    sub l
    ld d, h
    xor e
    ld d, h
    pop bc
    ld d, h
    cp c
    ld d, e
    rst $08
    ld d, e
    push hl
    ld d, e
    and e
    ld d, e
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    rla
    ld d, l
    dec l
    ld d, l
    ld bc, $dd55
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    ccf
    ld d, d
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    db $dd
    ld d, b
    rst $38
    rst $38
    nop
    nop
    add hl, de
    inc bc
    inc h
    inc bc
    and l
    inc bc
    and l
    ld [bc], a
    and l
    ld [bc], a
    inc h
    inc bc
    inc h
    inc bc
    inc h
    inc b
    and l
    inc b
    inc h
    dec b
    inc h
    nop
    add hl, de
    inc bc
    and l
    inc bc
    inc h
    inc b
    inc h
    inc b
    and l
    dec b
    inc h
    inc bc
    ld [hl], b
    ld [bc], a
    and l
    dec b
    and l
    inc b
    ld [hl], b
    dec b
    ld [hl], b
    nop
    add hl, de
    inc bc
    and l
    inc bc
    inc bc
    inc b
    and l
    inc b
    inc bc
    ld [bc], a
    and l
    ld [bc], a
    inc bc
    inc bc
    dec b
    dec b
    dec b
    inc bc
    rrca
    inc b
    rrca
    nop
    ld [$7004], sp
    dec b
    ld [hl], c
    inc bc
    ld [hl], b
    dec b
    ld [hl], b
    inc b
    ld [hl], c
    ld b, $71
    inc b
    ld a, h
    inc bc
    ld a, e
    inc bc
    ld d, h
    dec b
    ld d, h
    nop
    inc d
    ld b, $24
    dec b
    dec b
    rlca
    inc h
    ld b, $05
    rlca
    dec b
    ld [$0824], sp
    dec b
    inc bc
    ld h, h
    dec b
    ld h, h
    rlca
    ld h, h
    nop
    ld a, [bc]
    ld [$076b], sp
    ld l, e
    add hl, bc
    ld l, e
    ld [$06a9], sp
    ld l, e
    ld a, [bc]
    ld l, e
    ld a, [bc]
    xor c
    ld [$0b6d], sp
    ld l, e
    ld [$0004], sp
    ld a, [bc]
    ld [$076b], sp
    ld l, e
    rlca
    xor c
    ld [$09a9], sp
    ld l, e
    ld a, [bc]
    ld l, l
    ld a, [bc]
    ld l, e
    dec bc
    ld l, e
    add hl, bc
    inc b
    add hl, bc
    xor c
    nop
    ld a, [bc]
    add hl, bc
    ld l, e
    add hl, bc
    xor c
    ld a, [bc]
    ld l, e
    ld a, [bc]
    xor c
    dec bc
    ld l, e
    ld a, [bc]
    ld l, l
    inc c
    ld l, l
    ld a, [bc]
    inc b
    inc c
    ld l, e
    inc c
    inc b
    nop
    inc d
    ld a, [bc]
    and l
    ld a, [bc]
    dec b
    ld [$06a5], sp
    ld l, h
    ld [$0a05], sp
    ld l, h
    inc c
    and l
    inc c
    dec b
    ld [$0c6c], sp
    ld l, h
    nop
    add hl, de
    rlca
    ld [hl], b
    ld [$0c71], sp
    inc h
    inc c
    cp c
    dec c
    cp c
    ld a, [bc]
    sub h
    ld c, $b9
    dec c
    inc h
    ld [$0c94], sp
    sub h
    nop
    rrca
    ld [$0970], sp
    ld [hl], c
    dec c
    inc h
    inc c
    cp c
    dec c
    cp c
    inc c
    sub h
    ld c, $b9
    ld a, [bc]
    sub h
    rlca
    ld a, h
    ld [$007b], sp
    rrca
    db $10
    and l
    db $10
    dec b
    ld c, $a5
    dec bc
    ld l, h
    dec c
    dec b
    rrca
    ld l, h
    ld de, $11a5
    dec b
    dec c
    ld l, h
    ld de, $006c
    rrca
    dec c
    cp c
    dec c
    inc h
    rrca
    inc h
    ld a, [bc]
    add hl, sp
    inc c
    add hl, sp
    rrca
    cp c
    db $10
    cp c
    db $10
    inc h
    ld c, $39
    db $10
    add hl, sp
    nop
    rrca
    dec c
    cp c
    dec c
    inc h
    rrca
    inc h
    ld a, [bc]
    add hl, sp
    inc c
    add hl, sp
    rrca
    cp c
    db $10
    cp c
    db $10
    inc h
    ld c, $39
    db $10
    add hl, sp
    nop
    rrca
    ld c, $6c
    rrca
    dec b
    inc c
    ld l, h
    add hl, bc
    jr nc, jr_003_522a

    dec b
    dec c
    jr nc, jr_003_5230

    ld l, h
    ld de, $0b05
    jr nc, jr_003_5236

jr_003_5227:
    jr nc, jr_003_5229

jr_003_5229:
    rrca

jr_003_522a:
    db $10
    ld l, e
    ld de, $116b
    xor c

jr_003_5230:
    rrca
    ld l, d
    db $10
    xor c
    ld [de], a
    ld l, e

jr_003_5236:
    rrca
    ld l, e
    ld de, $0d6a
    ld [hl+], a
    rrca
    ld [hl+], a
    nop
    rrca
    db $10
    ld l, e
    ld de, $116b
    xor c
    rrca
    ld l, d
    db $10
    xor c
    ld [de], a
    ld l, e
    ld de, $116a
    ld [hl+], a
    dec c
    ld [hl+], a
    ld [de], a
    xor c
    nop
    rrca
    db $10
    ld b, $10
    dec b
    ld c, $06
    dec bc
    ld l, h
    dec c
    dec b
    rrca
    ld l, h
    ld de, $1106
    dec b
    dec c
    ld l, h
    ld de, $006c
    rrca
    jr jr_003_5227

    add hl, de
    inc h
    rla
    inc h
    jr jr_003_52b5

    ld d, $b9
    ld a, [de]
    ld b, c
    ld a, [de]
    cp c
    dec de
    inc h
    inc e
    cp d
    ld e, $ba
    nop
    rrca
    ld [de], a
    inc h
    ld [de], a
    add hl, sp
    ld de, $106c
    ld hl, $2414
    inc d
    add hl, sp
    inc de
    ld l, h
    ld de, $0f21
    ld hl, $2112
    nop
    rrca
    inc de
    inc h
    inc de
    cp c
    ld de, $1639
    cp c
    ld d, $24
    ld [de], a
    add hl, sp
    ld [de], a
    ld hl, $2114
    inc de
    add hl, sp
    inc d
    add hl, sp
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    inc d
    add hl, de
    dec d

jr_003_52b5:
    add hl, de
    ld d, $19
    rla
    add hl, de
    inc de
    add hl, de
    ld [de], a
    add hl, de
    jr @+$1b

    inc d
    ld de, $1116
    add hl, de
    sub e
    nop
    ld a, [bc]
    inc d
    add hl, de
    dec d
    add hl, de
    ld d, $19
    rla
    add hl, de
    inc de
    add hl, de
    ld [de], a
    add hl, de
    add hl, de
    sub e
    inc d
    ld de, $1116
    jr jr_003_52f5

    nop
    ld a, [bc]
    inc d
    add hl, de
    dec d
    add hl, de
    ld d, $19
    rla
    add hl, de
    inc de
    add hl, de
    ld [de], a
    add hl, de
    add hl, de
    sub e
    inc d
    ld de, $1116
    jr jr_003_530b

    nop
    rrca
    dec d

jr_003_52f5:
    add hl, de
    ld d, $19
    rla
    add hl, de
    jr jr_003_5315

    inc d
    add hl, de
    inc de
    add hl, de
    ld a, [de]
    sub e
    ld d, $11
    jr @+$13

    inc e

jr_003_5307:
    sub e
    nop
    rrca
    dec d

jr_003_530b:
    add hl, de
    ld d, $19
    rla
    add hl, de
    jr jr_003_532b

    inc d
    add hl, de
    inc e

jr_003_5315:
    sub e
    ld d, $11
    jr jr_003_532b

    inc e
    sub e
    ld e, $93
    nop
    inc d
    jr @-$45

    add hl, de
    inc h
    dec de
    inc h
    jr jr_003_5369

    ld d, $b9
    ld a, [de]

jr_003_532b:
    ld b, c
    ld a, [de]
    cp c
    add hl, de
    ld c, h
    inc e
    cp d
    ld e, $ba
    nop
    rrca
    jr @-$45

    ld a, [de]
    inc h
    rla
    ld c, h
    jr @+$43

    ld d, $b9
    ld a, [de]
    ld b, c
    ld a, [de]
    cp c
    ld e, $ba
    inc e
    sub [hl]
    ld e, $96
    nop
    rrca
    jr jr_003_5307

    ld a, [de]
    ld c, h
    rla
    inc h
    ld a, [de]
    ld b, c
    ld d, $b9
    inc e
    ld b, c
    ld a, [de]
    cp c
    ld e, $ba
    inc e
    sub [hl]
    ld e, $96
    nop
    add hl, de
    inc d
    dec b
    ld d, $05
    ld [de], a
    and l
    inc d

jr_003_5369:
    ld b, [hl]
    inc d
    and l
    ld [de], a
    ld b, [hl]
    ld d, $46
    ld d, $a5
    rla
    and [hl]
    add hl, de
    and [hl]
    nop
    add hl, de
    inc d
    dec b
    ld d, $05
    add hl, de
    and [hl]
    jr jr_003_53c6

    dec de
    and [hl]
    ld a, [de]
    ld b, [hl]
    inc e
    ld b, [hl]
    dec e
    and [hl]
    add hl, de
    inc hl
    dec de
    inc hl
    nop
    add hl, de
    inc d
    dec b
    ld d, $05
    add hl, de
    and [hl]
    jr jr_003_53dc

    add hl, de
    inc hl
    ld a, [de]
    ld b, [hl]
    inc e
    ld b, [hl]
    dec e
    and [hl]
    dec de
    inc hl
    dec e
    inc hl
    nop
    ld e, $16
    inc bc
    add hl, de
    ld [de], a
    ld d, $41
    jr @+$0e

    rra
    and a
    add hl, de
    inc c
    rra
    xor b
    ld e, $2e
    rla
    ld a, [de]
    rla
    jr z, jr_003_53b9

jr_003_53b9:
    ld e, $18
    inc bc
    ld a, [de]
    ld b, [hl]
    ld d, $6d
    add hl, de
    inc c
    ld hl, $17a7
    inc c

jr_003_53c6:
    jr jr_003_53d7

    add hl, de
    ld l, $19
    ld [bc], a
    inc e
    ld a, [de]
    nop
    ld e, $16
    inc bc
    ld a, [de]
    ld [de], a
    rla
    ld l, l
    add hl, de

jr_003_53d7:
    inc c
    ld e, $a7
    dec de
    inc c

jr_003_53dc:
    ld e, $a8
    jr nz, jr_003_5457

    ld a, [de]
    jr z, @+$1e

    inc a
    nop
    ld e, $19
    inc bc
    ld a, [de]
    ld b, [hl]
    rla
    ld b, c
    jr jr_003_53fa

    ld hl, $1aa7
    inc c
    add hl, de
    rrca
    rra
    ld [hl], a
    ld a, [de]
    inc a
    inc e
    ld [bc], a

jr_003_53fa:
    nop
    nop
    dec b
    dec b
    jr jr_003_540a

    jr @+$11

    jr @+$07

    jr jr_003_5410

    jr @+$11

    jr jr_003_541e

jr_003_540a:
    jr jr_003_542a

    jr jr_003_5431

    jr jr_003_5438

jr_003_5410:
    jr jr_003_5421

    ld e, $3a
    ld e, $25
    ld e, $17
    ld e, $5c
    inc e
    ld e, h
    dec d
    ld l, e

jr_003_541e:
    dec e
    add d
    inc e

jr_003_5421:
    cpl
    inc e
    rla
    ld h, $80
    nop
    ld a, [bc]
    ld e, $1b

jr_003_542a:
    ld e, $5c
    jr nz, @+$19

    jr nz, jr_003_548c

    inc e

jr_003_5431:
    dec h
    ld e, $3a
    ld e, $25
    inc e
    ld a, [hl-]

jr_003_5438:
    ld h, $78
    dec h
    ld e, l
    nop
    ld a, [bc]
    ld e, $3a
    ld e, $25
    jr nz, jr_003_547e

    jr nz, jr_003_546b

    inc e

jr_003_5447:
    ld e, h
    ld e, $1b
    ld e, $5c
    inc e
    rla
    ld e, $82
    dec h
    ld [$0a00], sp
    rra
    dec h
    rra

jr_003_5457:
    ld a, [hl-]
    ld hl, $2125
    ld a, [hl-]
    dec e

jr_003_545d:
    ld e, h
    rra
    rla
    rra
    ld e, h
    dec e
    rla
    daa
    ld e, l
    dec h
    ld a, b
    nop
    ld a, [bc]
    rra

jr_003_546b:
    ld e, h
    rra
    rla
    ld hl, $215c
    rla
    dec e
    dec h
    rra
    ld a, [hl-]
    rra
    dec h
    dec e
    ld a, [hl-]
    daa
    ld [$8220], sp

jr_003_547e:
    nop
    ld a, [bc]
    jr nz, jr_003_54b9

    ld e, $37
    ld [hl+], a
    and e
    ld e, $a3
    ld [hl+], a
    ld hl, $a320

jr_003_548c:
    ld e, $0d
    inc e
    and e
    dec h
    adc a
    daa
    adc b
    nop
    ld a, [bc]
    jr nz, jr_003_54b9

    ld [hl+], a
    scf
    ld [hl+], a
    scf
    ld e, $a3
    ld e, $37
    jr nz, @-$5b

    ld e, $0d
    inc e
    and e
    daa
    adc a
    dec h
    adc b
    nop
    ld a, [bc]
    rra
    scf
    ld hl, $2321
    scf
    jr nz, jr_003_5457

    ld [hl+], a
    and e
    jr z, jr_003_5447

    ld [hl+], a

jr_003_54b9:
    dec c
    ld h, $8f
    inc h
    and e
    ld a, [hl+]
    adc b
    nop
    ld a, [bc]
    ld hl, $1f37
    scf
    inc hl
    ld hl, $a320
    rra
    scf
    jr z, jr_003_545d

    ld [hl+], a
    and e
    inc hl
    dec c
    ld a, [hl+]
    adc a
    ld a, [hl+]
    adc b
    nop
    add hl, de
    dec d
    and l
    rla
    inc h
    ld e, $a6
    rla
    and l
    dec d
    inc h
    ld e, $96
    jr nz, @-$68

    inc e
    ld e, $1e
    ld e, $20
    ld e, $05
    dec b
    jr jr_003_54fa

    jr @+$11

    jr @+$07

    jr jr_003_5500

    jr @+$11

    jr jr_003_550e

jr_003_54fa:
    jr jr_003_551a

    jr @+$25

    jr jr_003_5528

jr_003_5500:
    jr jr_003_550c

jr_003_5502:
    ld l, $82
    ld l, $81
    ld l, $36
    ld sp, $3174
    ld [hl], a

jr_003_550c:
    inc [hl]
    dec l

jr_003_550e:
    ld sp, $3426
    ld l, $35

jr_003_5513:
    ld d, l
    dec [hl]
    ld c, h
    nop
    rrca
    inc sp
    ld [hl], h

jr_003_551a:
    inc sp
    ld [hl], a
    inc sp

jr_003_551d:
    ld h, $34
    ld bc, $9134
    inc [hl]
    adc l
    jr c, jr_003_554e

    ld [hl], $65

jr_003_5528:
    scf
    ld c, h
    inc a
    ld c, h
    nop
    add hl, de
    scf
    ld bc, $9137
    scf
    adc l
    ld b, b
    jr z, jr_003_5577

    ld l, $40
    ld d, l
    add hl, sp
    dec l
    ld b, c
    ld c, h
    ccf
    ld c, h
    ld b, e
    ld c, h
    nop
    ld a, [bc]
    dec d
    ld b, $15
    xor l
    inc d
    ld d, h
    jr jr_003_55a0

    rla
    xor l

jr_003_554e:
    rla
    ld b, $20
    ld [hl], $23
    ld [hl], $21
    dec [hl]
    inc h
    dec [hl]
    nop
    ld a, [bc]
    ld a, [de]
    ld l, h
    ld hl, $1a4c
    dec b
    ld h, $23
    ld h, $4c
    ld h, $23
    add hl, hl
    dec l
    dec hl
    ld c, h
    add hl, hl
    inc hl
    dec hl
    inc hl
    nop
    ld a, [bc]
    ld d, $6a
    jr jr_003_551d

    ld a, [de]
    ld l, e
    inc h

jr_003_5577:
    ld [hl+], a
    daa
    ld [hl+], a
    ld a, [hl+]
    ld [hl+], a
    add hl, hl
    add hl, hl
    jr z, jr_003_5502

    jr z, jr_003_5513

    dec hl
    daa
    nop
    rrca
    jr jr_003_55f2

    ld a, [de]
    xor c
    ld d, $6b
    ld a, [hl+]
    ld [hl+], a
    jr z, jr_003_5607

    dec l
    ld [hl+], a
    dec hl
    daa
    add hl, hl
    add d
    ld a, [hl+]
    add hl, hl
    dec l
    add hl, hl
    nop
    rrca
    jr jr_003_5608

    ld a, [de]
    xor c

jr_003_55a0:
    ld d, $6b
    inc h
    ld [hl+], a
    daa
    ld [hl+], a
    ld a, [hl+]
    ld [hl+], a
    add hl, hl
    daa
    add hl, hl
    add d
    ld a, [hl+]
    add hl, hl
    dec hl
    sub c
    nop
    inc d
    ld [de], a
    dec sp
    inc de
    dec sp
    ld de, $143b
    dec sp
    db $10
    dec sp
    rrca
    dec sp
    dec d
    dec sp
    ld d, $3b
    dec e
    db $76
    rra
    halt
    ld a, $01
    ld [$cd6a], a
    ld a, [$cf91]
    cp $c4
    jp nc, Jump_003_6479

    ld hl, $55e1
    dec a
    add a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    add a
    ld d, [hl]
    add a
    ld d, [hl]
    add a
    ld d, [hl]
    add a
    ld d, [hl]
    ld l, b
    ld e, c
    ld [hl], a
    ld e, c
    or h
    ld e, c
    add a
    ld d, [hl]
    ld d, [hl]

jr_003_55f2:
    ld e, d
    ld e, e
    ld e, d
    cp e
    ld e, d
    cp e
    ld e, d
    cp e
    ld e, d
    cp e
    ld e, d
    cp e
    ld e, d
    cp e
    ld e, d
    cp e
    ld e, d
    cp e
    ld e, d
    cp e
    ld e, d

jr_003_5607:
    cp e

jr_003_5608:
    ld e, d
    ld d, d
    ld e, a
    ld h, a
    ld e, a
    db $76
    ld h, h
    db $76
    ld h, h
    db $76
    ld h, h
    db $76
    ld h, h
    db $76
    ld h, h
    db $76
    ld h, h
    xor a
    ld e, a
    inc bc
    ld h, b
    db $76
    ld h, h
    ld e, e
    ld e, d
    ld e, e
    ld e, d
    ld e, e
    ld e, d
    or h
    ld e, d
    or h
    ld e, d
    or h
    ld e, d
    or h
    ld e, d
    or h
    ld e, d
    or h
    ld e, d
    db $76
    ld h, h
    db $76
    ld h, h
    db $76
    ld h, h
    db $76
    ld h, h
    db $76
    ld h, h
    inc de
    ld h, b
    ld e, e
    ld e, d
    ld [hl+], a
    ld h, b
    db $76
    ld h, h
    db $76
    ld h, h
    call $bb60
    ld e, d
    cp e
    ld e, d
    cp e
    ld e, d
    call c, $eb60
    ld h, b
    ldh a, [$60]
    push af
    ld h, b
    db $76
    ld h, h
    cp e
    ld e, d
    cp e
    ld e, d
    cp e
    ld e, d
    db $76
    ld h, h
    db $76
    ld h, h
    inc b
    ld h, c
    inc b
    ld h, c
    inc b
    ld h, c
    inc b
    ld h, c
    ld a, [hl-]
    ld h, d
    sbc $62
    pop hl
    ld h, d
    db $76
    ld h, h
    ld b, b
    ld h, c
    db $76
    ld h, h
    db $76
    ld h, h
    ld c, h
    ld h, d
    ld e, c
    ld h, d
    add e
    ld h, d
    rla
    ld h, e
    ld e, $63
    ld e, $63
    ld e, $63
    ld e, $63
    ld a, [$d057]
    and a
    jp z, Jump_003_6581

    dec a
    jp nz, Jump_003_658b

    ld a, [$d05a]
    dec a
    jr z, jr_003_56a7

    ld a, [$d163]
    cp $06
    jr nz, jr_003_56a7

    ld a, [$da80]
    cp $14
    jp z, Jump_003_65b1

jr_003_56a7:
    xor a
    ld [$d11c], a
    ld a, [$d05a]
    cp $02
    jr nz, jr_003_56b6

    ld hl, $da47
    dec [hl]

jr_003_56b6:
    call Call_000_3ded
    ld a, $43
    ld [$d11e], a
    call Call_000_3725
    ld hl, $65e8
    call Call_000_3c49
    ld hl, $583a
    ld b, $0f
    call Call_000_35d6
    ld b, $10
    jp z, Jump_003_5801

    ld a, [$d05a]
    dec a
    jr nz, jr_003_56e9

    ld hl, $d887
    ld de, $d158
    ld bc, $000b
    call Call_000_00b5
    jp Jump_003_578b


jr_003_56e9:
    ld a, [$d35e]
    cp $93
    jr nz, jr_003_56fa

    ld a, [$cfd8]
    cp $91
    ld b, $10
    jp z, Jump_003_5801

jr_003_56fa:
    call Call_000_3e5c
    ld b, a
    ld hl, $cf91
    ld a, [hl]
    cp $01
    jp z, Jump_003_578b

    cp $04
    jr z, jr_003_571a

    ld a, $c8
    cp b
    jr c, jr_003_56fa

    ld a, [hl]
    cp $03
    jr z, jr_003_571a

    ld a, $96
    cp b
    jr c, jr_003_56fa

jr_003_571a:
    ld a, [$cfe9]
    and a
    jr z, jr_003_572e

    and $27
    ld c, $0c
    jr z, jr_003_5728

    ld c, $19

jr_003_5728:
    ld a, b
    sub c
    jp c, Jump_003_578b

    ld b, a

jr_003_572e:
    push bc
    xor a
    ldh [$96], a
    ld hl, $cff4
    ld a, [hl+]
    ldh [$97], a
    ld a, [hl]
    ldh [$98], a
    ld a, $ff
    ldh [$99], a
    call Call_000_38ac
    ld a, [$cf91]
    cp $03
    ld a, $0c
    jr nz, jr_003_574d

    ld a, $08

jr_003_574d:
    ldh [$99], a
    ld b, $04
    call Call_000_38b9
    ld hl, $cfe6
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    srl b
    rr a
    srl b
    rr a
    and a
    jr nz, jr_003_5766

    inc a

jr_003_5766:
    ldh [$99], a
    ld b, $04
    call Call_000_38b9
    ldh a, [$97]
    and a
    jr z, jr_003_5776

    ld a, $ff
    ldh [$98], a

jr_003_5776:
    pop bc
    ld a, [$d007]
    cp b
    jr c, jr_003_578d

    ldh a, [$97]
    and a
    jr nz, jr_003_578b

    call Call_000_3e5c
    ld b, a
    ldh a, [$98]
    cp b
    jr c, jr_003_578d

Jump_003_578b:
jr_003_578b:
    jr jr_003_5805

jr_003_578d:
    ldh a, [$98]
    ld [$d11e], a
    xor a
    ldh [$96], a
    ldh [$97], a
    ld a, [$d007]
    ldh [$98], a
    ld a, $64
    ldh [$99], a
    call Call_000_38ac
    ld a, [$cf91]
    ld b, $ff
    cp $04
    jr z, jr_003_57b8

    ld b, $c8
    cp $03
    jr z, jr_003_57b8

    ld b, $96
    cp $02
    jr z, jr_003_57b8

jr_003_57b8:
    ld a, b
    ldh [$99], a
    ld b, $04
    call Call_000_38b9
    ldh a, [$97]
    and a
    ld b, $63
    jr nz, jr_003_5801

    ld a, [$d11e]
    ldh [$99], a
    call Call_000_38ac
    ld a, $ff
    ldh [$99], a
    ld b, $04
    call Call_000_38b9
    ld a, [$cfe9]
    and a
    jr z, jr_003_57eb

    and $27
    ld b, $05
    jr z, jr_003_57e6

    ld b, $0a

jr_003_57e6:
    ldh a, [$98]
    add b
    ldh [$98], a

jr_003_57eb:
    ldh a, [$98]
    cp $0a
    ld b, $20
    jr c, jr_003_5801

    cp $1e
    ld b, $61
    jr c, jr_003_5801

    cp $46
    ld b, $62
    jr c, jr_003_5801

    ld b, $63

Jump_003_5801:
jr_003_5801:
    ld a, b
    ld [$d11e], a

jr_003_5805:
    ld c, $14
    call Call_000_3739
    ld a, $c1
    ld [$d07c], a
    xor a
    ldh [$f3], a
    ld [$cc5b], a
    ld [$d05b], a
    ld a, [$cf92]
    push af
    ld a, [$cf91]
    push af
    ld a, $08
    call Call_000_3e6d
    pop af
    ld [$cf91], a
    pop af
    ld [$cf92], a
    ld a, [$d11e]
    cp $10
    ld hl, $5937
    jp z, Jump_003_5922

    cp $20
    ld hl, $593c
    jp z, Jump_003_5922

    cp $61
    ld hl, $5941
    jp z, Jump_003_5922

    cp $62
    ld hl, $5946
    jp z, Jump_003_5922

    cp $63
    ld hl, $594b
    jp z, Jump_003_5922

    ld hl, $cfe6
    ld a, [hl+]
    push af
    ld a, [hl+]
    push af
    inc hl
    ld a, [hl]
    push af
    push hl
    ld hl, $d069
    bit 3, [hl]
    jr z, jr_003_5871

    ld a, $4c
    ld [$cfd8], a
    jr jr_003_587e

jr_003_5871:
    set 3, [hl]
    ld hl, $cceb
    ld a, [$cff1]
    ld [hl+], a
    ld a, [$cff2]
    ld [hl], a

jr_003_587e:
    ld a, [$cf91]
    push af
    ld a, [$cfd8]
    ld [$cf91], a
    ld a, [$cff3]
    ld [$d127], a
    ld hl, $6b01
    ld b, $0f
    call Call_000_35d6
    pop af
    ld [$cf91], a
    pop hl
    pop af
    ld [hl-], a
    dec hl
    pop af
    ld [hl-], a
    pop af
    ld [hl], a
    ld a, [$cfe5]
    ld [$d11c], a
    ld [$cf91], a
    ld [$d11e], a
    ld a, [$d05a]
    dec a
    jr z, jr_003_591f

    ld hl, $5950
    call Call_000_3c49
    ld a, $3a
    call Call_000_3e6d
    ld a, [$d11e]
    dec a
    ld c, a
    ld b, $02
    ld hl, $d2f7
    ld a, $10
    call Call_000_3e6d
    ld a, c
    push af
    ld a, [$d11e]
    dec a
    ld c, a
    ld b, $01
    ld a, $10
    call Call_000_3e6d
    pop af
    and a
    jr nz, jr_003_58f4

    ld hl, $5961
    call Call_000_3c49
    call Call_000_0082
    ld a, [$cfe5]
    ld [$d11e], a
    ld a, $3d
    call Call_000_3e6d

jr_003_58f4:
    ld a, [$d163]
    cp $06
    jr z, jr_003_5907

    xor a
    ld [$cc49], a
    call Call_000_0082
    call Call_000_3927
    jr jr_003_5928

jr_003_5907:
    call Call_000_0082
    call Call_003_67a4
    ld hl, $5957
    ld a, [$d7f1]
    bit 0, a
    jr nz, jr_003_591a

    ld hl, $595c

jr_003_591a:
    call Call_000_3c49
    jr jr_003_5928

jr_003_591f:
    ld hl, $5950

Jump_003_5922:
    call Call_000_3c49
    call Call_000_0082

jr_003_5928:
    ld a, [$d05a]
    and a
    ret nz

    ld hl, $d31d
    inc a
    ld [$cf96], a
    jp Jump_000_2bbb


    rla
    add hl, hl
    ld h, a
    add hl, hl
    ld d, b
    rla
    ld e, a
    ld h, a
    add hl, hl
    ld d, b
    rla
    ld [hl], l
    ld h, a
    add hl, hl
    ld d, b
    rla
    sub c
    ld h, a
    add hl, hl
    ld d, b
    rla
    or d
    ld h, a
    add hl, hl
    ld d, b
    rla
    rst $08
    ld h, a
    add hl, hl
    ld [de], a
    ld b, $50
    rla
    xor $67
    add hl, hl
    ld d, b
    rla
    db $10
    ld l, b
    add hl, hl
    ld d, b
    rla
    dec [hl]
    ld l, b
    add hl, hl
    inc de
    ld b, $50
    ld a, [$d057]
    and a
    jp nz, Jump_003_6581

    ld b, $1c
    ld hl, $4e3e
    jp Jump_000_35d6


    ld a, [$d057]
    and a
    jp nz, Jump_003_6581

    ld a, [$d700]
    ld [$d11a], a
    cp $02
    jp z, Jump_003_6581

    dec a
    jr nz, jr_003_599b

    call Call_003_69c5
    xor a
    ld [$d700], a
    call Call_000_2307
    ld hl, $65fc
    jr jr_003_59b1

jr_003_599b:
    call Call_000_09c5
    jp nc, Jump_003_65ac

    call Call_003_69c5
    xor a
    ldh [$b4], a
    inc a
    ld [$d700], a
    ld hl, $65f2
    call Call_000_2307

jr_003_59b1:
    jp Jump_000_3c49


    ld a, [$d700]
    ld [$d11a], a
    cp $02
    jr z, jr_003_59e3

    call Call_003_68b8
    jp c, Jump_003_65b6

    ld hl, $0ca0
    call Call_000_0c4a
    jp c, Jump_003_65b6

    call Call_003_5a28
    ld hl, $d730
    set 7, [hl]
    ld a, $02
    ld [$d700], a
    call Call_000_2307
    ld hl, $5a4c
    jp Jump_000_3c49


jr_003_59e3:
    xor a
    ldh [$8c], a
    ld d, $10
    call Call_000_0b6d
    res 7, [hl]
    ldh a, [$8c]
    and a
    jr nz, jr_003_5a0c

    ld hl, $0ca0
    call Call_000_0c4a
    jr c, jr_003_5a0c

    ld hl, $d530
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$cfc6]
    ld b, a

jr_003_5a04:
    ld a, [hl+]
    cp b
    jr z, jr_003_5a12

    cp $ff
    jr nz, jr_003_5a04

jr_003_5a0c:
    ld hl, $5a51
    jp Jump_000_3c49


jr_003_5a12:
    call Call_003_5a28
    ld hl, $d730
    set 7, [hl]
    xor a
    ld [$d700], a
    dec a
    ld [$cd6b], a
    call Call_000_2307
    jp Jump_000_104d


Call_003_5a28:
    ld a, [$d52a]
    bit 3, a
    ld b, $40
    jr nz, jr_003_5a3f

    bit 2, a
    ld b, $80
    jr nz, jr_003_5a3f

    bit 1, a
    ld b, $20
    jr nz, jr_003_5a3f

    ld b, $10

jr_003_5a3f:
    ld a, b
    ld [$ccd3], a
    xor a
    ld [$cd39], a
    inc a
    ld [$cd38], a
    ret


    rla
    ld e, [hl]
    ld l, b
    add hl, hl
    ld d, b
    rla
    ld l, a
    ld l, b
    add hl, hl
    ld d, b
    ld a, $29
    jp Jump_000_3e6d


    ld a, [$d057]
    and a
    jp nz, Jump_003_6581

    ld a, [$cf92]
    push af
    ld a, [$cf91]
    ld [$d156], a
    push af
    ld a, $05
    ld [$d07d], a
    ld a, $ff
    ld [$cfcb], a
    call Call_000_13fc
    pop bc
    jr c, jr_003_5aae

    ld a, b
    ld [$cf91], a
    ld a, $01
    ld [$ccd4], a
    ld a, $8e
    call Call_000_3740
    call Call_000_3748
    ld hl, $6d0e
    ld b, $0e
    call Call_000_35d6
    ld a, [$d121]
    and a
    jr z, jr_003_5aab

    pop af
    ld [$cf92], a
    ld hl, $d31d
    ld a, $01
    ld [$cf96], a
    jp Jump_000_2bbb


jr_003_5aab:
    call Call_003_657c

jr_003_5aae:
    xor a
    ld [$cd6a], a
    pop af
    ret


    ld a, [$d057]
    and a
    jp nz, Jump_003_6581

jr_003_5abb:
    ld a, [$d163]
    and a
    jp z, Jump_003_5adf

    ld a, [$cf92]
    push af
    ld a, [$cf91]
    push af
    ld a, $01
    ld [$d07d], a
    ld a, $ff
    ld [$cfcb], a
    ld a, [$d152]
    and a
    jr z, jr_003_5b02

    call Call_000_1411
    jr jr_003_5b05

Jump_003_5adf:
    ld hl, $5ae9
    xor a
    ld [$cd6a], a
    jp Jump_000_3c49


    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and e
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    and a
    and b
    or l
    and h
    ld c, a
    and b
    xor l
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld e, b

jr_003_5b02:
    call Call_000_13fc

jr_003_5b05:
    jp c, Jump_003_5de1

    ld hl, $d16b
    ld bc, $002c
    ld a, [$cf92]
    call Call_000_3a87
    ld a, [$cf92]
    ld [$cf06], a
    ld d, a
    ld a, [$cf91]
    ld e, a
    ld [$d0b5], a
    pop af
    ld [$cf91], a
    pop af
    ld [$cf92], a
    ld a, [$d152]
    and a
    jr z, jr_003_5b36

    ld a, [$cf92]
    cp d
    jr z, jr_003_5abb

jr_003_5b36:
    ld a, [$cf91]
    cp $35
    jr nc, jr_003_5ba9

    cp $34
    jr z, jr_003_5b4a

    cp $23
    jp nc, Jump_003_5dfa

    cp $10
    jr nc, jr_003_5ba9

Jump_003_5b4a:
jr_003_5b4a:
    ld bc, $0004
    add hl, bc
    ld a, [$cf91]
    ld bc, $f008
    cp $0b
    jr z, jr_003_5b77

    ld bc, $f110
    cp $0c
    jr z, jr_003_5b77

    ld bc, $f220
    cp $0d
    jr z, jr_003_5b77

    ld bc, $f307
    cp $0e
    jr z, jr_003_5b77

    ld bc, $f440
    cp $0f
    jr z, jr_003_5b77

    ld bc, $f6ff

jr_003_5b77:
    ld a, [hl]
    and c
    jp z, Jump_003_5d73

    xor a
    ld [hl], a
    ld a, b
    ld [$d07d], a
    ld a, [$cc2f]
    cp d
    jp nz, Jump_003_5d79

    xor a
    ld [$d018], a
    push hl
    ld hl, $d064
    res 0, [hl]
    pop hl
    ld bc, $001e
    add hl, bc
    ld de, $d023
    ld bc, $000a
    call Call_000_00b5
    ld a, $28
    call Call_000_3e6d
    jp Jump_003_5d79


jr_003_5ba9:
    inc hl
    ld a, [hl+]
    ld b, a
    ld [$ceec], a
    ld a, [hl]
    ld c, a
    ld [$ceeb], a
    or b
    jr nz, jr_003_5bf3

    ld a, [$cf91]
    cp $35
    jr z, jr_003_5bc5

    cp $36
    jr z, jr_003_5bc5

    jp Jump_003_5d73


jr_003_5bc5:
    ld a, [$d057]
    and a
    jr z, jr_003_5c00

    push hl
    push de
    push bc
    ld a, [$cf06]
    ld c, a
    ld hl, $ccf5
    ld b, $02
    ld a, $10
    call Call_000_3e6d
    ld a, c
    and a
    jr z, jr_003_5bee

    ld a, [$cf06]
    ld c, a
    ld hl, $d058
    ld b, $01
    ld a, $10
    call Call_000_3e6d

jr_003_5bee:
    pop bc
    pop de
    pop hl
    jr jr_003_5c00

jr_003_5bf3:
    ld a, [$cf91]
    cp $35
    jp z, Jump_003_5d73

    cp $36
    jp z, Jump_003_5d73

jr_003_5c00:
    push hl
    push bc
    ld bc, $0020
    add hl, bc
    pop bc
    ld a, [hl+]
    cp b
    jr nz, jr_003_5c0d

    ld a, [hl]
    cp c

jr_003_5c0d:
    pop hl
    jr nz, jr_003_5c2a

    ld a, [$cf91]
    cp $10
    jp nz, Jump_003_5d73

    inc hl
    inc hl
    ld a, [hl-]
    and a
    jp z, Jump_003_5d73

    ld a, $34
    ld [$cf91], a
    dec hl
    dec hl
    dec hl
    jp Jump_003_5b4a


jr_003_5c2a:
    xor a
    ld [$d083], a
    ld [$c02a], a
    push hl
    push de
    ld bc, $0020
    add hl, bc
    ld a, [hl+]
    ld [$ceea], a
    ld a, [hl]
    ld [$cee9], a
    ld a, [$d152]
    and a
    jp z, Jump_003_5cc5

    ld hl, $cee9
    ld a, [hl+]
    push af
    ld a, [hl+]
    push af
    ld a, [hl+]
    push af
    ld a, [hl]
    push af
    ld hl, $d18d
    ld a, [$cf92]
    ld bc, $002c
    call Call_000_3a87
    ld a, [hl+]
    ld [$ceea], a
    ldh [$95], a
    ld a, [hl]
    ld [$cee9], a
    ldh [$96], a
    ld a, $05
    ldh [$99], a
    ld b, $02
    call Call_000_38b9
    ld bc, $ffdf
    add hl, bc
    ldh a, [$98]
    push af
    ld b, a
    ld a, [hl]
    ld [$ceeb], a
    sub b
    ld [hl-], a
    ld [$ceed], a
    ldh a, [$97]
    ld b, a
    ld a, [hl]
    ld [$ceec], a
    sbc b
    ld [hl], a
    ld [$ceee], a
    ld hl, $c3b8
    ld a, [$cf92]
    ld bc, $0028
    call Call_000_3a87
    ld a, $8d
    call Call_000_3740
    ldh a, [$f6]
    set 0, a
    ldh [$f6], a
    ld a, $02
    ld [$cf94], a
    ld a, $48
    call Call_000_3e6d
    ldh a, [$f6]
    res 0, a
    ldh [$f6], a
    pop af
    ld b, a
    ld hl, $ceec
    pop af
    ld [hl-], a
    pop af
    ld [hl-], a
    pop af
    ld [hl-], a
    pop af
    ld [hl], a
    jr jr_003_5ce4

Jump_003_5cc5:
    ld a, [$cf91]
    cp $3d
    ld b, $3c
    jr z, jr_003_5ce4

    ld b, $50
    jr nc, jr_003_5ce4

    cp $3c
    ld b, $32
    jr z, jr_003_5ce4

    cp $13
    ld b, $c8
    jr c, jr_003_5ce4

    ld b, $32
    jr z, jr_003_5ce4

    ld b, $14

jr_003_5ce4:
    pop de
    pop hl
    ld a, [hl]
    add b
    ld [hl-], a
    ld [$ceed], a
    ld a, [hl]
    ld [$ceee], a
    jr nc, jr_003_5cf7

    inc [hl]
    ld a, [hl]
    ld [$ceee], a

jr_003_5cf7:
    push de
    inc hl
    ld d, h
    ld e, l
    ld hl, $0021
    add hl, de
    ld a, [$cf91]
    cp $35
    jr z, jr_003_5d1d

    ld a, [hl-]
    ld b, a
    ld a, [de]
    sub b
    dec de
    ld b, [hl]
    ld a, [de]
    sbc b
    jr nc, jr_003_5d31

    ld a, [$cf91]
    cp $12
    jr c, jr_003_5d31

    cp $36
    jr z, jr_003_5d31

    jr jr_003_5d4a

jr_003_5d1d:
    dec hl
    dec de
    ld a, [hl+]
    srl a
    ld [de], a
    ld [$ceee], a
    ld a, [hl]
    rr a
    inc de
    ld [de], a
    ld [$ceed], a
    dec de
    jr jr_003_5d3d

jr_003_5d31:
    ld a, [hl+]
    ld [de], a
    ld [$ceee], a
    inc de
    ld a, [hl]
    ld [de], a
    ld [$ceed], a
    dec de

jr_003_5d3d:
    ld a, [$cf91]
    cp $10
    jr nz, jr_003_5d4a

    ld bc, $ffe1
    add hl, bc
    xor a
    ld [hl], a

jr_003_5d4a:
    ld h, d
    ld l, e
    pop de
    ld a, [$cc2f]
    cp d
    jr nz, jr_003_5d66

    ld a, [hl+]
    ld [$d015], a
    ld a, [hl-]
    ld [$d016], a
    ld a, [$cf91]
    cp $10
    jr nz, jr_003_5d66

    xor a
    ld [$d018], a

jr_003_5d66:
    ld hl, $c390
    ld bc, $0028
    inc d

jr_003_5d6d:
    add hl, bc
    dec d
    jr nz, jr_003_5d6d

    jr jr_003_5d79

Jump_003_5d73:
    call Call_003_657c
    jp Jump_003_5de7


Jump_003_5d79:
jr_003_5d79:
    ld a, [$d152]
    and a
    jr nz, jr_003_5d84

    push hl
    call Call_003_6571
    pop hl

jr_003_5d84:
    ld a, [$cf91]
    cp $10
    jr c, jr_003_5dc1

    cp $34
    jr z, jr_003_5dc1

    ld a, $8d
    call Call_000_3740
    ldh a, [$f6]
    set 0, a
    ldh [$f6], a
    ld a, $02
    ld [$cf94], a
    ld a, $48
    call Call_000_3e6d
    ldh a, [$f6]
    res 0, a
    ldh [$f6], a
    ld a, $f7
    ld [$d07d], a
    ld a, [$cf91]
    cp $35
    jr z, jr_003_5dc6

    cp $36
    jr z, jr_003_5dc6

    ld a, $f5
    ld [$d07d], a
    jr jr_003_5dc6

jr_003_5dc1:
    ld a, $8e
    call Call_000_3740

jr_003_5dc6:
    xor a
    ldh [$ba], a
    call Call_000_190f
    dec a
    ld [$cfcb], a
    call Call_000_14d9
    ld a, $01
    ldh [$ba], a
    ld c, $32
    call Call_000_3739
    call Call_000_3865
    jr jr_003_5de7

Jump_003_5de1:
    xor a
    ld [$cd6a], a
    pop af
    pop af

Jump_003_5de7:
jr_003_5de7:
    ld a, [$d152]
    and a
    ret nz

    call Call_000_3de5
    call z, Call_000_3ded
    ld a, [$d057]
    and a
    ret nz

    jp Jump_000_3071


Jump_003_5dfa:
    push hl
    ld a, [hl]
    ld [$d0b5], a
    ld [$d11e], a
    ld bc, $0021
    add hl, bc
    ld a, [hl]
    ld [$d127], a
    call Call_000_1537
    push de
    ld a, d
    ld hl, $d2b5
    call Call_000_15ba
    pop de
    pop hl
    ld a, [$cf91]
    cp $28
    jp z, Jump_003_5e83

    push hl
    sub $23
    add a
    ld bc, $0011
    add hl, bc
    add l
    ld l, a
    jr nc, jr_003_5e2c

    inc h

jr_003_5e2c:
    ld a, $0a
    ld b, a
    ld a, [hl]
    cp $64
    jr nc, jr_003_5e6a

    add b
    jr nc, jr_003_5e39

    ld a, $ff

jr_003_5e39:
    ld [hl], a
    pop hl
    call Call_003_5e74
    ld hl, $5f2e
    ld a, [$cf91]
    sub $22
    ld c, a

jr_003_5e47:
    dec c
    jr z, jr_003_5e53

jr_003_5e4a:
    ld a, [hl+]
    ld b, a
    ld a, $50
    cp b
    jr nz, jr_003_5e4a

    jr jr_003_5e47

jr_003_5e53:
    ld de, $cf4b
    ld bc, $000a
    call Call_000_00b5
    ld a, $8e
    call Call_000_23b1
    ld hl, $5f24
    call Call_000_3c49
    jp Jump_003_6571


jr_003_5e6a:
    pop hl
    ld hl, $5f29
    call Call_000_3c49
    jp Jump_000_3de5


Call_003_5e74:
    ld bc, $0022
    add hl, bc
    ld d, h
    ld e, l
    ld bc, $ffee
    add hl, bc
    ld b, $01
    jp Jump_000_3936


Jump_003_5e83:
    push hl
    ld bc, $0021
    add hl, bc
    ld a, [hl]
    cp $64
    jr z, jr_003_5e6a

    inc a
    ld [hl], a
    ld [$d127], a
    push hl
    push de
    ld d, a
    ld hl, $4f6a
    ld b, $16
    call Call_000_35d6
    pop de
    pop hl
    ld bc, $ffed
    add hl, bc
    ldh a, [$96]
    ld [hl+], a
    ldh a, [$97]
    ld [hl+], a
    ldh a, [$98]
    ld [hl], a
    pop hl
    ld a, [$cf92]
    push af
    ld a, [$cf91]
    push af
    push de
    push hl
    ld bc, $0022
    add hl, bc
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    pop hl
    push bc
    push hl
    call Call_003_5e74
    pop hl
    ld bc, $0023
    add hl, bc
    pop bc
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
    ld a, $f8
    ld [$d07d], a
    call Call_000_14d9
    pop de
    ld a, d
    ld [$cf92], a
    ld a, e
    ld [$d11e], a
    xor a
    ld [$cc49], a
    call Call_000_1372
    ld d, $01
    ld hl, $6ae4
    ld b, $04
    call Call_000_35d6
    call Call_000_3865
    xor a
    ld [$cc49], a
    ld a, $1a
    call Call_000_3e6d
    xor a
    ld [$ccd4], a
    ld hl, $6d0e
    ld b, $0e
    call Call_000_35d6
    ld a, $01
    ld [$cfcb], a
    pop af
    ld [$cf91], a
    pop af
    ld [$cf92], a
    jp Jump_003_6571


    rla
    adc h
    ld l, b
    add hl, hl
    ld d, b
    rla
    sbc [hl]
    ld l, b
    add hl, hl
    ld d, b
    add a
    add h
    add b
    adc e
    sub e
    add a
    ld d, b
    add b
    sub e
    sub e
    add b
    add d
    adc d
    ld d, b
    add e
    add h
    add l
    add h
    adc l
    sub d
    add h
    ld d, b
    sub d
    adc a
    add h
    add h
    add e
    ld d, b
    sub d
    adc a
    add h
    add d
    adc b
    add b
    adc e
    ld d, b
    ld hl, $5fa5
    call Call_000_3c49
    ld hl, $d007
    srl [hl]
    ld a, $ca
    ld hl, $cce9
    ld de, $cce8
    jr jr_003_5f7f

    ld hl, $5faa
    call Call_000_3c49
    ld hl, $d007
    ld a, [hl]
    add a
    jr nc, jr_003_5f76

    ld a, $ff

jr_003_5f76:
    ld [hl], a
    ld a, $c9
    ld hl, $cce8
    ld de, $cce9

jr_003_5f7f:
    ld [$d07c], a
    xor a
    ld [$cc5b], a
    ldh [$f3], a
    ld [de], a

jr_003_5f89:
    call Call_000_3e5c
    and $07
    cp $05
    jr nc, jr_003_5f89

    inc a
    ld b, a
    ld a, [hl]
    add b
    jr nc, jr_003_5f9a

    ld a, $ff

jr_003_5f9a:
    ld [hl], a
    ld a, $08
    call Call_000_3e6d
    ld c, $46
    jp Jump_000_3739


    rla
    cp b
    ld l, b
    add hl, hl
    ld d, b
    rla
    call z, $2968
    ld d, b
    ld a, [$d057]
    and a
    jr nz, jr_003_5ffa

    ld a, [$d35e]
    cp $f7
    jr z, jr_003_5ffa

    ld a, [$d367]
    ld b, a
    ld hl, $5ffd

jr_003_5fc3:
    ld a, [hl+]
    cp $ff
    jr z, jr_003_5ffa

    cp b
    jr nz, jr_003_5fc3

    ld hl, $d732
    set 3, [hl]
    set 6, [hl]
    ld hl, $d72e
    res 4, [hl]
    ld hl, $d790
    res 7, [hl]
    xor a
    ld [$da47], a
    ld [$d61f], a
    inc a
    ld [$d078], a
    ld [$cd6a], a
    ld a, [$d152]
    and a
    ret nz

    call Call_003_69c5
    ld c, $1e
    call Call_000_3739
    jp Jump_003_6571


jr_003_5ffa:
    jp Jump_003_6581


    inc bc
    rrca
    ld de, $1016
    rst $38
    ld b, $64

Jump_003_6005:
    ld a, [$d057]
    and a
    jp nz, Jump_003_6581

    ld a, b
    ld [$d0db], a
    jp Jump_003_6563


    ld a, [$d057]
    and a
    jp z, Jump_003_6581

    ld hl, $d063
    set 0, [hl]
    jp Jump_003_6563


    xor a
    ld [$d71f], a
    call Call_003_4586
    ld a, [$4586]
    cp $18
    jr nz, jr_003_6035

    ld hl, $6072
    jr jr_003_6046

jr_003_6035:
    cp $24
    jr nz, jr_003_603e

    ld hl, $609b
    jr jr_003_6046

jr_003_603e:
    cp $5e
    jp nz, Jump_003_6581

    ld hl, $60c4

jr_003_6046:
    ld a, [$d35e]
    ld b, a

jr_003_604a:
    ld a, [hl+]
    cp $ff
    jp z, Jump_003_6581

    cp b
    jr nz, jr_003_6061

    ld a, [hl+]
    cp d
    jr nz, jr_003_6062

    ld a, [hl+]
    cp e
    jr nz, jr_003_6063

    ld a, [hl]
    ld [$d71f], a
    jr jr_003_6066

jr_003_6061:
    inc hl

jr_003_6062:
    inc hl

jr_003_6063:
    inc hl
    jr jr_003_604a

jr_003_6066:
    ld hl, $65e8
    call Call_000_3c49
    ld hl, $d728
    set 7, [hl]
    ret


    rst $08
    inc b
    inc b
    nop
    rst $08
    inc b
    dec b
    ld bc, $0cd1
    inc b
    ld [bc], a
    pop de
    inc c
    dec b
    inc bc
    call nc, Call_000_0a06
    inc b
    call nc, Call_000_0b06
    dec b
    jp hl


    inc b
    ld [de], a
    ld b, $e9
    inc b
    inc de
    rlca
    ld [$0a08], a
    ld [$08ea], sp
    dec bc
    add hl, bc
    rst $38
    ret nc

    ld [$0a09], sp
    ret nc

    add hl, bc
    add hl, bc
    dec bc
    jp nc, Jump_000_0704

    inc c
    jp nc, $0705

    dec c
    db $d3
    inc c
    dec b
    ld c, $d3
    dec c
    dec b
    rrca
    push de
    ld [$1007], sp
    push de
    add hl, bc
    rlca
    ld de, $08e9
    inc bc
    ld [de], a
    jp hl


    add hl, bc
    inc bc
    inc de
    rst $38
    db $eb
    ld [$1409], sp
    db $eb
    add hl, bc
    add hl, bc
    dec d
    rst $38
    ld a, [$d057]
    dec a
    jp nz, Jump_003_6581

    ld a, $01
    ld [$d078], a
    jp Jump_003_6563


    ld a, [$d057]
    and a
    jp z, Jump_003_6581

    ld hl, $d063
    set 1, [hl]
    jp Jump_003_6563


    ld b, $c8
    jp Jump_003_6005


    ld b, $fa
    jp Jump_003_6005


    ld a, [$d057]
    and a
    jp z, Jump_003_6581

    ld hl, $d063
    set 2, [hl]
    jp Jump_003_6563


    ld a, [$d057]
    and a
    jr nz, jr_003_6113

    call Call_003_6581
    ld a, $02
    ld [$cd6a], a
    ret


jr_003_6113:
    ld hl, $cfd2
    ld a, [hl+]
    push af
    ld a, [hl]
    push af
    push hl
    ld a, [$cf91]
    sub $37
    ld [hl], a
    call Call_003_6563
    ld a, $ae
    ld [$cfd2], a
    call Call_000_3725
    call Call_000_3dd7
    xor a
    ldh [$f3], a
    ld b, $0f
    ld hl, $7428
    call Call_000_35d6
    pop hl
    pop af
    ld [hl-], a
    pop af
    ld [hl], a
    ret


    ld a, [$d057]
    and a
    jr nz, jr_003_6190

    call Call_003_69c5
    ld a, [$d35e]
    cp $17
    jr nz, jr_003_616b

    ld a, [$d7d8]
    bit 7, a
    jr nz, jr_003_618a

    ld hl, $61fd
    call Call_000_34bf
    jr nc, jr_003_618a

    ld hl, $6215
    call Call_000_3c49
    ld hl, $d7d8
    set 6, [hl]
    ret


jr_003_616b:
    cp $1b
    jr nz, jr_003_618a

    ld a, [$d7e0]
    bit 1, a
    jr nz, jr_003_618a

    ld hl, $6206
    call Call_000_34bf
    jr nc, jr_003_618a

    ld hl, $6215
    call Call_000_3c49
    ld hl, $d7e0
    set 0, [hl]
    ret


jr_003_618a:
    ld hl, $620b
    jp Jump_000_3c49


jr_003_6190:
    xor a
    ld [$cd3d], a
    ld b, $f8
    ld hl, $d16f
    call Call_003_61e5
    ld a, [$d057]
    dec a
    jr z, jr_003_61a8

    ld hl, $d8a8
    call Call_003_61e5

jr_003_61a8:
    ld hl, $d018
    ld a, [hl]
    and b
    ld [hl], a
    ld hl, $cfe9
    ld a, [hl]
    and b
    ld [hl], a
    call Call_000_3701
    ld a, [$cd3d]
    and a
    ld hl, $620b
    jp z, Jump_000_3c49

    ld hl, $6215
    call Call_000_3c49
    ld a, [$d083]
    and $80
    jr nz, jr_003_61df

    call Call_000_3748
    ld b, $08
    ld hl, $6306
    call Call_000_35d6

jr_003_61d9:
    ld a, [$c02c]
    and a
    jr nz, jr_003_61d9

jr_003_61df:
    ld hl, $6210
    jp Jump_000_3c49


Call_003_61e5:
    ld de, $002c
    ld c, $06

jr_003_61ea:
    ld a, [hl]
    push af
    and $07
    jr z, jr_003_61f5

    ld a, $01
    ld [$cd3d], a

jr_003_61f5:
    pop af
    and b
    ld [hl], a
    add hl, de
    dec c
    jr nz, jr_003_61ea

    ret


    ld a, $09
    dec a
    ld a, [bc]
    ccf
    ld a, [bc]
    ld a, $0b
    rst $38
    ld a, [bc]
    dec de
    ld a, [bc]
    add hl, de
    rst $38
    rla
    db $dd
    ld l, b
    add hl, hl
    ld d, b
    rla
    inc c
    ld l, c
    add hl, hl
    ld d, b
    rla
    jr z, jr_003_6281

    add hl, hl
    ld b, $08
    ld a, [$d057]
    and a
    jr nz, jr_003_6237

    ld a, $ff
    call Call_000_23b1
    ld a, $b8
    ld c, $02
    call Call_000_23a1

jr_003_622d:
    ld a, [$c028]
    cp $b8
    jr z, jr_003_622d

    call Call_000_2307

jr_003_6237:
    jp Jump_000_24d7


    ld a, [$d057]
    and a
    jp nz, Jump_003_6581

    ld hl, $6247
    jp Jump_000_3c49


    rla
    ld b, b
    ld l, c
    add hl, hl
    ld d, b
    call Call_003_62b4
    jp c, Jump_003_6581

    ld bc, $0585
    ld a, $01
    jr jr_003_628d

    call Call_003_62b4
    jp c, Jump_003_6581

jr_003_625f:
    call Call_000_3e5c
    srl a
    jr c, jr_003_6278

    and $03
    cp $02
    jr nc, jr_003_625f

    ld hl, $627f
    add a
    ld c, a
    ld b, $00
    add hl, bc
    ld b, [hl]
    inc hl
    ld c, [hl]
    and a

jr_003_6278:
    ld a, $00
    rla
    xor $01
    jr jr_003_628d

    ld a, [bc]
    sbc l

jr_003_6281:
    ld a, [bc]
    ld b, a
    call Call_003_62b4
    jp c, Jump_003_6581

    call Call_003_68ea
    ld a, e

jr_003_628d:
    ld [$cd3d], a
    dec a
    jr nz, jr_003_62a0

    ld a, $01
    ld [$d05f], a
    ld a, b
    ld [$d127], a
    ld a, c
    ld [$d059], a

jr_003_62a0:
    ld hl, $d700
    ld a, [hl]
    push af
    push hl
    ld [hl], $00
    ld b, $1c
    ld hl, $47b6
    call Call_000_35d6
    pop hl
    pop af
    ld [hl], a
    ret


Call_003_62b4:
    ld a, [$d057]
    and a
    jr z, jr_003_62bc

    scf
    ret


jr_003_62bc:
    call Call_003_68b8
    ret c

    ld a, [$d700]
    cp $02
    jr z, jr_003_62dc

    call Call_003_69c5
    ld hl, $65e8
    call Call_000_3c49
    ld a, $8e
    call Call_000_23b1
    ld c, $50
    call Call_000_3739
    and a
    ret


jr_003_62dc:
    scf
    ret


    jp Jump_003_6586


    ld a, [$d057]
    and a
    jp nz, Jump_003_6581

    call Call_003_69c5
    ld b, $1d
    ld hl, $481f
    call Call_000_35d6
    ld hl, $6312
    jr nc, jr_003_630a

    ld c, $04

jr_003_62fa:
    ld a, $9e
    call Call_000_3740
    ld a, $b2
    call Call_000_3740
    dec c
    jr nz, jr_003_62fa

    ld hl, $630d

jr_003_630a:
    jp Jump_000_3c49


    rla
    ld c, a
    ld l, c
    add hl, hl
    ld d, b
    rla
    add c
    ld l, c
    add hl, hl
    ld d, b
    ld a, [$d057]
    and a
    jp nz, Jump_003_6581

    ld a, [$cf92]
    push af
    ld a, [$cf91]
    ld [$cd3d], a

jr_003_6328:
    xor a
    ld [$cfcb], a
    ld a, $01
    ld [$d07d], a
    call Call_000_13fc
    jr nc, jr_003_6339

    jp Jump_003_6451


jr_003_6339:
    ld a, [$cd3d]
    cp $52
    jp nc, Jump_003_641b

    ld a, $02
    ld [$ccdb], a
    ld hl, $645d
    ld a, [$cd3d]
    cp $50
    jr c, jr_003_6353

    ld hl, $6462

jr_003_6353:
    call Call_000_3c49
    xor a
    ld [$cc2e], a
    ld hl, $5219
    ld b, $0f
    call Call_000_35d6
    ld a, $00
    ld [$cc2e], a
    jr nz, jr_003_6328

    ld hl, $d173
    ld bc, $002c
    call Call_003_66e3
    push hl
    ld a, [hl]
    ld [$d11e], a
    call Call_000_3058
    call Call_000_3826
    pop hl
    ld a, [$cd3d]
    cp $50
    jr nc, jr_003_63de

    ld bc, $0015
    add hl, bc
    ld a, [hl]
    cp $c0
    jr c, jr_003_6396

    ld hl, $6467
    call Call_000_3c49
    jr jr_003_6339

jr_003_6396:
    ld a, [hl]
    add $40
    ld [hl], a
    ld a, $01
    ld [$d11e], a
    call Call_003_6606
    ld hl, $646c
    call Call_000_3c49

jr_003_63a8:
    pop af
    ld [$cf92], a
    call Call_000_3de5
    call Call_000_3ded
    jp Jump_003_6571


Jump_003_63b5:
jr_003_63b5:
    ld a, [$cf92]
    ld b, a
    ld a, [$cc2f]
    cp b
    jr nz, jr_003_63d1

    ld hl, $d188
    ld bc, $002c
    call Call_000_3a87
    ld de, $d02d
    ld bc, $0004
    call Call_000_00b5

jr_003_63d1:
    ld a, $8e
    call Call_000_23b1
    ld hl, $6471
    call Call_000_3c49
    jr jr_003_63a8

jr_003_63de:
    call Call_003_63e6
    jr nz, jr_003_63b5

    jp Jump_003_644e


Call_003_63e6:
    xor a
    ld [$cc49], a
    call Call_003_6677
    ld hl, $d173
    ld bc, $002c
    call Call_003_66e3
    ld bc, $0015
    add hl, bc
    ld a, [$d11e]
    ld b, a
    ld a, [$cd3d]
    cp $51
    jr z, jr_003_6416

    ld a, [hl]
    and $3f
    cp b
    ret z

    add $0a
    cp b
    jr nc, jr_003_6410

    ld b, a

jr_003_6410:
    ld a, [hl]
    and $c0
    add b
    ld [hl], a
    ret


jr_003_6416:
    ld a, [hl]
    cp b
    ret z

    jr jr_003_6410

Jump_003_641b:
    ld hl, $cd3d
    dec [hl]
    dec [hl]
    xor a
    ld hl, $cc26
    ld [hl+], a
    ld [hl], a
    ld b, $04

jr_003_6428:
    push bc
    ld hl, $d173
    ld bc, $002c
    call Call_003_66e3
    ld a, [hl]
    and a
    jr z, jr_003_643f

    call Call_003_63e6
    jr z, jr_003_643f

    ld hl, $cc27
    inc [hl]

jr_003_643f:
    ld hl, $cc26
    inc [hl]
    pop bc
    dec b
    jr nz, jr_003_6428

    ld a, [$cc27]
    and a
    jp nz, Jump_003_63b5

Jump_003_644e:
    call Call_003_657c

Jump_003_6451:
    call Call_000_3de5
    call Call_000_3ded
    pop af
    xor a
    ld [$cd6a], a
    ret


    rla
    and h
    ld l, c
    add hl, hl
    ld d, b
    rla
    jp nz, Jump_000_2969

    ld d, b
    rla
    ld [c], a
    ld l, c
    add hl, hl
    ld d, b
    rla
    ld sp, hl
    ld l, c
    add hl, hl
    ld d, b
    rla
    dec c
    ld l, d
    add hl, hl
    ld d, b
    jp Jump_003_6581


Jump_003_6479:
    ld a, [$d057]
    and a
    jp nz, Jump_003_6581

    ld a, [$cf91]
    sub $c9
    push af
    jr nc, jr_003_648a

    add $37

jr_003_648a:
    inc a
    ld [$d11e], a
    ld a, $44
    call Call_000_3e6d
    ld a, [$d11e]
    ld [$d0e0], a
    call Call_000_3058
    call Call_000_3826
    pop af
    ld hl, $654f
    jr nc, jr_003_64a8

    ld hl, $6554

jr_003_64a8:
    call Call_000_3c49
    ld hl, $6559
    call Call_000_3c49
    ld hl, $c43a
    ld bc, $080f
    ld a, $14
    ld [$d125], a
    call Call_000_30e8
    ld a, [$cc26]
    and a
    jr z, jr_003_64cb

    ld a, $02
    ld [$cd6a], a
    ret


jr_003_64cb:
    ld a, [$cf92]
    push af
    ld a, [$cf91]
    push af

jr_003_64d3:
    ld hl, $cf4b
    ld de, $d036
    ld bc, $000e
    call Call_000_00b5
    ld a, $ff
    ld [$cfcb], a
    ld a, $03
    ld [$d07d], a
    call Call_000_13fc
    push af
    ld hl, $d036
    ld de, $cf4b
    ld bc, $000e
    call Call_000_00b5
    pop af
    jr nc, jr_003_650a

    pop af
    pop af
    call Call_000_3dd4
    call Call_000_0082
    call Call_000_3ded
    jp Jump_000_3725


jr_003_650a:
    ld a, $43
    call Call_000_3e6d
    push bc
    ld a, [$cf92]
    ld hl, $d2b5
    call Call_000_15ba
    pop bc
    ld a, c
    and a
    jr nz, jr_003_652b

    ld a, $a5
    call Call_000_3740
    ld hl, $655e
    call Call_000_3c49
    jr jr_003_64d3

jr_003_652b:
    ld hl, $7e18
    ld b, $0b
    call Call_000_35d6
    jr c, jr_003_64d3

    ld a, $1b
    call Call_000_3e6d
    pop af
    ld [$cf91], a
    pop af
    ld [$cf92], a
    ld a, b
    and a
    ret z

    ld a, [$cf91]
    call Call_000_3040
    ret c

    jp Jump_003_6571


    rla
    rra
    ld l, d
    add hl, hl
    ld d, b
    rla
    jr nc, jr_003_65c1

    add hl, hl
    ld d, b
    rla
    ld b, d
    ld l, d
    add hl, hl
    ld d, b
    rla
    ld l, [hl]
    ld l, d
    add hl, hl
    ld d, b

Call_003_6563:
Jump_003_6563:
    ld hl, $65e8
    call Call_000_3c49
    ld a, $8e
    call Call_000_23b1
    call Call_000_3865

Call_003_6571:
Jump_003_6571:
jr_003_6571:
    ld hl, $d31d
    ld a, $01
    ld [$cf96], a
    jp Jump_000_2bbb


Call_003_657c:
    ld hl, $65ca
    jr jr_003_65b9

Call_003_6581:
Jump_003_6581:
    ld hl, $65c0
    jr jr_003_65b9

Jump_003_6586:
    ld hl, $65c5
    jr jr_003_65b9

Jump_003_658b:
    call Call_000_3ded
    call Call_000_3725
    call Call_000_3dd7
    ld a, $c1
    ld [$d07c], a
    ld a, $08
    call Call_000_3e6d
    ld hl, $65cf
    call Call_000_3c49
    ld hl, $65d4
    call Call_000_3c49
    jr jr_003_6571

Jump_003_65ac:
    ld hl, $65d9
    jr jr_003_65b9

Jump_003_65b1:
    ld hl, $65e3
    jr jr_003_65b9

Jump_003_65b6:
    ld hl, $65de

jr_003_65b9:
    xor a
    ld [$cd6a], a
    jp Jump_000_3c49


    rla

jr_003_65c1:
    and [hl]
    ld l, d
    add hl, hl
    ld d, b
    rla
    ret nc

    ld l, d
    add hl, hl
    ld d, b
    rla
    jp hl


    ld l, d
    add hl, hl
    ld d, b
    rla
    inc bc
    ld l, e
    add hl, hl
    ld d, b
    rla
    ld [hl+], a
    ld l, e
    add hl, hl
    ld d, b
    rla
    inc [hl]
    ld l, e
    add hl, hl
    ld d, b
    rla
    ld c, [hl]
    ld l, e
    add hl, hl
    ld d, b
    rla
    ld l, c
    ld l, e
    add hl, hl
    ld d, b
    rla
    nop
    ld b, b
    ld a, [hl+]
    dec b
    rla
    add hl, bc
    ld b, b
    ld a, [hl+]
    ld d, b
    rla
    rrca
    ld b, b
    ld a, [hl+]
    dec b
    rla
    ld e, $40
    ld a, [hl+]
    ld d, b
    rla
    inc h
    ld b, b
    ld a, [hl+]
    dec b
    rla
    jr nc, jr_003_6644

    ld a, [hl+]
    ld d, b

Call_003_6606:
    ld hl, $d173
    ld bc, $002c
    ld a, [$cf92]
    call Call_000_3a87
    push hl
    ld de, $cd77
    ld a, $5e
    call Call_000_3e6d
    pop hl
    ld c, $15
    ld b, $00
    add hl, bc
    ld de, $cd78
    ld b, $00

jr_003_6626:
    inc b
    ld a, b
    cp $05
    ret z

    ld a, [$d11e]
    dec a
    jr nz, jr_003_6638

    ld a, [$cc26]
    inc a
    cp b
    jr nz, jr_003_663e

jr_003_6638:
    ld a, [hl]
    and $c0
    call nz, Call_003_6642

jr_003_663e:
    inc hl
    inc de
    jr jr_003_6626

Call_003_6642:
    push bc
    ld a, [de]

jr_003_6644:
    ldh [$98], a
    xor a
    ldh [$95], a
    ldh [$96], a
    ldh [$97], a
    ld a, $05
    ldh [$99], a
    ld b, $04
    call Call_000_38b9
    ld a, [hl]
    ld b, a
    swap a
    and $0f
    srl a
    srl a
    ld c, a

jr_003_6661:
    ldh a, [$98]
    cp $08
    jr c, jr_003_6669

    ld a, $07

jr_003_6669:
    add b
    ld b, a
    ld a, [$d11e]
    dec a
    jr z, jr_003_6674

    dec c
    jr nz, jr_003_6661

jr_003_6674:
    ld [hl], b
    pop bc
    ret


Call_003_6677:
    ld a, [$cc49]
    and a
    ld hl, $d173
    ld bc, $002c
    jr z, jr_003_66a0

    ld hl, $d8ac
    dec a
    jr z, jr_003_66a0

    ld hl, $da9e
    ld bc, $0021
    dec a
    jr z, jr_003_66a0

    ld hl, $da67
    dec a
    jr z, jr_003_669b

    ld hl, $d01c

jr_003_669b:
    call Call_003_66e9
    jr jr_003_66a3

jr_003_66a0:
    call Call_003_66e3

jr_003_66a3:
    ld a, [hl]
    dec a
    push hl
    ld hl, $4000
    ld bc, $0006
    call Call_000_3a87
    ld de, $cd6d
    ld a, $0e
    call Call_000_009d
    ld de, $cd72
    ld a, [de]
    ld b, a
    pop hl
    push bc
    ld bc, $0015
    ld a, [$cc49]
    cp $04
    jr nz, jr_003_66cb

    ld bc, $0011

jr_003_66cb:
    add hl, bc
    ld a, [hl]
    and $c0
    pop bc
    or b
    ld h, d
    ld l, e
    inc hl
    ld [hl], a
    xor a
    ld [$d11e], a
    call Call_003_6642
    ld a, [hl]
    and $3f
    ld [$d11e], a
    ret


Call_003_66e3:
    ld a, [$cf92]
    call Call_000_3a87

Call_003_66e9:
    ld a, [$cc26]
    ld c, a
    ld b, $00
    add hl, bc
    ret


    push hl
    ld a, [$cf91]
    call Call_000_3040
    pop hl
    jr c, jr_003_674b

    push hl
    call Call_003_6764
    ld a, [$d124]
    pop hl
    and a
    jr nz, jr_003_674b

    push hl
    ld a, [$cf91]
    ld [$d11e], a
    call Call_000_2fcf
    call Call_000_3826
    ld hl, $675a
    call Call_000_3c49
    ld hl, $c43a
    ld bc, $080f
    ld a, $14
    ld [$d125], a
    call Call_000_30e8
    ld a, [$d12e]
    cp $02
    pop hl
    scf
    ret z

    push hl
    ld a, [$cf92]
    call Call_000_2bbb
    ld a, [$cf91]
    ld [$d11e], a
    call Call_000_2fcf
    call Call_000_3826
    ld hl, $6755
    call Call_000_3c49
    pop hl
    and a
    ret


jr_003_674b:
    push hl
    ld hl, $675f
    call Call_000_3c49
    pop hl
    scf
    ret


    rla
    inc a
    ld b, b
    ld a, [hl+]
    ld d, b
    rla
    ld c, a
    ld b, b
    ld a, [hl+]
    ld d, b
    rla
    ld l, b
    ld b, b
    ld a, [hl+]
    ld d, b

Call_003_6764:
    ld a, $01
    ld [$d124], a
    ld a, [$cf91]
    cp $c4
    jr nc, jr_003_678d

    push af
    ld hl, $6799
    ld de, $cee9
    ld bc, $000f
    call Call_000_00b5
    pop af
    dec a
    ld c, a
    ld hl, $cee9
    ld b, $02
    ld a, $10
    call Call_000_3e6d
    ld a, c
    and a
    ret nz

jr_003_678d:
    ld a, [$cf91]
    call Call_000_3040
    ret c

    xor a
    ld [$d124], a
    ret


    ldh a, [rSB]
    ldh a, [rVBK]
    nop
    sbc a
    nop
    ret nz

    ldh a, [$3b]
    nop

Call_003_67a4:
    ld de, $da80
    ld a, [de]
    inc a
    ld [de], a
    ld a, [$cf91]
    ld [$d0b5], a
    ld c, a

jr_003_67b1:
    inc de
    ld a, [de]
    ld b, a
    ld a, c
    ld c, b
    ld [de], a
    cp $ff
    jr nz, jr_003_67b1

    call Call_000_1537
    ld hl, $dd2a
    ld bc, $000b
    ld a, [$da80]
    dec a
    jr z, jr_003_67ee

    dec a
    call Call_000_3a87
    push hl
    ld bc, $000b
    add hl, bc
    ld d, h
    ld e, l
    pop hl
    ld a, [$da80]
    dec a
    ld b, a

jr_003_67db:
    push bc
    push hl
    ld bc, $000b
    call Call_000_00b5
    pop hl
    ld d, h
    ld e, l
    ld bc, $fff5
    add hl, bc
    pop bc
    dec b
    jr nz, jr_003_67db

jr_003_67ee:
    ld hl, $d158
    ld de, $dd2a
    ld bc, $000b
    call Call_000_00b5
    ld a, [$da80]
    dec a
    jr z, jr_003_682a

    ld hl, $de06
    ld bc, $000b
    dec a
    call Call_000_3a87
    push hl
    ld bc, $000b
    add hl, bc
    ld d, h
    ld e, l
    pop hl
    ld a, [$da80]
    dec a
    ld b, a

jr_003_6817:
    push bc
    push hl
    ld bc, $000b
    call Call_000_00b5
    pop hl
    ld d, h
    ld e, l
    ld bc, $fff5
    add hl, bc
    pop bc
    dec b
    jr nz, jr_003_6817

jr_003_682a:
    ld hl, $de06
    ld a, $02
    ld [$d07d], a
    ld a, $4e
    call Call_000_3e6d
    ld a, [$da80]
    dec a
    jr z, jr_003_6867

    ld hl, $da96
    ld bc, $0021
    dec a
    call Call_000_3a87
    push hl
    ld bc, $0021
    add hl, bc
    ld d, h
    ld e, l
    pop hl
    ld a, [$da80]
    dec a
    ld b, a

jr_003_6854:
    push bc
    push hl
    ld bc, $0021
    call Call_000_00b5
    pop hl
    ld d, h
    ld e, l
    ld bc, $ffdf
    add hl, bc
    pop bc
    dec b
    jr nz, jr_003_6854

jr_003_6867:
    ld a, [$cff3]
    ld [$cfe8], a
    ld hl, $cfe5
    ld de, $da96
    ld bc, $000c
    call Call_000_00b5
    ld hl, $d359
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    inc de
    push de
    ld a, [$d127]
    ld d, a
    ld hl, $4f6a
    ld b, $16
    call Call_000_35d6
    pop de
    ldh a, [$96]
    ld [de], a
    inc de
    ldh a, [$97]
    ld [de], a
    inc de
    ldh a, [$98]
    ld [de], a
    inc de
    xor a
    ld b, $0a

jr_003_689f:
    ld [de], a
    inc de
    dec b
    jr nz, jr_003_689f

    ld hl, $cff1
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ld hl, $cffe
    ld b, $04

jr_003_68b1:
    ld a, [hl+]
    inc de
    ld [de], a
    dec b
    jr nz, jr_003_68b1

    ret


Call_003_68b8:
    ld a, [$d367]
    ld hl, $68e0
    ld de, $0001
    call Call_000_3dab
    jr nc, jr_003_68dc

    ld a, [$d367]
    cp $0e
    ld a, [$cfc6]
    jr z, jr_003_68d8

    cp $48
    jr z, jr_003_68de

    cp $32
    jr z, jr_003_68de

jr_003_68d8:
    cp $14
    jr z, jr_003_68de

jr_003_68dc:
    scf
    ret


jr_003_68de:
    and a
    ret


jr_003_68e0:
    nop
    inc bc
    dec b
    rlca
    dec c
    ld c, $11
    ld d, $17
    rst $38

Call_003_68ea:
    ld a, [$d35e]
    ld de, $0003
    ld hl, $6919
    call Call_000_3dab
    jr c, jr_003_68fb

jr_003_68f8:
    ld e, $02
    ret


jr_003_68fb:
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld b, [hl]
    inc hl
    ld e, $00

jr_003_6903:
    call Call_000_3e5c
    srl a
    ret c

    and $03
    cp b
    jr nc, jr_003_6903

    add a
    ld c, a
    ld b, $00
    add hl, bc
    ld b, [hl]
    inc hl
    ld c, [hl]
    ld e, $01
    ret


    nop
    ld a, l
    ld l, c
    ld bc, $697d
    inc bc
    add a
    ld l, c
    dec b
    adc [hl]
    ld l, c
    ld b, $93
    ld l, c
    rlca
    cp h
    ld l, c
    ld [$69aa], sp
    rrca
    add a
    ld l, c
    ld de, $698e
    dec d
    sub e
    ld l, c
    ld d, $8e
    ld l, c
    rla
    and c
    ld l, c
    jr jr_003_68e0

    ld l, c
    inc e
    and c
    ld l, c
    dec e
    and c
    ld l, c
    ld e, $aa
    ld l, c
    rra
    xor d
    ld l, c
    jr nz, jr_003_68f8

    ld l, c
    ld hl, $6982
    ld [hl+], a
    or e
    ld l, c
    inc hl
    add a
    ld l, c
    inc h
    add a
    ld l, c
    ld b, c
    add a
    ld l, c
    ld e, [hl]
    adc [hl]
    ld l, c
    and c
    xor d
    ld l, c
    and d
    xor d
    ld l, c
    reti


    sbc b
    ld l, c
    jp c, Jump_003_6998

    db $db
    sbc b
    ld l, c
    call c, Call_003_6998
    ld [c], a
    or e
    ld l, c
    db $e3
    or e
    ld l, c
    db $e4
    or e
    ld l, c
    rst $38
    ld [bc], a
    rrca
    jr jr_003_6990

    ld b, a
    ld [bc], a
    rrca
    sbc l
    rrca
    ld b, a
    inc bc
    rrca
    cpl
    rrca
    sbc l
    rrca
    ld c, [hl]
    ld [bc], a
    rrca

jr_003_6990:
    ld c, [hl]
    rrca
    rla
    ld [bc], a
    rla
    ld l, [hl]
    rrca
    dec h

Call_003_6998:
Jump_003_6998:
    inc b
    rrca
    ld e, b
    rrca
    ld c, [hl]
    rrca
    cpl
    rrca
    dec h
    inc b
    dec b
    jr jr_003_69b4

    ld c, [hl]
    rrca
    sbc l
    rrca
    add l
    inc b
    rrca
    dec de
    rrca
    ld e, h
    rrca
    rla
    rrca
    sbc l
    inc b

jr_003_69b4:
    rla
    ld [$9e17], sp
    rla
    adc d
    rla
    ld e, l
    inc b
    rla
    sbc [hl]
    rrca
    ld c, [hl]
    rrca
    sbc l
    rrca
    add l

Call_003_69c5:
    call Call_000_0caa
    jp Jump_000_2429


    ld hl, $4eeb
    ld de, $cee9
    ld c, $00

jr_003_69d3:
    inc hl
    ld a, [hl-]
    inc a
    jr z, jr_003_69ec

    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    and a
    call nz, Call_003_69f0
    ld a, [hl+]
    and a
    call nz, Call_003_69f0
    pop hl
    inc hl
    inc hl
    inc c
    jr jr_003_69d3

jr_003_69ec:
    ld a, $ff
    ld [de], a
    ret


Call_003_69f0:
    inc hl
    ld b, $0a

jr_003_69f3:
    ld a, [$d11e]
    cp [hl]
    jr nz, jr_003_69fc

    ld a, c
    ld [de], a
    inc de

jr_003_69fc:
    inc hl
    inc hl
    dec b
    jr nz, jr_003_69f3

    dec hl
    ret


    ld de, $cd3f
    ld hl, $6a96
    ld bc, $0008
    call Call_000_00b5
    ld hl, $cd49
    ld bc, $0008
    xor a
    call Call_000_36e0
    ld de, $cd49
    ld hl, $cd3f
    ld a, [$d356]
    ld b, a
    ld c, $08

jr_003_6a25:
    srl b
    jr nc, jr_003_6a30

    ld a, [hl]
    add $04
    ld [hl], a
    ld a, $01
    ld [de], a

jr_003_6a30:
    inc hl
    inc de
    dec c
    jr nz, jr_003_6a25

    ld hl, $cd3d
    ld a, $d8
    ld [hl+], a
    ld [hl], $60
    ld hl, $c47e
    ld de, $cd49
    call Call_003_6a4c
    ld hl, $c4ba
    ld de, $cd4d

Call_003_6a4c:
    ld c, $04

jr_003_6a4e:
    push de
    push hl
    ld a, [$cd3d]
    ld [hl+], a
    inc a
    ld [$cd3d], a
    ld a, [de]
    and a
    ld a, [$cd3e]
    jr nz, jr_003_6a64

    call Call_003_6a91
    jr jr_003_6a67

jr_003_6a64:
    inc a
    inc a
    inc hl

jr_003_6a67:
    ld [$cd3e], a
    ld de, $0013
    add hl, de
    ld a, [$cd3f]
    call Call_003_6a91
    add hl, de
    call Call_003_6a91
    push bc
    ld hl, $cd40
    ld de, $cd3f
    ld bc, $0008
    call Call_000_00b5
    pop bc
    pop hl
    ld de, $0004
    add hl, de
    pop de
    inc de
    dec c
    jr nz, jr_003_6a4e

    ret


Call_003_6a91:
    ld [hl+], a
    inc a
    ld [hl], a
    inc a
    ret


    jr nz, jr_003_6ac0

    jr nc, jr_003_6ad2

    ld b, b
    ld c, b
    ld d, b
    ld e, b
    rra
    ccf
    ccf
    ld a, a
    ei
    rst $38
    rst $30
    ld a, [$f0ef]
    ld a, a
    ldh [rHDMA4], a
    ld a, b
    db $fc
    add $fc
    cp $fe
    cp $7f
    rst $38
    rst $28
    ccf
    rst $30
    rrca
    cp $07
    ld l, d
    ld e, $3f

jr_003_6abd:
    ld h, e
    ccf
    ld c, [hl]

jr_003_6ac0:
    ld l, $40
    pop hl
    ld hl, $a0e0
    ld h, c
    ld [hl], e
    nop
    db $10
    jr jr_003_6ad4

    ld b, $06
    db $fc
    ld [hl], d
    ld [hl], h
    ld [bc], a

jr_003_6ad2:
    rlca
    inc b

jr_003_6ad4:
    rlca
    dec b
    add [hl]
    adc $00
    ld [$1018], sp
    ld h, b
    ld h, b
    nop
    nop
    inc bc
    inc bc
    inc b
    inc b
    ld [$1008], sp
    db $10
    inc hl
    jr nz, jr_003_6b32

    ld b, b
    ld b, a
    ld b, b
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_003_6b14

    db $10
    jr nc, jr_003_6aff

    jr c, jr_003_6abd

    inc a
    ld [c], a
    ld e, $e2
    ld e, $47

jr_003_6aff:
    ld b, b
    ld b, a
    ld b, b
    ccf
    jr nz, jr_003_6b21

    inc de
    inc c
    dec bc
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    ld [c], a
    ld e, $e2
    ld e, $c4
    inc a

jr_003_6b14:
    ld [$10f8], sp
    ldh a, [rNR41]
    ldh [$c0], a
    ret nz

    nop
    nop
    ld e, $1d
    inc a

jr_003_6b21:
    ccf
    ld a, b
    ld a, a
    ld hl, sp-$01
    db $fc
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    add $ff
    ld [hl], l
    or [hl]
    inc e
    rst $28

jr_003_6b32:
    inc e
    rst $20
    inc bc
    rst $38
    add d
    cp $41
    rst $38
    pop hl
    ld a, a
    ld sp, hl
    ld a, a
    or e
    call c, Call_003_496f
    ld c, a
    ld l, b
    ld c, a
    ld l, b
    ld e, a
    jr nz, jr_003_6b86

    inc hl
    rrca
    jr jr_003_6b54

    ld b, $de
    sbc $a9
    adc c
    and c
    add l

jr_003_6b54:
    pop bc
    add l
    adc d
    ld a, [bc]
    sbc h
    inc e
    ldh [$60], a

jr_003_6b5c:
    ld hl, sp-$28
    nop
    nop
    ld bc, $0301
    ld [bc], a
    inc bc
    ld [bc], a
    ld b, $05
    ld b, $05
    inc c
    dec bc
    jr @+$19

    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    jr nz, jr_003_6b5c

    db $10
    ldh a, [rNR23]
    rla
    jr nc, jr_003_6bb1

    jr nc, jr_003_6bb0

    jr nc, jr_003_6bb2

jr_003_6b86:
    jr jr_003_6b9f

    inc c
    rrca
    inc bc
    inc bc
    nop
    nop
    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$10
    ldh a, [$60]
    ldh [$80], a
    add b
    nop
    nop
    nop

jr_003_6b9f:
    nop
    nop
    ret nz

    add [hl]
    ld a, [hl]
    ld c, b
    cp c
    or c
    ld d, b
    db $e3
    and h
    ld h, e
    ld h, d
    ld hl, $00a5
    nop

jr_003_6bb0:
    nop

jr_003_6bb1:
    nop

jr_003_6bb2:
    inc e
    nop
    rst $38
    pop bc
    sbc $3d
    cp $02
    cp h
    ld b, d
    cp d
    ld b, [hl]
    ld bc, $4485
    ld b, e
    rst $00
    ret nz

    ld h, $e1
    db $f4
    ld a, [c]
    adc h
    ld a, h
    inc de
    ld a, a
    ld hl, $fcf9
    adc h
    call nc, Call_003_4834
    jr c, @-$06

    add sp, $38
    ld c, b
    jr nc, jr_003_6c2a

    ld h, b
    and b
    ret nz

    ret nz

    nop
    nop
    ld bc, $1e01
    ld e, $13
    inc de
    inc d
    inc d
    dec sp
    jr c, jr_003_6c42

    ld d, b
    sub a
    sub b
    add b
    add b
    ld b, b
    ld b, b
    jr nz, jr_003_6c14

    db $fc
    db $fc
    inc h
    inc h
    call nc, $ec34
    inc e
    ld [$571a], a
    ld d, b
    scf
    jr nc, jr_003_6c2e

    jr z, jr_003_6c29

    daa
    ccf
    ccf
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $e901
    add hl, de
    ld [$dc1a], a
    inc a

jr_003_6c14:
    jr z, @-$16

    ret z

    ret z

    ld a, b
    ld a, b
    add b
    add b
    nop
    nop
    rra
    db $10
    ccf
    jr nz, jr_003_6c61

    ld a, a
    ld a, l
    rst $38
    ei
    rst $38
    ei

jr_003_6c29:
    rst $38

jr_003_6c2a:
    rst $38
    ld a, [$faf5]

jr_003_6c2e:
    ld a, a
    rst $38
    rst $28
    rra
    ld a, e
    add a
    db $dd
    db $e3
    rst $30
    ei
    rst $38
    rst $38
    db $fd
    rst $38
    or [hl]
    rst $08
    rst $28
    ldh a, [$7f]
    ld [hl], b

jr_003_6c42:
    ld a, a
    ld a, h
    ld a, a
    ld [hl], b
    ld [hl], h
    ld a, d

jr_003_6c48:
    ld a, e
    ld a, l
    ld a, a
    ld a, [hl]
    ld a, a
    ld a, a
    push af
    rlca
    add a
    ld b, a
    ld h, a
    ld [hl], a
    rlca
    rlca
    rlca
    rlca
    rra
    rrca
    rla
    rla
    rst $10
    sub a
    ld bc, $0201

jr_003_6c61:
    inc bc
    jr @+$21

    ld h, $3a
    dec h
    scf
    jr jr_003_6c97

    ld d, d
    ld a, d

jr_003_6c6c:
    adc c
    db $ed
    add b
    add b
    ld b, b
    ret nz

    jr jr_003_6c6c

    ld h, h
    ld e, h
    and h
    db $ec
    inc e
    or h
    ld c, d
    ld e, [hl]
    sub c
    or a
    adc c
    db $ed
    ld d, d
    ld a, d
    jr jr_003_6cb1

    dec h
    scf
    ld h, $3a
    jr jr_003_6ca9

    ld [bc], a
    inc bc
    ld bc, $9101
    or a
    ld c, d
    ld e, [hl]

jr_003_6c92:
    jr jr_003_6c48

    and h
    db $ec
    ld h, h

jr_003_6c97:
    ld e, h
    jr jr_003_6c92

    ld b, b
    ret nz

    add b
    add b
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    xor $f7
    call z, $c47b
    ld a, a

jr_003_6ca9:
    ld b, b
    dec a
    ld h, d
    ld a, l
    ld [hl], d
    rst $38
    rst $38
    ld a, a

jr_003_6cb1:
    sbc a
    rst $38
    rrca
    add a
    rrca
    add a
    daa
    or a
    ld [hl], a
    db $f4
    db $76
    jp nz, Jump_000_3fe5

    ld sp, $2c2b
    ld [de], a
    inc e
    rrca
    db $10
    rrca
    dec bc
    rlca
    inc b
    inc bc
    inc b
    ld bc, $8203
    and c
    and d
    ret nz

    db $e3
    inc bc
    call nz, $8c17
    rst $08
    cp b
    ccf
    add sp, $7f
    sub e
    sbc a
    nop
    nop
    inc c
    inc c
    ld [de], a
    ld [de], a
    dec l
    ld hl, $202e
    ld e, a
    ld b, b
    ld e, a
    ld b, b
    ld e, a
    ld b, b
    nop
    nop
    jr nc, jr_003_6d22

    ld a, b
    ld c, b
    call nz, $84bc
    ld a, h
    ld [bc], a
    cp $02
    cp $02
    cp $2f
    jr nz, jr_003_6d30

    jr nz, jr_003_6d1a

    jr jr_003_6d10

    inc c
    dec b
    ld b, $02
    inc bc
    ld bc, $0001
    nop
    inc b
    db $fc

jr_003_6d10:
    inc b
    db $fc
    ld [$10f8], sp
    ldh a, [rNR41]
    ldh [rLCDC], a
    ret nz

jr_003_6d1a:
    add b
    add b
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38

jr_003_6d22:
    rst $38
    rst $38
    ld h, [hl]
    sbc a
    sbc [hl]
    rst $20
    rst $20
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    ldh a, [$f8]

jr_003_6d30:
    ld hl, sp-$04
    db $fc
    cp $f6
    ei
    ld a, e
    rst $20
    rst $28
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    inc sp
    ld l, e
    inc hl
    xor d
    ld b, e
    and [hl]
    rst $20
    nop
    db $e3
    ret nz

    db $e3
    pop af
    rst $30
    ld hl, sp+$38
    or a
    db $fc
    inc a
    add sp, $28
    ldh [$28], a
    ld h, b
    db $10
    jr nz, @+$52

    ld b, b
    and b
    and b
    ld [hl], b
    ld a, b
    adc b
    nop
    nop
    inc bc
    inc bc
    inc c
    inc c
    inc de
    db $10
    inc l
    inc hl
    dec hl
    inc h
    ld d, a
    ld c, b
    ld d, a
    ld c, b
    nop
    nop
    ret nz

    ret nz

    jr nc, @+$32

    ret z

    ld [$cc34], sp
    call nc, $ea2c

jr_003_6d7b:
    ld d, $ea
    ld d, $57
    ld c, b
    ld d, a
    ld c, b
    dec hl
    inc h
    inc l
    inc hl
    inc de
    inc e
    inc c
    rrca

jr_003_6d8a:
    inc bc
    inc bc
    nop
    nop
    ld [$ea16], a
    ld d, $d4
    inc l
    inc [hl]
    call z, $38c8
    jr nc, jr_003_6d8a

    ret nz

    ret nz

    nop
    nop
    inc e
    db $10
    inc e
    nop
    ccf
    jr nz, jr_003_6de4

    jr nz, jr_003_6dd6

    jr nc, jr_003_6dc8

    ld c, b
    ld a, [hl]
    ld c, l
    ld [hl], e
    ld e, a
    ld [$0008], sp
    ld [$0400], sp
    add h
    inc b
    db $fc
    inc e
    ld [$fe32], a
    ld l, d
    sbc [hl]
    ld a, [$3e33]
    dec e
    ld c, $1d
    ld [de], a
    inc d
    inc e
    ld b, $09

jr_003_6dc8:
    rrca
    ld [$0407], sp
    ld [bc], a
    rlca
    sub h
    db $fc
    add sp, $68
    ret z

    ld [$3010], sp

jr_003_6dd6:
    db $10
    ret nc

    ret nz

    jr nz, jr_003_6d7b

    jr nc, jr_003_6e4d

    ldh a, [rP1]
    nop
    ld bc, $0201
    ld [bc], a

jr_003_6de4:
    ld [hl+], a
    ld [hl+], a
    ld d, l
    ld d, h
    ld e, l
    ld c, h
    ld e, [hl]
    ld b, c
    ld l, $21

jr_003_6dee:
    nop
    nop
    nop
    nop
    add b
    add b
    adc b
    adc b
    ld d, h
    call c, $ec74
    db $f4
    inc c
    ld hl, sp+$08
    inc l
    inc hl
    ld e, b
    ld b, a
    ld e, b
    ld b, a
    jr z, jr_003_6e2d

    inc d
    inc de
    rrca
    inc c
    inc bc
    inc bc
    nop
    nop
    ld a, b
    adc b
    inc [hl]
    call z, $cc34
    jr z, jr_003_6dee

    ld d, b
    or b
    ldh [$60], a
    add b
    add b
    nop
    nop
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    jr c, jr_003_6e5e

    jr nc, jr_003_6e58

    ld [hl], e
    ld [hl], e
    rst $38
    rst $38
    rst $38

jr_003_6e2d:
    rst $38
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    inc e
    inc e
    inc c
    inc c
    adc $ce
    rst $08
    rst $08
    rra
    rra
    cp $fe
    cp $fe
    rst $38
    rst $38
    cp $fe
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_003_6e4d:
    rst $38
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a

jr_003_6e58:
    rst $38
    rst $38
    rst $38
    rst $38

jr_003_6e5c:
    rst $38
    rst $38

jr_003_6e5e:
    nop
    nop
    rra
    rra
    ccf
    inc h
    ld h, b
    ld e, a
    ld h, b
    ld e, a
    ld h, b
    ld a, a
    ld h, b
    ld e, a
    ld h, b
    ld e, a
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ldh [$a0], a
    jr nz, jr_003_6e5c

    jr nc, jr_003_6eae

    inc a
    ld a, $0c
    ld a, [bc]
    rlca
    rlca
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor b
    jr z, @+$4a

    ld [$88a8], sp
    jr jr_003_6eae

    db $f4
    db $f4
    ld a, [bc]
    ld a, [bc]
    ld b, $06
    nop
    nop
    call Call_000_3e94
    ld hl, $c6e8
    ld a, [$d369]
    add $06
    ld e, a
    ld d, $00
    add hl, de
    add hl, de

jr_003_6eae:
    add hl, de
    ld e, $03
    add hl, de
    ld e, a
    ld a, b
    and a
    jr z, jr_003_6ebb

jr_003_6eb7:
    add hl, de
    dec b
    jr nz, jr_003_6eb7

jr_003_6ebb:
    add hl, bc
    ld a, [$d09f]
    ld [hl], a
    ld a, [$d35f]
    ld c, a
    ld a, [$d360]
    ld b, a
    call Call_003_6f4e
    ret c

    push hl
    ld l, e
    ld h, $00
    ld e, $06
    ld d, h
    add hl, hl
    add hl, hl
    add hl, de
    add hl, bc
    pop bc
    call Call_003_6f4e
    ret c

Call_003_6edc:
Jump_003_6edc:
    ld a, [$d057]
    inc a
    ret z

    ldh a, [$ba]
    push af
    ldh a, [$d7]
    push af
    xor a
    ldh [$ba], a
    ldh [$d7], a
    call Call_000_0caa
    call Call_000_3ded
    ld hl, $d526
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $ffc0
    add hl, de
    ld a, h
    and $03
    or $98
    ld a, l
    ld [$cee9], a
    ld a, h
    ld [$ceea], a
    ld a, $02
    ldh [$be], a
    ld c, $09

jr_003_6f0f:
    push bc
    push hl
    push hl
    ld hl, $c378
    ld de, $0014
    ldh a, [$be]

jr_003_6f1a:
    add hl, de
    dec a
    jr nz, jr_003_6f1a

    call Call_000_0ea6
    pop hl
    ld de, $0020
    ldh a, [$be]
    ld c, a

jr_003_6f28:
    add hl, de
    ld a, h
    and $03
    or $98
    dec c
    jr nz, jr_003_6f28

    ldh [$d2], a
    ld a, l
    ldh [$d1], a
    ld a, $02
    ldh [$d0], a
    call Call_000_20af
    ld hl, $ffbe
    inc [hl]
    inc [hl]
    pop hl
    pop bc
    dec c
    jr nz, jr_003_6f0f

    pop af
    ldh [$d7], a
    pop af
    ldh [$ba], a
    ret


Call_003_6f4e:
    ld a, h
    sub b
    ret nz

    ld a, l
    sub c
    ret


    xor a
    ld [$cd6a], a
    ld a, [$d367]
    and a
    jr z, jr_003_6f6b

    cp $07
    jr nz, jr_003_6f77

    ld a, [$cfc6]
    cp $50
    jr nz, jr_003_6f77

    jr jr_003_6f82

jr_003_6f6b:
    dec a
    ld a, [$cfc6]
    cp $3d
    jr z, jr_003_6f82

    cp $52
    jr z, jr_003_6f82

jr_003_6f77:
    ld hl, $6f7d
    jp Jump_000_3c49


    rla
    ld hl, sp+$42
    ld a, [hl+]
    ld d, b

jr_003_6f82:
    ld [$cd4d], a
    ld a, $01
    ld [$cd6a], a
    ld a, [$cf92]
    ld hl, $d2b5
    call Call_000_15ba
    ld hl, $d730
    set 6, [hl]
    call Call_000_3dd4
    call Call_000_0082
    call Call_000_3dbe
    ld a, $90
    ldh [$b0], a
    call Call_000_3dd7
    call Call_000_20ba
    call Call_000_0caa
    call Call_000_36f4
    call Call_000_3dd7
    xor a
    ldh [$b0], a
    ld hl, $6ff2
    call Call_000_3c49
    call Call_000_3701
    ld hl, $d730
    res 6, [hl]
    ld a, $ff
    ld [$cfcb], a
    call Call_003_6ff7
    ld de, $7100
    call Call_003_709f
    call Call_003_6edc
    ld b, $1e
    ld hl, $5e96
    call Call_000_35d6
    ld a, $01
    ld [$cfcb], a
    ld a, $ac
    call Call_000_23b1
    ld a, $90
    ldh [$b0], a
    call Call_000_2429
    jp Jump_003_6edc


    rla
    dec d
    ld b, e
    ld a, [hl+]
    ld d, b

Call_003_6ff7:
    xor a
    ld [$cd50], a
    ld a, $e4
    ldh [rOBP1], a
    ld a, [$cd4d]
    cp $52
    jr z, jr_003_7020

    ld de, $42d0
    ld hl, $8fc0
    ld bc, $1902
    call Call_000_1848
    ld de, $43d0
    ld hl, $8fe0
    ld bc, $1902
    call Call_000_1848
    jr jr_003_7055

jr_003_7020:
    ld hl, $8fc0
    call Call_003_704c
    ld hl, $8fd0
    call Call_003_704c
    ld hl, $8fe0
    call Call_003_704c
    ld hl, $8ff0
    call Call_003_704c
    call Call_003_7055
    ld hl, $c393
    ld de, $0004
    ld a, $30
    ld c, e

jr_003_7044:
    ld [hl], a
    add hl, de
    xor $60
    dec c
    jr nz, jr_003_7044

    ret


Call_003_704c:
    ld de, $474e
    ld bc, $1e01
    jp Jump_000_1848


Call_003_7055:
jr_003_7055:
    call Call_003_7068
    ld a, $09
    ld de, $7060
    jp Jump_000_3a97


    db $fc
    db $10
    db $fd
    db $10
    cp $10
    rst $38
    db $10

Call_003_7068:
    ld hl, $c104
    ld a, [hl+]
    ld b, a
    inc hl
    ld a, [hl+]
    ld c, a
    inc hl
    inc hl
    ld a, [hl]
    srl a
    ld e, a
    ld d, $00
    ld a, [$cd50]
    and a
    ld hl, $708f
    jr z, jr_003_7084

    ld hl, $7097

jr_003_7084:
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, b
    add d
    ld b, a
    ld a, c
    add e
    ld c, a
    ret


    ld [$0824], sp
    inc b
    ld hl, sp+$14
    jr @+$16

    ld [$0834], sp
    db $f4
    add sp, $14
    jr z, @+$16

Call_003_709f:
    push de
    ld a, [$d369]
    add $06
    ld c, a
    ld b, $00
    ld d, $00
    ld hl, $d35f
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld a, [$c109]
    and a
    jr z, jr_003_70c7

    cp $04
    jr z, jr_003_70cf

    cp $08
    jr z, jr_003_70d7

    ld a, [$d364]
    and a
    jr z, jr_003_70e0

    jr jr_003_70ec

jr_003_70c7:
    ld a, [$d363]
    and a
    jr z, jr_003_70e0

    jr jr_003_70df

jr_003_70cf:
    ld a, [$d363]
    and a
    jr z, jr_003_70e1

    jr jr_003_70e0

jr_003_70d7:
    ld a, [$d364]
    and a
    jr z, jr_003_70e6

    jr jr_003_70e0

jr_003_70df:
    add hl, bc

jr_003_70e0:
    add hl, bc

jr_003_70e1:
    ld e, $02
    add hl, de
    jr jr_003_70f0

jr_003_70e6:
    ld e, $01
    add hl, bc
    add hl, de
    jr jr_003_70f0

jr_003_70ec:
    ld e, $03
    add hl, bc
    add hl, de

jr_003_70f0:
    pop de
    ld a, [hl]
    ld c, a

jr_003_70f3:
    ld a, [de]
    inc de
    inc de
    cp $ff
    ret z

    cp c
    jr nz, jr_003_70f3

    dec de
    ld a, [de]
    ld [hl], a
    ret


    ld [hl-], a
    ld l, l
    inc sp
    ld l, h
    inc [hl]
    ld l, a
    dec [hl]
    ld c, h
    ld h, b
    ld l, [hl]
    dec bc
    ld a, [bc]
    inc a
    dec [hl]
    ccf
    dec [hl]
    dec a
    ld [hl], $ff
    ld a, [$d35e]
    cp $0c
    jr nc, jr_003_7125

    ld c, a
    ld b, $01
    ld hl, $d70b
    ld a, $10
    call Call_000_3e6d

jr_003_7125:
    ld hl, $48f5
    ld a, [$d35e]
    ld b, $00
    ld c, a
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld de, $4aea
    ld a, l
    sub e
    jr nc, jr_003_713c

    dec h

jr_003_713c:
    ld l, a
    ld a, h
    sub d
    ld h, a
    ld a, h
    ldh [$95], a
    ld a, l
    ldh [$96], a
    xor a
    ldh [$97], a
    ldh [$98], a
    ld a, $03
    ldh [$99], a
    ld b, $02
    call Call_000_38b9
    ld a, [$d35e]
    ld b, a
    ldh a, [$98]
    ld c, a
    ld de, $d5ce
    pop hl

jr_003_715f:
    ld a, [hl+]
    cp $ff
    jr z, jr_003_7171

    cp b
    jr nz, jr_003_7171

    ld a, [hl+]
    inc hl
    ld [de], a
    inc de
    ld a, c
    inc c
    ld [de], a
    inc de
    jr jr_003_715f

jr_003_7171:
    ld a, $ff
    ld [de], a
    ret


Jump_003_7175:
    ld hl, $d5a6
    ld bc, $0020
    xor a
    call Call_000_36e0
    ld hl, $4aea
    xor a
    ld [$d048], a

jr_003_7186:
    ld a, [hl+]
    cp $ff
    ret z

    push hl
    inc hl
    ld a, [hl]
    cp $11
    jr nz, jr_003_719d

    ld hl, $d5a6
    ld a, [$d048]
    ld c, a
    ld b, $01
    call Call_003_71e6

jr_003_719d:
    ld hl, $d048
    inc [hl]
    pop hl
    inc hl
    inc hl
    jr jr_003_7186

    ldh a, [$da]
    swap a
    ld b, a
    ld hl, $d5ce

jr_003_71ae:
    ld a, [hl+]
    cp $ff
    jr z, jr_003_71c4

    cp b
    ld a, [hl+]
    jr nz, jr_003_71ae

    ld c, a
    ld b, $02
    ld hl, $d5a6
    call Call_003_71e6
    ld a, c
    and a
    jr nz, jr_003_71c5

jr_003_71c4:
    xor a

jr_003_71c5:
    ldh [$e5], a
    ret


    ld hl, $d5a6
    ld a, [$cc4d]
    ld c, a
    ld b, $00
    call Call_003_71e6
    jp Jump_000_2429


    ld hl, $d5a6
    ld a, [$cc4d]
    ld c, a
    ld b, $01
    call Call_003_71e6
    jp Jump_000_2429


Call_003_71e6:
    push hl
    push de
    push bc
    ld a, c
    ld d, a
    and $07
    ld e, a
    ld a, d
    srl a
    srl a
    srl a
    add l
    ld l, a
    jr nc, jr_003_71fa

    inc h

jr_003_71fa:
    inc e
    ld d, $01

jr_003_71fd:
    dec e
    jr z, jr_003_7204

    sla d
    jr jr_003_71fd

jr_003_7204:
    ld a, b
    and a
    jr z, jr_003_7213

    cp $02
    jr z, jr_003_721c

    ld a, [hl]
    ld b, a
    ld a, d
    or b
    ld [hl], a
    jr jr_003_7220

jr_003_7213:
    ld a, [hl]
    ld b, a
    ld a, d
    xor $ff
    and b
    ld [hl], a
    jr jr_003_7220

jr_003_721c:
    ld a, [hl]
    ld b, a
    ld a, d
    and b

jr_003_7220:
    pop bc
    pop de
    pop hl
    ld c, a
    ret


    ld a, [$d728]
    bit 0, a
    ret z

    ld a, [$cd60]
    bit 1, a
    ret nz

    xor a
    ldh [$8c], a
    call Call_000_0b6b
    ldh a, [$8c]
    ld [$d718], a
    and a
    jp z, Jump_003_72dd

    ld hl, $c101
    ld d, $00
    ldh a, [$8c]
    swap a
    ld e, a
    add hl, de
    res 7, [hl]
    call Call_000_3558
    ld a, [hl]
    cp $10
    jp nz, Jump_003_72dd

    ld hl, $cd60
    bit 6, [hl]
    set 6, [hl]
    ret z

    ldh a, [$b4]
    and $f0
    ret z

    ld a, $5a
    call Call_000_3e6d
    ld a, [$d71c]
    and a
    jp nz, Jump_003_72dd

    ldh a, [$b4]
    ld b, a
    ld a, [$c109]
    cp $04
    jr z, jr_003_7289

    cp $08
    jr z, jr_003_7291

    cp $0c
    jr z, jr_003_7299

    bit 7, b
    ret z

    ld de, $72af
    jr jr_003_729f

jr_003_7289:
    bit 6, b
    ret z

    ld de, $72ad
    jr jr_003_729f

jr_003_7291:
    bit 5, b
    ret z

    ld de, $72b1
    jr jr_003_729f

jr_003_7299:
    bit 4, b
    ret z

    ld de, $72b3

jr_003_729f:
    call Call_000_363a
    ld a, $a8
    call Call_000_23b1
    ld hl, $cd60
    set 1, [hl]
    ret


    ld b, b
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld a, [$d730]
    bit 0, a
    ret nz

    ld hl, $5f54
    ld b, $1e
    call Call_000_35d6
    call Call_003_4034
    ld [$cd6b], a
    call Call_003_72dd
    set 7, [hl]
    ld a, [$d718]
    ldh [$8c], a
    call Call_000_3558
    ld [hl], $10
    ld a, $ac
    jp Jump_000_23b1


Call_003_72dd:
Jump_003_72dd:
    ld hl, $cd60
    res 1, [hl]
    res 6, [hl]
    ret


    ld de, $d163
    ld a, [$cc49]
    and $0f
    jr z, jr_003_72f2

    ld de, $d89c

jr_003_72f2:
    ld a, [de]
    inc a
    cp $07
    ret nc

    ld [de], a
    ld a, [de]
    ldh [$e4], a
    add e
    ld e, a
    jr nc, jr_003_7300

    inc d

jr_003_7300:
    ld a, [$cf91]
    ld [de], a
    inc de
    ld a, $ff
    ld [de], a
    ld hl, $d273
    ld a, [$cc49]
    and $0f
    jr z, jr_003_7315

    ld hl, $d9ac

jr_003_7315:
    ldh a, [$e4]
    dec a
    call Call_000_3a7d
    ld d, h
    ld e, l
    ld hl, $d158
    ld bc, $000b
    call Call_000_00b5
    ld a, [$cc49]
    and a
    jr nz, jr_003_733f

    ld hl, $d2b5
    ldh a, [$e4]
    dec a
    call Call_000_3a7d
    ld a, $02
    ld [$d07d], a
    ld a, $4e
    call Call_000_3e6d

jr_003_733f:
    ld hl, $d16b
    ld a, [$cc49]
    and $0f
    jr z, jr_003_734c

    ld hl, $d8a4

jr_003_734c:
    ldh a, [$e4]
    dec a
    ld bc, $002c
    call Call_000_3a87
    ld e, l
    ld d, h
    push hl
    ld a, [$cf91]
    ld [$d0b5], a
    call Call_000_1537
    ld hl, $d0b8
    ld a, [hl+]
    ld [de], a
    inc de
    pop hl
    push hl
    ld a, [$cc49]
    and $0f
    ld a, $98
    ld b, $88
    jr nz, jr_003_73b3

    ld a, [$cf91]
    ld [$d11e], a
    push de
    ld a, $3a
    call Call_000_3e6d
    pop de
    ld a, [$d11e]
    dec a
    ld c, a
    ld b, $02
    ld hl, $d2f7
    call Call_003_7669
    ld a, c
    ld [$d153], a
    ld a, [$d11e]
    dec a
    ld c, a
    ld b, $01
    push bc
    call Call_003_7669
    pop bc
    ld hl, $d30a
    call Call_003_7669
    pop hl
    push hl
    ld a, [$d057]
    and a
    jr nz, jr_003_73d6

    call Call_000_3e5c
    ld b, a
    call Call_000_3e5c

jr_003_73b3:
    push bc
    ld bc, $001b
    add hl, bc
    pop bc
    ld [hl+], a
    ld [hl], b
    ld bc, $fff4
    add hl, bc
    ld a, $01
    ld c, a
    xor a
    ld b, a
    call Call_000_394a
    ldh a, [$97]
    ld [de], a
    inc de
    ldh a, [$98]
    ld [de], a
    inc de
    xor a
    ld [de], a
    inc de
    ld [de], a
    inc de
    jr jr_003_73f4

jr_003_73d6:
    ld bc, $001b
    add hl, bc
    ld a, [$cff1]
    ld [hl+], a
    ld a, [$cff2]
    ld [hl], a
    ld a, [$cfe6]
    ld [de], a
    inc de
    ld a, [$cfe7]
    ld [de], a
    inc de
    xor a
    ld [de], a
    inc de
    ld a, [$cfe9]
    ld [de], a
    inc de

jr_003_73f4:
    ld hl, $d0be
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ld hl, $d0c7
    ld a, [hl+]
    inc de
    push de
    ld [de], a
    ld a, [hl+]
    inc de
    ld [de], a
    ld a, [hl+]
    inc de
    ld [de], a
    ld a, [hl+]
    inc de
    ld [de], a
    push de
    dec de
    dec de
    dec de
    xor a
    ld [$cee9], a
    ld a, $3e
    call Call_000_3e6d
    pop de
    ld a, [$d359]
    inc de
    ld [de], a
    ld a, [$d35a]
    inc de
    ld [de], a
    push de
    ld a, [$d127]
    ld d, a
    ld hl, $4f6a
    ld b, $16
    call Call_000_35d6
    pop de
    inc de
    ldh a, [$96]
    ld [de], a
    inc de
    ldh a, [$97]
    ld [de], a
    inc de
    ldh a, [$98]
    ld [de], a
    xor a
    ld b, $0a

jr_003_7444:
    inc de
    ld [de], a
    dec b
    jr nz, jr_003_7444

    inc de
    inc de
    pop hl
    call Call_003_7476
    inc de
    ld a, [$d127]
    ld [de], a
    inc de
    ld a, [$d057]
    dec a
    jr nz, jr_003_7467

    ld hl, $cff4
    ld bc, $000a
    call Call_000_00b5
    pop hl
    jr jr_003_7471

jr_003_7467:
    pop hl
    ld bc, $0010
    add hl, bc
    ld b, $00
    call Call_000_3936

jr_003_7471:
    scf
    ret


    call Call_000_3e94

Call_003_7476:
    ld b, $04

jr_003_7478:
    ld a, [hl+]
    and a
    jr z, jr_003_7497

    dec a
    push hl
    push de
    push bc
    ld hl, $4000
    ld bc, $0006
    call Call_000_3a87
    ld de, $cd6d
    ld a, $0e
    call Call_000_009d
    pop bc
    pop de
    pop hl
    ld a, [$cd72]

jr_003_7497:
    inc de
    ld [de], a
    dec b
    jr nz, jr_003_7478

    ret


    ld hl, $d163
    ld a, [hl]
    cp $06
    scf
    ret z

    inc a
    ld [hl], a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [$cf91]
    ld [hl+], a
    ld [hl], $ff
    ld hl, $d16b
    ld a, [$d163]
    dec a
    ld bc, $002c
    call Call_000_3a87
    ld e, l
    ld d, h
    ld hl, $cf98
    call Call_000_00b5
    ld hl, $d273
    ld a, [$d163]
    dec a
    call Call_000_3a7d
    ld d, h
    ld e, l
    ld hl, $d9ac
    ld a, [$cf92]
    call Call_000_3a7d
    ld bc, $000b
    call Call_000_00b5
    ld hl, $d2b5
    ld a, [$d163]
    dec a
    call Call_000_3a7d
    ld d, h
    ld e, l
    ld hl, $d9ee
    ld a, [$cf92]
    call Call_000_3a7d
    ld bc, $000b
    call Call_000_00b5
    ld a, [$cf91]
    ld [$d11e], a
    ld a, $3a
    call Call_000_3e6d
    ld a, [$d11e]
    dec a
    ld c, a
    ld b, $01
    ld hl, $d2f7
    push bc
    call Call_003_7669
    pop bc
    ld hl, $d30a
    call Call_003_7669
    and a
    ret


    ld a, [$cf95]
    and a
    jr z, jr_003_7539

    cp $02
    jr z, jr_003_7539

    cp $03
    ld hl, $da5f
    jr z, jr_003_7575

    ld hl, $da80
    ld a, [hl]
    cp $14
    jr nz, jr_003_7543

    jr jr_003_7541

jr_003_7539:
    ld hl, $d163
    ld a, [hl]
    cp $06
    jr nz, jr_003_7543

jr_003_7541:
    scf
    ret


jr_003_7543:
    inc a
    ld [hl], a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [$cf95]
    cp $02
    ld a, [$da5f]
    jr z, jr_003_7556

    ld a, [$cf91]

jr_003_7556:
    ld [hl+], a
    ld [hl], $ff
    ld a, [$cf95]
    dec a
    ld hl, $d16b
    ld bc, $002c
    ld a, [$d163]
    jr nz, jr_003_7571

    ld hl, $da96
    ld bc, $0021
    ld a, [$da80]

jr_003_7571:
    dec a
    call Call_000_3a87

jr_003_7575:
    push hl
    ld e, l
    ld d, h
    ld a, [$cf95]
    and a
    ld hl, $da96
    ld bc, $0021
    jr z, jr_003_7591

    cp $02
    ld hl, $da5f
    jr z, jr_003_7597

    ld hl, $d16b
    ld bc, $002c

jr_003_7591:
    ld a, [$cf92]
    call Call_000_3a87

jr_003_7597:
    push hl
    push de
    ld bc, $0021
    call Call_000_00b5
    pop de
    pop hl
    ld a, [$cf95]
    and a
    jr z, jr_003_75b4

    cp $02
    jr z, jr_003_75b4

    ld bc, $0021
    add hl, bc
    ld a, [hl]
    inc de
    inc de
    inc de
    ld [de], a

jr_003_75b4:
    ld a, [$cf95]
    cp $03
    ld de, $da54
    jr z, jr_003_75d3

    dec a
    ld hl, $d273
    ld a, [$d163]
    jr nz, jr_003_75cd

    ld hl, $dd2a
    ld a, [$da80]

jr_003_75cd:
    dec a
    call Call_000_3a7d
    ld d, h
    ld e, l

jr_003_75d3:
    ld hl, $dd2a
    ld a, [$cf95]
    and a
    jr z, jr_003_75e6

    ld hl, $da54
    cp $02
    jr z, jr_003_75ec

    ld hl, $d273

jr_003_75e6:
    ld a, [$cf92]
    call Call_000_3a7d

jr_003_75ec:
    ld bc, $000b
    call Call_000_00b5
    ld a, [$cf95]
    cp $03
    ld de, $da49
    jr z, jr_003_7611

    dec a
    ld hl, $d2b5
    ld a, [$d163]
    jr nz, jr_003_760b

    ld hl, $de06
    ld a, [$da80]

jr_003_760b:
    dec a
    call Call_000_3a7d
    ld d, h
    ld e, l

jr_003_7611:
    ld hl, $de06
    ld a, [$cf95]
    and a
    jr z, jr_003_7624

    ld hl, $da49
    cp $02
    jr z, jr_003_762a

    ld hl, $d2b5

jr_003_7624:
    ld a, [$cf92]
    call Call_000_3a7d

jr_003_762a:
    ld bc, $000b
    call Call_000_00b5
    pop hl
    ld a, [$cf95]
    cp $01
    jr z, jr_003_7664

    cp $03
    jr z, jr_003_7664

    push hl
    srl a
    add $02
    ld [$cc49], a
    call Call_000_1372
    ld b, $16
    ld hl, $4f43
    call Call_000_35d6
    ld a, d
    ld [$d127], a
    pop hl
    ld bc, $0021
    add hl, bc
    ld [hl+], a
    ld d, h
    ld e, l
    ld bc, $ffee
    add hl, bc
    ld b, $01
    call Call_000_3936

jr_003_7664:
    and a
    ret


    call Call_000_3e94

Call_003_7669:
    push hl
    push de
    push bc
    ld a, c
    ld d, a
    and $07
    ld e, a
    ld a, d
    srl a
    srl a
    srl a
    add l
    ld l, a
    jr nc, jr_003_767d

    inc h

jr_003_767d:
    inc e
    ld d, $01

jr_003_7680:
    dec e
    jr z, jr_003_7687

    sla d
    jr jr_003_7680

jr_003_7687:
    ld a, b
    and a
    jr z, jr_003_7695

    cp $02
    jr z, jr_003_769d

    ld b, [hl]
    ld a, d
    or b
    ld [hl], a
    jr jr_003_76a0

jr_003_7695:
    ld b, [hl]
    ld a, d
    xor $ff
    and b
    ld [hl], a
    jr jr_003_76a0

jr_003_769d:
    ld b, [hl]
    ld a, d
    and b

jr_003_76a0:
    pop bc
    pop de
    pop hl
    ld c, a
    ret


    ld hl, $d164
    ld de, $d16c

jr_003_76ab:
    ld a, [hl+]
    cp $ff
    jr z, jr_003_7706

    push hl
    push de
    ld hl, $0003
    add hl, de
    xor a
    ld [hl], a
    push de
    ld b, $04

jr_003_76bb:
    ld hl, $0007
    add hl, de
    ld a, [hl]
    and a
    jr z, jr_003_76eb

    dec a
    ld hl, $001c
    add hl, de
    push hl
    push de
    push bc
    ld hl, $4000
    ld bc, $0006
    call Call_000_3a87
    ld de, $cd6d
    ld a, $0e
    call Call_000_009d
    ld a, [$cd72]
    pop bc
    pop de
    pop hl
    inc de
    push bc
    ld b, a
    ld a, [hl]
    and $c0
    add b
    ld [hl], a
    pop bc

jr_003_76eb:
    dec b
    jr nz, jr_003_76bb

    pop de
    ld hl, $0021
    add hl, de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    pop de
    pop hl
    push hl
    ld bc, $002c
    ld h, d
    ld l, e
    add hl, bc
    ld d, h
    ld e, l
    pop hl
    jr jr_003_76ab

jr_003_7706:
    xor a
    ld [$cf92], a
    ld [$d11e], a
    ld a, [$d163]
    ld b, a

jr_003_7711:
    push bc
    call Call_003_6606
    pop bc
    ld hl, $cf92
    inc [hl]
    dec b
    jr nz, jr_003_7711

    ret


    call Call_000_3e94
    xor a
    ldh [$a5], a
    ldh [$a6], a
    ldh [$a7], a
    ld d, $01

jr_003_772a:
    ldh a, [$a2]
    and $f0
    jr nz, jr_003_775b

    inc d
    ldh a, [$a2]
    swap a
    and $f0
    ld b, a
    ldh a, [$a3]
    swap a
    ldh [$a3], a
    and $0f
    or b
    ldh [$a2], a
    ldh a, [$a3]
    and $f0
    ld b, a
    ldh a, [$a4]
    swap a
    ldh [$a4], a
    and $0f
    or b
    ldh [$a3], a
    ldh a, [$a4]
    and $f0
    ldh [$a4], a
    jr jr_003_772a

jr_003_775b:
    push de
    push de
    call Call_003_7800
    pop de
    ld a, b
    swap a
    and $f0
    ldh [$a5], a
    dec d
    jr z, jr_003_77bc

    push de
    call Call_003_77d7
    call Call_003_7800
    pop de
    ldh a, [$a5]
    or b
    ldh [$a5], a
    dec d
    jr z, jr_003_77bc

    push de
    call Call_003_77d7
    call Call_003_7800
    pop de
    ld a, b
    swap a
    and $f0
    ldh [$a6], a
    dec d
    jr z, jr_003_77bc

    push de
    call Call_003_77d7
    call Call_003_7800
    pop de
    ldh a, [$a6]
    or b
    ldh [$a6], a
    dec d
    jr z, jr_003_77bc

    push de
    call Call_003_77d7
    call Call_003_7800
    pop de
    ld a, b
    swap a
    and $f0
    ldh [$a7], a
    dec d
    jr z, jr_003_77bc

    push de
    call Call_003_77d7
    call Call_003_7800
    pop de
    ldh a, [$a7]
    or b
    ldh [$a7], a

jr_003_77bc:
    ldh a, [$a5]
    ldh [$a2], a
    ldh a, [$a6]
    ldh [$a3], a
    ldh a, [$a7]
    ldh [$a4], a
    pop de
    ld a, $06
    sub d
    and a
    ret z

jr_003_77ce:
    push af
    call Call_003_77d7
    pop af
    dec a
    jr nz, jr_003_77ce

    ret


Call_003_77d7:
    ldh a, [$a4]
    swap a
    and $0f
    ld b, a
    ldh a, [$a3]
    swap a
    ldh [$a3], a
    and $f0
    or b
    ldh [$a4], a
    ldh a, [$a3]
    and $0f
    ld b, a
    ldh a, [$a2]
    swap a
    ldh [$a2], a
    and $f0
    or b
    ldh [$a3], a
    ldh a, [$a2]
    and $0f
    ldh [$a2], a
    ret


Call_003_7800:
    ld bc, $0003

jr_003_7803:
    ld de, $ff9f
    ld hl, $ffa2
    push bc
    call Call_000_3a8e
    pop bc
    ret c

    inc b
    ld de, $ffa1
    ld hl, $ffa4
    push bc
    call Call_003_7839
    pop bc
    jr jr_003_7803

    call Call_000_3e94
    and a
    ld b, c

jr_003_7822:
    ld a, [de]
    adc [hl]
    daa
    ld [de], a
    dec de
    dec hl
    dec c
    jr nz, jr_003_7822

    jr nc, jr_003_7835

    ld a, $99
    inc de

jr_003_7830:
    ld [de], a
    inc de
    dec b
    jr nz, jr_003_7830

jr_003_7835:
    ret


    call Call_000_3e94

Call_003_7839:
    and a
    ld b, c

jr_003_783b:
    ld a, [de]
    sbc [hl]
    daa
    ld [de], a
    dec de
    dec hl
    dec c
    jr nz, jr_003_783b

    jr nc, jr_003_784f

    ld a, $00
    inc de

jr_003_7849:
    ld [de], a
    inc de
    dec b
    jr nz, jr_003_7849

    scf

jr_003_784f:
    ret


    call Call_000_3e5c
    ldh a, [$d4]
    ld [$d359], a
    call Call_000_3e5c
    ldh a, [$d3]
    ld [$d35a], a
    ld a, $ff
    ld [$d71b], a
    ld hl, $d163
    call Call_003_78a0
    ld hl, $da80
    call Call_003_78a0
    ld hl, $d31d
    call Call_003_78a0
    ld hl, $d53a
    call Call_003_78a0
    ld hl, $d348
    ld a, $30
    ld [hl-], a
    xor a
    ld [hl+], a
    inc hl
    ld [hl], a
    ld [$cc49], a
    ld hl, $d356
    ld [hl+], a
    ld [hl], a
    ld hl, $d5a4
    ld [hl+], a
    ld [hl], a
    ld hl, $d5f0
    ld bc, $00c8
    call Call_000_36e0
    jp Jump_003_7175


Call_003_78a0:
    xor a
    ld [hl+], a
    dec a
    ld [hl], a
    ret


    call Call_000_3e94
    ld hl, $d31d

jr_003_78ab:
    inc hl
    ld a, [hl+]
    cp $ff
    jr z, jr_003_78b7

    cp b
    jr nz, jr_003_78ab

    ld a, [hl]
    ld b, a
    ret


jr_003_78b7:
    ld b, $00
    ret


    xor a
    ld hl, $ff97
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $cc97
    ld de, $0000

Jump_003_78c8:
    ldh a, [$99]
    ld b, a
    ldh a, [$95]
    call Call_000_3633
    ld d, a
    and a
    jr nz, jr_003_78da

    ldh a, [$98]
    set 0, a
    ldh [$98], a

jr_003_78da:
    ldh a, [$9a]
    ld b, a
    ldh a, [$96]
    call Call_000_3633
    ld e, a
    and a
    jr nz, jr_003_78ec

    ldh a, [$98]
    set 1, a
    ldh [$98], a

jr_003_78ec:
    ldh a, [$98]
    cp $03
    jr z, jr_003_7926

    ld a, e
    cp d
    jr c, jr_003_790a

    ldh a, [$9d]
    bit 1, a
    jr nz, jr_003_7900

    ld d, $c0
    jr jr_003_7902

jr_003_7900:
    ld d, $80

jr_003_7902:
    ldh a, [$9a]
    add $01
    ldh [$9a], a
    jr jr_003_791c

jr_003_790a:
    ldh a, [$9d]
    bit 0, a
    jr nz, jr_003_7914

    ld d, $00
    jr jr_003_7916

jr_003_7914:
    ld d, $40

jr_003_7916:
    ldh a, [$99]
    add $01
    ldh [$99], a

jr_003_791c:
    ld a, d
    ld [hl+], a
    ldh a, [$97]
    inc a
    ldh [$97], a
    jp Jump_003_78c8


jr_003_7926:
    ld [hl], $ff
    ret


    xor a
    ldh [$9d], a
    ld a, [$c104]
    ld d, a
    ld a, [$c106]
    ld e, a
    ld hl, $c100
    ldh a, [$95]
    add l
    add $04
    ld l, a
    jr nc, jr_003_7940

    inc h

jr_003_7940:
    ld a, d
    ld b, a
    ld a, [hl+]
    call Call_000_3633
    jr nc, jr_003_7953

    push hl
    ld hl, $ff9d
    bit 0, [hl]
    set 0, [hl]
    pop hl
    jr jr_003_795c

jr_003_7953:
    push hl
    ld hl, $ff9d
    bit 0, [hl]
    res 0, [hl]
    pop hl

jr_003_795c:
    push hl
    ld hl, $ffe5
    ld [hl+], a
    ld a, $10
    ld [hl+], a
    call Call_000_366b
    ld a, [hl]
    ldh [$95], a
    pop hl
    inc hl
    ld b, e
    ld a, [hl]
    call Call_000_3633
    jr nc, jr_003_797e

    push hl
    ld hl, $ff9d
    bit 1, [hl]
    set 1, [hl]
    pop hl
    jr jr_003_7987

jr_003_797e:
    push hl
    ld hl, $ff9d
    bit 1, [hl]
    res 1, [hl]
    pop hl

jr_003_7987:
    ldh [$e5], a
    ld a, $10
    ldh [$e6], a
    call Call_000_366b
    ldh a, [$e7]
    ldh [$96], a
    ldh a, [$9b]
    and a
    ret z

    ldh a, [$9d]
    cpl
    and $03
    ldh [$9d], a
    ret


    ldh a, [$95]
    ld [$cd37], a
    dec a
    ld de, $ccd3
    ld hl, $cc97
    add l
    ld l, a
    jr nc, jr_003_79b1

    inc h

jr_003_79b1:
    ld a, [hl-]
    call Call_003_79bf
    ld [de], a
    inc de
    ldh a, [$95]
    dec a
    ldh [$95], a
    jr nz, jr_003_79b1

    ret


Call_003_79bf:
    push hl
    ld b, a
    ld hl, $79d2

jr_003_79c4:
    ld a, [hl+]
    cp $ff
    jr z, jr_003_79d0

    cp b
    jr z, jr_003_79cf

    inc hl
    jr jr_003_79c4

jr_003_79cf:
    ld a, [hl]

jr_003_79d0:
    pop hl
    ret


    ld b, b
    ld b, b
    nop
    add b
    add b
    jr nz, @-$3e

    db $10
    rst $38
    ret


    call Call_000_3e94

Call_003_79df:
    push hl
    xor a
    ld hl, $ff96
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld [hl], $30
    call Call_000_38ac
    ld a, d
    and a
    jr z, jr_003_7a0c

    srl d
    rr e
    srl d
    rr e
    ldh a, [$97]
    ld b, a
    ldh a, [$98]
    srl b
    rr a
    srl b
    rr a
    ldh [$98], a
    ld a, b
    ldh [$97], a

jr_003_7a0c:
    ld a, e
    ldh [$99], a
    ld b, $04
    call Call_000_38b9
    ldh a, [$98]
    ld e, a
    pop hl
    and a
    ret nz

    ld e, $01
    ret


    push hl
    ld hl, $ceeb
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    pop hl
    push de
    push bc
    call Call_003_7ad7
    ld a, e
    ld [$cefe], a
    ld a, d
    ld [$cefd], a
    pop bc
    pop de
    call Call_003_7ad1
    ret z

    ld a, $ff
    jr c, jr_003_7a42

    ld a, $01

jr_003_7a42:
    ld [$ceef], a
    call Call_000_3e94
    ld a, [$ceed]
    ld e, a
    ld a, [$ceee]
    ld d, a

jr_003_7a50:
    push de
    ld a, [$ceeb]
    ld c, a
    ld a, [$ceec]
    ld b, a
    call Call_003_7ad1
    jr z, jr_003_7a96

    jr nc, jr_003_7a70

    dec bc
    ld a, c
    ld [$ceed], a
    ld a, b
    ld [$ceee], a
    call Call_003_7b30
    ld a, e
    sub d
    jr jr_003_7a7e

jr_003_7a70:
    inc bc
    ld a, c
    ld [$ceed], a
    ld a, b
    ld [$ceee], a
    call Call_003_7b30
    ld a, d
    sub e

jr_003_7a7e:
    call Call_003_7af5
    and a
    jr z, jr_003_7a87

    call Call_003_7ab1

jr_003_7a87:
    ld a, [$ceed]
    ld [$ceeb], a
    ld a, [$ceee]
    ld [$ceec], a
    pop de
    jr jr_003_7a50

jr_003_7a96:
    pop de
    ld a, e
    ld [$ceeb], a
    ld a, d
    ld [$ceec], a
    or e
    jr z, jr_003_7aa6

    call Call_003_7b30
    ld d, e

jr_003_7aa6:
    call Call_003_7af5
    ld a, $01
    call Call_003_7ab1
    jp Jump_000_3dd7


Call_003_7ab1:
    push hl

jr_003_7ab2:
    push af
    push de
    ld d, $06
    call Call_000_1336
    ld c, $02
    call Call_000_3739
    pop de
    ld a, [$ceef]
    add e
    cp $31
    jr nc, jr_003_7ace

    ld e, a
    pop af
    dec a
    jr nz, jr_003_7ab2

    pop hl
    ret


jr_003_7ace:
    pop af
    pop hl
    ret


Call_003_7ad1:
    ld a, d
    sub b
    ret nz

    ld a, e
    sub c
    ret


Call_003_7ad7:
    ld a, d
    sub b
    jr c, jr_003_7ae4

    jr z, jr_003_7aeb

jr_003_7add:
    ld a, e
    sub c
    ld e, a
    ld a, d
    sbc b
    ld d, a
    ret


jr_003_7ae4:
    ld a, c
    sub e
    ld e, a
    ld a, b
    sbc d
    ld d, a
    ret


jr_003_7aeb:
    ld a, e
    sub c
    jr c, jr_003_7ae4

    jr nz, jr_003_7add

    ld de, $0000
    ret


Call_003_7af5:
    push af
    push de
    ld a, [$cf94]
    and a
    jr z, jr_003_7b2d

    ld a, [$ceeb]
    ld [$cef1], a
    ld a, [$ceec]
    ld [$cef0], a
    push hl
    ldh a, [$f6]
    bit 0, a
    jr z, jr_003_7b15

    ld de, $0009
    jr jr_003_7b18

jr_003_7b15:
    ld de, $0015

jr_003_7b18:
    add hl, de
    push hl
    ld a, $7f
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    pop hl
    ld de, $cef0
    ld bc, $0203
    call Call_000_3c5f
    call Call_000_20af
    pop hl

jr_003_7b2d:
    pop de
    pop af
    ret


Call_003_7b30:
    push hl
    ld hl, $cee9
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
    push hl
    push de
    call Call_003_79df
    ld a, e
    pop de
    pop bc
    push af
    call Call_003_79df
    pop af
    ld d, e
    ld e, a
    pop hl
    ret


    ld a, [$c109]
    cp $04
    jr nz, jr_003_7b7f

    ld a, [$d367]
    ld b, a
    ld a, [$c434]
    ld c, a
    ld hl, $7b8b

jr_003_7b62:
    ld a, [hl+]
    cp $ff
    jr z, jr_003_7b7f

    cp b
    jr nz, jr_003_7b7b

    ld a, [hl+]
    cp c
    jr nz, jr_003_7b7c

    ld a, [hl]
    push af
    call Call_000_3c3c
    pop af
    call Call_000_3ef5
    xor a
    ldh [$db], a
    ret


jr_003_7b7b:
    inc hl

jr_003_7b7c:
    inc hl
    jr jr_003_7b62

jr_003_7b7f:
    ld a, $ff
    ldh [$db], a
    ld b, $14
    ld hl, $6673
    jp Jump_000_35d6


    rla
    jr nc, @+$3c

    ld [$3f3d], sp
    ld [$401e], sp
    inc de
    ld [hl-], a
    ld b, b
    ld bc, $4032
    inc d
    jr z, jr_003_7bdd

    ld [de], a
    ld d, $41
    rlca
    dec e
    ld b, b
    dec b
    dec e
    ld b, b
    inc c
    ld [hl+], a
    ld b, b
    ld [bc], a
    ld d, h
    ld b, d
    ld [bc], a
    ld d, l
    ld b, d
    ld b, $54
    ld b, d
    ld b, $55
    ld b, d
    ld [de], a
    ld d, b
    ld b, d
    ld [de], a
    ld d, d
    ld b, d
    dec c
    ld [hl], $40
    rst $38
    ld [$d921], sp
    ld a, e
    call Call_000_3c49
    ld a, [$d362]
    bit 0, a
    ld hl, $7bde
    jr nz, jr_003_7bd3

    ld hl, $7be3

jr_003_7bd3:
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    ld d, a
    ld d, l
    ld [hl+], a

jr_003_7bdd:
    ld d, b
    rla
    ld h, a
    ld d, l
    ld [hl+], a
    ld d, b
    rla
    sub [hl]
    ld d, l
    ld [hl+], a
    ld d, b
    ld [$0321], sp
    ld a, h
    ld a, [$d367]
    cp $13
    jr nz, jr_003_7bfd

    ld a, [$c420]
    cp $38
    jr nz, jr_003_7bfd

    ld hl, $7c08

jr_003_7bfd:
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    pop bc
    ld d, l
    ld [hl+], a
    ld d, b
    rla
    sbc $55
    ld [hl+], a
    ld d, b
    rla
    ei
    ld d, l
    ld [hl+], a
    ld d, b
    rla
    ld de, $2256
    ld b, $08
    ld a, $01
    ld [$cc3c], a
    ld hl, $d730
    set 6, [hl]
    call Call_000_3dd4
    xor a
    ldh [$b0], a
    inc a
    ldh [$ba], a
    call Call_000_3680
    ld b, $1c
    ld hl, $4e3e
    call Call_000_35d6
    ld hl, $d730
    res 6, [hl]
    ld de, $24d7
    push de
    ldh a, [$b8]
    push af
    jp Jump_000_29e8


    rla
    rra
    ld d, [hl]
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
