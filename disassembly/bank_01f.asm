; Disassembly of "Pokemon Red (UE) [S][!].gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01f", ROMX[$4000], BANK[$1f]

    rst $38
    rst $38
    rst $38
    rlca
    db $fd
    ld b, d
    rlca
    ld bc, $0743
    dec b
    ld b, e
    rlca
    add hl, bc
    ld b, e
    rlca
    dec c
    ld b, e
    rlca
    jr nz, jr_01f_4058

    rlca
    inc h
    ld b, e
    rlca
    dec hl
    ld b, e
    rlca
    cpl
    ld b, e
    rlca
    inc sp
    ld b, e
    rlca
    scf
    ld b, e
    rlca
    dec sp
    ld b, e
    rlca
    ccf
    ld b, e
    rlca
    ld b, e
    ld b, e
    rlca
    ld b, a
    ld b, e
    rlca
    ld c, [hl]
    ld b, e
    rlca
    ld d, l
    ld b, e
    rlca
    ld e, c
    ld b, e
    rlca
    ld e, l
    ld b, e
    add h
    db $fc
    ld c, c
    dec b

Jump_01f_4040:
    dec bc
    ld c, d
    rlca
    ld a, [de]
    ld c, d
    add h
    inc c
    ld c, h
    dec b
    rra
    ld c, h
    rlca
    ld [hl-], a
    ld c, h
    add h
    add c
    ld c, e
    dec b
    sub b
    ld c, e
    rlca
    sbc [hl]
    ld c, e
    add h

jr_01f_4058:
    dec de
    ld c, c
    dec b
    ld a, [hl-]
    ld c, c
    rlca
    ld e, c
    ld c, c
    add h
    jp z, $054c

    jp hl


    ld c, h
    rlca
    ld [$844d], sp
    xor d
    ld c, d
    dec b
    cp l
    ld c, d
    rlca
    rst $08
    ld c, d
    add h
    ld d, h
    ld c, d
    dec b
    ld l, [hl]
    ld c, d
    rlca
    ld l, a
    ld c, d
    add h
    add d
    ld c, d
    dec b
    sub c
    ld c, d
    rlca
    and b
    ld c, d
    add h
    sbc d
    ld c, h
    dec b
    xor l
    ld c, h
    rlca
    ret nz

    ld c, h
    add h
    and h
    ld b, a
    dec b
    pop bc
    ld b, a
    rlca
    ld [c], a
    ld b, a
    add h
    ccf
    ld c, h
    dec b
    ld e, [hl]
    ld c, h
    rlca
    add c
    ld c, h
    add h
    ret nc

Call_01f_40a1:
    ld c, d
    dec b
    ei
    ld c, d
    rlca
    ld a, [de]
    ld c, e
    add h
    inc sp
    ld c, e
    dec b
    ld e, d
    ld c, e
    rlca
    add b
    ld c, e
    add h
    sbc a
    ld c, e
    dec b
    cp [hl]
    ld c, e
    rlca
    db $ed
    ld c, e
    add h
    inc h
    ld c, d
    dec b
    scf
    ld c, d
    rlca
    ld c, d
    ld c, d

Call_01f_40c3:
    add h
    ld h, [hl]
    ld c, c

Call_01f_40c6:
    dec b
    add c
    ld c, c
    rlca
    sbc h
    ld c, c
    add h
    xor h
    ld c, c
    dec b
    rst $08
    ld c, c
    rlca
    ld a, [c]
    ld c, c
    add h
    adc b
    ld c, b
    dec b
    and a
    ld c, b
    rlca
    jp z, $8448

    and b
    ld c, l
    dec b
    or e
    ld c, l

Jump_01f_40e4:
    rlca

Jump_01f_40e5:
    add $4d

Jump_01f_40e7:
    add h
    db $d3
    ld c, l
    dec b
    xor $4d
    rlca
    add hl, bc
    ld c, [hl]
    add h
    inc e
    ld c, [hl]
    dec b
    dec hl
    ld c, [hl]
    rlca
    ld a, [hl-]
    ld c, [hl]
    add h
    xor d
    ld c, [hl]
    dec b
    push bc
    ld c, [hl]
    rlca
    ldh [$4e], a
    add h
    dec a
    ld c, l
    dec b
    ld c, h
    ld c, l
    rlca
    ld e, e
    ld c, l
    add h
    di
    ld c, [hl]
    dec b
    ld b, $4f
    rlca
    add hl, de
    ld c, a
    add h
    inc bc
    ld d, b
    dec b
    ld h, $50
    rlca
    ld c, c
    ld d, b
    add h
    dec de
    ld c, l
    dec b
    ld a, [hl+]
    ld c, l
    rlca
    inc a
    ld c, l
    add h
    ld [hl], h
    ld c, a
    dec b
    adc a
    ld c, a
    rlca
    xor d
    ld c, a
    add h
    ld h, l
    ld c, l
    dec b
    ld a, h
    ld c, l
    rlca
    sub e
    ld c, l
    add h
    ld h, $4f
    dec b
    ld c, c
    ld c, a
    rlca
    ld h, h
    ld c, a
    add h
    cp l
    ld c, a
    dec b
    ret c

    ld c, a
    rlca
    di
    ld c, a
    add h
    ld b, h
    ld c, [hl]
    dec b
    ld h, a
    ld c, [hl]
    rlca
    adc [hl]
    ld c, [hl]
    add h
    ld e, h
    ld d, b
    dec b
    ld l, a
    ld d, b
    rlca
    add d
    ld d, b
    add h
    adc a
    ld d, b
    dec b
    and d
    ld d, b
    rlca
    or l
    ld d, b
    add h
    jp nz, Jump_000_0550

    push hl
    ld d, b
    rlca
    rlca
    ld d, c
    add h
    ld [$0551], sp
    dec de
    ld d, c
    rlca
    ld l, $51
    add h
    ei
    ld b, a
    dec b
    ld [de], a
    ld c, b
    rlca
    dec h
    ld c, b
    add h
    ld [hl-], a
    ld c, b
    dec b
    ld d, l
    ld c, b
    rlca
    ld a, b
    ld c, b
    add h
    ldh [rOBP0], a
    dec b
    rst $30
    ld c, b
    rlca
    ld c, $49
    add h
    ld d, b
    ld l, b
    dec b
    ld h, a
    ld l, b
    ld b, $77
    ld l, b
    add h
    jr z, jr_01f_420c

    dec b
    ld b, a
    ld l, [hl]
    ld b, $5f
    ld l, [hl]

Call_01f_41a4:
    inc b
    di
    ld b, e
    inc b
    sub b
    ld b, h
    inc b
    or d
    ld b, h
    rlca
    jp $0443


    ld c, e

Call_01f_41b2:
    ld b, h
    add h
    jp c, Jump_000_056d

    di
    ld l, l
    ld b, $09
    ld l, [hl]
    add h
    ld [hl], h
    ld l, [hl]
    dec b
    sub e

Call_01f_41c1:
    ld l, [hl]
    ld b, $af
    ld l, [hl]
    inc b
    sbc a
    ld b, h
    inc b
    rst $00
    ld b, h
    inc b
    sub $44
    inc b
    dec b
    ld b, l
    inc b
    jr jr_01f_4219

    inc b
    dec hl
    ld b, l
    inc b
    ld b, [hl]
    ld b, l
    inc b
    ld e, l
    ld b, l
    inc b
    ld [hl], d
    ld b, l
    inc b
    adc l
    ld b, l
    inc b
    xor b
    ld b, l
    inc b
    or e
    ld b, l
    rlca
    cp [hl]
    ld b, l
    rlca
    bit 0, l
    ld b, h
    db $fc
    ld b, l
    dec b
    inc de
    ld b, [hl]
    inc b
    ld h, $46
    rlca
    ld sp, $4446
    ld c, d
    ld b, [hl]
    dec b
    ld l, c
    ld b, [hl]
    inc b
    adc b
    ld b, [hl]
    rlca
    jp z, Jump_000_0743

    jp c, Jump_01f_4443

    pop hl

jr_01f_420c:
    ld b, e
    dec b
    add sp, $43
    ld b, h
    inc b
    ld b, h
    dec b
    dec bc
    ld b, h
    ld b, h
    ld d, $44

jr_01f_4219:
    dec b
    ld hl, $0444
    jr nc, @+$46

    rlca
    dec sp
    ld b, h
    ld b, h
    ld e, [hl]
    ld b, h
    dec b
    ld [hl], l
    ld b, h
    rlca
    and l
    ld b, [hl]
    inc b
    cp [hl]
    ld b, [hl]
    inc b
    ret


    ld b, [hl]
    rlca
    call nc, Call_000_0746
    sbc $46
    rlca
    push hl
    ld b, [hl]
    inc b
    push af
    ld b, [hl]
    inc b
    inc b
    ld b, a
    ld b, h
    rrca
    ld b, a
    dec b
    ld e, $47
    inc b
    dec l
    ld b, a
    ret nz

    ret nz

    ld h, h
    ld bc, $6578
    ld [bc], a
    ld b, e
    ld h, [hl]
    inc bc
    db $eb
    ld h, [hl]
    add b
    rra
    ld a, h
    ld bc, $7d5f
    ld [bc], a
    jp nz, $807e

    xor a
    ld a, e
    ld bc, $7bda
    ld [bc], a
    db $fc
    ld a, e
    add b
    cp c
    ld l, [hl]
    ld bc, $6f05
    ld [bc], a
    ld d, d
    ld l, a
    ld b, b
    ld a, l
    ld a, e
    ld bc, $7b9a
    ret nz

    cp e
    ld e, e
    ld bc, $5c6c
    ld [bc], a
    inc d
    ld e, l
    inc bc
    ld l, b
    ld e, [hl]
    add b
    add hl, de
    ld a, d
    ld bc, $7a9c
    ld [bc], a
    ld a, [$807a]

jr_01f_428c:
    dec bc
    ld h, d
    ld bc, $62df
    ld [bc], a
    adc e
    ld h, e
    ret nz

    ld b, h
    ld a, b
    ld bc, $78bc
    ld [bc], a
    dec e
    ld a, c
    inc bc
    ld e, e
    ld a, c
    ret nz

    pop de
    ld e, [hl]
    ld bc, $5fde
    ld [bc], a
    call c, Call_000_0360
    adc d
    ld h, c
    ret nz

    add a

jr_01f_42ae:
    ld l, b
    ld bc, $68d8
    ld [bc], a

jr_01f_42b3:
    dec sp

jr_01f_42b4:
    ld l, c
    inc bc
    call c, $c069
    pop af
    ld l, c

jr_01f_42bb:
    ld bc, $6b68
    ld [bc], a
    ld a, d
    ld l, h
    inc bc
    db $e4
    ld l, h
    ret nz

    rrca
    ld l, l
    ld bc, $6d40
    ld [bc], a
    ld a, [hl]
    ld l, l
    inc bc
    or b
    ld l, l
    add b
    ld c, d
    ld [hl], b
    ld bc, $70e3
    ld [bc], a
    sbc d
    ld [hl], c
    add b
    ld b, e
    ld [hl], d
    ld bc, $7409
    ld [bc], a
    cp [hl]
    ld [hl], l
    add b

jr_01f_42e3:
    sbc l
    db $76
    ld bc, $76ba

jr_01f_42e8:
    ld [bc], a
    and $76
    add b
    ld sp, hl
    db $76
    ld bc, $771c
    ld [bc], a
    ld c, e
    ld [hl], a
    add b
    ld a, e
    ld [hl], a
    ld bc, $77a2
    ld [bc], a
    jp nc, Jump_000_2077

    pop bc
    inc sp
    rst $38
    jr nz, jr_01f_42b4

    inc sp
    rst $38
    jr nz, @-$5d

    inc sp
    rst $38
    jr nz, jr_01f_428c

    inc sp
    rst $38
    daa
    add h
    scf
    ld h, $84
    ld [hl], $25
    add e
    dec [hl]
    inc h
    add e
    inc [hl]
    inc hl
    add d
    inc sp
    ld [hl+], a
    add c
    ld [hl-], a
    rst $38
    jr nz, jr_01f_4373

    ld a, [hl+]
    rst $38
    ld hl, $2b41
    jr nz, @+$63

    ld a, [hl+]
    rst $38
    jr nz, jr_01f_42ae

    db $10
    rst $38
    jr nz, jr_01f_42b3

    inc hl
    rst $38
    jr nz, @-$7c

    dec h
    rst $38
    jr nz, jr_01f_42bb

    ld h, $ff
    jr nz, @-$5d

    db $10
    rst $38
    jr nz, jr_01f_42e3

    ld de, $20ff
    and d
    ld d, b
    rst $38

Jump_01f_4347:
    jr nz, @-$5d

    jr jr_01f_436b

    ld sp, $ff33
    ld [hl+], a
    sub c
    jr z, jr_01f_4372

    ld [hl], c
    jr @+$01

    jr nz, jr_01f_42e8

    ld [hl+], a
    rst $38
    jr nz, jr_01f_43cc

    ld [hl+], a
    rst $38
    jr nz, jr_01f_43c0

    ld [hl+], a
    rst $38
    ld [hl], e
    ld b, e
    add e
    ld b, e
    sub e
    ld b, e

Jump_01f_4367:
    and e
    ld b, e
    or e
    ld b, e

jr_01f_436b:
    jp $c343


    ld b, e
    jp $c343


jr_01f_4372:
    ld b, e

jr_01f_4373:
    ld [bc], a
    ld b, [hl]
    adc d
    adc $ff
    cp $ed
    call c, $a9cb
    add a
    ld h, l
    ld b, h
    inc sp
    ld [hl+], a
    ld de, $4602
    adc d
    adc $ef
    rst $38
    cp $ee
    db $dd
    res 5, c
    add a
    ld h, l
    ld b, e
    ld [hl+], a
    ld de, $6913
    cp l
    xor $ee
    rst $38
    rst $38
    db $ed
    sbc $ff
    rst $38
    xor $ee
    db $db

jr_01f_43a1:
    sub [hl]
    ld sp, $4602
    adc d
    call $feef

jr_01f_43a9:
    sbc $ff
    xor $dc
    cp d
    sbc b
    db $76

jr_01f_43b0:
    ld d, h
    ld [hl-], a
    db $10
    ld bc, $4523
    ld h, a
    adc d
    call $f7ee
    ld a, a
    xor $dc
    xor b
    db $76

Call_01f_43c0:
jr_01f_43c0:
    ld d, h
    ld [hl-], a

Call_01f_43c2:
    db $10

Jump_01f_43c3:
    ld hl, $33e2

jr_01f_43c6:
    jr z, jr_01f_43a9

    ld [hl+], a

jr_01f_43c9:
    rst $38
    ld [hl+], a
    rst $30

jr_01f_43cc:
    inc h
    ld [hl+], a
    rst $30
    inc [hl]
    inc h
    rst $30
    ld b, h
    jr z, jr_01f_43c9

    ld d, l

Jump_01f_43d6:
    jr z, jr_01f_43c9

    ld b, h
    rst $38
    add hl, hl
    pop af
    ld b, h
    jr z, jr_01f_43b0

    ld b, e

jr_01f_43e0:
    rst $38

jr_01f_43e1:
    db $ec
    ld [bc], a

Jump_01f_43e3:
    jr z, jr_01f_43c6

    ld b, b
    rlca
    rst $38

jr_01f_43e8:
    db $ec
    ld [bc], a
    ld [hl+], a
    ld [$0000], sp
    jr z, jr_01f_43a1

    ld b, c
    rlca
    rst $38
    db $ec
    ld [bc], a
    db $10
    ld a, [hl-]
    inc h
    ld a, [c]
    nop
    ld [bc], a
    db $10
    ld [hl+], a
    jr z, jr_01f_43e1

    nop
    ld [bc], a
    db $10
    ld [$ecff], sp
    ld [bc], a
    inc h
    pop af
    add b
    rlca
    rst $38
    db $ec
    ld [bc], a
    ld hl, $0008

jr_01f_4410:
    nop
    inc h
    and c
    ld h, c
    rlca
    rst $38
    db $ec
    ld [bc], a
    inc h
    pop hl
    nop
    rlca
    jr z, jr_01f_4410

    ldh [rTAC], a
    rst $38
    db $ec
    ld [bc], a
    ld hl, $0008
    nop
    inc h
    sub c
    pop bc
    ld b, $28
    and d
    and c
    rlca
    rst $38
    db $ec
    ld [bc], a
    db $10
    ld e, d
    cpl
    pop af
    nop
    inc bc
    db $10
    ld [$22ff], sp
    pop af
    ld d, h
    inc l
    ld [hl], c
    inc hl
    ld [hl+], a
    or c

Jump_01f_4443:
    ld d, h
    inc l
    ld h, c
    inc hl
    ld h, $41
    ld d, h
    rst $38
    db $ec
    ld [bc], a
    jr nz, jr_01f_43e0

    ret nz

    rlca
    jr nz, @-$7d

    ret nc

    rlca
    jr nz, jr_01f_43e8

    ret nz

    rlca
    inc l
    and c
    ret nc

    rlca
    rst $38
    db $ec
    ld [bc], a
    inc h
    db $f4
    nop
    rlca
    inc hl
    db $e4
    add b
    ld b, $23
    db $e4
    ret nz

    ld b, $23
    db $e4
    nop
    rlca
    ld [hl+], a
    db $e4
    and b
    rlca
    rst $38
    db $ec
    ld [bc], a
    inc h
    ld [$0000], sp
    inc hl
    call nc, $0701
    inc hl
    call nz, $0681
    inc hl
    call nz, Call_000_06c1
    inc hl
    call nz, $0701
    ld [hl+], a
    call nz, $07a1
    rst $38
    db $ec
    ld [bc], a
    db $10
    rla
    cpl
    ldh a, [$f0]
    inc b
    cpl
    ld a, [c]
    ld d, b
    ld b, $10
    ld [$ecff], sp
    nop
    db $10
    inc d
    inc h
    ld a, [c]
    nop
    ld b, $fe
    inc b
    sbc a
    ld b, h
    cpl
    di
    nop
    ld b, $10
    ld [$ecff], sp
    ld [bc], a
    db $10
    inc d
    inc h
    ld a, [c]
    nop
    ld b, $24
    ld a, [c]
    nop
    ld b, $10
    rla
    cpl
    ld a, [c]
    nop
    ld b, $10
    ld [$ecff], sp
    ld [bc], a
    db $10
    dec d
    cpl
    ldh a, [$f0]
    inc b
    cpl
    ld a, [c]
    ld d, b
    ld b, $10
    ld [$ecff], sp
    ld [bc], a
    cpl
    ld a, [c]
    ret nz

    rlca
    cpl
    nop
    nop
    nop
    cpl
    nop
    nop
    nop
    inc hl
    add c
    add b
    rlca
    inc hl
    add c
    nop
    rlca
    inc hl
    add c
    ld b, b
    rlca
    inc hl
    add c
    nop
    rlca
    inc hl
    add c
    add b
    rlca
    inc hl
    add c
    nop
    rlca
    inc hl
    add c
    ret nz

    rlca
    inc hl
    add c
    nop
    rlca
    rst $38
    db $ec
    ld [bc], a
    inc h
    ldh a, [rP1]
    ld b, $24
    ldh a, [rP1]
    inc b
    inc h
    ldh a, [rP1]
    ld [bc], a
    ld hl, $0000
    nop
    rst $38
    db $ec
    ld [bc], a
    inc h
    ldh a, [rP1]
    rlca
    inc h
    nop
    nop
    nop
    inc h
    ldh a, [rP1]
    rlca
    ld hl, $0000
    nop
    rst $38
    db $ec
    ld bc, $1710
    cpl
    rst $10
    nop
    ld b, $2f
    or a
    add b
    dec b
    cpl
    add a
    nop
    dec b
    cpl
    ld b, a
    add b
    inc b
    cpl
    rla
    nop
    inc b
    db $10
    ld [$ecff], sp
    ld [bc], a
    inc h
    nop
    nop
    nop
    ld [hl+], a
    pop af
    add b
    ld b, $21
    nop
    nop
    nop
    inc h
    pop af
    add b
    rlca
    inc h
    nop
    nop
    nop
    rst $38
    db $ec
    ld [bc], a
    db $10
    inc l
    inc h
    ld a, [c]
    nop
    dec b
    db $10
    ld [hl+], a
    ld [hl+], a
    pop af
    nop
    dec b
    db $10
    ld [$0021], sp
    nop
    nop
    rst $38
    db $ec
    ld bc, $1710
    cpl
    rst $10
    nop
    dec b
    cpl
    or a
    add b
    dec b
    cpl
    add a
    nop
    ld b, $2f
    ld b, a
    add b
    ld b, $2f
    rla
    nop
    rlca
    db $10
    ld [$ecff], sp
    ld bc, $1710
    cpl
    rst $10
    nop
    rlca
    cpl
    or a
    add b
    ld b, $2f
    add a
    nop
    ld b, $2f
    ld b, a
    add b

Call_01f_45a0:
    dec b
    cpl
    rla
    nop
    dec b
    db $10
    ld [$ecff], sp
    ld bc, $1610
    cpl
    jp nc, Jump_000_0500

    db $10
    ld [$ecff], sp
    ld [bc], a
    db $10

Call_01f_45b6:
    sub l

Call_01f_45b7:
    cpl
    ld a, [c]
    nop
    inc b
    db $10
    ld [$22ff], sp
    pop af
    ld [hl-], a
    ld [hl+], a
    nop
    nop
    ld [hl+], a
    pop af
    ld [hl+], a
    ld hl, $0000
    rst $38
    ld [hl+], a
    pop af
    ld [de], a
    ld [hl+], a
    nop
    nop
    ld [hl+], a
    and c
    ld [de], a
    ld [hl+], a
    nop
    nop
    ld [hl+], a
    pop de
    ld [de], a
    ld [hl+], a
    nop
    nop
    ld [hl+], a
    add c
    ld [de], a
    ld [hl+], a
    nop
    nop
    ld [hl+], a
    or c
    ld [de], a
    ld [hl+], a
    nop
    nop
    ld [hl+], a
    ld h, c
    ld [de], a
    ld [hl+], a
    nop
    nop
    ld [hl+], a
    sub c
    ld [de], a
    ld [hl+], a
    nop
    nop
    ld [hl+], a
    ld b, c
    ld [de], a
    ld [hl+], a
    nop
    nop
    rst $38
    db $ec
    inc bc
    db $10
    ld e, d
    inc h
    ldh a, [rP1]
    dec b
    db $10
    ld [$0024], sp
    nop
    nop
    cpl
    ldh a, [rP1]
    dec b
    ld hl, $0000
    nop
    rst $38
    db $ec
    inc bc
    inc h
    ldh a, [rSB]
    inc b
    inc h
    nop
    nop
    nop
    cpl
    ldh a, [rSB]
    inc b
    ld hl, $0000
    nop
    rst $38
    db $ec

jr_01f_4627:
    nop
    db $10
    rla
    cpl
    jp nc, Jump_000_0700

    db $10
    ld [$24ff], sp
    and d
    inc hl
    jr z, jr_01f_4627

    inc [hl]
    cpl
    nop

jr_01f_4639:
    nop
    ld [hl+], a
    rst $30
    inc h
    ld [hl+], a
    rst $30
    inc [hl]
    inc h
    rst $30
    ld b, h
    jr z, jr_01f_4639

    ld d, l
    jr z, jr_01f_4639

    ld b, h
    rst $38
    db $ec
    ld [bc], a
    cpl
    ldh a, [rP1]
    dec b
    inc h
    nop
    nop
    nop
    cpl
    ldh a, [rP1]
    dec b
    cpl
    ldh a, [rP1]
    dec b
    cpl
    ldh a, [rP1]
    dec b
    cpl
    ldh a, [rP1]
    dec b
    cpl
    ld a, [c]
    nop
    dec b
    rst $38
    db $ec
    inc bc
    cpl
    ldh a, [$82]
    inc b
    inc h
    nop
    nop
    nop
    cpl
    ldh a, [$82]
    inc b
    cpl
    ldh a, [$82]
    inc b
    cpl
    ldh a, [$82]
    inc b
    cpl
    ldh a, [$82]
    inc b
    cpl
    ld a, [c]
    add d
    inc b
    rst $38
    db $ec
    ld bc, $3a10
    inc h

jr_01f_468d:
    ld a, [c]
    nop
    dec b
    db $10
    ld [hl+], a
    inc h
    ld [c], a
    nop
    dec b
    db $10
    ld a, [hl-]
    inc h
    ld a, [c]
    nop
    rlca
    db $10
    ld [hl+], a
    cpl
    ld [c], a
    nop
    rlca
    db $10
    ld [$26ff], sp
    jr nz, jr_01f_46b8

    ld h, $2f
    ld b, b
    ld h, $4f
    ld b, c
    ld h, $8f
    ld b, c
    ld h, $cf
    ld b, d
    jr z, jr_01f_468d

    ld b, d

Call_01f_46b7:
    cpl

jr_01f_46b8:
    rst $20
    ld b, e
    cpl
    ld a, [c]
    ld b, e
    rst $38
    db $ec
    ld [bc], a
    db $10
    ld h, $2c
    jp nz, Jump_000_0740

    db $10

jr_01f_46c7:
    ld [$ecff], sp
    ld [bc], a
    db $10
    ld h, $2c
    jp nz, Jump_000_0680

    db $10
    ld [$22ff], sp
    ld l, a
    ld hl, $af22
    ld sp, $f22f
    ld b, c
    rst $38
    ld [hl+], a

jr_01f_46df:
    jp nc, Jump_000_2f32

    ld a, [c]

jr_01f_46e3:
    ld b, e
    rst $38
    inc h
    inc l
    jr nz, jr_01f_470c

    and b
    jr nz, jr_01f_470f

    or b
    ld hl, $c023
    ld [hl+], a
    cpl

jr_01f_46f2:
    jp nc, $ff24

    db $ec
    ld [bc], a
    ld hl, $a0f2
    ld b, $21
    ld a, [c]
    ldh [rTMA], a
    jr z, jr_01f_46f2

    nop
    rlca
    rst $38
    db $ec
    ld [bc], a
    ld [hl+], a
    pop af
    nop
    rlca
    jr z, jr_01f_468d

jr_01f_470c:
    ldh [rTAC], a
    rst $38

jr_01f_470f:
    db $ec
    inc bc
    dec h
    pop hl
    nop
    rlca
    ld [hl+], a
    pop hl
    add b
    rlca
    cpl
    pop af
    ret nz

    rlca
    rst $38
    db $ec
    ld [bc], a
    inc h
    pop bc
    pop bc
    ld b, $22
    pop bc
    ld b, c
    rlca
    cpl
    pop de
    add c
    rlca
    rst $38
    db $fc
    db $e4
    db $10
    cpl
    inc h
    ld b, b
    ldh [rTAC], a
    inc h
    ld h, b
    ldh [rTAC], a
    inc h
    add b
    ldh [rTAC], a
    jr z, jr_01f_46df

    ldh [rTAC], a
    jr z, jr_01f_46e3

    ldh [rTAC], a
    jr z, jr_01f_46c7

    ldh [rTAC], a
    jr z, @+$62

    ldh [rTAC], a
    jr z, jr_01f_477f

    ldh [rTAC], a
    cpl
    ld [de], a
    ldh [rTAC], a
    db $10
    ld [$fcff], sp
    ldh a, [$2f]
    ldh [$80], a
    rlca
    cpl
    ldh a, [$84]
    rlca
    cpl
    jp $05e0


    cpl
    call nz, $0600
    ld a, [hl+]
    ld l, h
    add b
    rlca
    jr z, @+$73

    add h
    rlca
    rst $38
    db $fc
    dec b
    cpl
    and b
    ld b, c
    rlca
    cpl
    or b
    ld b, e
    rlca
    cpl
    sub e

jr_01f_477f:
    or c
    dec b
    cpl
    sub h
    pop bc
    dec b
    ld a, [hl+]
    ld c, h
    ld b, c
    rlca
    jr z, jr_01f_47bc

    ld b, [hl]
    rlca
    rst $38
    ld [hl+], a
    ld a, [c]

Call_01f_4790:
    ld c, h
    ld h, $e0
    ld a, [hl-]
    cpl
    ret nc

    ld a, [hl-]
    jr z, @-$2e

    inc l
    ld h, $e6
    ld c, h
    inc l
    ld a, l
    ld c, h

Call_01f_47a0:
    cpl
    db $d3
    ld c, h
    rst $38
    db $fc
    ldh a, [$2f]

Call_01f_47a7:
    rst $30
    and b

jr_01f_47a9:
    rlca
    ld h, $e6
    and e
    rlca
    ld a, [hl+]
    db $f4

Call_01f_47b0:
    and b
    rlca
    db $fc
    and l
    ld a, [hl+]
    or $d8

Call_01f_47b7:
    rlca
    inc h
    db $e3

jr_01f_47ba:
    rst $10
    rlca

jr_01f_47bc:
    cpl
    ld a, [c]
    ret c

    rlca
    rst $38
    db $fc
    dec b
    ld [hl+], a
    ld [$0000], sp
    cpl
    and a
    and c
    ld b, $26
    add [hl]
    and d
    ld b, $2a
    ld [hl], h
    and c
    ld b, $fc
    ld e, a
    ld a, [hl+]

Call_01f_47d6:
    db $76
    sub $06
    inc h
    add e
    reti


    ld b, $2f
    and d
    rst $10
    ld b, $ff
    ld [hl+], a
    ld a, [c]
    inc a
    jr z, @-$1a

    ld a, $2f
    rst $10
    inc a
    ld h, $c5
    dec sp
    ld h, $e4
    dec a

jr_01f_47f1:
    jr z, jr_01f_47a9

    inc a
    ld h, $d4
    dec a
    jr z, jr_01f_47ba

    dec sp
    rst $38
    db $fc
    ldh a, [$2f]
    rst $30
    ret nz

    rlca
    ld h, $e4
    pop bc
    rlca
    ld a, [hl+]
    or $c0
    rlca
    inc h
    db $d3
    jp nz, $2807

    pop bc
    ret nz

    rlca
    rst $38
    db $fc
    ld e, a
    cpl
    sub a
    add c
    rlca
    ld h, $84
    add b
    rlca
    ld a, [hl+]
    sub [hl]
    add c
    rlca
    cpl
    add e
    add c
    rlca
    rst $38
    inc hl
    ld a, [c]
    inc a
    dec l
    and $2c
    cpl
    rst $10
    inc a
    jr z, jr_01f_47f1

    inc l
    rst $38
    db $fc
    ldh a, [$2f]
    rst $30
    add b
    ld b, $2a

jr_01f_4839:
    and $84
    ld b, $2f
    rst $10
    sub b
    ld b, $28
    push de
    sub b
    ld b, $26
    call nz, Call_000_0688
    dec h
    db $d3
    ld [hl], b
    ld b, $24
    db $d3
    ld h, b
    ld b, $28
    pop bc
    ld b, b
    ld b, $ff

jr_01f_4855:
    db $fc
    dec b
    cpl
    or a
    ld b, c
    ld b, $2a
    sub [hl]
    ld b, d
    ld b, $2f
    and a
    ld d, c
    ld b, $28
    and l
    ld d, c
    ld b, $26
    sub h
    ld b, a
    ld b, $25
    and e
    ld sp, $2406
    sub e
    ld [hl+], a
    ld b, $28
    ld [hl], c
    ld bc, $ff06
    cpl
    db $e4
    inc a
    ld a, [hl+]
    rst $00
    ld c, h
    ld a, [hl+]
    rst $00
    inc a
    inc l
    or a
    ld c, h
    cpl
    and d
    ld e, h
    rst $38
    db $fc
    ldh a, [rNR52]
    rst $30
    and b
    rlca
    jr z, @-$18

    and h
    rlca
    inc h
    sub $a0
    rlca
    cpl
    db $d3
    jr nz, @+$09

    jr z, @-$3b

    inc hl
    rlca
    ld [hl+], a
    jp nz, Jump_000_0728

    jr z, jr_01f_4855

    jr nc, jr_01f_48ad

    rst $38
    db $fc
    ld a, [bc]
    inc h

jr_01f_48aa:
    ld [$0000], sp

jr_01f_48ad:
    ld h, $a7
    ld b, c
    rlca
    jr z, jr_01f_4839

    ld b, e
    rlca
    inc h
    db $76
    ld b, c
    rlca
    dec l
    add e
    jp nz, $2706

    ld [hl], e
    pop bc
    ld b, $23
    add d
    call z, $2806
    ld [hl], c
    ret c

    ld b, $ff
    ld [hl+], a
    ld a, [c]
    ld c, h
    ld h, $e6
    ld a, [hl-]
    inc h
    rst $10
    ld a, [hl-]
    ld h, $d6
    inc l
    jr z, @-$19

    inc a
    inc l
    jp nc, $283d

    pop de
    inc l
    rst $38
    db $fc
    and l
    ld h, $f4
    ld b, b
    rlca

jr_01f_48e6:
    cpl
    db $e3
    jr nc, jr_01f_48f1

    inc h
    db $f4
    ld b, b
    rlca
    dec h
    or e
    ld c, b

jr_01f_48f1:
    rlca
    jr z, @-$2d

    ld d, b
    rlca
    rst $38
    db $fc
    ld [hl], a
    ld h, $c3
    ld [de], a
    rlca
    cpl
    or e
    inc b
    rlca
    inc hl
    jp Jump_000_0712


    inc h
    jp Jump_000_0721


    jr z, @-$4d

    ld [hl-], a
    rlca
    rst $38
    jr z, jr_01f_48e6

    inc l
    inc l
    add $3c
    ld a, [hl+]
    or [hl]
    inc l

jr_01f_4917:
    jr z, jr_01f_48aa

    inc e
    rst $38
    db $fc
    ldh a, [rNR50]
    rst $30
    ld [$2606], sp
    and $00
    ld b, $26
    rst $10
    ldh a, [rTIMA]
    ld h, $c4
    ldh [rTIMA], a
    dec h
    db $d3
    ret nz

    dec b
    inc h
    db $d3
    and b
    dec b
    jr z, @-$1d

    add b
    dec b
    rst $38
    db $fc
    ld a, [bc]
    inc h
    rst $00
    inc b
    dec b
    ld h, $a6
    ld [bc], a
    dec b
    ld h, $97
    pop af
    inc b
    inc h
    or h
    pop hl
    inc b
    dec h
    and e
    jp nz, $2404

    or e
    and e
    inc b
    jr z, jr_01f_4917

    add d
    inc b
    rst $38
    inc l
    db $e4
    ld c, h
    ld a, [hl+]
    rst $00

jr_01f_495e:
    ld e, h
    inc l
    or [hl]
    ld c, h
    cpl
    and d
    ld e, h
    rst $38
    db $fc
    pop af
    inc h
    rst $30
    ret nz

    rlca
    inc l
    and $c2
    rlca
    ld h, $b5
    add b
    ld b, $24
    call nz, Call_000_0670
    inc h
    or l
    ld h, b
    ld b, $28
    pop bc
    ld b, b
    ld b, $ff
    db $fc
    call z, $c723
    add c
    rlca
    inc l
    or [hl]
    add b
    rlca
    ld h, $a5
    ld b, c
    ld b, $24
    call nz, Call_000_0632
    ld h, $b5
    ld hl, $2806
    and c

jr_01f_4999:
    ld [bc], a
    ld b, $ff
    inc hl
    db $e4
    inc a
    inc l
    sub $2c
    inc h

jr_01f_49a3:
    db $e4
    inc a
    jr z, jr_01f_495e

jr_01f_49a7:
    ld e, h
    cpl
    jp nz, $ff5d

    db $fc
    ret


    jr z, jr_01f_49a7

    add b
    ld b, $22
    rst $30
    ld h, b
    ld b, $21
    rst $20
    ld b, b
    ld b, $21
    rst $20
    jr nz, jr_01f_49c4

    cpl
    pop de
    nop
    ld b, $24
    rst $00

jr_01f_49c4:
    ld b, b
    rlca
    inc h
    and a
    jr nc, jr_01f_49d1

    cpl
    sub c
    jr nz, @+$09

    rst $38
    db $fc
    ld a, c

jr_01f_49d1:
    ld a, [hl+]
    rst $20
    add d
    ld b, $22
    rst $20
    ld h, d
    ld b, $21
    rst $10
    ld b, d
    ld b, $21
    rst $10
    ld [hl+], a
    ld b, $2f
    pop bc
    ld [bc], a
    ld b, $24
    or a
    ld b, d
    rlca
    ld [hl+], a
    sub a
    ld [hl-], a
    rlca
    cpl
    add c
    ld [hl+], a
    rlca
    rst $38
    inc h
    ld [hl], h
    ld hl, $7424
    db $10
    inc h
    ld [hl], c
    jr nz, @+$01

    db $fc
    push af
    inc h
    di
    jr jr_01f_4a09

    cpl
    push hl
    sbc b
    rlca
    jr z, jr_01f_4999

    ld e, b

jr_01f_4a09:
    rlca
    rst $38
    db $fc
    and b
    dec h
    or e
    ld [$2f07], sp
    push bc
    adc b
    rlca

jr_01f_4a15:
    jr z, jr_01f_4a88

    ld c, b
    rlca
    rst $38
    inc hl
    and c
    inc e
    ld l, $94
    inc l
    jr z, jr_01f_49a3

    inc e
    rst $38
    db $fc
    and l
    inc h
    pop hl
    nop
    rlca
    inc h
    ld a, [c]
    add b
    rlca
    ld [hl+], a
    sub d
    ld b, b
    rlca
    jr z, jr_01f_4a15

    nop
    ld b, $ff
    db $fc
    ld a, [bc]
    inc h
    or c
    pop hl
    ld b, $23
    jp nz, $06e1

    inc hl
    ld h, d
    add c
    ld b, $28
    or c
    pop hl
    dec b
    rst $38
    ld [hl+], a
    ld h, c
    ld [hl-], a
    ld [hl+], a

jr_01f_4a4e:
    ld h, c
    ld hl, $6128
    ld de, $fcff
    ld a, [$8326]
    ld b, a

jr_01f_4a59:
    ld [bc], a
    cpl

jr_01f_4a5b:
    ld h, d
    ld h, $02

jr_01f_4a5e:
    inc h
    ld d, d
    ld b, l
    ld [bc], a
    add hl, hl
    ld h, e
    ld b, $02
    cpl
    add d
    dec h
    ld [bc], a
    cpl
    ld b, d
    rlca
    ld [bc], a
    rst $38
    jr z, @-$2a

    adc h
    inc h
    ld [c], a
    sbc h
    cpl
    add $8c
    jr z, jr_01f_4a5e

    xor h
    cpl
    rst $10
    sbc h
    cpl
    ld a, [c]
    xor h
    rst $38
    db $fc
    ldh a, [rNR50]
    di
    ldh [rTMA], a

jr_01f_4a88:
    cpl
    db $e4
    ld b, b
    ld b, $28
    pop bc
    jr nz, @+$08

    rst $38
    db $fc
    ld a, [bc]
    inc hl
    jp Jump_000_0683


    ld l, $b4
    ld [bc], a
    ld b, $28
    and c
    ld bc, $ff06
    inc h
    db $d3
    ld e, h
    cpl
    and $4c
    jr z, jr_01f_4a59

    ld e, h

jr_01f_4aa9:
    rst $38
    db $fc
    ld a, [bc]
    ld h, $e2
    nop
    dec b
    ld h, $e3
    add b
    dec b
    ld h, $d3
    ld [hl], b
    dec b
    jr z, jr_01f_4a5b

    ld h, b
    dec b
    rst $38
    db $fc
    push af
    ld h, $e2
    add d
    inc b
    ld h, $d3
    ld bc, $2605
    or d
    ld [c], a
    inc b
    jr z, jr_01f_4a4e

    pop bc
    inc b
    rst $38
    db $fc
    call z, $f124
    nop
    rlca
    inc h
    pop hl
    add b
    rlca
    inc h
    pop de
    ld b, b
    rlca
    inc h
    pop hl
    ld b, b
    rlca
    inc h
    pop af
    add b
    rlca
    inc h
    pop de

jr_01f_4ae8:
    nop
    rlca
    inc h
    pop af
    ld bc, $2407
    pop de
    add d
    rlca
    inc h
    pop bc
    ld b, d
    rlca
    jr z, jr_01f_4aa9

    ld b, c
    rlca
    rst $38
    db $fc
    ld b, h
    inc l
    ld [$0000], sp
    inc h
    pop af
    ld bc, $2407
    pop hl
    add d
    rlca
    inc h
    pop de
    ld b, c
    rlca
    inc h
    pop hl

jr_01f_4b0f:
    ld b, c
    rlca
    inc h
    pop af
    add d
    rlca
    jr z, jr_01f_4ae8

    ld bc, $ff07
    cpl
    ld [$2400], sp
    ld [$2400], sp
    pop de
    ld c, h
    inc h
    or c
    inc l
    inc h
    pop de
    inc a
    inc h
    or c
    inc a
    inc h
    pop bc
    inc l
    jr z, @-$5d

    ld c, h
    rst $38
    db $fc
    call z, $f528
    nop
    ld b, $22
    jp nc, $0638

    ld [hl+], a
    jp nz, $0630

    ld [hl+], a
    jp nz, Jump_000_0628

    ld [hl+], a
    or d
    jr nz, jr_01f_4b4f

    ld [hl+], a
    or d
    db $10
    ld b, $22
    and d

jr_01f_4b4f:
    jr jr_01f_4b57

    ld [hl+], a
    or d
    db $10
    ld b, $28
    pop bc

jr_01f_4b57:
    jr nz, @+$08

    rst $38
    db $fc
    ld b, h
    inc l
    jp $05c0


    inc hl
    or c
    ld sp, hl
    dec b
    ld [hl+], a
    and c
    pop af
    dec b
    ld [hl+], a
    and c
    jp hl


    dec b
    ld [hl+], a
    sub c
    pop hl
    dec b
    ld [hl+], a
    sub c
    reti


    dec b
    ld [hl+], a
    add c
    pop de
    dec b
    ld [hl+], a
    sub c

jr_01f_4b7a:
    reti


    dec b
    jr z, jr_01f_4b0f

    pop hl
    dec b
    rst $38
    db $ec
    nop
    jr z, jr_01f_4b7a

    add b
    inc b
    ld [hl+], a
    pop hl
    ldh [rTIMA], a
    jr z, @-$2d

    call c, $ff05
    db $fc
    and l
    daa
    sub l
    ld b, c
    inc b
    ld [hl+], a
    add c
    ld hl, $2805
    ld h, c
    ld a, [de]
    dec b
    rst $38
    db $fc
    adc b
    dec h
    ld a, [c]
    ld d, b
    ld b, $29
    pop de
    ld h, b
    ld b, $25
    ld [c], a
    ld [de], a
    ld b, $29
    pop bc
    ld [hl+], a
    ld b, $25
    ld a, [c]
    db $10
    ld b, $26
    pop de

Call_01f_4bb7:
jr_01f_4bb7:
    jr nz, jr_01f_4bbf

    cp $02
    sbc a
    ld c, e
    rst $38
    db $fc

jr_01f_4bbf:
    ld b, b
    inc h
    ld [$0000], sp
    dec h
    ld a, [c]
    ld d, c
    ld b, $29
    pop de
    ld h, c
    ld b, $25
    ld [c], a
    inc d
    ld b, $28
    pop bc
    inc h
    ld b, $25
    ld a, [c]
    ld de, $2c06
    pop de
    ld hl, $2506
    ld [c], a
    inc d
    ld b, $28
    pop bc
    inc h
    ld b, $25
    ld a, [c]
    ld de, $2406
    pop de
    ld hl, $ff06

jr_01f_4bed:
    ld h, $d2
    inc e
    add hl, hl
    or c
    inc l
    jr z, jr_01f_4bb7

    inc l
    add hl, hl
    or c
    inc a
    ld h, $c2
    inc l
    add hl, hl
    and d
    inc a
    daa
    jp nz, Jump_000_252c

    and c
    inc a
    add hl, hl
    jp nz, Jump_000_242c

    and c
    inc a
    rst $38
    db $fc

jr_01f_4c0d:
    and b
    inc h
    di
    nop
    ld b, $28
    push de
    ld h, b
    rlca
    inc hl
    ld [c], a
    jr nz, jr_01f_4c21

    jr z, jr_01f_4bed

    db $10
    rlca
    rst $38
    db $fc
    ld e, d

jr_01f_4c21:
    dec h
    or e
    pop af
    ld b, $27
    push bc
    ld d, d
    rlca

jr_01f_4c29:
    inc hl
    and d
    ld de, $2807
    or c
    ld bc, $ff06
    inc hl
    and d
    inc a
    inc l
    sub h
    inc l
    inc hl
    add d
    inc e
    jr z, jr_01f_4cae

    inc l
    rst $38
    db $fc
    ldh a, [$28]
    rst $30
    ldh [rTMA], a
    ld h, $e6
    push hl
    ld b, $23
    db $f4
    ldh [rTMA], a
    inc hl
    or $d0
    ld b, $23
    db $e3
    ret nz

    ld b, $24
    ld a, [c]
    or b
    ld b, $2f
    and d
    ret z

    ld b, $ff
    db $fc
    dec b
    inc hl
    ld [$0000], sp
    jr z, jr_01f_4c0d

    and c
    ld b, $26
    add [hl]

jr_01f_4c6a:
    and e
    ld b, $23
    ld [hl], h
    and c
    ld b, $23
    db $76
    sub c
    ld b, $23
    add e
    add d
    ld b, $24
    and d
    ld [hl], c
    ld b, $2f
    ld [hl], d
    adc c
    ld b, $ff
    ld [hl+], a
    ld a, [c]
    inc a
    jr z, jr_01f_4c6a

    ld a, $28
    rst $10
    inc a
    dec h
    push bc
    dec sp
    inc hl
    call nc, $222c
    or [hl]
    inc a
    inc hl
    and h
    inc l
    jr z, jr_01f_4c29

    inc a
    rst $38
    db $fc
    ldh a, [$2f]
    or $65
    dec b
    ld a, [hl+]

jr_01f_4ca1:
    db $e4
    ld a, h
    dec b
    inc hl
    jp nz, $055c

    cpl
    or d
    inc a
    dec b
    rst $38
    db $fc

jr_01f_4cae:
    ld e, d
    ld l, $d6
    inc bc
    dec b
    add hl, hl
    or h
    dec de
    dec b
    inc h
    sub d
    ld a, [$2f04]
    and d
    db $db
    inc b
    rst $38
    inc l
    and $4c
    dec hl
    rst $10
    ld e, h
    cpl
    jp nz, $ff4c

    db $fc
    ldh a, [rNR50]
    rst $30
    and b
    ld b, $28
    and $a4
    ld b, $24
    sub $a0
    ld b, $2c
    db $d3
    jr nz, @+$08

    jr z, jr_01f_4ca1

    inc h
    ld b, $24
    jp nz, Jump_000_0620

    jr z, @-$4d

    db $10
    ld b, $ff
    db $fc
    ld e, d
    inc h
    rst $20
    ld bc, $2806
    sub $03
    ld b, $24
    add $01
    ld b, $2c
    jp Jump_000_0581


    jr z, @-$4b

    add e
    dec b
    inc h
    or d
    add d
    dec b
    jr z, @-$5d

    ld [hl], c
    dec b
    rst $38
    daa
    sub $5c
    jr z, @-$18

    ld c, h
    inc h
    call nc, Call_000_245c
    call nc, Call_000_274c
    jp $284c


    and c
    ld e, h
    rst $38
    db $fc
    dec de
    daa
    jp nc, Jump_000_0740

    cpl
    push hl
    ld h, b
    rlca
    cpl
    pop bc
    jr nc, jr_01f_4d30

    rst $38
    db $fc
    add c
    ld [hl+], a
    jp nz, $0701

jr_01f_4d30:
    inc h
    jp nz, $0708

    cpl
    rst $10
    ld b, c
    rlca
    cpl
    and d
    ld bc, $ff07
    db $fc
    ldh a, [$2f]
    rst $10
    add b
    rlca
    inc h
    and $a0
    rlca
    cpl
    jp nc, Jump_000_0740

    rst $38
    db $fc
    ld e, d
    cpl
    rst $00
    ld d, e

jr_01f_4d51:
    rlca
    dec h
    or [hl]
    ld [hl], d
    rlca
    cpl
    jp nz, $0711

    rst $38
    dec l
    or $4c
    inc h
    and $3c
    cpl
    ld a, [c]
    ld c, h
    rst $38
    db $fc
    ldh a, [rNR52]
    rst $30
    ret nz

    ld b, $2f
    rst $20
    nop
    rlca
    inc h
    db $f4
    ldh a, [rTMA]
    inc h

jr_01f_4d74:
    db $e4
    ldh [rTMA], a
    jr z, @-$2d

    ret nc

    ld b, $ff
    db $fc
    ld a, [bc]
    daa
    and $81

jr_01f_4d81:
    ld b, $2e
    push de
    pop bc
    ld b, $24
    call nz, Call_000_06b1
    inc h
    call nc, $06a1
    jr z, jr_01f_4d51

jr_01f_4d90:
    sub c
    ld b, $ff
    ld a, [hl+]
    and [hl]
    inc a
    ld l, $94
    inc l
    dec h
    and e
    inc a

jr_01f_4d9c:
    jr z, @-$6d

    inc l
    rst $38
    db $fc
    and l
    inc l
    ld a, [c]
    ld b, b
    inc b
    cpl
    db $e3
    and b
    inc b
    inc h
    jp nc, Jump_000_0490

    jr z, jr_01f_4d81

    add b
    inc b
    rst $38
    db $fc
    xor $2b
    jp nc, Jump_000_0438

    ld l, $c6

jr_01f_4dbb:
    sbc b
    inc b
    inc hl

jr_01f_4dbe:
    or d
    adc b
    inc b
    jr z, jr_01f_4d74

    ld a, b
    inc b
    rst $38
    ld a, [hl+]
    and $6c
    cpl

jr_01f_4dca:
    jp nc, Jump_000_235c

    jp nz, Jump_000_286c

    pop de
    ld e, h
    rst $38
    db $fc
    inc sp
    cpl
    or $c0

jr_01f_4dd8:
    dec b
    jr z, jr_01f_4dbe

    cp h
    dec b
    ld h, $d2
    ret nc

    dec b
    ld h, $b2
    ldh [rTIMA], a
    ld h, $c2
    ldh a, [rTIMA]
    jr z, jr_01f_4d9c

    nop
    ld b, $ff
    db $fc
    sbc c
    ld l, $c6
    or c
    inc b
    daa
    jp $04ad


    dec h

jr_01f_4df9:
    or d
    pop bc
    inc b
    jr z, jr_01f_4d90

    pop de
    inc b
    ld h, $a2
    pop hl
    inc b
    jr z, @-$6d

    pop af
    inc b
    rst $38
    ld a, [hl+]
    and $5c

jr_01f_4e0c:
    ld a, [hl+]
    sub $6c
    inc h
    jp nz, $264c

jr_01f_4e13:
    db $d3
    ld e, h
    jr z, jr_01f_4dca

    ld c, h
    jr z, jr_01f_4dbb

    ld e, h
    rst $38
    db $fc
    ldh a, [$28]
    db $e4

jr_01f_4e20:
    sub b
    rlca
    cpl
    push af
    ret nz

    rlca
    jr z, jr_01f_4df9

    ret c

jr_01f_4e29:
    rlca
    rst $38
    db $fc
    and l
    ld a, [hl+]
    call nz, $0771
    cpl
    or [hl]
    and d
    rlca
    jr z, jr_01f_4dd8

    or a
    rlca
    rst $38
    jr z, jr_01f_4e20

    ld c, h
    ld l, $c4
    inc a
    jr z, jr_01f_4e13

    inc l
    rst $38
    db $fc
    ldh a, [rNR52]
    ld a, [c]
    nop
    ld b, $26
    ld [c], a
    ld b, b
    ld b, $26
    jp nc, Jump_000_0680

    ld h, $e2
    ret nz

    ld b, $26
    jp nc, Jump_000_0700

    ld h, $c2
    ld b, b
    rlca
    ld h, $b2
    add b
    rlca
    jr z, @-$5d

    ret nz

    rlca
    rst $38
    db $fc
    ld de, $0823
    ld bc, $2600
    jp nz, Jump_000_05c1

    ld h, $b2
    ld [bc], a
    ld b, $26
    and d
    ld b, c
    ld b, $26
    or d
    add d
    ld b, $26
    and d
    jp nz, $2606

    sub d

jr_01f_4e83:
    ld bc, $2607
    and d
    ld b, d
    rlca

jr_01f_4e89:
    jr z, jr_01f_4e0c

    add c
    rlca
    rst $38
    ld h, $08
    ld bc, $e225
    ld e, h
    dec h
    jp nz, Jump_000_254c

    jp nc, Jump_000_253c

    or d
    inc l
    dec h
    jp nz, $251c

    and d

jr_01f_4ea2:
    dec de
    dec h
    sub d
    ld a, [de]
    jr z, jr_01f_4e29

    jr @+$01

    db $fc
    ldh a, [rNR50]
    di
    add b
    rlca
    cpl
    rst $20
    nop
    rlca
    jr z, jr_01f_4e89

    db $10
    rlca
    inc h
    jp nz, Jump_000_0700

    inc h
    jp nc, Jump_000_06f0

    jr z, jr_01f_4e83

    ldh [rTMA], a
    rst $38
    db $fc
    ld e, d
    ld h, $c3
    ld bc, $2e07
    or a
    add c
    ld b, $27
    or e
    sub d
    ld b, $23
    and d
    add c
    ld b, $24
    or d
    ld [hl], d
    ld b, $28
    and c
    ld h, c
    ld b, $ff
    ld h, $e3
    ld e, h
    ld l, $d6
    ld c, h
    ld h, $c6
    inc a
    inc hl
    or e
    ld c, h
    inc hl
    and d
    ld e, h
    jr z, jr_01f_4ea2

    ld l, h
    rst $38
    db $fc
    rrca
    cpl
    rst $30
    nop
    dec b
    cpl
    rst $20
    ld [$2805], sp
    or h
    add b
    inc b
    cpl
    and d
    ld h, b
    inc b
    rst $38
    db $fc
    ld b, h
    ld l, $d7
    add c
    inc b
    ld l, $c7
    adc c
    inc b
    ld a, [hl+]
    or h
    ld bc, $2f04
    jp nz, Jump_000_03e1

    rst $38
    ld l, $f7
    ld a, h
    inc l
    or $6c
    add hl, hl
    db $e4
    ld a, h
    cpl
    ld [c], a
    ld l, h
    rst $38
    db $fc
    push af
    daa
    sub $e1
    rlca
    ld h, $c6
    ld [c], a
    rlca
    add hl, hl
    sub $e1

jr_01f_4f33:
    rlca
    daa
    add $e0
    rlca

jr_01f_4f38:
    dec h
    or [hl]
    ld [c], a
    rlca
    daa
    add $e1
    rlca
    ld h, $b6
    ldh [rTAC], a
    jr z, @-$5d

    rst $18
    rlca
    rst $38
    db $fc
    ld b, h
    ld h, $c3
    ret


    rlca
    ld h, $b3
    rst $00
    rlca
    ld a, [hl+]
    call nz, $07c3
    jr z, @-$4a

    rst $00
    rlca
    ld h, $c3

jr_01f_4f5d:
    ret


    rlca
    cpl
    and d
    push bc
    rlca
    rst $38
    dec l
    add hl, de
    ld a, h
    dec l
    rst $30
    adc h
    inc l
    sub $7c
    jr z, jr_01f_4f33

    ld l, h
    cpl
    or e
    ld e, h
    rst $38
    db $fc
    ldh a, [rNR52]
    rst $30
    ld b, b
    rlca
    inc l
    and $44
    rlca
    ld h, $d5
    ld d, b
    rlca
    inc h
    jp $0760


    inc hl
    jp $0780


    jr z, jr_01f_4f5d

jr_01f_4f8c:
    and b
    rlca
    rst $38
    db $fc
    ld a, [bc]
    ld h, $c7
    ld bc, $2b07
    or [hl]
    ld [bc], a
    rlca
    ld h, $a5
    ld de, $2407
    sub e
    ld hl, $2307
    and e
    ld b, c
    rlca
    jr z, jr_01f_4f38

    ld h, d
    rlca
    rst $38
    inc hl
    ld [c], a
    inc a
    jr z, @-$28

    ld c, h
    dec h
    call nc, Call_000_2c3c
    rst $00
    ld c, h
    ld [hl+], a
    ld [c], a
    inc a
    jr z, jr_01f_4f8c

    inc l
    rst $38
    db $fc
    db $f4
    cpl
    ldh a, [rTIMA]
    rlca
    ld a, [hl+]
    ldh [rP1], a
    rlca
    ld h, $b4
    db $10
    rlca
    inc h
    db $d3
    nop
    rlca
    ld h, $b2
    jr nz, jr_01f_4fd9

    jr z, @-$5d

    inc h
    ld b, $ff
    db $fc

jr_01f_4fd9:
    ld [hl+], a
    cpl
    or b
    jp Jump_000_2a06


    and b
    pop bc
    ld b, $26
    add h

jr_01f_4fe4:
    jp nc, $2406

    sub e
    pop bc
    ld b, $26
    add d
    pop hl
    dec b
    jr z, @+$63

    add sp, $05
    rst $38
    ld h, $e6
    ld c, h
    cpl

jr_01f_4ff7:
    sub $3c
    ld a, [hl+]
    push bc
    ld c, d
    ld hl, $5bb2
    cpl
    jp nz, $ff4c

    db $fc
    ld d, b
    ld a, [hl+]
    push af
    add b
    ld b, $23
    ld [c], a
    and b
    ld b, $23
    ld a, [c]
    ret nz

    ld b, $23
    ld [c], a
    ldh [rTMA], a
    inc hl
    jp nc, Jump_000_0700

    inc hl
    jp nz, Jump_000_06e0

    inc hl
    jp nc, Jump_000_06c0

    jr z, jr_01f_4fe4

    and b
    ld b, $ff
    db $fc
    rrca
    add hl, hl
    push de
    ld sp, $2306

jr_01f_502d:
    jp nc, Jump_000_0652

    inc hl
    ld [c], a
    ld [hl], c
    ld b, $23
    or d
    sub c
    ld b, $23
    jp nz, $06b2

    inc hl
    or d

jr_01f_503e:
    sub c
    ld b, $23
    jp nz, $0671

    jr z, jr_01f_4ff7

    ld d, c
    ld b, $ff
    ld h, $e3
    ld c, h
    inc h
    jp Jump_000_253c


jr_01f_5050:
    call nc, Call_000_243c
    call nz, Call_000_262c
    or h
    inc a
    jr z, @-$3d

    inc l
    rst $38

jr_01f_505c:
    db $fc
    and l
    inc hl
    db $f4
    ld b, c
    ld b, $2d
    sub $21
    rlca
    jr z, jr_01f_505c

    add hl, de
    rlca
    jr z, jr_01f_502d

    ld a, [de]
    rlca
    rst $38
    db $fc
    call z, $f424

jr_01f_5073:
    add b
    dec b
    ld l, $e6
    ldh [rTMA], a
    jr z, jr_01f_5050

    ret c

    ld b, $28
    pop de
    call c, $ff06
    dec h
    call nz, Call_000_2d46
    and l
    ld b, h
    jr z, @-$3a

    ld b, l
    jr z, jr_01f_503e

    ld b, h
    rst $38
    db $fc
    ldh a, [$2d]
    pop af
    ld de, $2d05
    pop hl
    dec d
    dec b
    dec l
    pop hl
    ld de, $2805
    pop de
    ld de, $ff05
    db $fc
    dec d
    inc l
    pop hl
    inc c

jr_01f_50a7:
    dec b
    inc l

jr_01f_50a9:
    pop de
    db $10
    dec b
    ld l, $c1
    inc c
    dec b
    jr z, jr_01f_5073

    ld a, [bc]

jr_01f_50b3:
    dec b
    rst $38
    ld l, $f2
    ld h, l
    dec l
    ld [c], a

jr_01f_50ba:
    ld d, l
    ld l, $d2
    ld d, [hl]
    jr z, @-$2d

    ld h, [hl]
    rst $38
    db $fc
    dec de
    inc hl
    di

jr_01f_50c6:
    ld h, h
    dec b
    ld [hl+], a
    ld [c], a

jr_01f_50ca:
    ld b, h
    dec b
    dec h
    pop de
    ld [hl+], a
    dec b
    ld [hl+], a
    or d
    add h
    inc b
    jr z, jr_01f_50a7

    and d
    inc b
    inc hl
    di
    inc h
    dec b
    inc h
    db $e4
    db $e4
    inc b
    jr z, jr_01f_50b3

    ld [bc], a
    dec b
    rst $38
    db $fc
    call z, $d323
    ld h, b
    dec b
    ld [hl+], a
    jp nz, Jump_000_0540

    dec h
    pop bc
    jr nz, @+$07

    ld [hl+], a
    sub d
    add b
    inc b
    jr z, jr_01f_50ba

    and b
    inc b
    inc hl
    db $d3
    jr nz, @+$07

    inc hl
    call nz, $04e0
    jr z, jr_01f_50c6

    nop
    dec b
    rst $38
    db $fc
    ld de, $3d22
    add c
    inc bc
    daa
    push af
    ld bc, $2106
    jp nz, $0481

    jr z, jr_01f_50a9

    add c
    inc bc
    rst $38
    db $fc
    xor $22
    ld a, $b0
    dec b
    daa
    push de
    ld e, l
    rlca
    ld hl, $b0b2
    ld b, $28
    ld h, c
    or b
    dec b
    rst $38
    ld [hl+], a
    sub d
    ld c, c
    daa
    or l
    add hl, hl
    ld hl, $39a2
    jr z, jr_01f_50ca

    ld c, c
    rst $38
    ldh a, [$dc]
    ld c, $00
    ld hl, $5170

jr_01f_5142:
    cp [hl]
    jr c, jr_01f_5149

    inc c
    inc hl
    jr jr_01f_5142

jr_01f_5149:
    push bc
    ld a, $ff
    ld [$c0ee], a
    call Call_000_3740
    pop bc
    ld b, $00
    ld hl, $5162
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld c, [hl]
    call Call_000_23a1
    jp Jump_000_2307


    and l
    rra
    sub c
    ld [bc], a
    add [hl]
    ld [bc], a
    sbc d
    ld [$0886], sp
    sub h
    ld [bc], a
    adc c
    ld [bc], a
    ld a, [bc]
    jr z, @+$3e

    ld e, d
    ld a, b
    sub [hl]
    rst $38
    ld c, $00

jr_01f_5179:
    ld b, $00
    ld hl, $c026
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_01f_51a5

    ld a, c
    cp $04
    jr nc, jr_01f_51a2

    ld a, [$c002]
    and a
    jr z, jr_01f_51a2

    bit 7, a
    jr nz, jr_01f_51a5

    set 7, a
    ld [$c002], a
    xor a
    ldh [rNR51], a
    ldh [rNR30], a
    ld a, $80
    ldh [rNR30], a
    jr jr_01f_51a5

jr_01f_51a2:
    call Call_01f_51ac

jr_01f_51a5:
    ld a, c

Call_01f_51a6:
    inc c
    cp $07
    jr nz, jr_01f_5179

    ret


Call_01f_51ac:
    ld b, $00
    ld hl, $c0b6
    add hl, bc
    ld a, [hl]
    cp $01
    jp z, Jump_01f_5244

    dec a
    ld [hl], a
    ld a, c
    cp $04
    jr nc, jr_01f_51c8

    ld hl, $c02a
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_01f_51c8

    ret


jr_01f_51c8:
    ld hl, $c02e
    add hl, bc
    bit 6, [hl]
    jr z, jr_01f_51d3

    call Call_01f_5881

jr_01f_51d3:
    ld b, $00
    ld hl, $c036
    add hl, bc
    bit 0, [hl]
    jr nz, jr_01f_51e5

    ld hl, $c02e
    add hl, bc
    bit 2, [hl]

Jump_01f_51e3:
    jr nz, jr_01f_51f9

jr_01f_51e5:
    ld hl, $c02e
    add hl, bc
    bit 4, [hl]
    jr z, jr_01f_51f0

    jp Jump_01f_576d


jr_01f_51f0:
    ld hl, $c04e
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_01f_51fa

    dec [hl]

jr_01f_51f9:
    ret


jr_01f_51fa:
    ld hl, $c056
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_01f_5203

    ret


jr_01f_5203:
    ld d, a
    ld hl, $c05e
    add hl, bc
    ld a, [hl]
    and $0f
    and a
    jr z, jr_01f_5210

    dec [hl]
    ret


jr_01f_5210:
    ld a, [hl]
    swap [hl]
    or [hl]
    ld [hl], a
    ld hl, $c066
    add hl, bc
    ld e, [hl]
    ld hl, $c02e
    add hl, bc
    bit 3, [hl]
    jr z, jr_01f_5230

    res 3, [hl]
    ld a, d
    and $0f
    ld d, a
    ld a, e
    sub d
    jr nc, jr_01f_522e

    ld a, $00

jr_01f_522e:
    jr jr_01f_523c

jr_01f_5230:
    set 3, [hl]
    ld a, d
    and $f0
    swap a
    add e
    jr nc, jr_01f_523c

    ld a, $ff

jr_01f_523c:
    ld d, a
    ld b, $03
    call Call_01f_58ac
    ld [hl], d
    ret


Jump_01f_5244:
    ld hl, $c06e
    add hl, bc
    ld a, [hl]
    ld hl, $c04e
    add hl, bc
    ld [hl], a
    ld hl, $c02e
    add hl, bc
    res 4, [hl]
    res 5, [hl]
    call Call_01f_525a
    ret


Call_01f_525a:
Jump_01f_525a:
    call Call_01f_5899
    ld d, a
    cp $ff
    jp nz, Jump_01f_52e8

    ld b, $00
    ld hl, $c02e
    add hl, bc
    bit 1, [hl]
    jr nz, jr_01f_5298

    ld a, c
    cp $03
    jr nc, jr_01f_5274

    jr jr_01f_52b3

jr_01f_5274:
    res 2, [hl]
    ld hl, $c036
    add hl, bc
    res 0, [hl]
    cp $06
    jr nz, jr_01f_5288

    ld a, $00
    ldh [rNR30], a
    ld a, $80
    ldh [rNR30], a

jr_01f_5288:
    jr nz, jr_01f_5296

    ld a, [$c003]
    and a
    jr z, jr_01f_5296

    xor a
    ld [$c003], a
    jr jr_01f_52b3

jr_01f_5296:
    jr jr_01f_52bc

jr_01f_5298:
    res 1, [hl]
    ld d, $00
    ld a, c
    add a
    ld e, a
    ld hl, $c006
    add hl, de
    push hl
    ld hl, $c016
    add hl, de
    ld e, l
    ld d, h
    pop hl
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl], a
    jp Jump_01f_525a


jr_01f_52b3:
    ld hl, $5b93
    add hl, bc
    ldh a, [rNR51]
    and [hl]
    ldh [rNR51], a

jr_01f_52bc:
    ld a, [$c02a]
    cp $14
    jr nc, jr_01f_52c5

    jr jr_01f_52e2

jr_01f_52c5:
    ld a, [$c02a]
    cp $86
    jr z, jr_01f_52e2

    jr c, jr_01f_52d0

    jr jr_01f_52e2

jr_01f_52d0:
    ld a, c
    cp $04
    jr z, jr_01f_52d9

    call Call_01f_573b
    ret c

jr_01f_52d9:
    ld a, [$c005]
    ldh [rNR50], a
    xor a
    ld [$c005], a

jr_01f_52e2:
    ld hl, $c026
    add hl, bc
    ld [hl], b
    ret


Jump_01f_52e8:
    cp $fd
    jp nz, Jump_01f_531d

    call Call_01f_5899
    push af
    call Call_01f_5899
    ld d, a
    pop af
    ld e, a
    push de
    ld d, $00
    ld a, c
    add a
    ld e, a
    ld hl, $c006
    add hl, de
    push hl
    ld hl, $c016
    add hl, de
    ld e, l
    ld d, h
    pop hl
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl-]
    ld [de], a
    pop de
    ld [hl], e
    inc hl
    ld [hl], d
    ld b, $00
    ld hl, $c02e
    add hl, bc
    set 1, [hl]
    jp Jump_01f_525a


Jump_01f_531d:
    cp $fe
    jp nz, Jump_01f_5358

    call Call_01f_5899
    ld e, a
    and a
    jr z, jr_01f_5341

    ld b, $00
    ld hl, $c0be
    add hl, bc
    ld a, [hl]
    cp e
    jr nz, jr_01f_533f

    ld a, $01
    ld [hl], a
    call Call_01f_5899
    call Call_01f_5899
    jp Jump_01f_525a


jr_01f_533f:
    inc a
    ld [hl], a

jr_01f_5341:
    call Call_01f_5899
    push af
    call Call_01f_5899
    ld b, a
    ld d, $00
    ld a, c
    add a
    ld e, a
    ld hl, $c006
    add hl, de
    pop af
    ld [hl+], a
    ld [hl], b
    jp Jump_01f_525a


Jump_01f_5358:
    and $f0
    cp $d0
    jp nz, Jump_01f_5397

    ld a, d
    and $0f
    ld b, $00
    ld hl, $c0c6
    add hl, bc
    ld [hl], a
    ld a, c
    cp $03
    jr z, jr_01f_5394

    call Call_01f_5899
    ld d, a
    ld a, c
    cp $02
    jr z, jr_01f_5380

    cp $06
    jr nz, jr_01f_538d

    ld hl, $c0e7
    jr jr_01f_5383

jr_01f_5380:
    ld hl, $c0e6

jr_01f_5383:
    ld a, d
    and $0f
    ld [hl], a
    ld a, d
    and $30
    sla a
    ld d, a

jr_01f_538d:
    ld b, $00
    ld hl, $c0de
    add hl, bc
    ld [hl], d

jr_01f_5394:
    jp Jump_01f_525a


Jump_01f_5397:
    ld a, d
    cp $e8
    jr nz, jr_01f_53a9

    ld b, $00
    ld hl, $c02e
    add hl, bc
    ld a, [hl]
    xor $01
    ld [hl], a
    jp Jump_01f_525a


jr_01f_53a9:
    cp $ea
    jr nz, jr_01f_53e1

    call Call_01f_5899
    ld b, $00
    ld hl, $c04e
    add hl, bc
    ld [hl], a
    ld hl, $c06e
    add hl, bc
    ld [hl], a
    call Call_01f_5899
    ld d, a
    and $f0
    swap a
    ld b, $00
    ld hl, $c056
    add hl, bc
    srl a
    ld e, a
    adc b
    swap a
    or e
    ld [hl], a
    ld a, d
    and $0f
    ld d, a
    ld hl, $c05e
    add hl, bc
    swap a
    or d
    ld [hl], a
    jp Jump_01f_525a


jr_01f_53e1:
    cp $eb
    jr nz, jr_01f_5419

    call Call_01f_5899
    ld b, $00
    ld hl, $c076
    add hl, bc
    ld [hl], a
    call Call_01f_5899
    ld d, a
    and $f0
    swap a
    ld b, a
    ld a, d
    and $0f
    call Call_01f_58cc
    ld b, $00
    ld hl, $c0a6
    add hl, bc
    ld [hl], d
    ld hl, $c0ae
    add hl, bc
    ld [hl], e
    ld b, $00
    ld hl, $c02e
    add hl, bc
    set 4, [hl]
    call Call_01f_5899
    ld d, a
    jp Jump_01f_557e


jr_01f_5419:
    cp $ec
    jr nz, jr_01f_542e

    call Call_01f_5899
    rrca
    rrca
    and $c0
    ld b, $00
    ld hl, $c03e
    add hl, bc
    ld [hl], a
    jp Jump_01f_525a


jr_01f_542e:
    cp $ed
    jr nz, jr_01f_546e

    ld a, c
    cp $04
    jr nc, jr_01f_5452

    call Call_01f_5899
    ld [$c0e8], a
    call Call_01f_5899
    ld [$c0e9], a
    xor a
    ld [$c0ce], a
    ld [$c0cf], a
    ld [$c0d0], a
    ld [$c0d1], a
    jr jr_01f_546b

jr_01f_5452:
    call Call_01f_5899
    ld [$c0ea], a
    call Call_01f_5899
    ld [$c0eb], a
    xor a
    ld [$c0d2], a
    ld [$c0d3], a
    ld [$c0d4], a
    ld [$c0d5], a

jr_01f_546b:
    jp Jump_01f_525a


jr_01f_546e:
    cp $ee
    jr nz, jr_01f_547b

    call Call_01f_5899
    ld [$c004], a
    jp Jump_01f_525a


jr_01f_547b:
    cp $ef
    jr nz, jr_01f_549a

    call Call_01f_5899
    push bc
    call Call_01f_58ea
    pop bc
    ld a, [$c003]
    and a
    jr nz, jr_01f_5497

    ld a, [$c02d]
    ld [$c003], a
    xor a
    ld [$c02d], a

jr_01f_5497:
    jp Jump_01f_525a


jr_01f_549a:
    cp $fc
    jr nz, jr_01f_54b8

    call Call_01f_5899
    ld b, $00
    ld hl, $c046
    add hl, bc
    ld [hl], a
    and $c0
    ld hl, $c03e
    add hl, bc
    ld [hl], a
    ld hl, $c02e
    add hl, bc
    set 6, [hl]
    jp Jump_01f_525a


jr_01f_54b8:
    cp $f0
    jr nz, jr_01f_54c4

    call Call_01f_5899
    ldh [rNR50], a
    jp Jump_01f_525a


jr_01f_54c4:
    cp $f8
    jr nz, jr_01f_54d3

    ld b, $00
    ld hl, $c036
    add hl, bc
    set 0, [hl]
    jp Jump_01f_525a


jr_01f_54d3:
    and $f0
    cp $e0
    jr nz, jr_01f_54e6

    ld hl, $c0d6
    ld b, $00
    add hl, bc
    ld a, d
    and $0f
    ld [hl], a
    jp Jump_01f_525a


jr_01f_54e6:
    cp $20
    jr nz, jr_01f_5533

    ld a, c
    cp $03
    jr c, jr_01f_5533

    ld b, $00
    ld hl, $c036
    add hl, bc
    bit 0, [hl]
    jr nz, jr_01f_5533

    call Call_01f_557e
    ld d, a
    ld b, $00
    ld hl, $c03e
    add hl, bc
    ld a, [hl]
    or d
    ld d, a
    ld b, $01
    call Call_01f_58ac
    ld [hl], d
    call Call_01f_5899
    ld d, a
    ld b, $02
    call Call_01f_58ac
    ld [hl], d
    call Call_01f_5899
    ld e, a
    ld a, c
    cp $07
    ld a, $00
    jr z, jr_01f_5526

    push de
    call Call_01f_5899
    pop de

jr_01f_5526:
    ld d, a
    push de
    call Call_01f_569d
    call Call_01f_566c
    pop de
    call Call_01f_56bf
    ret


jr_01f_5533:
    ld a, c
    cp $04
    jr c, jr_01f_554f

    ld a, d
    cp $10
    jr nz, jr_01f_554f

    ld b, $00
    ld hl, $c036
    add hl, bc
    bit 0, [hl]
    jr nz, jr_01f_554f

    call Call_01f_5899
    ldh [rNR10], a
    jp Jump_01f_525a


jr_01f_554f:
    ld a, c
    cp $03
    jr nz, jr_01f_557e

    ld a, d
    and $f0
    cp $b0
    jr z, jr_01f_5569

    jr nc, jr_01f_557e

    swap a
    ld b, a
    ld a, d
    and $0f
    ld d, a
    ld a, b
    push de
    push bc
    jr jr_01f_5571

jr_01f_5569:
    ld a, d
    and $0f
    push af
    push bc
    call Call_01f_5899

jr_01f_5571:
    ld d, a
    ld a, [$c003]
    and a
    jr nz, jr_01f_557c

    ld a, d
    call Call_01f_58ea

jr_01f_557c:
    pop bc
    pop de

Call_01f_557e:
Jump_01f_557e:
jr_01f_557e:
    ld a, d
    push af
    and $0f
    inc a
    ld b, $00
    ld e, a
    ld d, b
    ld hl, $c0c6
    add hl, bc
    ld a, [hl]
    ld l, b
    call Call_01f_58bb
    ld a, c
    cp $04
    jr nc, jr_01f_559f

    ld a, [$c0e8]
    ld d, a
    ld a, [$c0e9]
    ld e, a
    jr jr_01f_55b2

jr_01f_559f:
    ld d, $01
    ld e, $00
    cp $07
    jr z, jr_01f_55b2

    call Call_01f_5707
    ld a, [$c0ea]
    ld d, a
    ld a, [$c0eb]
    ld e, a

jr_01f_55b2:
    ld a, l
    ld b, $00
    ld hl, $c0ce
    add hl, bc
    ld l, [hl]
    call Call_01f_58bb
    ld e, l
    ld d, h
    ld hl, $c0ce
    add hl, bc
    ld [hl], e

Call_01f_55c4:
    ld a, d
    ld hl, $c0b6
    add hl, bc
    ld [hl], a
    ld hl, $c036
    add hl, bc
    bit 0, [hl]
    jr nz, jr_01f_55dc

    ld hl, $c02e
    add hl, bc
    bit 2, [hl]
    jr z, jr_01f_55dc

    pop hl
    ret


jr_01f_55dc:
    pop af
    and $f0
    cp $c0
    jr nz, jr_01f_5613

    ld a, c
    cp $04
    jr nc, jr_01f_55f0

    ld hl, $c02a
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_01f_5612

jr_01f_55f0:
    ld a, c
    cp $02
    jr z, jr_01f_55f9

    cp $06
    jr nz, jr_01f_5606

jr_01f_55f9:
    ld b, $00
    ld hl, $5b93
    add hl, bc
    ldh a, [rNR51]
    and [hl]
    ldh [rNR51], a
    jr jr_01f_5612

jr_01f_5606:
    ld b, $02
    call Call_01f_58ac
    ld a, $08
    ld [hl+], a
    inc hl
    ld a, $80
    ld [hl], a

jr_01f_5612:
    ret


jr_01f_5613:
    swap a
    ld b, $00
    ld hl, $c0d6
    add hl, bc
    ld b, [hl]
    call Call_01f_58cc
    ld b, $00
    ld hl, $c02e
    add hl, bc
    bit 4, [hl]
    jr z, jr_01f_562c

    call Call_01f_5803

jr_01f_562c:
    push de
    ld a, c
    cp $04
    jr nc, jr_01f_5641

    ld hl, $c02a
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl]
    and a
    jr nz, jr_01f_563f

    jr jr_01f_5641

jr_01f_563f:
    pop de
    ret


jr_01f_5641:
    ld b, $00
    ld hl, $c0de
    add hl, bc
    ld d, [hl]
    ld b, $02
    call Call_01f_58ac
    ld [hl], d
    call Call_01f_569d
    call Call_01f_566c
    pop de
    ld b, $00
    ld hl, $c02e
    add hl, bc
    bit 0, [hl]
    jr z, jr_01f_5663

    inc e
    jr nc, jr_01f_5663

    inc d

jr_01f_5663:
    ld hl, $c066
    add hl, bc
    ld [hl], e
    call Call_01f_56bf
    ret


Call_01f_566c:
    ld b, $00
    ld hl, $5b9b
    add hl, bc
    ldh a, [rNR51]
    or [hl]
    ld d, a
    ld a, c
    cp $07
    jr z, jr_01f_5687

    cp $04
    jr nc, jr_01f_5699

    ld hl, $c02a
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_01f_5699

jr_01f_5687:
    ld a, [$c004]
    ld hl, $5b9b
    add hl, bc
    and [hl]
    ld d, a
    ldh a, [rNR51]
    ld hl, $5b93
    add hl, bc
    and [hl]
    or d
    ld d, a

jr_01f_5699:
    ld a, d
    ldh [rNR51], a
    ret


Call_01f_569d:
    ld b, $00
    ld hl, $c0b6
    add hl, bc
    ld d, [hl]
    ld a, c
    cp $02
    jr z, jr_01f_56b8

    cp $06
    jr z, jr_01f_56b8

    ld a, d
    and $3f
    ld d, a
    ld hl, $c03e
    add hl, bc
    ld a, [hl]
    or d
    ld d, a

jr_01f_56b8:
    ld b, $01
    call Call_01f_58ac
    ld [hl], d
    ret


Call_01f_56bf:
    ld a, c
    cp $02
    jr z, jr_01f_56c8

    cp $06
    jr nz, jr_01f_56f5

jr_01f_56c8:
    push de
    ld de, $c0e6
    cp $02
    jr z, jr_01f_56d3

    ld de, $c0e7

jr_01f_56d3:
    ld a, [de]
    add a
    ld d, $00
    ld e, a
    ld hl, $4361
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $ff30
    ld b, $0f
    ld a, $00
    ldh [rNR30], a

jr_01f_56e8:
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, b
    dec b
    and a
    jr nz, jr_01f_56e8

    ld a, $80
    ldh [rNR30], a
    pop de

jr_01f_56f5:
    ld a, d
    or $80
    and $c7
    ld d, a
    ld b, $03
    call Call_01f_58ac
    ld [hl], e
    inc hl
    ld [hl], d
    call Call_01f_5729
    ret


Call_01f_5707:
    call Call_01f_5759
    jr nc, jr_01f_571f

    ld d, $00
    ld a, [$c0f2]
    add $80
    jr nc, jr_01f_5716

    inc d

jr_01f_5716:
    ld [$c0eb], a
    ld a, d
    ld [$c0ea], a
    jr jr_01f_5728

jr_01f_571f:
    xor a
    ld [$c0eb], a
    ld a, $01
    ld [$c0ea], a

jr_01f_5728:
    ret


Call_01f_5729:
    call Call_01f_5759
    jr nc, jr_01f_573a

    ld a, [$c0f1]
    add e
    jr nc, jr_01f_5735

    inc d

jr_01f_5735:
    dec hl
    ld e, a
    ld [hl], e
    inc hl
    ld [hl], d

jr_01f_573a:
    ret


Call_01f_573b:
    call Call_01f_5759
    jr nc, jr_01f_5756

    ld hl, $c006
    ld e, c
    ld d, $00
    sla e
    rl d
    add hl, de
    ld a, [hl]
    sub $01
    ld [hl], a
    inc hl
    ld a, [hl]
    sbc $00
    ld [hl], a
    scf
    ret


jr_01f_5756:
    scf
    ccf
    ret


Call_01f_5759:
    ld a, [$c02a]
    cp $14
    jr nc, jr_01f_5762

    jr jr_01f_5768

jr_01f_5762:
    cp $86
    jr z, jr_01f_5768

    jr c, jr_01f_576b

jr_01f_5768:
    scf
    ccf
    ret


jr_01f_576b:
    scf
    ret


Jump_01f_576d:
    ld hl, $c02e
    add hl, bc
    bit 5, [hl]
    jp nz, Jump_01f_57b4

    ld hl, $c09e
    add hl, bc
    ld e, [hl]
    ld hl, $c096
    add hl, bc
    ld d, [hl]
    ld hl, $c07e
    add hl, bc
    ld l, [hl]
    ld h, b
    add hl, de
    ld d, h
    ld e, l
    ld hl, $c08e
    add hl, bc
    push hl
    ld hl, $c086
    add hl, bc
    ld a, [hl]
    pop hl
    add [hl]
    ld [hl], a
    ld a, $00
    adc e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld hl, $c0a6
    add hl, bc
    ld a, [hl]
    cp d
    jp c, Jump_01f_57fa

    jr nz, jr_01f_57e7

    ld hl, $c0ae
    add hl, bc
    ld a, [hl]
    cp e
    jp c, Jump_01f_57fa

    jr jr_01f_57e7

Jump_01f_57b4:
    ld hl, $c09e
    add hl, bc
    ld a, [hl]
    ld hl, $c096
    add hl, bc
    ld d, [hl]
    ld hl, $c07e
    add hl, bc
    ld e, [hl]
    sub e
    ld e, a
    ld a, d
    sbc b
    ld d, a
    ld hl, $c086
    add hl, bc
    ld a, [hl]
    add a
    ld [hl], a
    ld a, e
    sbc b
    ld e, a
    ld a, d
    sbc b
    ld d, a
    ld hl, $c0a6
    add hl, bc
    ld a, d
    cp [hl]
    jr c, jr_01f_57fa

    jr nz, jr_01f_57e7

    ld hl, $c0ae
    add hl, bc
    ld a, e
    cp [hl]
    jr c, jr_01f_57fa

jr_01f_57e7:
    ld hl, $c09e
    add hl, bc
    ld [hl], e
    ld hl, $c096
    add hl, bc
    ld [hl], d
    ld b, $03
    call Call_01f_58ac
    ld a, e
    ld [hl+], a
    ld [hl], d
    ret


Jump_01f_57fa:
jr_01f_57fa:
    ld hl, $c02e
    add hl, bc
    res 4, [hl]
    res 5, [hl]
    ret


Call_01f_5803:
    ld hl, $c096
    add hl, bc
    ld [hl], d
    ld hl, $c09e
    add hl, bc
    ld [hl], e
    ld hl, $c0b6
    add hl, bc
    ld a, [hl]
    ld hl, $c076
    add hl, bc
    sub [hl]
    jr nc, jr_01f_581b

    ld a, $01

jr_01f_581b:
    ld [hl], a
    ld hl, $c0ae
    add hl, bc
    ld a, e
    sub [hl]
    ld e, a
    ld a, d
    sbc b
    ld hl, $c0a6
    add hl, bc
    sub [hl]
    jr c, jr_01f_5837

    ld d, a
    ld b, $00
    ld hl, $c02e
    add hl, bc
    set 5, [hl]
    jr jr_01f_585a

jr_01f_5837:
    ld hl, $c096
    add hl, bc
    ld d, [hl]
    ld hl, $c09e
    add hl, bc
    ld e, [hl]
    ld hl, $c0ae
    add hl, bc
    ld a, [hl]
    sub e
    ld e, a
    ld a, d
    sbc b
    ld d, a
    ld hl, $c0a6
    add hl, bc
    ld a, [hl]
    sub d
    ld d, a
    ld b, $00
    ld hl, $c02e
    add hl, bc
    res 5, [hl]

jr_01f_585a:
    ld hl, $c076
    add hl, bc

jr_01f_585e:
    inc b
    ld a, e
    sub [hl]
    ld e, a
    jr nc, jr_01f_585e

    ld a, d
    and a
    jr z, jr_01f_586c

    dec a
    ld d, a
    jr jr_01f_585e

jr_01f_586c:
    ld a, e
    add [hl]
    ld d, b
    ld b, $00
    ld hl, $c07e
    add hl, bc
    ld [hl], d
    ld hl, $c086
    add hl, bc
    ld [hl], a
    ld hl, $c08e
    add hl, bc
    ld [hl], a
    ret


Call_01f_5881:
    ld b, $00
    ld hl, $c046
    add hl, bc
    ld a, [hl]
    rlca
    rlca
    ld [hl], a
    and $c0
    ld d, a
    ld b, $01
    call Call_01f_58ac
    ld a, [hl]
    and $3f
    or d
    ld [hl], a
    ret


Call_01f_5899:
    ld d, $00
    ld a, c
    add a
    ld e, a
    ld hl, $c006
    add hl, de
    ld a, [hl+]
    ld e, a
    ld a, [hl-]
    ld d, a
    ld a, [de]
    inc de
    ld [hl], e
    inc hl
    ld [hl], d
    ret


Call_01f_58ac:
    ld a, c
    ld hl, $5b8b
    add l
    jr nc, jr_01f_58b4

    inc h

jr_01f_58b4:
    ld l, a
    ld a, [hl]
    add b
    ld l, a
    ld h, $ff
    ret


Call_01f_58bb:
    ld h, $00

jr_01f_58bd:
    srl a
    jr nc, jr_01f_58c2

    add hl, de

jr_01f_58c2:
    sla e
    rl d
    and a
    jr z, jr_01f_58cb

    jr jr_01f_58bd

jr_01f_58cb:
    ret


Call_01f_58cc:
    ld h, $00
    ld l, a
    add hl, hl
    ld d, h
    ld e, l
    ld hl, $5ba3
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, b

jr_01f_58da:
    cp $07
    jr z, jr_01f_58e5

    sra d
    rr e
    inc a
    jr jr_01f_58da

jr_01f_58e5:
    ld a, $08
    add d
    ld d, a
    ret


Call_01f_58ea:
    ld [$c001], a
    cp $ff
    jp z, Jump_01f_5aa8

    cp $c2
    jp z, Jump_01f_59c2

    jp c, Jump_01f_59c2

    cp $fe
    jr z, jr_01f_5901

    jp nc, Jump_01f_59c2

jr_01f_5901:
    xor a
    ld [$c000], a
    ld [$c003], a
    ld [$c0e9], a
    ld [$c0e6], a
    ld [$c0e7], a
    ld d, $08
    ld hl, $c016
    call Call_01f_5afd
    ld hl, $c006
    call Call_01f_5afd
    ld d, $04
    ld hl, $c026
    call Call_01f_5afd
    ld hl, $c02e
    call Call_01f_5afd
    ld hl, $c03e
    call Call_01f_5afd
    ld hl, $c046
    call Call_01f_5afd
    ld hl, $c04e
    call Call_01f_5afd
    ld hl, $c056
    call Call_01f_5afd
    ld hl, $c05e
    call Call_01f_5afd
    ld hl, $c066
    call Call_01f_5afd
    ld hl, $c06e
    call Call_01f_5afd
    ld hl, $c036
    call Call_01f_5afd
    ld hl, $c076
    call Call_01f_5afd
    ld hl, $c07e
    call Call_01f_5afd
    ld hl, $c086
    call Call_01f_5afd
    ld hl, $c08e
    call Call_01f_5afd
    ld hl, $c096
    call Call_01f_5afd
    ld hl, $c09e
    call Call_01f_5afd
    ld hl, $c0a6
    call Call_01f_5afd
    ld hl, $c0ae
    call Call_01f_5afd
    ld a, $01
    ld hl, $c0be
    call Call_01f_5afd
    ld hl, $c0b6
    call Call_01f_5afd
    ld hl, $c0c6
    call Call_01f_5afd
    ld [$c0e8], a
    ld a, $ff
    ld [$c004], a
    xor a
    ldh [rNR50], a
    ld a, $08
    ldh [rNR10], a
    ld a, $00
    ldh [rNR51], a
    xor a
    ldh [rNR30], a
    ld a, $80
    ldh [rNR30], a
    ld a, $77
    ldh [rNR50], a
    jp Jump_01f_5b03


Jump_01f_59c2:
    ld l, a
    ld e, a
    ld h, $00
    ld d, h
    add hl, hl
    add hl, de
    ld de, $4000
    add hl, de
    ld a, h
    ld [$c0ec], a
    ld a, l
    ld [$c0ed], a
    ld a, [hl]
    and $c0
    rlca
    rlca
    ld c, a

Jump_01f_59db:
    ld d, c
    ld a, c
    add a
    add c
    ld c, a
    ld b, $00
    ld a, [$c0ec]
    ld h, a
    ld a, [$c0ed]
    ld l, a
    add hl, bc
    ld c, d
    ld a, [hl]
    and $0f
    ld e, a
    ld d, $00
    ld hl, $c026
    add hl, de
    ld a, [hl]
    and a
    jr z, jr_01f_5a17

    ld a, e
    cp $07
    jr nz, jr_01f_5a0e

    ld a, [$c001]
    cp $14
    jr nc, jr_01f_5a07

    ret


jr_01f_5a07:
    ld a, [hl]
    cp $14
    jr z, jr_01f_5a17

    jr c, jr_01f_5a17

jr_01f_5a0e:
    ld a, [$c001]
    cp [hl]
    jr z, jr_01f_5a17

    jr c, jr_01f_5a17

    ret


jr_01f_5a17:
    xor a
    push de
    ld h, d
    ld l, e
    add hl, hl
    ld d, h
    ld e, l
    ld hl, $c016
    add hl, de
    ld [hl+], a
    ld [hl], a
    ld hl, $c006
    add hl, de
    ld [hl+], a
    ld [hl], a
    pop de
    ld hl, $c026
    add hl, de
    ld [hl], a
    ld hl, $c02e
    add hl, de
    ld [hl], a
    ld hl, $c03e
    add hl, de
    ld [hl], a
    ld hl, $c046
    add hl, de
    ld [hl], a
    ld hl, $c04e
    add hl, de
    ld [hl], a
    ld hl, $c056
    add hl, de
    ld [hl], a
    ld hl, $c05e
    add hl, de
    ld [hl], a
    ld hl, $c066
    add hl, de
    ld [hl], a
    ld hl, $c06e
    add hl, de
    ld [hl], a
    ld hl, $c076
    add hl, de
    ld [hl], a
    ld hl, $c07e
    add hl, de
    ld [hl], a
    ld hl, $c086
    add hl, de
    ld [hl], a
    ld hl, $c08e
    add hl, de
    ld [hl], a
    ld hl, $c096
    add hl, de
    ld [hl], a
    ld hl, $c09e
    add hl, de
    ld [hl], a
    ld hl, $c0a6
    add hl, de
    ld [hl], a
    ld hl, $c0ae
    add hl, de
    ld [hl], a
    ld hl, $c036
    add hl, de
    ld [hl], a
    ld a, $01
    ld hl, $c0be
    add hl, de
    ld [hl], a
    ld hl, $c0b6
    add hl, de
    ld [hl], a
    ld hl, $c0c6
    add hl, de
    ld [hl], a
    ld a, e
    cp $04
    jr nz, jr_01f_5a9f

    ld a, $08
    ldh [rNR10], a

jr_01f_5a9f:
    ld a, c
    and a
    jp z, Jump_01f_5b03

    dec c
    jp Jump_01f_59db


Jump_01f_5aa8:
    ld a, $80
    ldh [rNR52], a
    ldh [rNR30], a
    xor a
    ldh [rNR51], a
    ldh [rNR32], a
    ld a, $08
    ldh [rNR10], a
    ldh [rNR12], a
    ldh [rNR22], a
    ldh [rNR42], a
    ld a, $40
    ldh [rNR14], a
    ldh [rNR24], a
    ldh [rNR44], a
    ld a, $77
    ldh [rNR50], a
    xor a
    ld [$c000], a
    ld [$c003], a
    ld [$c002], a
    ld [$c0e9], a
    ld [$c0eb], a
    ld [$c0e6], a
    ld [$c0e7], a
    ld d, $a0
    ld hl, $c006
    call Call_01f_5afd
    ld a, $01
    ld d, $18
    ld hl, $c0b6
    call Call_01f_5afd
    ld [$c0e8], a
    ld [$c0ea], a
    ld a, $ff
    ld [$c004], a
    ret


Call_01f_5afd:
    ld b, d

jr_01f_5afe:
    ld [hl+], a
    dec b
    jr nz, jr_01f_5afe

    ret


Jump_01f_5b03:
    ld a, [$c001]
    ld l, a
    ld e, a
    ld h, $00
    ld d, h
    add hl, hl
    add hl, de
    ld de, $4000
    add hl, de
    ld e, l
    ld d, h
    ld hl, $c006
    ld a, [de]
    ld b, a
    rlca
    rlca
    and $03
    ld c, a
    ld a, b
    and $0f
    ld b, c
    inc b
    inc de
    ld c, $00

jr_01f_5b25:
    cp c
    jr z, jr_01f_5b2d

    inc c
    inc hl
    inc hl
    jr jr_01f_5b25

jr_01f_5b2d:
    push hl
    push bc
    push af
    ld b, $00
    ld c, a
    ld hl, $c026
    add hl, bc
    ld a, [$c001]
    ld [hl], a
    pop af
    cp $03
    jr c, jr_01f_5b46

    ld hl, $c02e
    add hl, bc
    set 2, [hl]

jr_01f_5b46:
    pop bc
    pop hl
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    inc c
    dec b
    ld a, b
    and a
    ld a, [de]
    inc de
    jr nz, jr_01f_5b25

    ld a, [$c001]
    cp $14
    jr nc, jr_01f_5b5f

    jr jr_01f_5b89

jr_01f_5b5f:
    ld a, [$c001]
    cp $86
    jr z, jr_01f_5b89

    jr c, jr_01f_5b6a

    jr jr_01f_5b89

jr_01f_5b6a:
    ld hl, $c02a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $c012
    ld de, $5b8a
    ld [hl], e
    inc hl
    ld [hl], d
    ld a, [$c005]
    and a
    jr nz, jr_01f_5b89

    ldh a, [rNR50]
    ld [$c005], a
    ld a, $77
    ldh [rNR50], a

jr_01f_5b89:
    ret


    rst $38
    db $10
    dec d
    ld a, [de]
    rra
    db $10
    dec d
    ld a, [de]
    rra
    xor $dd
    cp e
    ld [hl], a
    xor $dd
    cp e
    ld [hl], a
    ld de, $4422
    adc b
    ld de, $4422
    adc b
    inc l
    ld hl, sp-$63
    ld hl, sp+$07
    ld sp, hl
    ld l, e
    ld sp, hl
    jp z, $23f9

    ld a, [$fa77]
    rst $00
    ld a, [$fb12]
    ld e, b
    ei
    sbc e
    ei
    jp c, $edfb

    nop
    sub b
    ldh a, [rPCM34]
    db $ec
    inc bc
    ld [$1408], a
    call c, $e5b5
    ld [hl], c
    db $e4
    inc bc
    inc hl
    ld b, c
    ld bc, $7141
    ld [hl], c
    ld d, c
    ld b, c
    ld d, e
    ld b, c
    ld hl, $2353
    push hl
    or c
    db $e4
    ld d, e
    inc hl
    ld b, c
    ld d, c
    ld [hl], c
    ld bc, $0141
    ld hl, $dc41
    or [hl]
    ld e, c
    call c, Call_01f_51a6
    ld b, c
    ld d, c
    ld a, c
    ld b, c
    ld hl, $5541
    add sp, -$24
    or e
    ld b, c
    ld hl, $4020
    ld d, c
    ld b, b
    ld d, b
    add sp, -$24
    or l
    ld [hl], l
    ld [hl], l
    sub c
    ld d, c
    ld [hl], l
    call c, $71b4
    ld d, e
    call c, Call_01f_41a4
    ld hl, $93dc
    push hl
    sub c
    db $e4
    inc bc
    ld bc, $b1e5
    sub b
    or b
    sub c
    or c
    db $e4
    ld bc, $0103
    push hl
    sub c
    or c
    or c
    sub c
    db $e4
    inc bc
    push hl
    sub c
    or b
    db $e4
    nop
    push hl
    or c
    db $e4
    inc hl
    push hl
    or c
    db $e4
    inc bc
    push hl
    or b
    db $e4
    nop
    jr nz, @-$19

    or b
    db $e4
    inc bc
    call c, Call_000_033d
    call c, $55b4
    ld [hl], e
    ld d, b
    ld [hl], b
    ld d, e
    ld b, l
    ld d, c
    ld b, c
    jr nz, jr_01f_5c89

    ld hl, $dc01
    or l
    push hl
    sub e
    db $e4
    inc hl
    push hl
    or e
    db $e4
    ld b, e
    inc bc
    ld d, e
    inc hl
    ld h, e
    ld [$260a], a
    call c, Call_01f_7f80
    ld [hl], e
    call c, Call_01f_7b87
    call c, $eab5
    ld [$fe14], sp
    nop
    ret


    ld e, e
    db $ec
    ld [bc], a
    ld [$1506], a
    call c, $e4c3
    ld bc, $5343
    ld [hl], e
    db $e3
    inc bc
    db $e4
    or l
    sub b
    or b
    sbc c
    ld d, c
    ld [hl], c
    sub c
    db $e3
    ld hl, $e401
    or c
    sub b
    or b

jr_01f_5c89:
    db $e3
    dec b
    db $e4
    sub c
    ld [hl], e
    db $ec
    inc bc
    call c, $a584
    db $ec
    ld [bc], a
    call c, $e3c5
    ld bc, $b1e4
    db $e3
    ld bc, $99e4
    db $e3
    ld bc, $b1e4
    db $e3
    ld bc, $79e4
    call c, $e3c3
    inc bc
    ld b, c
    ld hl, $e401
    or c
    db $e3
    ld bc, $b0dc
    inc hl
    call c, $29c7
    jr nz, jr_01f_5cba

jr_01f_5cba:
    call c, $e4b0
    or e
    call c, $bbc7
    call c, Call_01f_55c4
    ld d, c
    ld [hl], c
    ld d, c
    ld b, c
    ld hl, $4145
    ld d, c
    ld b, c
    ld hl, $5101
    ld b, c
    ld hl, $7351
    sub c
    ld d, c
    ld b, c
    ld [hl], e
    ld d, c
    ld b, l
    sub $c2
    ld d, b
    ld [hl], b
    sub b
    or b
    call c, $e3c3
    ld bc, $b1e4
    sub c
    db $e3
    ld bc, $b3e4
    sub e
    ld [hl], c
    and e
    sub c
    ld [hl], e
    ld d, c
    ld b, c
    ret c

    call nz, $7393
    ld d, e
    or e
    sub e
    ld [hl], e
    db $e3
    inc bc

jr_01f_5cfc:
    db $e4
    or e
    sub e
    db $e3
    inc hl
    ld b, e
    inc bc
    call c, $2bc7

jr_01f_5d06:
    inc bc
    call c, $e4b0
    or e
    call c, $bbc7
    call c, $fec3
    nop
    ld [hl], l
    ld e, h
    call c, $c113
    db $e4
    nop
    ret nz

    ld b, b
    ret nz

    push hl
    ld [hl], b
    ret nz

    db $e4
    ld b, b
    ret nz

    nop
    ret nz

    ld b, b
    ret nz

    nop
    ret nz

    ld [hl], b
    ret nz

    ld d, b
    ret nz

    sub b
    ret nz

    nop
    ret nz

    sub b
    ret nz

    ld d, b
    ret nz

    sub b
    ret nz

    ld b, b
    ret nz

    sub b
    ret nz

    jr nz, jr_01f_5cfc

    ld d, b
    ret nz

jr_01f_5d3e:
    push hl
    sub b
    ret nz

    db $e4
    ld d, b
    ret nz

    jr nz, jr_01f_5d06

    ld d, b
    ret nz

jr_01f_5d48:
    ld b, b
    ret nz

    ld d, b
    ret nz

jr_01f_5d4c:
    ld b, b
    ret nz

    ld [hl], b
    ret nz

    nop
    ret nz

    ld [hl], b
    ret nz

jr_01f_5d54:
    ld b, b
    ret nz

    ld [hl], b
    ret nz

jr_01f_5d58:
    ld b, b
    ret nz

    ld [hl], b
    ret nz

jr_01f_5d5c:
    ld d, b
    ret nz

    sub b
    ret nz

jr_01f_5d60:
    nop
    ret nz

    sub b
    ret nz

    ld d, b
    ret nz

jr_01f_5d66:
    ld [hl], b
    ret nz

    sub b
    ret nz

jr_01f_5d6a:
    ld [hl], b
    ret nz

    ld b, b
    ret nz

    ld [hl], b
    ret nz

    nop
    ret nz

    ld [hl], b
    ret nz

jr_01f_5d74:
    ld b, b
    ret nz

    ld [hl], b
    ret nz

    ld b, b
    ret nz

    ld [hl], b
    ret nz

    jr nz, jr_01f_5d3e

jr_01f_5d7e:
    ld d, b
    ret nz

    push hl
    sub b

jr_01f_5d82:
    ret nz

    db $e4
    ld d, b
    ret nz

    jr nz, jr_01f_5d48

    ld d, b
    ret nz

    jr nz, jr_01f_5d4c

    ld d, b
    ret nz

    ld [hl], b
    ret nz

    nop
    ret nz

    jr nz, jr_01f_5d54

    ld [hl], b
    ret nz

jr_01f_5d96:
    jr nz, jr_01f_5d58

    ld [hl], b
    ret nz

    jr nz, jr_01f_5d5c

    ld [hl], b
    ret nz

    jr nz, jr_01f_5d60

    push hl
    or b
    ret nz

    db $e4

jr_01f_5da4:
    jr nz, jr_01f_5d66

    ld [hl], b
    ret nz

    jr nz, jr_01f_5d6a

    ld [hl], b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    ld [hl], b
    ret nz

    jr nz, jr_01f_5d74

    ld d, b
    ret nz

    push hl
    sub b
    ret nz

    db $e4
    ld d, b
    ret nz

    jr nz, jr_01f_5d7e

    ld d, b
    ret nz

    jr nz, jr_01f_5d82

    ld d, b
    ret nz

    ld b, b
    ret nz

    ld [hl], b
    ret nz

    nop
    ret nz

    ld [hl], b
    ret nz

    ld b, b
    ret nz

    ld [hl], b
    ret nz

    ld b, b
    ret nz

    ld [hl], b
    ret nz

    jr nz, jr_01f_5d96

    ld d, b
    ret nz

    push hl
    sub b

jr_01f_5dda:
    ret nz

    db $e4
    ld d, b
    ret nz

    ld d, b
    ret nz

    ld b, b
    ret nz

    jr nz, jr_01f_5da4

    ld d, b
    ret nz

    ld b, b
    ret nz

    nop
    ret nz

    ld [hl], b
    ret nz

    nop
    ret nz

    ld b, b
    ret nz

    ld [hl], b
    ret nz

    ld b, b
    ret nz

    ld [hl], b
    ret nz

    ld d, b
    ret nz

    sub b
    ret nz

    nop
    ret nz

    sub b
    ret nz

    ld d, b
    ret nz

    sub b
    ret nz

    sub b
    ret nz

    ld d, b
    ret nz

    ld [hl], b
    ret nz

    and b
    ret nz

    ld b, b
    ret nz

    and b
    ret nz

    ld [hl], b
    ret nz

    and b
    ret nz

    and b
    ret nz

    ld [hl], b
    ret nz

    ld d, b
    ret nz

    jr nz, jr_01f_5dda

    ld d, b
    ret nz

    sub b
    ret nz

    ld [hl], b
    ret nz

    ld b, b
    ret nz

    ld [hl], b
    ret nz

    or b
    ret nz

    sub b
    ret nz

    ld d, b
    ret nz

    sub b
    ret nz

    db $e3
    nop
    ret nz

    db $e4
    or b
    ret nz

    sub b
    ret nz

    db $e3
    nop
    ret nz

    db $e4
    sub b
    ret nz

    ld [hl], b
    ret nz

    db $e3
    nop
    ret nz

    db $e4
    ld [hl], b
    ret nz

    db $e3
    nop
    ret nz

    db $e4
    ld [hl], b
    ret nz

    db $e3
    nop
    ret nz

    db $e4
    ld [hl], b
    ret nz

    db $e3
    nop
    ret nz

    db $e4
    ld [hl], b
    ret nz

    or b
    ret nz

    ld [hl], b
    ret nz

    or b
    ret nz

    ld d, b
    ret nz

    sub b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    ld d, b
    ret nz

    cp $00
    rla
    ld e, l
    call c, $fdc1
    and a
    ld e, [hl]
    db $fd
    or h
    ld e, [hl]
    db $fd
    and a
    ld e, [hl]
    db $fd
    jp nz, $fd5e

    or h
    ld e, [hl]
    db $fd
    or h
    ld e, [hl]
    db $fd
    and a
    ld e, [hl]
    db $fd
    and a
    ld e, [hl]
    db $fd
    and a
    ld e, [hl]
    db $fd
    and a
    ld e, [hl]
    db $fd
    or h
    ld e, [hl]
    db $fd
    and a
    ld e, [hl]
    db $fd
    jp nz, $fd5e

    and a
    ld e, [hl]
    db $fd
    or h
    ld e, [hl]
    db $fd
    and a
    ld e, [hl]
    db $fd
    and a
    ld e, [hl]
    db $fd
    and a
    ld e, [hl]
    db $fd
    and a

jr_01f_5ea2:
    ld e, [hl]
    cp $00
    ld l, d
    ld e, [hl]
    pop bc
    or c
    db $10

jr_01f_5eaa:
    pop bc
    or c
    db $10
    pop bc
    or c
    db $10
    pop bc
    or c
    db $10
    rst $38
    pop bc
    or c
    db $10
    pop bc
    or c
    db $10
    pop bc
    or c
    db $10
    or c
    db $10
    or c
    db $10
    rst $38
    pop bc
    or c
    db $10
    pop bc
    or c
    db $10
    pop bc
    or c
    db $10
    pop bc
    or b
    db $10
    or b
    db $10
    rst $38
    db $ed
    nop
    sub b
    ldh a, [rPCM34]
    db $ec
    inc bc
    add sp, -$16
    ld a, [bc]
    inc d
    call c, $c74d
    xor $ed
    db $e4
    ld h, a
    xor $ff
    call c, $e5b2
    db $fd
    xor d
    ld e, a
    cp $03
    add sp, $5e
    ld b, b
    jr nc, jr_01f_5ea2

    and b
    ld [hl], b
    add b
    ret nz

    and b
    ld b, b
    jr nc, jr_01f_5eaa

    and b
    ld [hl], b
    add b
    sub b
    and b
    db $fd
    xor d
    ld e, a
    cp $04
    rst $38
    ld e, [hl]
    db $fd
    push de
    ld e, a
    push hl
    ld [hl], b
    ld h, b
    ld b, b
    ld [hl], b
    db $fd
    push de
    ld e, a
    push hl
    sub b
    ld [hl], b
    ld b, b
    sub b
    db $fd
    push de
    ld e, a
    push hl
    or b
    sub b
    ld [hl], b
    ld h, b
    call c, $73c3
    ld h, e
    ld b, e
    inc sp
    call c, $fdc2
    push bc
    ld e, a
    push hl
    or d
    db $fd
    push bc
    ld e, a
    ld [bc], a
    db $fd
    push bc
    ld e, a
    ld [de], a
    call c, $e5c3
    ld [hl], e
    ld h, e
    ld b, e
    inc sp
    ld b, e
    inc sp
    inc bc
    and $b3
    call c, $b0c2
    and b
    ld [hl], b
    and b
    or b
    and b
    ld [hl], b
    and b
    push hl
    nop
    and $b0
    add b
    or b
    push hl
    nop
    and $b0
    add b
    or b
    push hl
    stop
    and $90
    push hl
    nop
    stop
    and $90

Call_01f_5f60:
    push hl
    nop
    jr nz, @+$12

    and $a0
    push hl
    db $10
    jr nz, jr_01f_5f7a

    and $a0
    push hl
    db $10
    rst $08
    cp $08
    ld l, [hl]
    ld e, a
    call c, $fdc3
    cp e
    ld e, a
    or c
    ld [hl], c

jr_01f_5f7a:
    push hl
    inc de
    and $71
    sub e
    ld h, c
    db $fd
    cp e
    ld e, a
    and c
    ld [hl], c
    or e
    ld [hl], c
    ld h, c
    ld [hl], c
    ld sp, $c2dc
    db $fd
    push bc
    ld e, a
    push hl
    or d
    db $fd
    push bc
    ld e, a
    ld [bc], a
    db $fd
    push bc
    ld e, a
    ld [de], a
    call c, $e5c7
    ld h, a
    scf
    call c, $fdc2
    xor d
    ld e, a
    db $fd
    xor d
    ld e, a
    cp $00
    push hl
    ld e, [hl]
    ld b, b
    jr nc, @-$4e

    and b
    ld [hl], b
    add b
    ret nz

    and b
    ld b, b
    jr nc, @-$4e

    and b
    ld [hl], b
    add b
    ret nz

    and b
    rst $38
    and $71
    and e
    ld [hl], c
    push hl
    inc de
    and $71
    and c
    rst $38
    push hl
    ld b, b
    ld b, b
    ld d, b
    ld b, b
    ld [hl], b
    ld b, b
    sub b
    ld b, b
    and b
    ld b, b
    or b
    ld b, b
    db $e4
    nop
    rst $38
    ld b, b
    ld b, b
    jp Jump_01f_40e7


    jp nz, $c040

    rst $38
    ld [$150b], a
    db $ec
    inc bc
    call c, $e40f
    add a
    call c, $e34d
    daa
    call c, $fdc2
    sub a
    ld h, b
    cp $03
    db $ed
    ld e, a
    and $40
    ld b, b
    or b
    push hl
    nop
    pop bc
    nop
    and $b0
    ld b, b
    ld b, b
    sub b
    ld [hl], b
    ld d, b
    ld h, b

jr_01f_6004:
    ld [hl], b
    jr nc, jr_01f_6004

    sub a
    ld h, b
    cp $04
    ld b, $60
    pop bc
    db $fd
    xor e
    ld h, b
    push hl
    inc bc
    db $fd
    xor e
    ld h, b
    push hl
    inc de
    db $fd
    xor e
    ld h, b
    push hl
    inc sp
    call c, $e4d3
    ld b, e
    inc sp
    inc bc
    push hl
    or e
    call c, $fdd2
    or l
    ld h, b
    push hl
    ld h, e
    db $fd
    or l
    ld h, b
    push hl
    ld [hl], e
    db $fd
    or l
    ld h, b
    push hl
    and e
    call c, $e4d3
    ld b, e
    inc sp
    inc bc
    push hl
    or e
    db $e4
    inc bc
    push hl
    or e
    ld [hl], e
    ld h, c
    call c, Call_01f_47d6
    ld d, a
    ld h, a
    ld [hl], a
    call c, $fdd2
    cp d
    ld h, b
    ret


    ld b, b
    ret nz

    db $fd
    cp d
    ld h, b
    set 7, l
    cp d
    ld h, b
    set 7, l
    cp d
    ld h, b
    call $d3dc
    db $fd
    call $3360
    db $fd
    call Call_000_3160
    pop bc
    call c, $fdd2
    ret nz

    ld h, b
    pop bc
    push hl
    ld h, e
    and $40
    ld b, b
    push hl
    or b
    ret nz

    db $e4
    nop
    ret nz

    db $10
    ret nz

    jr nz, jr_01f_608e

    pop bc
    push hl
    ld [hl], e
    db $fd
    ret nz

    ld h, b
    push hl
    and e
    call c, $b7d6
    db $e4

jr_01f_608a:
    scf
    call c, $fdd2

jr_01f_608e:
    sub a
    ld h, b
    db $fd
    sub a
    ld h, b
    cp $00
    db $eb
    ld e, a
    and $40
    ld b, b
    or b
    push hl
    nop
    pop bc
    nop
    and $b0
    ld b, b
    ld b, b
    or b
    push hl
    nop
    pop bc
    nop
    and $b0
    rst $38
    and $40
    ld b, b
    pop bc
    rst $20
    ld b, b
    jp nz, $c240

    rst $38
    and $40
    ld b, b
    ret


    rst $38
    rst $20
    ld b, b
    ld [hl], b
    ld b, b
    jr nc, @+$01

    and $40
    ld b, b
    db $e4
    ld b, b
    ret nz

    jr nc, @-$3e

    jr nz, jr_01f_608a

    stop
    rst $38
    push hl
    ld b, l
    ld [hl], l
    ld b, e
    sub l
    db $e4
    dec b
    push hl
    or e
    ld [hl], l
    and l
    ld h, e
    ld b, l
    ld h, l
    rst $38
    call c, $ea11
    ld [$cd26], sp
    db $e4
    jr nz, jr_01f_6115

    db $fd
    ld b, b
    ld h, c
    db $fd
    ld b, b
    ld h, c
    db $e3
    ld b, c
    jp Jump_01f_40e5


    jp nz, $c040

    db $e4
    ld h, e
    db $fd
    ld d, h
    ld h, c
    db $e4
    ld [hl], e
    db $fd
    ld d, h
    ld h, c
    db $e4
    sub e
    or e
    and e
    ld [hl], e
    ld h, e
    push bc
    db $fd
    ld [hl], a
    ld h, c
    or e
    and e
    ld [hl], e
    ld h, e
    ld [hl], e
    ld h, e
    ld b, e
    inc sp
    db $fd
    ld e, [hl]
    ld h, c
    set 7, l
    ld e, [hl]

jr_01f_6115:
    ld h, c
    set 7, l
    ld e, [hl]
    ld h, c
    ret


    ld b, b
    ret nz

    db $fd
    ld e, [hl]
    ld h, c
    set 7, l
    ld e, [hl]
    ld h, c
    set 7, l
    ld e, [hl]
    ld h, c
    ret


    jr nz, @+$32

    db $fd
    ld h, h
    ld h, c
    db $fd
    ld h, h
    ld h, c
    ld b, c
    jp Jump_01f_77fd


    ld h, c
    or a
    ld h, l
    jr nz, jr_01f_616a

    rst $08
    rst $08
    cp $00
    push hl
    ld h, b
    db $e3
    ld b, e
    or e
    and e
    ld [c], a
    inc hl
    inc de
    db $e3
    add e
    ld [hl], e
    or e
    and e
    ld b, e
    inc sp
    sub e
    add e
    ld b, e
    ld h, e
    inc sp
    rst $38
    ld [c], a
    ld b, b
    ld b, b
    jp Jump_01f_40e5


    jp nz, $c040

    rst $38
    push hl
    ld b, b
    ld [hl], b
    ld b, b
    jr nc, @+$01

    ld b, e
    or e
    and e
    db $e4
    inc hl
    inc de

jr_01f_616a:
    push hl
    add e
    ld [hl], e
    or e
    and e
    ld b, e
    inc sp
    sub e
    add e
    ld b, e
    ld h, e
    inc sp
    rst $38
    db $e4
    ld b, b
    jp nz, $c040

    ld h, e
    push bc
    ld b, b
    jp nz, $c040

    ld [hl], e
    push bc
    ld b, b
    jp nz, Jump_01f_4040

    and e
    rst $38
    call c, $b0cd
    inc c
    or b
    inc c
    db $fd
    pop af
    ld h, c
    cp $03
    sub b
    ld h, c
    or e
    dec c
    or e
    inc c
    or e
    dec c
    or c
    inc c
    or c
    inc c
    db $fd
    pop af
    ld h, c
    cp $03
    and c
    ld h, c
    or e
    dec c
    or e
    inc c
    or e
    dec c
    or e
    dec c
    db $fd
    ld a, [$fe61]
    inc bc
    or b
    ld h, c

Call_01f_61b7:
    db $fd
    ld [bc], a
    ld h, d
    db $fd
    ld a, [$fe61]
    inc bc
    cp d
    ld h, c
    db $fd
    ld [bc], a
    ld h, d
    or e
    add hl, bc
    or e
    ld a, [bc]
    or e
    ld a, [bc]
    pop bc
    or c
    add hl, bc
    or e
    dec c
    rst $08
    cp $0d
    rst $08
    ld h, c
    set 7, l
    ld a, [$fe61]
    inc bc
    push de
    ld h, c
    or e
    inc c
    or e
    inc c
    or e
    inc c
    pop bc
    or b
    inc c
    or b
    inc c
    db $fd
    pop af
    ld h, c
    db $fd
    pop af
    ld h, c
    cp $00
    sub b
    ld h, c
    or e
    dec c
    or e
    inc c
    or e
    dec c
    or e
    inc c
    rst $38
    or b
    inc c
    or b
    inc c
    ret


    or e
    ld c, $ff
    or e
    add hl, bc
    or e
    ld a, [bc]
    or e
    ld a, [bc]
    or e
    dec bc
    rst $38
    db $ed
    nop
    ld a, b
    ldh a, [rPCM34]
    db $ec
    inc bc
    ld [$340c], a
    add sp, -$24
    or l
    push hl
    sub l
    call c, $81b1
    ld h, c
    ld b, c
    ld sp, $3f11
    call c, $e5b5
    inc de
    and $83
    push hl
    ld b, e
    and $b3
    push hl
    sub c
    add a
    call c, $81a7
    sub c
    or c
    call c, $85b5
    ld b, c
    ld h, c
    ld b, c
    ld sp, $dc41
    and a
    ld h, a
    scf
    call c, $33b5
    and $b3
    push hl
    ld h, e
    inc sp
    or c
    sub a
    call c, $e4b7
    ld b, c
    ld sp, $3541
    ld de, $31e5
    ld b, c
    ld h, c
    ld [hl], c
    add c
    call c, $8097
    ld [hl], b
    add b
    ld [hl], b
    add c
    call c, Call_01f_67b7
    call c, Call_000_13b5
    and $83
    push hl
    ld b, e
    and $b3
    push hl
    sub c
    add a
    call c, $81b7
    sub c
    or c
    add l
    ld b, c
    ld h, c
    ld b, c
    ld sp, $6741
    call c, Call_000_3397
    inc de
    call c, $33b5
    and $b3
    push hl
    ld h, e
    inc sp
    or c
    sub a
    call c, Call_01f_61b7
    add c
    sub c
    or e
    sub e
    or c
    sub c
    add c
    ld h, c

jr_01f_6293:
    call c, Call_01f_43c2
    and $b3
    push hl
    ld b, c
    ld b, e
    ld b, e
    call c, $e6b7
    or c
    push hl
    ld de, $3921
    and $b1
    push hl
    ld de, $4731
    call c, $e4b5
    inc sp
    push hl
    or e
    ld h, e

Call_01f_62b1:
    inc sp
    call c, $42b7
    jr nc, jr_01f_6293

    or d
    ld de, $4931
    call c, $e6b7
    or c
    push hl
    ld de, $3921
    and $b1
    push hl
    ld de, $4731
    call c, $e4b5
    inc sp
    push hl
    or e
    ld h, e
    sub e
    call c, $81b7
    add b
    ld [hl], b
    add b
    ld [hl], b
    add b
    ld [hl], b
    add a
    cp $00
    ld [hl+], a
    ld h, d
    db $ec
    ld [bc], a
    ld [$230a], a
    call c, $e4c6
    dec d
    call c, $e5c1
    or c
    sub c
    add c
    ld h, c
    ld b, c
    ld h, c
    db $ec
    inc bc
    or b
    and b
    or b
    and b
    or b
    and b
    or a
    db $ec
    ld [bc], a
    call c, $e5c7
    ld b, e
    and $b3
    push hl
    add e
    ld b, e
    db $e4
    ld de, $bde5
    db $e4
    ld b, l
    ld sp, $e511
    or c
    sub c
    add c
    sbc a
    ld h, e
    inc sp
    sub e
    ld h, e
    db $e4
    ld sp, $651d
    ld b, c
    ld sp, $e511
    or c
    and c
    cp a
    ld b, e
    and $b3
    push hl
    add e
    ld b, e
    db $e4
    ld de, $bde5
    db $e4
    ld b, l
    ld sp, $e511
    or c
    sub c
    add c
    sbc a
    ld h, e
    inc sp
    sub e
    ld h, e
    db $e4
    ld sp, $651d
    ld b, c
    ld sp, $6141
    add c
    call c, Call_01f_41c1
    call c, Call_01f_40a1
    jr nc, jr_01f_6389

    jr nc, @+$42

    jr nc, jr_01f_638e

    call c, $e5c7
    or c
    db $e4
    ld de, $3921
    push hl
    or c
    db $e4
    ld de, $4931
    push hl
    or c
    db $e4
    ld de, $dc31
    push bc
    ld h, e
    inc sp
    push hl

jr_01f_6365:
    or e
    db $e4
    sub e
    add d
    sub b
    call c, $81c2
    ld h, c
    ld b, c
    call c, $e5c7
    or c
    db $e4
    ld de, $3921
    push hl
    or c
    db $e4
    ld de, $4931
    push hl
    or c
    db $e4
    ld de, $6331
    inc sp
    sub e
    ld h, e

jr_01f_6386:
    cp a
    cp $00

jr_01f_6389:
    ld a, [$dc62]
    inc de
    db $e3

jr_01f_638e:
    db $10
    call nz, $60e4
    ret nz

    add b
    ret nz

    sub b
    ret nz

    and b
    ret nz

    and b
    ret nz

    or b
    ret z

    push hl
    or b
    ret nz

    db $e4
    db $10
    ret nz

    jr nc, jr_01f_6365

    db $fd
    jr jr_01f_640c

    db $fd
    dec l
    ld h, h
    db $fd
    ld b, d
    ld h, h
    db $fd
    ld d, a
    ld h, h
    db $fd
    ld l, h
    ld h, h
    db $fd
    add c
    ld h, h
    db $fd
    sub [hl]
    ld h, h
    jr nc, @-$3e

    sub b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    sub b
    ret nz

    jr nc, jr_01f_6386

    sub b
    ret nz

    add b
    ret nz

    ld h, b
    ret nz

    db $fd
    jr jr_01f_6433

    db $fd
    dec l
    ld h, h
    db $fd
    ld b, d
    ld h, h
    db $fd
    ld d, a
    ld h, h
    db $fd
    ld l, h
    ld h, h
    db $fd
    add c
    ld h, h
    db $fd
    sub [hl]
    ld h, h
    ld b, b
    jp nz, $b0e5

    jp nz, Jump_01f_40e4

    ret nz

    ld b, b
    jp nz, $c0b0

    db $fd
    ld l, h
    ld h, h
    db $fd
    jr jr_01f_6457

    db $fd
    xor e
    ld h, h
    ld b, b
    ret nz

    add b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    add b
    ret nz

    ld b, b

jr_01f_6401:
    ret nz

    add b
    ret nz

    ld h, b
    ret nz

    ld b, b
    ret nz

    db $fd
    ld l, h
    ld h, h
    db $fd

jr_01f_640c:
    jr jr_01f_6472

    db $fd
    xor e
    ld h, h
    db $fd
    dec l
    ld h, h
    cp $00
    and l
    ld h, e
    ld b, b

jr_01f_6419:
    ret nz

    add b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    add b
    ret nz

    ld b, b

jr_01f_6423:
    ret nz

    add b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    add b
    ret nz

    rst $38
    ld b, b

jr_01f_642e:
    ret nz

    add b
    ret nz

    push hl
    or b

jr_01f_6433:
    ret nz

    db $e4
    add b
    ret nz

    ld b, b

jr_01f_6438:
    ret nz

    push hl
    or b
    ret nz

    db $e4
    db $10
    ret nz

    jr nc, jr_01f_6401

    rst $38
    ld b, b

jr_01f_6443:
    ret nz

    or b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    or b
    ret nz

    ld b, b

jr_01f_644d:
    ret nz

    or b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    or b

jr_01f_6455:
    ret nz

    rst $38

jr_01f_6457:
    jr nc, jr_01f_6419

    sub b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    sub b
    ret nz

    jr nc, jr_01f_6423

    sub b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    sub b
    ret nz

    rst $38
    jr nc, jr_01f_642e

    ld h, b
    ret nz

    push hl
    or b

jr_01f_6472:
    ret nz

    db $e4
    ld h, b
    ret nz

    jr nc, jr_01f_6438

    ld h, b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    ld h, b
    ret nz

    rst $38
    jr nc, jr_01f_6443

    ld h, b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    ld h, b
    ret nz

    jr nc, jr_01f_644d

    push hl
    or b
    ret nz

    db $e4
    db $10
    ret nz

    jr nc, jr_01f_6455

    rst $38
    ld h, b
    ret nz

    or b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    or b
    ret nz

    ld h, b
    ret nz

    or b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    or b
    ret nz

    rst $38
    ld h, b
    ret nz

    sub b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    sub b
    ret nz

    ld h, b
    ret nz

    sub b
    ret nz

jr_01f_64b9:
    push hl
    or b
    ret nz

    db $e4
    sub b
    ret nz

    rst $38
    db $ed
    nop
    sub b
    ldh a, [rPCM34]
    ld [$3409], a
    db $ec
    inc bc
    call c, $e6c1
    ld b, b
    ld [hl], b
    or b
    push hl
    jr nz, jr_01f_64b9

    ld [hl], e
    ld [hl], l
    ld [hl], b
    ld [hl], b
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ret c

    pop bc
    sub c
    sub c
    sub c
    sub c
    sub c
    ld h, c
    db $fd
    ld b, c
    ld h, l
    db $fd
    ld c, d
    ld h, l
    db $fd
    ld b, c
    ld h, l
    push hl
    rlca
    ret c

    add $43
    ld b, e
    inc bc
    call c, $e6c6
    or a
    ret c

    rst $20
    push hl
    ld d, e
    ld b, e
    inc bc
    call c, $29e7
    call c, $e6c6
    or c
    push hl
    ld bc, $fd21
    ld b, c
    ld h, l
    db $fd
    ld c, d
    ld h, l
    db $fd
    ld b, c
    ld h, l
    dec b
    dec b
    ld b, e
    dec h
    ld d, c
    ld [hl], c
    inc hl
    ld [hl], c
    ld [hl], l
    sub e
    ld d, c
    sub c
    db $e4
    ld bc, $2be5
    ld b, e
    ld d, a
    ld [hl], e
    ld d, e
    ld c, e
    ld d, e
    ld [hl], a
    call c, $e4b6

jr_01f_6529:
    inc bc
    inc de
    db $fd
    ld e, h

jr_01f_652d:
    ld h, l
    ret c

    or h
    db $e4

jr_01f_6531:
    inc bc
    inc bc
    inc de
    db $fd

jr_01f_6535:
    ld e, h
    ld h, l
    ret c

    or d
    push hl
    ld b, e
    ld b, e
    inc de
    cp $00
    ld [c], a
    ld h, h
    call c, $e5c6
    dec h
    and $b1
    push hl
    daa
    rst $38
    dec b
    ld d, l
    inc bc
    daa
    call c, $55e7
    ld b, b
    jr nc, jr_01f_657b

    ret c

    add $03
    and $b3
    push hl
    inc bc
    rst $38
    call c, Call_000_20c1
    ret nz

    and $20
    jr nz, @+$22

    ret nz

    jr nz, jr_01f_6587

    jr nz, jr_01f_6529

    jr nz, jr_01f_658b

    jr nz, jr_01f_652d

    jr nz, jr_01f_658f

    jr nz, jr_01f_6531

    jr nz, jr_01f_6593

    jr nz, jr_01f_6535

    jr nz, jr_01f_6597

    rst $38
    ld [$4610], a

jr_01f_657b:
    db $ec
    ld bc, $e1dc
    and $70
    or b
    push hl
    jr nz, @+$62

    ld [hl], e
    ld [hl], l

jr_01f_6587:
    ld [hl], b
    ld [hl], b
    ld [hl], e
    ld [hl], e

jr_01f_658b:
    ld [hl], e
    ret c

    pop hl
    ld d, c

jr_01f_658f:
    ld d, c
    ld d, c
    ld d, c
    ld d, c

jr_01f_6593:
    ld h, c
    ld [$4610], a

jr_01f_6597:
    db $fd
    ld [hl+], a
    ld h, [hl]
    and $93
    ld d, e
    db $fd
    inc l
    ld h, [hl]
    and $97
    cp a
    db $fd
    ld [hl+], a
    ld h, [hl]
    and $95
    ld d, c
    ret c

    rst $20
    db $e4
    inc bc
    push hl
    or e
    db $e4

Call_01f_65b0:
    inc bc
    call c, Call_000_27e7
    call c, $e695

Call_01f_65b7:
    dec h
    jr nz, jr_01f_661a

    ld a, a
    db $fd
    ld [hl+], a
    ld h, [hl]
    and $91
    ld d, l
    db $fd
    inc l
    ld h, [hl]
    push hl
    ld bc, $95e6
    or l
    ld [hl], c
    ld d, a
    db $fd
    ld [hl+], a
    ld h, [hl]
    ret c

    sub l
    and $73
    ld d, h
    sub d
    ret c

jr_01f_65d5:
    and $e4
    ld d, e

jr_01f_65d8:
    ld b, e
    ld d, e
    call c, $75e7
    and c
    ld [hl], a
    ld [$2610], a

jr_01f_65e2:
    db $ec
    inc bc
    call c, $770b
    call c, $97e7
    db $ec
    ld bc, $e7dc
    and l
    ld d, c

jr_01f_65f0:
    ld d, a
    push hl
    daa
    db $e4
    and e
    or e
    db $e3
    dec b
    db $e4
    ld [hl], c
    ld [hl], a
    push hl
    ld b, a
    call c, $e3d7
    inc bc

jr_01f_6601:
    inc de
    db $fd

jr_01f_6603:
    ld [hl], $66
    jp nz, $c220

    jr nz, jr_01f_65e2

jr_01f_660a:
    push hl
    db $e3
    inc bc
    inc bc
    inc de
    db $fd
    ld [hl], $66
    jr nz, jr_01f_65d5

    jr nz, jr_01f_65d8

    jr nz, jr_01f_65f0

    db $e3
    db $e3

jr_01f_661a:
    inc bc
    inc bc
    db $e4
    or e
    cp $00
    sub h
    ld h, l
    call c, $e5e7
    ld [hl], l
    or c
    db $e4
    daa
    call c, $ff95
    call c, $e4e7
    ld d, l
    ld b, b
    jr nc, jr_01f_665a

    call c, $ff95
    call c, Call_000_20e1
    pop bc
    db $e4
    jr nz, @-$3c

    jr nz, jr_01f_6601

    jr nz, jr_01f_6603

    jr nz, @+$01

    call c, $e510
    ld [hl], b
    ret nz

    jr nz, jr_01f_660a

    ld [hl], b
    jp nz, $c470

    ld [hl], b
    ld [hl], b
    ld [hl], b
    jp nz, $c270

    ld [hl], b
    jp nz, Jump_000_10d8

    ld d, c
    ld d, c

jr_01f_665a:
    ld d, c
    ld d, c
    ld d, c
    sub c
    db $fd
    ret


    ld h, [hl]
    db $fd
    ret nc

    ld h, [hl]
    db $fd
    ret


    ld h, [hl]
    db $fd
    ret


    ld h, [hl]
    db $fd
    ret


    ld h, [hl]
    db $fd
    ret nc

    ld h, [hl]
    cp $03
    ld h, h
    ld h, [hl]
    db $fd
    ret


    ld h, [hl]
    ld [hl], l
    ld [hl+], a
    sub l
    ld d, d
    sub d
    ld d, d
    db $fd
    rst $10
    ld h, [hl]
    and d
    ld d, d
    db $fd
    rst $10
    ld h, [hl]
    or d
    ld [hl], d
    db $fd
    call c, $e466
    ld [bc], a
    push hl
    ld [hl], d
    db $fd
    call c, $e466
    ld [de], a
    push hl
    sub d
    db $fd
    push hl
    ld h, [hl]
    db $e3
    db $eb
    nop
    ld b, d
    inc hl
    jp $ebe2


    nop
    ld [hl-], a
    inc hl
    db $e3
    db $eb
    nop
    ld b, d
    inc hl
    pop bc
    ret c

    db $10
    db $e4
    inc bc
    inc bc

jr_01f_66ae:
    inc de
    db $fd
    push hl
    ld h, [hl]
    ld [c], a
    db $eb
    nop
    ld [hl-], a
    inc hl
    jp $ebe3


    nop
    ld b, d
    inc hl
    push bc
    ret c

    db $10
    db $e4
    inc bc
    inc bc
    push hl
    or e
    cp $00
    ld e, [hl]
    ld h, [hl]
    ld [hl], l
    ld [hl+], a
    ld [hl], l
    ld [hl+], a
    ld [hl], d
    ld [hl+], a
    rst $38
    ld d, l
    ld [bc], a
    ld d, l
    ld [bc], a
    ld d, d
    ld [bc], a
    rst $38
    and l
    ld d, d
    and l
    ld d, d
    rst $38
    db $e4
    dec b
    push hl
    ld [hl], d
    db $e4
    dec b
    push hl
    ld [hl], d
    rst $38
    call c, $e410
    jr nz, jr_01f_66ae

    rst $38
    sub $c3
    or b
    inc bc
    or b
    inc bc
    or b
    inc b
    or b
    inc b
    call c, Call_000_02b0
    jp nz, Jump_000_02b0

    call nz, Call_000_02b0
    or b
    ld [bc], a
    or b
    ld [bc], a
    jp nz, Jump_000_02b0

    jp nz, Jump_000_02b0

    jp nz, $b1d8

    inc bc
    or c
    inc b
    or c
    ld [bc], a
    or c
    inc bc
    or c
    ld [bc], a
    or c
    ld bc, $b0dc
    ld [bc], a
    jp nz, Jump_000_02b0

    call nz, Call_000_02b0
    or b
    ld [bc], a
    or b
    inc bc
    jp nz, $34fd

    ld l, b
    db $fd
    inc [hl]
    ld l, b
    or b
    ld [bc], a
    jp nz, Jump_000_02b0

    call nz, Call_000_02b0
    or b
    ld [bc], a
    or b
    inc bc
    ret nz

    or b
    inc bc
    or b
    ld [bc], a
    db $fd
    ld b, d
    ld l, b
    or b
    ld [bc], a
    jp nz, Jump_000_02b0

    call nz, Call_000_02b0
    or b
    inc bc
    or b
    ld [bc], a
    ret nz

    or b
    ld [bc], a
    ret nz

    db $fd
    ld b, d
    ld l, b
    or b
    ld [bc], a
    jp nz, Jump_000_02b0

    call nz, Call_000_02b0
    or b
    inc bc
    or b
    ld [bc], a
    ret nz

    sub $b0
    inc bc
    or b
    inc bc
    or b
    inc b
    or b
    inc b
    call c, $34fd
    ld l, b
    db $fd
    ld b, d
    ld l, b
    or b
    ld [bc], a
    jp nz, Jump_000_02b0

    call nz, Call_000_02b0
    or b
    inc bc
    or b
    ld [bc], a
    jp nz, Jump_000_02b0

    jp nz, Jump_000_02b0

    call nz, Call_000_03b0
    or b
    ld [bc], a
    or b
    ld [bc], a
    ret nz

    or b
    inc bc
    or b
    ld [bc], a
    db $fd
    inc [hl]
    ld l, b
    db $fd
    ld b, d
    ld l, b
    or b
    ld [bc], a
    jp nz, Jump_000_02b0

    call nz, Call_000_03b0
    or b
    ld [bc], a
    or b
    ld [bc], a
    ret nz

    or b
    inc b
    or b
    inc bc
    or b
    ld [bc], a
    jp nz, Jump_000_03b0

    call nz, Call_000_02b0
    or b
    inc b
    or b
    ld [bc], a
    ret nz

Call_01f_67b0:
    sub $b0
    inc bc
    or b
    inc bc
    or b
    inc b

Call_01f_67b7:
    or b
    inc b
    call c, Call_000_01b0
    jp nz, Jump_000_02b0

    call nz, Call_000_03b0
    or b
    ld [bc], a
    or b
    ld bc, $b0c2
    ld [bc], a
    jp nz, Jump_000_03b0

    call nz, Call_000_03b0
    or b
    ld [bc], a
    or b
    inc bc
    jp nz, Jump_000_02b0

    jp nz, Jump_000_03b0

    call nz, Call_000_02b0
    or b
    inc bc
    or b
    inc b
    ret nz

    or b
    inc bc
    or b
    ld [bc], a
    or b
    ld [bc], a
    jp nz, Jump_000_03b0

    call nz, Call_000_02b0
    or b
    inc bc
    or b
    ld [bc], a
    jp nz, Jump_000_05b0

    call nz, Call_000_02b0
    jp nz, Jump_000_03b0

    or b
    ld [bc], a
    or b
    ld bc, $b0c4
    ld [bc], a
    or b
    inc bc
    or b
    ld [bc], a
    ret nz

    or b
    ld bc, $d8c0
    or e
    ld [bc], a
    or e
    inc bc
    or e
    ld bc, $b0dc
    dec b
    call nz, Call_000_02b0
    jp nz, Jump_000_03b0

    or b
    ld [bc], a
    or b
    inc bc
    call nz, Call_000_02b0
    or b
    inc bc
    or b
    ld bc, $b0c0
    inc bc
    or b
    ld [bc], a
    ret c

    or e
    ld [bc], a
    or e
    inc bc
    or e
    ld [bc], a
    cp $00
    ld d, $67
    or b
    ld [bc], a
    jp nz, Jump_000_02b0

    call nz, Call_000_02b0
    or b
    inc bc
    or b
    ld [bc], a
    jp nz, $b0ff

    ld [bc], a
    jp nz, Jump_000_02b0

    call nz, Call_000_03b0
    or b
    ld [bc], a
    or b
    ld [bc], a
    jp nz, $f8ff

    db $ed
    ld bc, $f000
    ld [hl], a
    ld [$2606], a
    db $ec
    ld [bc], a
    add sp, -$2c
    or c
    push hl
    add c
    add c
    add c
    call c, $e4b3
    ld b, e
    rst $38
    ld hl, sp-$16
    ld [$ec27], sp
    ld [bc], a
    call nc, $e4c1
    ld b, c
    ld b, c
    ld b, c
    call c, $b3c3
    rst $38
    ld hl, sp-$2c
    db $10
    db $e4
    or b
    ret nz

    or b
    ret nz

    or b
    ret nz

    call c, $e410
    or c
    pop bc
    rst $38
    db $ed
    nop
    sub b
    ldh a, [rPCM34]
    db $ec
    inc bc
    add sp, -$16
    ld a, [bc]
    inc d
    call c, $e4b2
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    and e
    and e
    and e
    and e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    db $e3
    inc de
    inc de
    inc de
    inc de
    push hl
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    and e
    and e
    and e
    and e
    and $71
    and e
    ld [hl], c
    push hl
    inc de
    and $71
    and c
    or c
    ld [hl], c
    push hl
    inc de
    and $71
    sub e
    ld h, c
    cp $02
    sub d
    ld l, b
    call c, $e51f
    ld c, a
    rrca
    cpl
    and $af
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    cp $00
    sub d
    ld l, b
    ld [$150b], a
    db $ec
    inc bc
    call c, $e5c2
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    inc bc
    inc bc
    inc bc
    inc bc
    or e
    or e
    or e
    or e
    db $e4
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    inc hl
    inc hl
    inc hl
    inc hl
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld h, e
    cp $02
    db $db
    ld l, b
    push hl
    ld b, c
    ld [hl], c
    ld b, c
    ld sp, $4141
    db $e3
    ld b, c
    pop bc
    ld sp, $21c1
    pop bc
    ld de, $e401
    ld b, c
    ld [hl], c
    push hl
    and c
    ld de, $91a1
    and c
    ld [hl], c
    db $e3
    ld [hl], c
    pop bc
    ld h, c
    pop bc
    ld d, c
    pop bc
    ld b, c
    ld sp, $1121
    rst $08
    rst $08
    rst $08
    rst $08
    call c, $ecc7
    ld bc, $4fe4
    cpl
    rrca
    cpl
    cp $00
    db $db
    ld l, b
    call c, $ea13
    ld [$fd26], sp
    pop de
    ld l, c
    cp $10
    ld b, b
    ld l, c
    ld b, e
    jp Jump_01f_43c3


    inc bc
    jp $03c3


    inc hl
    jp $23c3


    push hl
    and e
    jp $a3c3


    db $e3
    ld b, c
    pop bc
    or c
    pop bc
    and c
    pop bc
    ld [c], a
    ld hl, $11c1
    pop bc
    db $e3
    add c
    pop bc
    ld [hl], c
    pop bc
    or c
    pop bc
    and c
    pop bc
    ld b, c
    pop bc
    ld sp, $91c1
    pop bc
    add c
    pop bc
    ld b, c
    pop bc
    ld h, c
    pop bc
    ld sp, $fec1
    inc bc
    ld e, b
    ld l, c
    db $e4
    ld b, e
    or e
    and e
    db $e3
    inc hl
    inc de
    db $e4
    add e
    ld [hl], e
    or e
    and e
    ld b, e
    inc sp
    sub e
    add e
    ld b, e
    ld h, e
    inc sp
    push hl
    ld c, a
    rrca
    cpl
    and $af
    push hl
    ld c, a
    ld e, a
    ld a, a
    push hl
    cp a
    rst $08
    rst $08
    rst $08
    rst $08
    db $fd
    pop de
    ld l, c
    db $fd
    pop de
    ld l, c
    db $fd
    pop de
    ld l, c
    db $fd
    pop de
    ld l, c
    db $fd
    pop de
    ld l, c
    db $fd
    pop de
    ld l, c
    db $fd
    pop de
    ld l, c
    db $fd
    pop de
    ld l, c
    cp $00
    ld b, b
    ld l, c
    and $71
    and e
    ld [hl], c
    push hl
    inc de
    and $71
    sub c
    and c
    ld [hl], c
    push hl
    inc de
    and $71
    and c
    ld [hl], c
    pop bc
    rst $38
    db $e4
    ld b, c
    jp Jump_01f_40e5


    jp nz, $c040

    db $e4
    ld h, e
    rst $38
    call c, $0cb3
    or e
    dec c
    or e
    inc c
    or e
    ld a, [bc]
    or e
    inc c
    or e
    dec c
    or e
    dec bc
    or e
    add hl, bc
    cp $00
    db $dd
    ld l, c
    db $ed
    nop
    and b
    ldh a, [rPCM34]
    db $ec
    inc bc
    add sp, -$16
    ld [$dc14], sp
    jp $b2fd


    ld l, d
    cp $03
    cp $69
    and $b1
    push hl
    ld sp, $e671
    or c
    push hl
    ld sp, $3171
    ld b, c
    db $fd
    pop bc
    ld l, d
    cp $04
    ld de, $fd6a
    or d
    ld l, d
    cp $04
    jr jr_01f_6a89

    db $e4
    ld d, c
    ld d, c
    pop bc
    ld d, c
    ld b, c
    ld b, c
    ld sp, $c131
    ld sp, $2121
    db $fd
    db $fc
    ld l, d
    db $e4
    ld hl, $c121
    ld hl, $3131
    ld b, c
    ld b, c
    pop bc
    ld b, c
    ld d, c
    ld d, c
    db $fd
    adc $6a
    cp $04
    inc a
    ld l, d
    db $fd
    db $dd
    ld l, d
    cp $03
    ld b, e
    ld l, d
    push hl
    ld de, $91e6
    ld d, c
    push hl
    ld de, $91e6
    ld d, c
    push hl
    sub c
    ld d, c
    db $e4
    ld de, $91e5
    ld d, c
    db $e4
    ld de, $91e5
    ld d, c
    sub c
    ld d, c
    db $e4
    ld de, $91e5
    ld d, c
    db $e4
    ld de, $91e5
    ld d, c
    db $e4
    ld de, $91e5
    ld d, c
    db $e4
    ld de, $91e5
    ld d, c
    db $e4
    ld de, $91e5
    ld d, c
    db $e4
    ld de, $91e5
    ld d, c
    add c
    ld b, c
    db $e4
    ld bc, $81e5
    ld b, c
    db $e4

jr_01f_6a89:
    ld bc, $eafd
    ld l, d
    db $fd
    ld [$e56a], a
    add c
    ld b, c
    db $e4
    ld bc, $81e5
    ld b, c
    db $e4
    ld bc, $81e5
    ld b, c
    rst $08
    rst $00
    db $fd
    rst $30
    ld l, d
    db $fd
    rst $30
    ld l, d
    db $fd
    rst $30
    ld l, d
    db $fd
    rst $30
    ld l, d
    ld sp, $cfcf
    cp $00
    db $fc
    ld l, c
    and $b1
    push hl
    ld sp, $e671
    or c
    push hl
    ld sp, $e671
    or c
    push hl
    ld sp, $41ff
    add c
    db $e4
    ld bc, $41e5
    add c
    db $e4
    ld bc, $41e5
    add c
    rst $38
    push hl
    ld sp, $b1e6
    push hl
    ld [hl], c
    ld sp, $b1e6
    push hl
    ld [hl], c
    ld sp, $b1e6
    rst $38
    sub c
    ld d, c
    push hl
    ld de, $91e6
    ld d, c
    push hl
    ld de, $91e6
    ld d, c
    rst $38
    push hl
    add c
    ld b, c
    add c
    ld b, c
    db $e4
    ld bc, $81e5
    ld b, c
    db $e4
    ld bc, $31ff
    ld [hl], c
    ld sp, $ff15
    db $ed
    nop
    xor b
    rst $20
    and b
    or b
    and $00
    db $10
    jr nz, jr_01f_6b37

    ld b, b
    ld d, b
    db $ed
    nop
    or b
    rst $20
    and b
    or b
    and $00
    db $10
    jr nz, jr_01f_6b44

    ld b, b
    ld d, b
    db $ed
    nop
    cp b
    rst $20
    and b
    or b
    and $00
    db $10
    jr nz, jr_01f_6b51

    ld b, b
    ld d, b
    db $ed
    nop
    ret nz

    rst $20
    sub b
    and b
    or b
    and $00
    db $10
    jr nz, jr_01f_6b5f

    ld b, b
    db $ed
    nop
    ret z

    rst $20
    add b
    sub b
    and b

jr_01f_6b37:
    or b

jr_01f_6b38:
    and $00
    db $10
    jr nz, jr_01f_6b6d

    db $ed
    nop
    ret nc

    rst $20
    ld [hl], b
    add b
    sub b

jr_01f_6b44:
    and b
    or b
    and $00
    db $10
    jr nz, jr_01f_6b38

    nop
    ret c

    rst $20
    ld h, b
    ld [hl], b
    add b

jr_01f_6b51:
    sub b
    and b
    or b
    and $00
    db $10
    db $ed
    nop
    ldh [$e7], a
    ld d, b
    ld h, b
    ld [hl], b
    add b

jr_01f_6b5f:
    sub b
    and b
    or b
    and $00
    db $ed
    nop
    and b
    rst $38
    ld [$150b], a
    db $ec
    inc bc

jr_01f_6b6d:
    call c, $e4d3
    dec [hl]
    dec d
    push hl
    or c
    db $e4
    ld de, $7131
    ld sp, $e515
    or c
    db $e4
    ld de, $7131
    ld sp, $e515
    or c
    and c
    or l
    db $e4
    rla
    pop bc
    add l
    ld h, l
    ld b, c
    ld h, c
    add c
    db $e3
    ld bc, $81e4
    ld h, l
    ld b, c
    ld h, c
    add c
    db $e3
    ld bc, $81e4
    ld h, l
    ld b, c
    ld sp, $6545
    ld b, e
    dec [hl]
    dec d
    push hl
    or c
    db $e4
    ld de, $7131
    ld sp, $e515
    or c
    db $e4
    ld de, $7131

Call_01f_6bb0:
    ld sp, $e515
    or c
    and c
    or l
    db $e4
    rla
    pop bc
    add c
    add c
    pop bc
    add c
    sub c
    sub c
    and c
    and c
    pop bc
    and c
    or c
    or c
    rst $00
    rst $00

Call_01f_6bc7:
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    db $e4
    or c
    or c
    pop bc
    or c
    and c
    and c
    sub c
    sub c
    pop bc
    sub c
    add c
    add c
    rla
    pop bc
    push hl
    or l
    and c
    or c
    db $e4
    ld sp, $3171
    dec d
    push hl
    or c
    db $e4
    ld de, $7131
    ld sp, $e515
    or c
    db $e4
    ld de, $7535
    push hl
    ld [hl], a
    pop bc
    ld d, l
    ld b, c
    ld d, c
    sub c
    db $e4
    ld de, $91e5
    ld [hl], l
    ld d, c
    ld [hl], c
    sub c
    db $e4
    ld de, $91e5
    ld [hl], l
    sub l
    db $e4
    dec d
    ld [hl], a
    pop bc
    ld d, l
    ld b, c
    ld d, c
    sub c
    db $e3
    ld de, $91e4
    ld [hl], l
    sub c
    db $e3
    ld de, $91e4
    ld [hl], l
    sub l
    db $e3
    dec d
    db $e4
    ld h, a
    pop bc
    ld b, l
    ld sp, $8141
    db $e3
    ld bc, $81e4
    ld h, l
    ld b, c
    ld h, c
    add c
    db $e3
    ld bc, $81e4
    ld h, l
    add l
    db $e3
    dec b
    push hl
    ld sp, $3171
    dec d
    ld sp, $3171
    dec d
    and $41
    add c
    push hl
    ld bc, $8141
    db $e4
    ld bc, $8141
    ld bc, $8141
    ld bc, $8141
    ld bc, $8141
    ld bc, $8141
    ld bc, $8141
    ld bc, $e631
    or c
    push hl
    ld sp, $e671
    or c
    push hl
    ld sp, $e671
    or c
    push hl
    ld sp, $b1e6
    push hl
    ld sp, $e671
    or c
    push hl
    ld sp, $e671
    or c
    push hl
    ld sp, $00fe
    ld l, l
    ld l, e
    call c, $cf12
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    set 2, [hl]
    db $10
    push hl
    or b
    db $e4
    nop
    db $10
    jr nz, jr_01f_6cc1

    ld b, b
    pop bc
    nop
    db $10
    jr nz, jr_01f_6cc7

    ld b, b
    ld d, b
    rst $08
    rst $08
    ret


    db $e3
    ld b, a
    db $e4
    or a
    db $e3
    scf
    db $e4
    and a
    db $e3
    daa
    db $e4
    sub a
    db $e3
    rla
    db $e4
    add a
    db $e3
    rlca
    db $e4
    ld [hl], a
    or a
    ld h, a
    and a
    ld d, a
    sub a
    ld b, a
    rst $08
    rst $08
    rst $00
    ld d, b
    ld b, b
    jr nc, jr_01f_6cdd

    stop
    pop bc
    ld b, b

jr_01f_6cc1:
    jr nc, jr_01f_6ce3

    stop
    push hl
    or b

jr_01f_6cc7:
    ret


    rst $08
    call c, $cf10
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08

jr_01f_6cdd:
    rst $08
    rst $08
    ret


    cp $00
    ld a, d

jr_01f_6ce3:
    ld l, h
    call c, $cfcf
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    ret


    rst $38
    db $ed
    nop
    sub b
    ldh a, [rPCM34]
    ld [$250b], a
    db $ec
    ld [bc], a
    call c, $e362
    ld b, b
    ld b, b
    db $e4
    or b
    or b
    nop
    pop bc
    db $e3
    or c
    ld b, c
    db $e4
    ld bc, $41b1
    nop
    db $e3
    or b
    pop bc
    cp $0e
    add hl, de
    ld l, l
    call c, $cfa5
    rst $08
    adc $e4
    nop
    db $e3
    or b
    or c
    cp $00
    add hl, de
    ld l, l
    db $ec
    ld [bc], a
    add sp, -$16
    ld a, [bc]
    inc h
    call c, $cfc2
    rst $08
    cp $04
    ld c, b
    ld l, l
    call c, $fdc2
    ld l, h
    ld l, l
    cp $03
    ld d, b
    ld l, l
    push hl
    ld b, e
    inc sp
    or e
    and e
    ld [hl], e
    add e
    jp $43a3


    inc sp
    or e
    and e
    ld [hl], e
    add e
    ld [hl], e
    inc sp
    cp $00
    ld c, [hl]
    ld l, l
    push hl
    ld b, e
    inc sp
    or e
    and e
    ld [hl], e
    add e
    sub e
    and e
    ld b, e
    inc sp
    or e
    and e
    ld [hl], e
    add e
    jp $ffa3


    call c, $e611
    or c
    pop bc
    push hl
    ld b, c
    pop bc
    ld b, c
    pop bc
    ld b, c
    pop bc
    ld b, c
    pop bc
    ld b, c
    pop bc
    ld b, c
    pop bc
    ld b, c
    pop bc
    ld bc, $e5c1
    ld sp, $31c1
    pop bc
    ld sp, $31c1
    pop bc
    ld sp, $31c1
    pop bc
    ld sp, $fec1
    ld [$6d80], sp
    ld c, a
    ccf
    ld a, a
    add a
    scf
    cp $00
    add b
    ld l, l
    sub $cf
    rst $08
    rst $08
    rst $08
    or c
    inc c
    or c
    inc c
    or e
    dec c
    or c
    inc c
    or c
    inc c
    or e
    dec c
    or c
    inc c
    or c
    inc c
    or e
    dec c
    or c
    inc c
    or c
    inc c
    or e
    ld c, $b1
    inc c
    or c
    inc c
    pop bc
    ret


    rst $00
    or a
    ld c, $fe
    nop
    or l
    ld l, l
    ld hl, sp-$13
    ld bc, $f000
    ld [hl], a
    db $ec
    ld [bc], a
    push de
    or c
    push hl
    sub c
    sub c
    ld [hl], c
    ld [hl], c
    ld d, c
    ld b, c
    ld d, c
    sub c
    db $e4
    inc bc
    ld b, e
    push hl
    ld d, e
    rst $38
    ld hl, sp-$14
    ld [bc], a
    push de
    jp nz, Jump_01f_51e3

    ld b, b
    ret nz

    ld hl, $c000
    db $e4
    and c
    db $e3
    ld bc, $4121
    ld d, e
    ld [hl], e
    ld d, e
    rst $38
    ld hl, sp-$2b
    db $10
    db $e3
    nop
    ret nz

    db $e4
    ld d, c
    db $e3
    nop
    ret nz

    db $e4
    and b
    ret nz

    sub b
    ret nz

    ld [hl], b
    ret nz

    ld d, b
    ret nz

    ld b, b
    ret nz

    db $e3
    ld d, b
    jp nz, $c200

    db $e4
    ld d, c
    pop bc
    rst $38

jr_01f_6e28:
    ld hl, sp-$13

jr_01f_6e2a:
    ld bc, $f000
    ld [hl], a
    db $ec
    ld [bc], a
    add sp, -$2b
    or h
    db $e4
    inc hl
    inc bc
    push hl
    sub a
    push de
    or d
    db $e4
    ld sp, $2131
    ld bc, $e501
    and c
    push de
    or h
    db $e4
    rlca
    rst $38
    ld hl, sp-$16
    ld [$ec27], sp
    ld [bc], a
    push de
    push bc
    db $e4
    sub e
    ld d, e
    rlca
    push de
    jp nz, $a1a1

    and c
    ld [hl], c
    ld [hl], c
    and c
    push de
    call nz, $ff97
    ld hl, sp-$2b
    db $10
    db $e3
    ld d, e
    inc sp
    rlca
    jr nc, jr_01f_6e28

    jr nc, jr_01f_6e2a

    ld b, b
    ret nz

    ld d, b
    ret nz

    ld d, b
    ret nz

    ld [hl], b
    ret nz

    sub a
    rst $38
    ld hl, sp-$13
    ld bc, $f000
    ld [hl], a
    db $ec
    ld [bc], a
    add sp, -$2b
    and h
    push hl
    and e
    push de
    or c
    db $e4
    ld bc, $0000
    push de
    and h
    inc sp
    push de
    or c
    ld d, c
    ld d, b
    ld d, b
    push de
    or h
    and a
    rst $38
    ld hl, sp-$16
    inc b
    inc hl
    db $ec
    ld [bc], a
    push de
    pop de
    db $e4
    ld [hl], c
    ld [hl], b
    ld [hl], b
    push de
    call nz, $d533
    pop de
    add c
    add b
    add b
    and c
    and b
    and b
    push de
    call nz, $37e3
    rst $38
    ld hl, sp-$2b
    db $10
    db $e4
    inc sp
    add e
    ld [hl], e
    ld d, e
    scf
    rst $38
    db $ed
    nop
    adc h
    ldh a, [rPCM34]
    db $ec
    inc bc
    ld [$1210], a
    add sp, -$24
    or e
    and $b0
    push hl
    db $10
    jr nz, @+$42

    ld h, b
    add b
    sub b
    or b
    db $e4
    inc de
    push hl
    or c
    db $e4
    ld de, $93e5
    add c
    sub c
    or b
    jp nz, $8095

    or b
    db $e4
    inc de
    push hl
    sub e
    add c
    sub c
    ld h, e
    ld b, c
    ld h, c
    add b
    jp nz, Jump_01f_4367

jr_01f_6eec:
    sub l
    ld b, b
    sub b
    db $e4
    daa
    dec d
    push hl
    sub b
    db $e4
    db $10
    ld b, a
    inc hl
    inc de
    push hl
    or e
    sub e
    add b
    jp nz, $6343

    add e
    cp $00
    ret nc

    ld l, [hl]
    db $ec
    inc bc
    ld [$250a], a

jr_01f_6f0a:
    call c, $e5c4
    add b
    sub b
    or b
    db $e4
    db $10
    jr nz, @+$42

    ld h, b
    add b
    sub l
    add b
    ld h, b
    ld b, l
    jr nc, jr_01f_6f5c

    ld h, b
    jp nz, Jump_01f_4347

    ld h, l
    ld b, b
    jr nz, jr_01f_6f39

    push hl
    or b
    db $e4
    db $10
    jr nz, jr_01f_6eec

    rla
    inc de
    dec h
    push hl
    sub b
    db $e4
    jr nz, @+$69

    ld b, l
    db $10
    ld b, b
    sub a
    add e
    sub c
    add c

jr_01f_6f39:
    ld h, e
    add c
    ld h, c
    ld b, b
    ret nz

    push hl
    add b
    ret nz

    sub b
    ret nz

    or b
    ret nz

    db $e4
    db $10
    ret nz

    jr nz, jr_01f_6f0a

    ld b, b
    ret nz

    ld h, b
    ret nz

    cp $00
    ld d, $6f

jr_01f_6f52:
    call c, $c111
    db $e4
    add b
    ret nz

    ld h, b
    ret nz

jr_01f_6f5a:
    ld b, b
    ret nz

jr_01f_6f5c:
    db $10
    ret nz

    sub b
    jp nz, $c290

    sub b
    ret nz

    ld b, b
    ret nz

    sub b
    ret nz

    db $10
    ret nz

    sub b
    jp nz, $c290

    sub b
    ret nz

    ld b, b
    ret nz

jr_01f_6f72:
    sub b
    ret nz

    push hl
    sub b
    ret nz

    db $e4
    ld h, b
    jp nz, $c260

    ld h, b
    ret nz

    db $10
    ret nz

    ld h, b
    ret nz

    push hl
    sub b
    ret nz

    db $e4
    ld h, b
    jp nz, $c260

    ld h, b
    ret nz

    db $10
    ret nz

    ld h, b
    ret nz

    jr nz, jr_01f_6f52

    ld h, b
    jp nz, $c260

    ld h, b
    ret nz

    jr nz, jr_01f_6f5a

    ld h, b
    ret nz

    ld b, b
    ret nz

    sub b
    jp nz, $c290

    sub b
    ret nz

    ld b, b
    ret nz

    sub b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    add b
    jp nz, $c080

Call_01f_6fb0:
    jr nz, jr_01f_6f72

    ld h, b
    jp nz, $c060

    ld b, b
    call nz, $c280
    ld h, b
    jp nz, $c040

    db $10
    ret nz

    sub b
    ret nz

    db $10
    ret nz

    sub b
    ret nz

    db $10
    ret nz

    sub b
    ret nz

    ld b, b
    ret nz

jr_01f_6fcc:
    sub b
    ret nz

    db $10
    ret nz

jr_01f_6fd0:
    sub b
    ret nz

    db $10
    ret nz

jr_01f_6fd4:
    sub b
    ret nz

    db $10
    ret nz

jr_01f_6fd8:
    sub b
    ret nz

    db $10
    ret nz

    sub b
    ret nz

    push hl
    sub b
    ret nz

    db $e4
    ld h, b
    ret nz

    push hl
    sub b
    ret nz

    db $e4
    ld h, b
    ret nz

    push hl
    sub b
    ret nz

    db $e4
    ld h, b
    ret nz

    db $10
    ret nz

    ld h, b
    ret nz

    push hl
    sub b
    ret nz

    db $e4

jr_01f_6ff8:
    ld h, b
    ret nz

    push hl
    sub b

jr_01f_6ffc:
    ret nz

    db $e4
    ld h, b
    ret nz

    push hl
    sub b
    ret nz

    db $e4
    ld h, b
    ret nz

    db $10
    ret nz

    ld h, b
    ret nz

    jr nz, jr_01f_6fcc

    ld h, b
    ret nz

    jr nz, jr_01f_6fd0

    ld h, b
    ret nz

    jr nz, jr_01f_6fd4

    ld h, b
    ret nz

    jr nz, jr_01f_6fd8

    ld h, b
    ret nz

    ld b, b
    ret nz

    sub b
    ret nz

    ld b, b
    ret nz

    sub b
    ret nz

    ld b, b
    ret nz

    sub b
    ret nz

    ld b, b
    ret nz

    sub b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    add b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    add b
    ret nz

    jr nz, jr_01f_6ff8

    ld h, b
    ret nz

    jr nz, jr_01f_6ffc

    ld h, b
    ret nz

    ld b, b
    jp nz, $c280

    ld h, b
    jp nz, $c240

    cp $00
    ld e, h
    ld l, a
    db $ed
    nop
    sbc b
    ldh a, [rPCM34]
    db $ec
    inc bc
    add sp, -$16
    inc c
    inc hl
    call c, $c380
    db $e4
    cp e
    call c, $e4b4
    ld [hl], b
    add $70
    add $e5
    or b
    add $b0
    jp nz, $c2b0

    or b
    add $b0
    add $b0
    add $e4
    ld h, b
    add $00
    push hl

jr_01f_7073:
    or b
    ld [hl], b

jr_01f_7075:
    call nz, $c640
    ld b, b
    add $60
    add $40
    add $70
    add $70
    add $60
    add $60
    add $70
    add $40
    add $20
    add $40
    add $70
    add $70
    add $60
    add $b0
    add $b0
    add $e4
    nop
    add $00
    add $10
    add $10
    add $00
    add $00
    jp nz, $84dc

    nop
    jp nz, $b4dc

    jr nz, jr_01f_7073

    jr nz, jr_01f_7075

    push hl
    sub b
    add $90
    add $dc
    and a
    or a
    or a
    db $e4
    rlca
    rlca
    rla
    rla
    call c, Call_000_2fa6
    rst $08
    rst $08
    rst $08
    rst $08

Call_01f_70c4:
    call c, $b392
    db $e3
    ld b, e
    inc hl
    inc bc
    db $e4
    or e
    db $e3
    ld b, e
    inc hl
    inc bc
    db $e4
    or e
    db $e3
    ld b, e
    inc hl
    inc bc

jr_01f_70d7:
    db $e4
    or e
    ld [hl], e
    ld h, e
    ld b, e
    db $e3
    rrca
    rrca
    cp $00
    ld e, d
    ld [hl], b
    ld [$3414], a
    db $ec
    inc bc
    call c, $e3a0
    dec bc
    db $e4
    ld b, e
    call c, $e3c1
    rlca
    db $e4
    or e
    call c, Call_01f_70c4
    ld h, b
    ld b, b
    jr nc, jr_01f_70d7

    or b
    ld [hl], a
    db $e3
    rlca
    db $e4
    or e
    ld [hl], e
    ld b, e
    ld [hl], e
    db $e3
    rlca
    call c, Call_000_07b7
    call c, $e4c2
    ld [hl], b
    ld h, b
    ld b, b
    ret nz

    call c, $e596
    ld [hl], e
    call c, $73c7
    or e
    ld [hl], e
    or e
    db $e4
    inc bc
    push hl
    or e
    call c, $e4b0
    rrca
    ld b, a
    call c, Call_01f_4bb7
    call c, $e3c5
    inc bc
    db $e4
    or e
    ld [hl], e
    or e
    ld [hl], e
    ld h, e
    ld b, e
    call c, Call_01f_6bb0
    ld [hl], e
    call c, Call_01f_67b0
    call c, Call_01f_67b7
    call c, $b3b0
    ld [hl], e
    ld h, e
    ld b, e
    cp a
    call c, $e3b0
    inc bc
    db $e4
    ld [hl], e
    ld h, e
    ld b, e
    call c, $e390
    rrca
    call c, Call_000_23b0
    db $e4
    sub e
    add e
    ld h, e
    call c, $e32f
    cpl
    call c, Call_01f_43c0
    db $e4
    or e
    sub e
    ld [hl], e
    db $e3
    ld d, e
    inc bc
    db $e4
    and e
    add e
    db $e3
    ld h, e
    inc hl
    inc bc
    db $e4
    and e
    add e
    ld h, e
    ld b, e
    inc hl
    call c, $07b0
    call c, $0790
    call c, $0780
    call c, Call_000_0770
    call c, $0760
    call c, $0767
    rst $08
    call c, $e3a0
    ld a, a
    ld [c], a
    rrca
    db $e3
    or a
    ld [hl], a
    ld b, a
    ld [hl], a
    ld [c], a
    rrca
    ld [$3400], a
    call c, $0fa7
    cp $00
    xor $70
    ld [$1104], a

jr_01f_719d:
    call c, $c713
    db $e3
    ld [hl], a
    ld b, b
    add $40
    add $40
    add $40
    jp nz, Jump_000_3040

    ld h, b
    jr nc, jr_01f_71ef

    add $70
    add $40
    add $b0
    add $40
    jr nc, jr_01f_719d

    or b

jr_01f_71ba:
    call nz, $c6b0
    or b
    add $b0
    add $e3

Call_01f_71c2:
    nop
    add $00
    add $00
    add $00
    add $e4
    or b
    add $b0
    add $b0
    add $b0
    add $e3
    nop
    add $00
    add $00
    add $00
    add $40
    add $40
    add $40
    add $40
    add $40
    add $40
    add $40
    add $40
    jp nz, $c270

    ld h, b

jr_01f_71ef:
    add $60
    add $20
    add $20
    jp nz, $c020

    jr nc, jr_01f_71ba

    ld b, b

jr_01f_71fb:
    add $40
    add $50

jr_01f_71ff:
    add $50
    add $60
    add $60
    add $70
    adc $dc
    dec d
    db $e4
    ld h, b
    jp nz, $c260

    ld [hl], b
    jp nz, $c260

    ld h, b
    adc $60
    jp nz, $c260

    ld [hl], b
    jp nz, $c260

    ld h, b
    add $dc
    inc de
    ld [c], a
    ld b, b
    ret nz

    jr nc, @-$3e

    ld h, b
    ret nz

    jr nc, @-$3e

    ld b, b
    adc $40
    adc $40
    adc $40
    adc $40
    adc $40
    add $e3
    ld b, b
    ret nz

    jr nc, jr_01f_71fb

    ld h, b
    ret nz

    jr nc, jr_01f_71ff

    cp $00
    and d
    ld [hl], c
    db $ed
    nop
    and b
    ldh a, [rPCM34]
    db $ec
    inc bc
    add sp, -$16
    ld [$d622], sp
    or e
    and $40
    ld h, b
    add b
    and b
    push hl
    nop
    sub $a0
    dec bc
    sub $b3
    ld bc, $b0e6
    and b
    add b
    ld h, b
    ld b, b
    ld b, c
    pop bc
    or c
    push bc
    or c
    push bc
    or c
    push bc
    or c
    pop bc
    ld [hl], c
    pop bc
    or c
    push bc
    or c
    push bc
    and c
    push bc
    or c
    push bc
    or c
    push bc
    or c
    pop bc
    push hl
    ld bc, $01c1
    push bc
    ld bc, $01c5
    push bc
    ld bc, $e6c5
    and c
    push bc
    or c
    pop bc
    ld [hl], c
    ret


    ld b, b
    ld h, b
    add b
    sub b
    sub $a0
    cp e
    sub $b3
    or b
    sub b
    ld [hl], b
    ld d, b
    ld b, b
    jp z, $8050

    and b
    or b
    sub $a0
    push hl
    dec bc
    sub $b3
    nop
    and $b0
    sub b
    ld [hl], b
    ld d, b
    jp z, $b060

    push hl
    nop
    db $10
    sub $a0
    dec hl
    sub $b3
    jr nz, jr_01f_72b9

jr_01f_72b9:
    and $a0
    ld [hl], b
    ld d, b
    jp z, $8050

    and b
    or b
    sub $a0
    push hl
    dec bc
    sub $b3
    nop
    and $b0
    add b
    ld d, b
    ld b, b
    add $d6
    add b
    cp a
    sub $b0
    push hl
    ld b, a
    db $ed
    nop
    ld a, h
    sub $b3
    and $b1
    ret


    or c
    ret


    or c
    push bc
    or c
    rst $08
    push bc
    sub c
    push bc
    or c
    and c
    or c
    push hl
    ld bc, $b1e6
    and c
    or c
    and c
    or c
    push hl
    ld bc, $b1e6
    and c
    or c
    and c
    or c
    push hl
    ld bc, $b1e6
    and c
    or c
    push hl
    ld bc, $b1e6
    and c
    or c
    push hl
    ld bc, $b1e6
    and c
    or c
    and c
    sub c
    and c
    or c
    and c
    db $fd
    ldh a, [$73]
    db $fd
    ldh a, [$73]
    db $fd
    ldh a, [$73]
    jp $c501


    ld bc, $01c5
    push bc
    and $b1
    push bc
    or c
    push bc
    or c
    push bc
    or c
    push bc
    and c
    push bc
    sub c
    push bc
    sub c
    push bc
    sub c
    push bc
    sub c
    push bc
    sub c
    push bc
    sub c
    push bc
    and c
    push bc
    and c
    push bc
    or c
    push bc
    or c
    push bc
    or c
    push bc
    or c
    push bc
    or c
    push bc
    or c
    push bc
    push hl
    ld bc, $01c5
    push bc
    and $b1
    push bc
    or c
    push bc
    or c
    push bc
    or c
    push bc
    push hl
    or c
    push bc
    or c
    push bc
    db $e4
    ld bc, $01c5
    push bc
    and $b1
    push bc
    or c
    push bc
    or c
    push bc
    or c
    push bc
    db $e4
    ld b, c
    push bc
    ld b, c
    push bc
    ld sp, $31c5
    pop bc
    and $b0
    and b
    add b
    ld h, b

jr_01f_7377:
    ld b, b
    sub $60
    ld c, a
    ld c, d
    sub $b3
    ld b, b
    ld h, b
    add b
    and b
    push hl
    nop
    sub $3f
    rrca
    sub $a0
    ld a, [bc]
    sub $93
    and $b0
    and b
    add b
    ld h, b
    ld b, b
    sub $3f
    ld c, a
    sub $90
    ld c, d
    sub $b3
    ld d, b
    ld [hl], b
    and b
    push hl
    nop
    jr nz, jr_01f_7377

    ccf
    cpl
    sub $a7
    ld a, [hl+]
    jp $edc3


    nop
    add b
    jp $edc3


    nop
    adc b
    jp $edc3


    nop
    sub b
    jp $edc3


    nop
    and b
    jp $edc3


    nop
    ret nz

    jp $edc3


    ld bc, $c320
    jp Jump_000_01ed


    and b
    jp Jump_000_04ed


    nop
    jp Jump_000_00ed


    and b
    jp Jump_01f_43d6


    and $b1
    push bc
    sub $63
    or c
    push bc
    sub $83
    or c
    push bc
    sub $50
    or a
    sub $b3
    or c
    push bc
    or c
    push bc
    or c
    push bc
    or c
    pop bc
    cp $00
    ld l, l
    ld [hl], d
    and $b1
    and c
    or c
    push hl
    ld bc, $b1e6
    and c
    or c
    push hl
    ld bc, $b1e6
    and c
    or c
    push hl
    ld bc, $b1e6
    and c
    or c
    push hl
    ld bc, $eaff
    ld a, [bc]
    ld [hl-], a
    db $ec
    inc bc
    sub $c3
    push hl
    ld b, b
    ld h, b
    add b
    and b
    db $e4
    nop
    sub $b0
    dec bc
    sub $c3
    ld bc, $b0e5
    and b
    add b
    ld h, b
    ld b, b
    ld b, c
    pop bc
    and $71
    push bc
    ld h, c
    push bc
    ld [hl], c
    push bc
    add c
    pop bc
    ld b, c
    pop bc
    ld [hl], c
    push bc
    ld [hl], c
    push bc
    ld [hl], c
    push bc
    ld h, c
    push bc
    ld [hl], c
    push bc
    add c
    pop bc
    ld b, c
    pop bc
    add c
    push bc
    add c
    push bc
    add c
    push bc
    add c
    push bc
    add c
    push bc
    add c
    pop bc
    sub $b7
    db $ec
    ld [bc], a
    db $e4
    ld b, a
    scf
    ld b, a
    ld d, a
    ld b, a
    scf
    daa
    scf
    ld b, a
    ld d, a
    ld h, a
    ld [hl], a
    add a
    scf
    daa
    scf
    db $ec
    inc bc
    sub $6f
    ld c, a
    sub $c0
    cp a
    sub $c4
    push hl
    ld b, e
    inc sp
    ld b, e
    ld d, e
    ld b, e
    inc sp
    inc hl
    inc sp
    ld b, e
    ld d, e
    ld h, e
    ld [hl], e
    add e
    inc sp
    inc hl
    inc sp
    sub $c2
    db $ec
    ld bc, $43e4
    inc sp
    ld b, e
    ld d, e
    ld b, e
    inc sp
    inc hl
    inc sp
    ld b, e
    sub $c4
    db $ec
    inc bc
    push hl
    ld d, e
    ld h, e
    ld [hl], e
    add e
    inc sp
    inc hl
    inc sp
    ld b, e
    inc sp
    ld b, e
    sub $c0
    ld d, a
    sub $b7
    ld d, a
    sub $8a
    ld d, e
    sub $c4
    db $ec
    inc bc
    ld d, e
    ld b, e
    ld d, e
    sub $a0
    ld h, a
    sub $b0
    ld h, a
    sub $99
    ld h, e
    sub $c4
    ld h, e
    ld d, e
    ld h, e
    sub $90
    ld a, e
    sub $59
    ld [hl], a
    sub $c4
    ld [hl], e
    ld h, e
    ld [hl], e
    ld h, e
    ld d, e
    ld h, e
    ld d, e
    ld b, e
    ld d, e
    ld b, e
    inc sp
    inc hl
    inc de
    inc hl
    inc sp
    inc hl
    sub $c2
    db $ec
    ld bc, $6353
    ld [hl], e
    add e
    sub e
    sub $b4
    db $ec
    inc bc
    inc sp
    inc hl
    inc sp
    sub $c2
    db $ec
    ld bc, $6353
    ld [hl], e
    add e
    and e
    sub $b4
    db $ec
    inc bc
    inc sp
    inc hl
    inc sp
    sub $c2
    db $ec
    ld bc, $6353
    ld [hl], e
    add e
    or e
    sub $b4
    db $ec
    inc bc
    inc sp
    inc hl
    inc sp
    sub $c2
    db $ec
    ld bc, $6353
    ld [hl], e
    add e
    db $e4
    inc bc
    sub $b4
    db $ec
    inc bc
    push hl
    inc sp
    inc hl
    inc sp
    jp $c571


    ld [hl], c
    push bc
    ld [hl], c
    push bc
    ld [hl], c
    pop bc
    db $ec
    nop
    db $e4
    ld b, c
    pop bc
    add c
    push bc
    add c
    push bc
    add c
    push bc
    add c
    push bc
    db $ec
    inc bc
    push hl
    ld [hl], c
    push bc
    ld [hl], c
    push bc
    ld [hl], c
    push bc
    ld [hl], c
    pop bc
    db $ec
    nop
    db $e4
    ld b, c
    pop bc
    or c
    push bc
    or c
    push bc
    or c
    push bc
    or c
    pop bc
    db $ec
    inc bc
    push hl
    ld [hl], c
    pop bc
    ld [hl], c
    pop bc
    or c
    pop bc
    ld [hl], c
    pop bc
    or c
    pop bc
    ld [hl], c
    pop bc
    or c
    pop bc
    ld [hl], c
    pop bc
    db $e4
    ld bc, $e5c1
    ld [hl], c
    pop bc
    db $e4
    ld bc, $e5c1
    ld [hl], c
    pop bc
    db $e4
    ld bc, $e5c1
    ld [hl], c
    pop bc
    db $e4
    ld bc, $e5c1
    ld [hl], c
    pop bc
    or c
    pop bc
    ld [hl], c
    pop bc
    or c
    pop bc
    ld [hl], c
    pop bc
    or c
    pop bc
    ld [hl], c
    pop bc
    ld b, c
    pop bc
    ld [hl], c
    pop bc
    db $e4
    ld bc, $e5c1
    ld [hl], c
    pop bc
    ld b, c
    pop bc
    ld [hl], c
    pop bc
    or c
    pop bc
    ld [hl], c
    pop bc
    db $e4
    ld bc, $e5c1
    ld [hl], c
    pop bc
    sub $87
    db $e3
    ld b, e
    inc sp
    ld b, e
    ld d, e
    ld b, e
    inc sp
    inc hl
    inc sp
    ld b, e
    ld d, e
    ld h, e
    ld [hl], e
    add e
    inc sp
    inc hl
    inc sp
    jp Jump_01f_43d6


    and $71
    push bc
    sub $63
    ld h, c
    push bc
    sub $83
    ld [hl], c
    push bc
    sub $4f
    add a
    sub $b4
    ld [hl], c
    push bc
    ld h, c
    push bc

Call_01f_75b6:
    ld [hl], c

Call_01f_75b7:
    push bc
    add c
    pop bc
    cp $00
    ld l, $74
    ld [$1108], a
    call c, $cb11
    db $e3
    ld b, e
    inc sp

Call_01f_75c7:
    ld b, e
    ld d, e
    ld b, e
    inc sp
    inc hl
    inc sp
    ld b, e
    ld d, e
    ld h, e
    ld [hl], e
    add e

jr_01f_75d2:
    inc sp
    inc hl
    inc sp
    ld b, b
    ret nz

    ld [hl], b
    jp nz, $c260

    ld [hl], b

jr_01f_75dc:
    jp nz, $c080

    ld b, b
    ret nz

    ld [hl], b
    jp nz, $c280

    ld [hl], b
    jp nz, $c260

    ld [hl], b
    jp nz, $c080

    ld d, b
    ret nz

    add b
    jp nz, $c280

    ld [hl], b
    jp nz, $c080

    ld b, b
    ret nz

    add b
    jp nz, $c270

    ld [hl], b
    jp nz, $c270

    ld [hl], b
    jp nz, $c070

    db $e4
    ld b, b
    call nz, $c450
    ld d, b
    jp nz, $ca40

    jr nc, jr_01f_75d2

    ld b, b
    call nz, $c450
    ld d, b
    jp nz, $ca40

    jr nc, jr_01f_75dc

    ld b, b
    ret nz

    ld d, b
    jp nz, $c250

    ld d, b
    jp nz, $c050

    ld d, b
    ret nz

    ld h, b
    jp nz, $c260

    ld h, b
    jp nz, $c060

    ld h, b
    ret nz

    ld [hl], b
    jp nz, $c270

    ld [hl], b
    jp nz, $c270

    ld [hl], b
    jp nz, $c260

    ld d, b
    jp nz, $c240

    ld d, b
    jp nz, $c240

    jr nc, @-$3c

    jr nz, @-$3e

    daa
    ld d, a
    daa
    ld h, a
    daa
    ld [hl], a
    daa
    sub a
    ld b, e
    inc sp
    ld b, e
    ld d, e
    db $e3
    ld b, c
    ld sp, $5141
    ld b, c
    ld sp, $3121
    db $e4
    ld b, e
    inc sp
    ld b, e
    ld d, e
    db $e3
    ld b, c
    ld d, c
    ld h, c
    ld [hl], c
    add c
    ld sp, $3121
    ld [c], a
    ld b, e
    inc sp
    ld b, e
    ld d, e
    ld b, e
    inc sp
    inc hl
    inc sp
    ld b, e
    ld d, e
    ld h, e
    ld [hl], e
    add e
    inc sp
    inc hl
    inc sp
    sub $11
    jp $c3c3


    jp $c3c3


    jp $c3c3


    jp $c3c3


    jp $c3c3


    jp $11dc


    jp $c3c3


    jp Jump_01f_43e3


    inc sp
    ld b, e
    ld d, e
    cp $00
    ret


    ld [hl], l
    db $ed
    nop
    ld a, h
    ldh a, [rPCM34]
    db $ec
    ld [bc], a
    add sp, -$24
    or c
    jp $21e5


    ld de, $4fdc
    inc hl
    call c, Call_000_23a1
    inc hl
    inc hl
    call c, Call_000_2370
    cp $00
    xor [hl]
    db $76
    db $ec
    ld bc, $b6dc
    push hl
    or c
    and c
    or a
    call c, $e4c2
    ld sp, $1121
    ld bc, $b3e5
    or e
    or e
    or e
    or e
    call c, $a34f
    call c, Call_01f_71c2
    add c
    sub c
    and c
    or e
    or e
    or e
    or e
    or e
    call c, $a33f
    call c, $fec2
    nop
    jp nz, $dc76

    db $10
    rst $00
    db $e4
    ld h, b
    ret nz

    ld d, b
    ret nz

    ld h, b
    jp nz, $c260

    ld h, b
    jp nz, $fea3

    nop
    xor $76
    db $ed
    nop
    ld a, h
    ldh a, [rPCM34]
    db $ec
    ld bc, $dce8
    or d
    push hl
    add l
    db $e4
    ld b, c
    ld sp, $0111
    call c, $e581
    ld b, e
    cp $0c
    inc c
    ld [hl], a
    ld b, e
    and $b3
    or e
    push hl
    ld b, e
    cp $00
    inc c
    ld [hl], a
    db $ec
    ld [bc], a
    call c, $e5c2
    or c
    call c, $e4c7
    cp e
    call c, $e5c2
    or e
    db $e4
    inc sp
    ld b, e
    inc sp
    ld de, $e501
    or c
    sub c
    add c
    sub c
    and c
    db $e4
    ld de, $b3e5
    db $e4
    inc de
    push hl
    or e
    sub e
    add c
    ld h, c
    ld b, c
    ld sp, $6141
    add c
    sub c
    cp $00
    ld h, $77
    call c, $c710
    db $e3
    db $10
    ret nz

    db $e4
    or b
    ret nz

    sub b
    ret nz

    db $fd
    ld [hl], b
    ld [hl], a
    add b
    jp nz, $c240

    add b
    jp nz, $c240

    db $fd
    ld [hl], b
    ld [hl], a
    add b
    jp nz, $c240

    add b
    jp nz, $c2b0

    cp $00
    ld d, [hl]
    ld [hl], a
    add b
    jp nz, $c240

    add b
    jp nz, $c040

    ld h, b
    ret nz

    rst $38
    db $ed
    nop
    ld [hl], b
    ldh a, [rPCM34]
    db $ec
    inc bc
    ld [$3314], a
    add sp, -$24
    or h
    push hl
    db $10
    jr nz, jr_01f_77bc

    ld b, b
    ld e, e
    rst $08
    push hl

Call_01f_7790:
    or e
    sub e
    add c
    ld h, c
    ld b, c
    ld sp, $4563
    ld d, c
    ld h, e
    ld [hl], a
    db $e4
    daa
    ld c, a
    cp $00
    adc a
    ld [hl], a
    db $ec
    inc bc
    ld [$2218], a
    call c, $e4c4
    ld b, b
    jr nc, jr_01f_77cd

    db $10
    push hl
    cp e
    pop bc
    ld b, b
    jp nz, $c840

    call c, $e4c4
    ld b, l
    dec [hl]
    inc de
    push hl

jr_01f_77bc:
    or c
    sub c
    add c
    ld h, c
    add c
    sub c
    or c
    db $e4
    ld de, $c7dc
    ld e, a
    call c, $e5c5
    ld h, a
    db $e4

jr_01f_77cd:
    rla
    cp $00
    or l
    ld [hl], a
    call c, $c510
    db $e4
    or b

jr_01f_77d7:
    ret nz

    ld b, b
    ret nz

    or b
    jp nz, $c0b0

    ld b, b
    ret nz

    or b
    jp nz, $c2b0

    ld b, b
    ret nz

    ld d, b
    ret nz

    ld h, b

jr_01f_77e9:
    ret nz

    ld b, b
    ret nz

    or b
    ret nz

    ld b, b
    ret nz

    or b
    ret nz

    ld b, b
    ret nz

    or b
    ret nz

    ld b, b
    ret nz

    or b
    ret nz

    ld h, b
    ret nz

    db $e3

Jump_01f_77fd:
    db $10
    ret nz

    db $e4

jr_01f_7800:
    ld h, b
    ret nz

    db $e3
    db $10
    ret nz

    db $e4
    ld h, b
    ret nz

    db $e3
    db $10
    ret nz

    db $e4
    ld h, b
    ret nz

    db $e3
    db $10
    ret nz

    db $e4
    ld [hl], b
    ret nz

    db $e3
    jr nz, jr_01f_77d7

    db $e4
    ld [hl], b
    ret nz

    db $e3
    jr nz, @-$3e

    db $e4
    ld [hl], b
    ret nz

    db $e3
    jr nz, @-$3e

    db $e4
    ld [hl], b
    ret nz

    db $e3
    jr nz, jr_01f_77e9

    db $e4
    ld h, b
    ret nz

    db $e3
    db $10
    ret nz

    db $e4
    ld h, b
    ret nz

    db $e3
    db $10
    ret nz

    db $e4
    ld h, b
    ret nz

    db $e3
    db $10
    ret nz

    db $e4
    ld h, b
    ret nz

    jr nc, jr_01f_7800

    cp $00
    ld [$ed77], a
    nop
    ld h, d
    ldh a, [rPCM34]
    db $ec
    inc bc
    ld [$3406], a
    add sp, -$24
    or c
    rst $00
    and $91
    sub c
    call c, $e5b4
    inc hl
    call c, $e6b1
    sub c
    sub c
    call c, $e5b4
    inc sp
    call c, $e6b1
    sub c
    sub c
    call c, $e5b4
    inc hl
    call c, $e6b1
    sub c
    sub c
    call c, $a3a0
    call c, $91b1
    sub c
    call c, $e5b4
    inc hl
    call c, $e6b1
    sub c
    sub c
    call c, $e529
    ld [hl], e
    call c, $97b0
    and $97
    call c, $e5b7
    ld d, a
    call c, $e64f
    ld d, a
    call c, $91b1
    sub c
    call c, $e5b4
    inc hl
    call c, $e6b1
    sub c
    sub c
    call c, $e5b4
    inc sp
    call c, $e6b1
    sub c
    sub c
    call c, $e5b4
    ld d, e
    call c, $e6b1
    sub c
    sub c
    call c, $e5b4
    ld [hl], e
    call c, Call_01f_6fb0
    call c, $e4b1
    cpl
    rst $38
    db $ec
    inc bc
    ld [$2508], a
    call c, $c7c2
    push hl
    ld hl, $dc21
    push bc
    sub e
    call c, Call_000_21c2
    ld hl, $c5dc
    and e
    call c, Call_000_21c2
    ld hl, $c5dc
    sub e
    call c, Call_000_21c2
    ld hl, $b7dc
    inc de
    call c, Call_000_21c2
    ld hl, $c5dc

jr_01f_78e5:
    sub e
    call c, $e5c2
    ld hl, $dc21
    rst $00

jr_01f_78ed:
    db $e4
    inc de

jr_01f_78ef:
    daa
    push hl
    daa

jr_01f_78f2:
    db $e4
    rlca

jr_01f_78f4:
    push hl
    rlca
    call c, Call_000_21c2

jr_01f_78f9:
    ld hl, $c5dc

jr_01f_78fc:
    sub e
    call c, Call_000_21c2
    ld hl, $c5dc
    and e
    call c, Call_000_21c2

jr_01f_7907:
    ld hl, $c5dc

jr_01f_790a:
    db $e4
    inc bc

jr_01f_790c:
    call c, $e5c2

jr_01f_790f:
    ld hl, $dc21
    push bc
    db $e4

jr_01f_7914:
    inc de
    call c, $2f2f
    call c, $e3c1
    cpl
    rst $38
    call c, $c710
    db $e4
    jr nz, @-$3e

    jr nz, jr_01f_78e5

    sub e
    jr nz, @-$3e

jr_01f_7928:
    jr nz, @-$3e

    sub e
    jr nz, jr_01f_78ed

    jr nz, jr_01f_78ef

    sub e
    jr nz, jr_01f_78f2

    jr nz, jr_01f_78f4

    ld h, e
    jr nz, @-$3e

    jr nz, jr_01f_78f9

    sub e
    jr nz, jr_01f_78fc

    jr nz, @-$3e

    and e
    sub a
    daa
    and a
    daa
    jr nz, @-$3e

    jr nz, jr_01f_7907

    sub e
    jr nz, jr_01f_790a

    jr nz, jr_01f_790c

    sub e
    jr nz, jr_01f_790f

    jr nz, @-$3e

    and e
    jr nz, jr_01f_7914

    jr nz, @-$3e

    and e
    sbc a
    jr nz, jr_01f_7928

    rst $38
    sub $b0
    inc de
    or b
    inc de
    or b
    inc de
    or b
    inc de
    or b
    ld [de], a
    or b
    inc de
    or b
    ld [de], a
    or b
    inc de
    or b
    ld [de], a
    or b
    inc de
    or b
    ld [de], a
    or b
    ld [de], a
    or b
    ld [de], a
    or b
    ld [de], a
    or b
    ld de, $11b0
    or e
    ld de, $11b3
    or b
    inc de
    or b
    inc de
    or b
    inc de
    or b
    inc de
    or b
    ld [de], a
    or b
    ld [de], a
    or b
    ld [de], a
    or b
    ld [de], a
    or e
    ld de, $11b3
    or a
    ld de, $11b3
    or e
    ld de, $11b7
    or e
    ld de, $11b3
    or b
    inc de
    or b
    inc de
    or b
    inc de
    or b
    inc de
    or b
    ld [de], a
    or b
    ld [de], a
    or b
    ld [de], a
    or b
    ld [de], a
    or e
    ld de, $11b3
    or a
    ld de, $11b3
    or e
    ld de, $11b3
    or b
    inc de
    or b
    inc de
    or b
    ld [de], a
    or b
    ld [de], a
    cp a
    ld de, $11bf
    cp a
    ld de, $13b0
    or b
    inc de
    or b
    inc de
    or b
    inc de
    or b
    ld [de], a
    or b
    inc de
    or b
    ld [de], a
    or b
    inc de
    or b
    ld [de], a
    or b
    ld [de], a
    or b
    ld [de], a
    or b
    ld [de], a
    or b
    ld de, $11b0
    or b
    ld de, $11b0
    or e
    ld de, $11b3
    or a
    ld de, $11b3
    or e
    ld de, $13b0
    or b
    inc de
    or b
    inc de
    or b
    inc de
    or b
    ld [de], a
    or b
    ld [de], a
    or b
    ld [de], a
    or b
    ld [de], a
    or e
    ld de, $11b3
    or a
    ld de, $11b3
    or a
    ld de, $11b3
    cp a
    ld de, $11bf
    or c
    ld de, $cdcf
    rst $38
    db $ed
    nop
    and b
    ldh a, [rPCM34]
    db $ec
    inc bc
    ld [$340c], a
    add sp, -$24
    or l
    push bc
    and $91
    add d
    ld h, b
    ld b, l
    push hl
    add c
    ld h, c
    add e
    call c, Call_01f_41b2
    ld b, e
    ld b, c
    ld b, e
    ld hl, $2123
    inc hl
    ld hl, $dc23
    or c
    ld h, d
    call c, $22b2
    ld b, c
    ld b, e
    ld b, c
    ld b, e
    sub c
    sub e
    add c
    add e
    ld h, c
    ld h, e
    ld b, c
    ld b, e
    add c
    add e
    call c, Call_01f_62b1
    call c, $80b2
    call c, $91b4
    or c
    db $e4
    ld bc, $b7dc
    dec d
    call c, $21b3
    ld de, $b1e5
    sub c
    add c
    ld h, c
    ld b, c
    ld h, c
    add c
    sub c
    add c
    ld h, c
    add c
    ld h, c
    ld b, c
    add c
    ld h, c
    add c
    sub c
    add c
    ld h, c
    add c
    sub c
    or c
    db $e4
    ld hl, $e511
    or c
    sub c
    add c
    ld h, c
    ld b, c
    ld h, c
    add c
    sub c
    add c
    sub c
    ld b, c
    add c
    or c
    db $e4
    ld hl, $e511
    or c
    db $e4
    ld de, $b1e5
    sub c
    add c
    ld h, c
    ld b, e
    cp $00
    jr nc, jr_01f_7b16

    db $ec
    inc bc
    ld [$2510], a
    call c, $e5c6
    sub c
    add d
    ld h, b
    ld b, l
    add l
    db $e4
    ld b, c
    ld hl, $b1e5
    call c, $e4c6
    ld b, l
    inc d
    ld b, b
    dec h
    push hl
    or l
    db $e4
    dec h
    push hl
    or c
    call c, $e4c1
    ld h, d
    call c, Call_000_20c6
    ld b, l
    dec d
    ld b, l
    inc d
    ld b, b
    ld h, l
    dec h
    ld h, l
    ld b, c
    call c, $62c1
    call c, Call_01f_40c6
    sub l
    sub l
    or c
    sub d
    jr nz, jr_01f_7b3c

    ld b, c
    ld h, d
    ld b, b
    dec d
    ld hl, $e512
    or b
    db $e4
    ld h, l
    ld b, c
    ld [hl-], a
    ld b, b
    sub l
    or c
    sub d
    jr nz, jr_01f_7b4e

    ld b, c
    ld h, d
    add b
    sub l
    add c
    ld h, d
    ld b, b
    add l
    sub c
    add d
    sub b
    db $e3
    dec d
    cp $00
    xor [hl]
    ld a, d
    call c, $cb10
    db $e3
    ld b, l
    db $e4
    ld b, c
    ld h, c
    add c
    push hl
    sub c
    db $e4
    sub c
    sub c
    ld b, c
    sub c
    sub c
    push hl
    or c
    db $e4
    add c
    add c
    ld b, c
    add c
    add c
    push hl
    or c
    db $e4

jr_01f_7b16:
    add c
    add c
    ld b, c
    add b
    pop bc
    ld b, b
    ld de, $9191
    ld b, c
    sub c
    sub c
    ld de, $9191
    ld b, c
    sub c
    sub c
    push hl
    or c
    db $e4
    add c
    add c
    ld b, c
    add c
    add c
    push hl
    or c
    db $e4
    add c
    add c
    ld b, c
    add b
    pop bc
    ld b, b
    ld de, $9191

jr_01f_7b3c:
    ld b, c
    sub c
    sub c
    ld hl, $6161
    push hl
    sub c
    db $e4
    ld h, c
    ld h, c
    ld b, c
    sub c
    sub c
    ld de, $9191
    ld b, c

jr_01f_7b4e:
    add c
    add c
    push hl
    or c
    db $e4
    add c
    add c
    ld b, c
    sub c
    sub c
    push hl
    sub c
    db $e4
    sub c
    sub c
    ld hl, $6161
    push hl
    sub c
    db $e4
    ld h, c
    ld h, c
    ld b, c
    sub c
    sub c
    ld de, $9191
    ld b, c
    add c
    add c
    push hl
    or c
    db $e4
    add c
    add c
    ld b, c
    sub c
    sub c
    ld de, $4121
    cp $00
    inc bc
    ld a, e
    db $ed
    nop
    sub b
    ldh a, [rPCM34]
    ld [$2408], a
    db $ec
    ld [bc], a

Call_01f_7b87:
    db $fc
    and l
    add sp, -$23
    ld h, a
    db $e4
    ld b, a
    call c, $b167
    add l
    ld h, a
    add c
    sub l
    add a
    ld h, e
    add e
    ld c, c
    rst $38
    ld [$1505], a
    db $ec
    ld [bc], a
    db $fc
    ld a, [bc]
    call c, $e4a7
    ld b, a
    or c
    add l
    ld h, a
    add c
    sub l
    add a
    ld h, e
    add e
    ld c, c
    rst $38
    db $ed
    nop
    ld [hl], b
    ldh a, [rPCM34]
    db $ec
    inc bc
    ld [$220c], a
    add sp, -$24
    or e
    rst $08
    rst $08
    rst $08
    set 4, l
    jr nz, jr_01f_7c03

    ld d, b
    ld h, b
    call c, $e480
    rrca
    ld c, a
    ld l, a
    call c, Call_01f_5f60
    cp $03
    push bc
    ld a, e
    rst $08
    rst $08
    rst $08
    rst $08
    cp $00
    push bc
    ld a, e
    ld [$2508], a
    db $ec
    inc bc
    call c, $e5c4
    ld [hl], c
    ld hl, $9971
    ld [hl], c
    ld hl, $e471
    inc bc
    push hl
    or e
    sub c
    ld [hl], c
    ld hl, $9971
    ld d, c
    ld bc, $a351
    sub e
    ld d, c
    cp $00
    rst $18
    ld a, e
    call c, $e412
    ld hl, $2171
    ld [hl], c

jr_01f_7c03:
    ld hl, $2171
    ld [hl], c
    cp $0c
    cp $7b
    inc hl
    ld [hl], e
    inc hl
    ld [hl], e
    ld b, e
    ld [hl], e
    ld b, e
    ld [hl], e
    ld h, e
    sub e
    ld h, e
    sub e
    ld b, e
    ld [hl], e
    ld b, e
    ld [hl], e
    cp $00
    db $fc
    ld a, e
    db $ed
    nop
    adc h
    ldh a, [rPCM34]
    db $ec
    inc bc
    ld [$3408], a
    add sp, -$24
    or l
    db $e4
    ld b, l
    push hl
    sub b
    db $e4
    ld b, b
    dec h
    push hl
    ld [hl], b
    db $e4
    jr nz, @+$17

    push hl
    ld h, b
    db $e4
    db $10
    inc hl
    ld b, c
    db $10
    ld b, b
    db $10
    ret nz

    push hl
    ld b, b
    jp nz, Jump_01f_4040

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    jp nz, $c040

    ld b, b
    jp nz, Jump_01f_4040

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ld b, b
    ld h, b
    ld [hl], b
    call c, $93b6
    ld b, c
    sub c
    ld [hl], e
    sub c
    ld [hl], c
    or e
    sub e
    ld [hl], c
    ld h, c
    ld b, c
    ld hl, $4115
    sub e
    inc de
    ld b, e
    ld hl, $4111
    ld h, c
    ld [hl], c
    ld h, c
    sub e
    ld b, c
    sub c
    ld [hl], e
    sub c
    ld [hl], c
    or e
    sub e
    ld [hl], c
    sub c
    ld h, c
    ld hl, $1145
    sub e
    inc de
    ld b, e
    ld hl, $4111
    ld h, c
    ld [hl], c
    ld h, c
    ld [hl], e
    ld hl, $b171
    sub c
    ld [hl], c
    sub c
    inc hl
    ld b, c
    ld h, c
    ld [hl], c
    ld h, c
    ld b, c
    ld hl, $9145
    ld [hl], e
    ld h, e
    ld [hl], e
    ld h, e
    ld b, e
    inc hl
    ld [hl], e
    ld hl, $b171
    db $e4
    ld de, $b1e5
    sub c
    inc hl
    ld b, c
    ld h, c
    ld [hl], c
    ld h, c
    ld b, c
    ld hl, $b7dc
    ld b, l
    sub c
    ld [hl], e
    ld h, e
    call c, $93c7
    or e
    db $e4
    inc de
    inc hl
    push hl
    or c
    sub c
    ld [hl], c
    ld h, c
    ld b, c
    ld h, c
    ld [hl], c
    sub c
    call c, Call_01f_7790
    ld h, a
    ld b, a
    daa
    rst $08
    rst $08
    rst $00
    call c, Call_01f_45b6
    jr nc, jr_01f_7cf5

    call c, Call_000_17a0
    call c, Call_000_17a7
    rst $08
    rst $08
    rst $00
    ld b, l
    db $10
    ld b, b
    call c, $97a0
    call c, $97a7
    call c, Call_01f_75b6
    inc hl
    ld [hl], c
    or e
    call c, $77b7
    ld h, e
    add e
    call c, $9790

jr_01f_7cf5:
    ld h, a
    ld b, a
    rla
    call c, Call_000_27b7
    rla
    and $b7
    push hl
    daa
    call c, Call_01f_4790
    daa
    ld h, a
    ld b, a
    call c, $27a0
    ld b, a
    daa
    rlca
    ld [hl], a
    ld d, a
    ld b, a
    daa
    call c, Call_000_15a0
    call c, Call_000_15a7
    call c, $23b7
    ld b, a
    ld [hl], l
    ld h, b
    ld d, b
    call c, Call_01f_45a0
    call c, $45a7
    call c, $23b7
    call c, Call_000_17a0
    call c, Call_000_17a7
    call c, Call_01f_45b7
    ld hl, $6373
    ld b, e
    ld h, e
    ld b, e
    inc hl
    ld b, e
    inc hl
    inc de
    inc hl
    inc de
    inc de
    ld b, e
    ld h, e
    call c, Call_01f_45a0
    call c, Call_000_21b7
    ld [hl], e
    ld h, e
    ld b, e
    ld h, e
    sub e
    or e
    call c, $e4a0
    rra
    rla
    call c, Call_000_17a7
    call c, $e5b5
    sub b
    ret nz

    sub b
    jp nz, $9090

    call c, $97b1
    rst $38
    db $ec
    inc bc
    ld [$250a], a
    call c, $e4c5
    sub l
    ld b, b
    sub b
    ld [hl], l
    jr nz, jr_01f_7ddd

    call c, Call_01f_6bc7
    add c
    ld b, b
    add b
    call c, $91c2
    call c, $e5c1
    sub e
    sub b
    sub b
    sub c
    sub c
    sub e
    sub c
    sub e
    sub b
    sub b
    sub c
    sub c
    call c, $90c4
    ld h, b
    sub b
    or b
    call c, $e4c7
    dec d
    db $10
    jr nz, jr_01f_7dd5

    inc de
    ld [hl], e
    ld h, e
    ld b, e
    inc hl
    dec d
    push hl
    sub c
    db $e4
    ld b, a
    push hl
    sub l
    ld b, c
    db $e4
    rla
    dec d
    db $10
    jr nz, jr_01f_7de8

    inc de
    ld [hl], e
    ld h, e
    ld b, e
    inc hl
    dec d
    push hl
    sub c
    db $e4
    ld b, a
    push hl
    sub l
    ld b, c
    call c, $e4b0
    rla
    call c, $25c7
    push hl
    or c
    db $e4
    ld [hl], a
    push hl
    ld [hl], l
    ld hl, $dcb7
    or b
    db $e4
    dec d
    call c, Call_000_15b7
    inc hl
    call c, Call_01f_47a0
    call c, Call_01f_47a7
    call c, $25c7
    push hl
    or c
    db $e4

jr_01f_7dd5:
    ld [hl], a
    push hl
    ld [hl], l
    ld hl, $dcb7
    or b
    db $e4

jr_01f_7ddd:
    ld b, [hl]
    call c, Call_01f_46b7
    call c, Call_01f_40c3
    add b
    call c, $97b0

jr_01f_7de8:
    call c, $97b7
    call c, $73c6
    ld h, e
    ld b, e
    inc hl
    call c, Call_000_17a0
    call c, Call_000_17a7
    call c, $e590
    sub a
    call c, $9797
    call c, Call_01f_47b0
    call c, Call_01f_47b7
    call c, Call_000_27c7
    ld [hl], l
    ld h, b
    ld d, b
    ld b, a
    call c, Call_01f_75b7
    ld h, b
    ld d, b
    call c, Call_01f_47b0
    call c, Call_01f_47b7
    call c, $27b0
    call c, Call_000_27b7

jr_01f_7e1c:
    call c, $e6c7
    or a
    push hl
    ld h, l
    jr nz, jr_01f_7e84

    ld b, a
    or l
    ld [hl], b
    or b
    call c, $e4b0
    rla
    call c, Call_000_17b7
    call c, $27b0
    call c, Call_000_27b7
    call c, $e5c7
    or a
    db $e4
    dec h
    push hl
    or b
    db $e4
    jr nz, jr_01f_7e1c

    or b
    dec d
    call c, Call_000_15b7
    call c, $e5c7
    or e
    call c, $97b0
    call c, $97b7
    call c, Call_01f_65b0
    call c, Call_01f_65b7
    call c, $83c7
    sub a
    ld h, a
    call c, $85b0
    call c, $85b7
    call c, $93c7
    or a
    add a
    call c, $95b0
    call c, $95b7
    call c, $b3c7
    db $e4
    rlca
    push hl
    sub a
    call c, $b5b0
    call c, $b5b7
    call c, $e4c7
    inc bc
    call c, $27b0
    push hl
    or a
    call c, $e4b0

jr_01f_7e84:
    rra
    rla
    call c, Call_000_17b7
    call c, $e5b0
    sbc a
    sub a
    call c, $97b7
    call c, Call_01f_75c7
    or c
    db $e4
    daa
    push hl
    or l
    db $e4
    ld hl, $6075
    ld d, b
    ld b, a
    push hl
    ld [hl], l
    ld h, b
    ld d, b
    ld b, a
    inc de
    inc hl
    ld [hl], l
    or c
    db $e4
    daa
    push hl
    or l
    db $e4
    ld hl, $dc77
    or b
    sbc a
    call c, $97a0
    call c, $97a7
    call c, $91c1
    sub e
    sub b
    sub b
    call c, $97c1
    rst $38
    call c, $e310
    dec d
    db $e4
    sub b
    db $e3
    db $10
    dec h
    db $e4
    or b
    db $e3
    jr nz, jr_01f_7f35

    jr nz, jr_01f_7f32

    sub e
    add c
    ld b, b
    add b
    sub b
    adc $cf
    db $fd
    and h
    ld a, a
    db $fd
    xor [hl]
    ld a, a
    db $fd
    and h
    ld a, a
    db $e4
    ld b, c
    sub c
    ld b, c
    sub c
    ld b, c
    ld h, c
    ld [hl], c
    sub c
    db $fd
    and h
    ld a, a
    db $fd
    xor [hl]
    ld a, a
    db $fd
    and h
    ld a, a
    db $fd
    and h
    ld a, a
    db $fd
    cp b
    ld a, a
    db $fd
    cp b
    ld a, a
    db $fd
    pop bc
    ld a, a
    db $e4
    sub c
    db $e3
    ld de, $91e4
    db $e3
    ld de, $91e4
    db $e3
    ld de, $b1e4
    sub c
    db $fd
    cp b
    ld a, a
    db $fd
    cp b
    ld a, a
    db $fd
    pop bc
    ld a, a
    db $fd
    pop bc
    ld a, a
    db $e4
    ld [hl], e
    sub e
    or e
    db $e3
    inc hl
    db $fd
    and h
    ld a, a
    db $fd
    and h
    ld a, a
    db $fd
    and h
    ld a, a
    db $fd
    and h
    ld a, a
    db $fd
    and h
    ld a, a
    db $fd
    and h

jr_01f_7f32:
    ld a, a
    db $fd
    xor [hl]

jr_01f_7f35:
    ld a, a
    db $fd
    xor [hl]
    ld a, a
    db $fd
    and h
    ld a, a
    ld b, e
    sub c
    ld b, e
    sub c
    ld b, c
    sub c
    db $fd
    xor [hl]
    ld a, a
    db $fd
    xor [hl]
    ld a, a
    db $fd
    and h
    ld a, a
    ld b, c
    sub c
    ld b, c
    sub c
    ld b, c
    sub c
    add c
    sub c
    db $fd
    jp nc, $fd7f

    jp nc, $fd7f

    db $db
    ld a, a
    db $fd
    db $db
    ld a, a
    ld d, c
    sub c
    ld d, c
    sub c
    ld d, c
    sub c
    ld d, c
    sub c
    ld d, c
    sub c
    ld [hl], c
    ld d, c
    ld b, c
    ld hl, $5141
    db $fd
    cp b
    ld a, a
    db $fd
    cp b
    ld a, a
    ld b, e
    sub e
    ld b, e
    sub e
    ld b, e
    sub e
    ld b, e
    sub e
    db $fd
    and h
    ld a, a

Call_01f_7f80:
    db $fd
    and h
    ld a, a
    db $fd
    db $e4
    ld a, a
    db $fd
    db $e4
    ld a, a
    db $fd
    and h
    ld a, a
    db $fd
    and h
    ld a, a
    db $fd
    cp b
    ld a, a
    db $fd
    cp b
    ld a, a
    db $fd
    db $ed
    ld a, a
    db $fd
    db $ed
    ld a, a
    sub b
    ret nz

    sub b
    jp nz, $9090

    sub b
    add $ff
    db $e4
    ld b, c
    sub c
    ld b, c
    sub c
    ld b, c
    sub c
    ld b, c
    sub c
    rst $38
    db $e4
    ld hl, $2171
    ld [hl], c
    ld hl, $2171
    ld [hl], c
    rst $38
    ld [hl], c
    or c
    ld [hl], c
    or c
    ld [hl], c
    or c
    ld [hl], c
    or c
    rst $38
    db $e4
    sub c
    db $e3
    ld de, $91e4
    db $e3
    ld de, $91e4
    db $e3
    ld de, $91e4
    db $e3
    ld de, $21ff
    sub c
    ld hl, $2191
    sub c
    ld hl, $ff91
    ld b, c
    add c
    ld b, c
    add c
    ld b, c
    add c
    ld b, c
    add c
    rst $38
    ld b, c
    or c
    ld b, c
    or c
    ld b, c
    or c
    ld b, c
    or c
    rst $38
    sub b
    ret nz

    sub b
    jp nz, $9090

    sub b
    ret nz

    sub b
    ret nz

    sub b
    jp nz, Jump_000_00ff

    nop
    nop
    nop
    nop
    nop
