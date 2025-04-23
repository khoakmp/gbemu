; Disassembly of "Pokemon Red (UE) [S][!].gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $008", ROMX[$4000], BANK[$8]

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
    jr nz, jr_008_4058

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
    cpl
    ld c, h
    dec b
    ld a, $4c
    rlca
    ld c, l
    ld c, h
    add h
    ccf
    ld c, [hl]
    dec b
    ld d, d
    ld c, [hl]
    rlca
    ld h, l
    ld c, [hl]
    add h
    or h
    ld c, l
    dec b
    jp $074d


    pop de
    ld c, l
    add h

jr_008_4058:
    ld c, [hl]
    ld c, e
    dec b
    ld l, l
    ld c, e
    rlca
    adc h
    ld c, e

Jump_008_4060:
    add h
    db $fd
    ld c, [hl]
    dec b
    inc e
    ld c, a
    rlca
    dec sp
    ld c, a
    add h
    db $dd
    ld c, h
    dec b
    ldh a, [$4c]
    rlca
    ld [bc], a
    ld c, l
    add h
    add a
    ld c, h
    dec b
    and c
    ld c, h
    rlca
    and d
    ld c, h
    add h
    or l
    ld c, h
    dec b
    call nz, Call_000_074c
    db $d3
    ld c, h
    add h
    call Call_000_054e
    ldh [$4e], a
    rlca
    di
    ld c, [hl]
    add h
    rst $10
    ld c, c
    dec b
    db $f4
    ld c, c
    rlca
    dec d
    ld c, d
    add h
    ld [hl], d
    ld c, [hl]
    dec b
    sub c
    ld c, [hl]
    rlca
    or h
    ld c, [hl]
    add h
    inc bc
    ld c, l
    dec b
    ld l, $4d
    rlca
    ld c, l
    ld c, l
    add h
    ld h, [hl]
    ld c, l
    dec b
    adc l
    ld c, l
    rlca
    or e
    ld c, l
    add h
    jp nc, $054d

    pop af
    ld c, l
    rlca
    jr nz, jr_008_4108

    add h
    ld d, a
    ld c, h
    dec b
    ld l, d
    ld c, h
    rlca

Call_008_40c1:
    ld a, l

Call_008_40c2:
    ld c, h
    add h

Call_008_40c4:
    sbc c
    ld c, e
    dec b
    or h
    ld c, e
    rlca
    rst $08
    ld c, e
    add h
    rst $18
    ld c, e
    dec b
    ld [bc], a

Call_008_40d1:
    ld c, h

Call_008_40d2:
    rlca
    dec h
    ld c, h
    add h
    cp e
    ld c, d
    dec b
    jp c, $074a

    db $fd
    ld c, d
    add h
    db $d3
    ld c, a
    dec b
    and $4f
    rlca
    ld sp, hl
    ld c, a
    add h
    ld b, $50
    dec b
    ld hl, $0750
    inc a
    ld d, b
    add h
    ld c, a
    ld d, b
    dec b
    ld e, [hl]
    ld d, b
    rlca
    ld l, l
    ld d, b
    add h
    db $dd
    ld d, b
    dec b
    ld hl, sp+$50
    rlca
    inc de
    ld d, c
    add h
    ld [hl], b
    ld c, a
    dec b
    ld a, a
    ld c, a

jr_008_4108:
    rlca
    adc [hl]
    ld c, a
    add h
    ld h, $51
    dec b
    add hl, sp
    ld d, c
    rlca
    ld c, h
    ld d, c
    add h
    ld [hl], $52
    dec b
    ld e, c
    ld d, d
    rlca
    ld a, h
    ld d, d
    add h
    ld c, [hl]
    ld c, a
    dec b
    ld e, l
    ld c, a
    rlca
    ld l, a
    ld c, a
    add h
    and a
    ld d, c
    dec b
    jp nz, Jump_000_0751

    db $dd
    ld d, c
    add h
    sbc b
    ld c, a
    dec b
    xor a
    ld c, a
    rlca
    add $4f
    add h
    ld e, c
    ld d, c
    dec b
    ld a, h
    ld d, c
    rlca
    sub a
    ld d, c
    add h
    ldh a, [rHDMA1]
    dec b
    dec bc
    ld d, d
    rlca
    ld h, $52
    add h
    ld [hl], a
    ld d, b
    dec b
    sbc d
    ld d, b
    rlca

Jump_008_4151:
    pop bc
    ld d, b
    add h
    adc a
    ld d, d
    dec b
    and d
    ld d, d
    rlca
    or l
    ld d, d
    add h
    jp nz, Jump_000_0552

    push de
    ld d, d

Call_008_4162:
    rlca
    add sp, $52
    add h
    push af
    ld d, d
    dec b
    jr jr_008_41be

    rlca
    ld a, [hl-]
    ld d, e
    add h
    dec sp
    ld d, e
    dec b
    ld c, [hl]
    ld d, e
    rlca
    ld h, c
    ld d, e
    add h
    ld l, $4a
    dec b
    ld b, l
    ld c, d
    rlca
    ld e, b
    ld c, d
    add h
    ld h, l
    ld c, d
    dec b
    adc b
    ld c, d
    rlca
    xor e
    ld c, d
    add h
    inc de
    ld c, e
    dec b
    ld a, [hl+]
    ld c, e
    rlca
    ld b, c
    ld c, e
    add h
    ld a, l
    ld a, c
    dec b
    sbc b
    ld a, c
    ld b, $b0
    ld a, c
    add h
    rst $00
    ld a, c
    dec b
    and $79
    ld b, $fe
    ld a, c
    inc b
    db $dd
    ld b, e
    inc b
    xor $43
    inc b
    db $fd
    ld b, e
    rlca
    sub $43
    inc b
    jp Jump_008_4443


    dec l
    ld b, h
    dec b
    ld [hl], $44
    ld b, h
    dec a
    ld b, h
    rlca
    ld c, b

jr_008_41be:
    ld b, h
    ld b, h
    ld c, h

Call_008_41c1:
    ld b, h
    rlca
    ld d, e
    ld b, h
    rlca
    ld e, l
    ld b, h
    ld b, h
    ld a, a
    ld b, h
    dec b
    sub b
    ld b, h
    add h
    inc de
    ld a, d
    dec b
    ld l, $7a
    ld b, $44
    ld a, d
    rlca
    xor d
    ld b, h
    inc b
    xor [hl]
    ld b, h
    inc b
    cp c
    ld b, h
    rlca
    call nz, $0744
    ret z

    ld b, h
    rlca
    call z, $0744
    sub $44
    rlca
    ldh [rLY], a
    rlca
    rst $20
    ld b, h
    rlca
    db $f4
    ld b, h
    rlca
    cp $44
    rlca
    dec bc
    ld b, l
    rlca
    add hl, de
    ld b, l
    rlca
    ld h, $45
    rlca
    inc sp
    ld b, l
    rlca
    ld c, h
    ld b, l
    rlca
    ld d, [hl]
    ld b, l
    rlca
    ld h, e
    ld b, l
    rlca
    ld l, d
    ld b, l
    rlca
    ld [hl], h
    ld b, l
    rlca
    ld a, e
    ld b, l
    rlca
    add d
    ld b, l
    rlca
    adc h
    ld b, l
    ld b, h
    sub e
    ld b, l
    rlca
    and h
    ld b, l
    rlca
    or c
    ld b, l
    rlca
    cp [hl]
    ld b, l
    rlca
    push bc
    ld b, l
    rlca
    push de
    ld b, l
    rlca
    call c, Call_008_4445
    db $ec
    ld b, l
    rlca
    rst $30
    ld b, l
    rlca
    cp $45
    rlca
    ld c, $46
    add h
    inc h
    ld b, [hl]
    dec b
    scf
    ld b, [hl]
    rlca
    ld c, d
    ld b, [hl]
    add h
    ld d, l
    ld b, [hl]
    dec b
    ld h, h
    ld b, [hl]
    rlca
    ld [hl], e
    ld b, [hl]
    ld b, h
    ld a, [hl]
    ld b, [hl]
    rlca
    sub l
    ld b, [hl]
    add h
    xor c
    ld b, [hl]
    dec b
    call nz, Call_000_0746
    db $db
    ld b, [hl]
    ld b, h
    db $ec
    ld b, [hl]
    rlca
    dec bc
    ld b, a
    add h
    ld [hl+], a
    ld b, a
    dec b
    dec [hl]
    ld b, a
    rlca
    ld c, b
    ld b, a
    add h
    ld e, c
    ld b, a
    dec b
    ld [hl], b
    ld b, a
    rlca
    add a
    ld b, a
    add h
    sub d
    ld b, a
    dec b
    xor c
    ld b, a
    rlca
    ret nz

    ld b, a
    add h
    pop de
    ld b, a
    dec b
    ldh [rBGP], a
    rlca
    rst $28
    ld b, a
    add h
    ld a, [$0547]

jr_008_428c:
    add hl, de
    ld c, b
    rlca
    inc [hl]
    ld c, b
    ld b, h
    ld b, a
    ld c, b
    dec b
    ld e, [hl]
    ld c, b
    ld b, h
    ld [hl], l
    ld c, b
    dec b
    add b
    ld c, b
    ld b, h
    add a
    ld c, b
    dec b
    sbc [hl]
    ld c, b
    add h
    or l
    ld c, b
    dec b
    call nz, $0748
    db $d3
    ld c, b
    ld b, h
    ldh [rOBP0], a
    dec b
    ldh a, [rOBP0]

Call_008_42b2:
    add h

jr_008_42b3:
    ld [bc], a

jr_008_42b4:
    ld c, c
    dec b
    ld b, c

jr_008_42b7:
    ld c, c
    rlca
    add b
    ld c, c

jr_008_42bb:
    inc b
    ld [de], a
    ld b, h
    add b
    ld [hl], b

jr_008_42c0:
    ld h, e
    ld bc, $65a1
    ld [bc], a
    rst $28
    ld h, [hl]
    add b
    add hl, de
    ld l, c
    ld bc, $6bae
    ld [bc], a
    db $10
    ld l, l
    add b
    sbc c
    ld [hl], b
    ld bc, $71d8
    ld [bc], a
    sub b
    ld [hl], d
    add b
    and [hl]
    ld [hl], e
    ld bc, $756a
    ld [bc], a
    inc e
    ld [hl], a
    add b

jr_008_42e3:
    ld d, e
    ld a, d
    ld bc, $7ac1

jr_008_42e8:
    ld [bc], a
    dec d

jr_008_42ea:
    ld a, e
    add b
    ld [hl], h
    ld a, e
    ld bc, $7bc1
    ld [bc], a
    ld c, $7c
    add b
    xor l
    ld a, h
    ld bc, $7d6d
    ld [bc], a
    ld d, d
    ld a, [hl]
    jr nz, jr_008_42c0

    inc sp
    rst $38
    jr nz, jr_008_42b4

    inc sp
    rst $38
    jr nz, @-$5d

    inc sp
    rst $38
    jr nz, jr_008_428c

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
    jr nz, jr_008_4373

    ld a, [hl+]
    rst $38
    ld hl, $2b41
    jr nz, @+$63

    ld a, [hl+]
    rst $38
    jr nz, @-$7d

    db $10
    rst $38
    jr nz, jr_008_42b3

    inc hl
    rst $38
    jr nz, jr_008_42b7

    dec h
    rst $38
    jr nz, jr_008_42bb

    ld h, $ff
    jr nz, @-$5d

    db $10
    rst $38
    jr nz, jr_008_42e3

    ld de, $20ff
    and d
    ld d, b
    rst $38
    jr nz, jr_008_42ea

    jr jr_008_436b

    ld sp, $ff33
    ld [hl+], a
    sub c
    jr z, jr_008_4372

    ld [hl], c
    jr @+$01

    jr nz, jr_008_42e8

    ld [hl+], a

jr_008_4358:
    rst $38
    jr nz, jr_008_43cc

    ld [hl+], a
    rst $38
    jr nz, jr_008_43c0

    ld [hl+], a

jr_008_4360:
    rst $38
    ld [hl], e
    ld b, e
    add e
    ld b, e
    sub e
    ld b, e
    and e
    ld b, e
    or e
    ld b, e

jr_008_436b:
    jp $c343


    ld b, e
    jp $c343


jr_008_4372:
    ld b, e

jr_008_4373:
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
    sub [hl]
    ld sp, $4602
    adc d
    call $feef
    sbc $ff
    xor $dc
    cp d
    sbc b
    db $76
    ld d, h
    ld [hl-], a
    db $10

Call_008_43b3:
    ld bc, $4523
    ld h, a

Call_008_43b7:
    adc d
    call $f7ee
    ld a, a

jr_008_43bc:
    xor $dc
    xor b
    db $76

jr_008_43c0:
    ld d, h

Call_008_43c1:
    ld [hl-], a
    db $10
    db $ec
    ld [bc], a
    jr nz, jr_008_4358

    ret nz

    rlca
    jr nz, @-$7d

jr_008_43cb:
    ret nc

jr_008_43cc:
    rlca
    jr nz, jr_008_4360

    ret nz

    rlca
    inc l
    and c
    ret nc

    rlca
    rst $38
    ld hl, $33e2
    jr z, jr_008_43bc

    ld [hl+], a
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
    jr z, jr_008_43cb

    nop
    ld [bc], a
    db $10

jr_008_43ec:
    ld [$ecff], sp
    ld [bc], a

jr_008_43f0:
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
    nop
    jr nz, @-$2c

    nop
    rlca
    jr nz, jr_008_43ec

    ld b, b
    rlca
    jr nz, jr_008_43f0

    add b
    rlca
    jr nz, @-$2c

    ret nz

    rlca
    ld a, [hl+]
    pop hl
    ldh [rTAC], a
    ld hl, $0000
    nop
    rst $38
    db $ec
    ld [bc], a
    db $10
    cpl
    cpl
    ld a, [c]
    add b
    rlca
    rst $38
    db $ec
    ld [bc], a
    cpl
    jp nz, $0782

    rst $38
    db $ec
    ld [bc], a
    db $10
    ld d, $2f
    ld a, [c]

Jump_008_4443:
    nop
    inc b

Call_008_4445:
    db $10
    ld [$2fff], sp
    and d
    ld [hl+], a
    rst $38

jr_008_444c:
    cpl
    pop de
    nop
    ld [bc], a
    db $10
    ld [$24ff], sp
    push af
    inc sp
    jr z, jr_008_444c

    ld [hl+], a
    cpl
    ld a, [c]
    ld hl, $22ff
    ld h, c
    inc hl
    ld [hl+], a
    and c
    inc sp
    ld [hl+], a
    pop bc
    inc sp
    ld [hl+], a
    ld d, c
    ld de, $f122
    inc sp
    ld [hl+], a
    ld b, c
    ld de, $c122
    inc sp
    ld [hl+], a
    ld sp, $2211
    add c
    inc sp
    ld [hl+], a
    ld sp, $2811
    ld b, c
    inc sp
    rst $38
    db $ec
    ld [bc], a
    db $10
    ld b, h
    cpl
    ldh a, [$f0]
    inc b
    db $10
    rla
    cpl
    ld a, [c]
    ld d, b
    ld b, $10
    ld [$ecff], sp
    ld [bc], a
    cpl
    sub d
    nop
    ld b, $2f
    sub d
    add d
    rlca
    rst $38
    ld hl, sp-$16
    db $10
    inc d
    ret c

    db $10
    db $e3
    ld b, d
    ld d, d
    db $76
    sub d
    ld [hl], d
    ld [c], a
    inc c
    rst $38
    ld [hl+], a
    and c
    ld [de], a
    rst $38
    db $ec
    ld bc, $af10
    cpl
    ld a, [c]
    add b
    rlca
    db $10
    ld [$ecff], sp
    ld bc, $9710
    cpl
    ld a, [c]
    nop
    dec b
    db $10
    ld [$22ff], sp
    and c
    ld [hl+], a
    rst $38
    jr z, @-$0d

    ld d, h
    rst $38
    cpl

jr_008_44cd:
    adc a
    ld de, $ff24
    ld [de], a
    ld a, [hl+]
    pop af
    ld d, l
    rst $38

jr_008_44d6:
    cpl
    adc a
    inc [hl]
    jr z, jr_008_44cd

    dec [hl]
    ld a, [hl+]
    pop af
    ld d, l
    rst $38
    cpl
    sbc a
    inc hl
    jr z, jr_008_44d6

    ld hl, $22ff
    pop hl
    ld c, e
    ld a, [hl+]
    pop af
    ld b, h
    ld [hl+], a
    pop hl
    ld a, [hl-]
    ld h, $f1
    inc [hl]
    rst $38
    ld [hl+], a
    db $f4
    ld b, h
    ld [hl+], a
    db $f4
    inc d

jr_008_44fa:
    cpl
    pop af
    ld [hl-], a
    rst $38
    inc h
    adc a
    ld d, l
    ld [hl+], a
    db $f4
    ld b, h
    jr z, jr_008_44fa

    ld [hl+], a
    cpl
    ld a, [c]
    ld hl, $28ff
    ld c, a
    inc hl
    inc h
    call nz, Call_000_2622
    ld a, [c]
    inc hl
    cp $04
    dec bc
    ld b, l
    rst $38
    jr z, jr_008_456a

    inc sp
    inc h
    call nz, Call_000_2622

jr_008_4520:
    ld a, [c]
    inc hl

jr_008_4522:
    cpl
    ld a, [c]
    ld [hl+], a
    rst $38
    jr z, @+$01

    ld [hl-], a
    jr z, @-$0a

    ld b, e
    jr z, jr_008_4520

    ld d, h
    jr z, jr_008_4522

    ld h, l
    rst $38
    ld hl, $33c2
    ld [hl+], a
    ld a, [c]
    ld hl, $e221
    inc sp

jr_008_453c:
    ld hl, $32c2
    ld hl, $1292
    ld hl, $31b2

jr_008_4545:
    inc l
    sub c
    db $10
    jr z, jr_008_453c

    ld b, c
    rst $38
    ld hl, $2394
    ld hl, $22b4

jr_008_4552:
    jr z, jr_008_4545

    ld b, h
    rst $38
    ld [hl+], a
    sub h
    inc sp

jr_008_4559:
    inc h
    or h
    ld [hl+], a
    inc h
    pop af
    ld b, h
    jr z, jr_008_4552

    ld d, l
    rst $38
    inc h
    rst $38
    ld d, l
    jr z, jr_008_4559

    ld h, l
    rst $38

jr_008_456a:
    ld [hl+], a
    add h
    ld b, e
    ld [hl+], a
    call nz, $2822
    ld a, [c]
    inc [hl]
    rst $38
    inc h
    pop af
    inc [hl]
    cpl
    ld a, [c]
    ld h, h
    rst $38
    ld [hl+], a
    pop af

jr_008_457d:
    ld [hl+], a
    cpl
    ld a, [c]
    ld [de], a

jr_008_4581:
    rst $38

jr_008_4582:
    ld [hl+], a
    jp nz, Jump_000_2f01

    db $f4
    ld bc, $f22f
    ld bc, $28ff
    pop af
    ld [hl-], a
    jr z, jr_008_4582

    inc sp

jr_008_4592:
    rst $38
    db $ec
    nop
    db $10
    ld a, [hl-]

Call_008_4597:
    inc h
    ld a, [c]
    nop
    ld [bc], a
    db $10
    ld [hl+], a
    jr z, jr_008_4581

    nop
    ld [bc], a
    db $10
    ld [$20ff], sp
    pop de
    ld b, d
    inc h
    and c
    ld [hl-], a
    jr nz, jr_008_457d

    ld [hl+], a
    ld h, $a1
    ld [hl-], a

Call_008_45b0:
    rst $38
    inc hl
    sub d
    ld sp, $b223
    ld [hl-], a
    inc hl
    jp nz, Jump_000_2833

    pop af
    ld d, h
    rst $38
    inc l
    pop af
    ld d, h
    jr z, @-$0d

    ld h, h

jr_008_45c4:
    rst $38
    ld [hl+], a
    pop af
    inc sp
    ld [hl+], a
    pop bc
    ld [hl-], a
    ld [hl+], a
    and c
    ld sp, $822f
    ld [hl-], a
    jr z, jr_008_45c4

    inc [hl]
    rst $38

jr_008_45d5:
    ld [hl+], a
    jp nc, Jump_000_2f32

    ld a, [c]
    ld b, e
    rst $38
    ld [hl+], a
    ld a, [c]
    ld b, e
    inc h
    or l
    ld [hl-], a
    add hl, hl
    add [hl]
    ld sp, $6427
    nop
    cpl
    ld a, [c]
    ld d, l
    rst $38
    db $ec
    ld bc, $9710
    cpl
    ld a, [c]
    nop
    rlca
    db $10
    ld [$2fff], sp
    ccf
    ld [hl+], a
    cpl

jr_008_45fb:
    ld a, [c]
    ld hl, $2fff
    ld c, a
    ld b, c
    jr z, jr_008_4592

    ld b, c
    jr z, jr_008_45d5

    ld b, c
    jr z, jr_008_45fb

    ld b, d
    cpl
    ld a, [c]
    ld b, c
    rst $38
    ld a, [hl+]
    rst $38
    ld d, b
    cpl
    rst $38
    ld d, c
    jr z, @-$0c

    ld d, c
    ld h, $ff
    ld d, d
    ld h, $ff
    ld d, e
    jr z, @+$01

    ld d, h
    cpl
    ld a, [c]
    ld d, h
    rst $38
    db $ec
    ld [bc], a
    cpl
    ccf
    ret nz

    rlca
    cpl
    rst $18
    ret nz

    rlca
    cp $04
    ld a, [hl+]
    ld b, [hl]
    cpl
    pop de
    ret nz

    rlca
    rst $38
    db $fc
    or e
    cpl
    cpl
    ret z

    rlca
    cpl
    rst $08
    rst $00
    rlca
    cp $04
    dec a
    ld b, [hl]
    cpl
    pop bc
    ret z

    rlca

jr_008_4649:
    rst $38

jr_008_464a:
    inc hl
    sub a
    ld [de], a

jr_008_464d:
    inc hl

jr_008_464e:
    and c
    ld de, $0afe
    ld c, d
    ld b, [hl]
    rst $38
    db $ec
    nop
    jr nz, jr_008_464a

    ret nz

    rlca
    jr nz, jr_008_464e

    nop
    rlca
    cp $0c
    ld d, l
    ld b, [hl]
    rst $38
    db $fc
    or e
    jr nz, jr_008_4649

    pop bc
    rlca
    jr nz, jr_008_464d

    ld bc, $fe07
    inc c
    ld h, h

jr_008_4671:
    ld b, [hl]
    rst $38
    ld hl, $49d1
    ld hl, $29d1
    cp $06
    ld [hl], e
    ld b, [hl]
    rst $38
    db $fc
    ret


    dec hl
    di
    jr nz, jr_008_4685

    add hl, hl

jr_008_4685:
    db $d3
    ld d, b
    ld bc, $05fe
    ld a, [hl]
    ld b, [hl]
    jr z, jr_008_4671

    jr nc, jr_008_4691

    cpl

jr_008_4691:
    jp nz, $0110

    rst $38
    ld a, [hl+]
    di
    dec [hl]
    ld l, $f6
    ld b, l
    cp $04
    sub l
    ld b, [hl]
    inc l
    db $f4

jr_008_46a1:
    cp h
    inc l
    push af
    sbc h
    cpl
    db $f4
    xor h
    rst $38
    db $fc
    add hl, sp
    inc h
    db $f4
    nop
    ld b, $23
    call nz, Call_000_0500
    dec h
    or l
    nop
    ld b, $2d
    ld [c], a
    ret nz

    ld b, $fe
    inc bc
    xor c
    ld b, [hl]
    jr z, @-$2d

    nop
    ld b, $ff
    db $fc
    adc l
    dec h
    db $e4
    ldh [rTIMA], a
    inc h
    or h
    ldh [rDIV], a
    ld h, $a5
    add sp, $05
    ld l, $d1
    and b
    ld b, $fe
    inc bc
    call nz, $ff46
    dec h
    jp $2333


    sub d
    ld b, e
    ld a, [hl+]
    or l
    inc sp
    cpl
    jp $fe32


    ld [bc], a
    db $db
    ld b, [hl]
    rst $38
    db $fc
    jp nc, $8123

    nop
    inc bc
    inc hl
    pop bc
    nop
    inc b
    inc hl
    pop af
    nop
    dec b
    inc hl
    or c
    nop
    inc b
    inc hl
    ld [hl], c
    nop
    inc bc
    cp $05
    db $ec
    ld b, [hl]
    jr z, @-$7d

    nop
    inc b
    rst $38
    inc hl
    ld h, d
    ld [hl+], a
    inc hl
    and d
    ld [hl-], a
    inc hl
    jp nc, $2333

    sub d
    inc hl
    inc hl
    ld d, d
    ld [de], a
    cp $05
    dec bc
    ld b, a
    jr z, jr_008_46a1

    ld [de], a
    rst $38
    db $fc
    add hl, sp
    cpl
    db $f4
    nop
    dec b
    cpl
    call nz, $0400
    cpl
    ld [c], a
    ret nz

    dec b
    cp $03
    ld [hl+], a
    ld b, a
    rst $38
    db $fc
    adc l
    daa
    db $e4
    jr nc, jr_008_473f

    cpl
    or h
    jr nc, @+$05

jr_008_473f:
    cpl
    and d
    jr c, jr_008_4747

    cp $04
    dec [hl]
    ld b, a

jr_008_4747:
    rst $38
    add hl, hl
    db $f4
    ld b, h
    add hl, hl
    ld a, [c]
    ld b, e
    cpl
    db $f4
    ld b, d
    cpl
    db $f4
    ld b, c
    cp $03
    ld c, b
    ld b, a
    rst $38
    db $fc
    and c
    ld a, [hl+]
    pop af
    ld b, b
    ld b, $2a
    di
    add b
    ld b, $2a
    ld a, [c]
    jr nz, jr_008_476d

    cp $04
    ld e, c
    ld b, a
    ld a, [hl+]
    pop af

jr_008_476d:
    ld b, b
    ld b, $ff
    db $fc
    or e
    ld a, [hl+]
    di
    ld [hl], c
    dec b
    daa
    db $e3
    ld sp, $2a05
    pop af
    ld d, c
    dec b
    cp $04
    ld [hl], b
    ld b, a
    ld a, [hl+]
    pop af
    ld [hl], c
    dec b
    rst $38
    ld [hl+], a
    pop de
    ld c, d
    ld [hl+], a
    jp nc, $fe2a

    dec d
    add a
    ld b, a
    rst $38
    db $ec
    nop
    ld [hl+], a
    pop af
    nop
    ld [bc], a
    inc hl
    pop af
    nop
    rlca
    inc h
    pop af
    nop
    dec b

Call_008_47a0:
    dec h
    pop af
    ldh a, [rTAC]
    cp $08
    sub d
    ld b, a
    rst $38
    db $fc
    or e
    ld [hl+], a
    pop hl
    ld [bc], a
    inc bc
    inc hl

Call_008_47b0:
    pop hl
    ld a, [c]
    rlca
    inc h
    pop hl
    ld [bc], a
    ld b, $25
    pop hl
    ld [bc], a
    rlca
    cp $08
    xor c
    ld b, a
    rst $38

Call_008_47c0:
    ld [hl+], a
    db $d3
    db $10
    inc hl

jr_008_47c4:
    db $d3
    ld de, $d222

jr_008_47c8:
    db $10
    dec h
    jp nc, $fe12

    add hl, bc
    ret nz

    ld b, a

jr_008_47d0:
    rst $38
    db $fc
    dec hl
    inc hl
    pop af
    ldh a, [rTAC]

Call_008_47d7:
    inc h
    ld a, [c]
    nop
    ld [bc], a
    cp $08
    pop de
    ld b, a
    rst $38
    db $fc

jr_008_47e1:
    or e
    inc h
    ld [c], a
    ld [bc], a

jr_008_47e5:
    ld [bc], a
    inc h
    pop hl
    ld [c], a

jr_008_47e9:
    rlca
    cp $09
    ldh [rBGP], a
    rst $38
    inc h
    rst $38
    ld b, e
    inc h
    ld a, [c]
    ld b, h
    cp $09
    rst $28
    ld b, a
    rst $38
    db $ec
    ld [bc], a
    db $10
    rst $30
    jr z, jr_008_47c4

    cp l
    rlca
    jr z, jr_008_47c8

    cp [hl]
    rlca
    jr z, @-$3a

    cp a
    rlca
    jr z, jr_008_47d0

    ret nz

    rlca
    cpl
    call nz, Call_000_07c1
    cpl
    ld a, [c]
    ret nz

    rlca
    db $10
    ld [$ecff], sp
    ld [bc], a
    jr z, jr_008_47e1

    ld [hl], b
    rlca
    jr z, jr_008_47e5

    ld h, c
    rlca
    jr z, jr_008_47e9

    ld h, d
    rlca
    jr z, @-$3a

    ld h, e
    rlca
    cpl
    call nz, $0764
    cpl
    ld a, [c]
    ld h, h
    rlca
    rst $38
    cpl
    ccf
    inc d
    cpl
    rst $08
    inc de
    cpl
    rst $08
    ld [de], a
    cpl
    rst $08
    ld de, $cf2f
    db $10
    cpl
    jp nz, $ff10

    db $ec
    ld [bc], a
    cpl
    rst $38
    ldh [rTAC], a
    cpl
    rst $38
    ldh [rTAC], a
    cpl
    rst $38
    ldh [rTAC], a
    cpl
    rst $38
    ldh [rTAC], a
    cpl
    ld a, [c]
    ldh [rTAC], a
    rst $38
    db $ec
    inc bc
    cpl
    rst $38
    ld [c], a
    rlca
    cpl
    rst $38
    pop hl
    rlca
    cpl
    rst $38
    ld [c], a
    rlca

jr_008_486c:
    cpl
    rst $38
    pop hl
    rlca
    cpl
    ld a, [c]
    ld [c], a
    rlca
    rst $38

jr_008_4875:
    db $ec
    ld [bc], a
    db $10
    xor a
    jr z, jr_008_486c

    nop
    rlca
    db $10
    ld [$ecff], sp
    inc bc
    jr z, jr_008_4875

    ld bc, $ff07
    db $ec
    ld [bc], a
    ld h, $f1
    nop
    dec b
    ld h, $f1
    add b
    dec b
    ld h, $f1
    nop
    ld b, $26
    pop af
    add b
    ld b, $28
    pop af
    nop
    rlca
    rst $38
    db $ec
    inc bc
    ld h, $e1
    db $10
    dec b
    ld h, $e1
    sub b
    dec b
    ld h, $e1
    db $10
    ld b, $26
    pop hl
    sub b
    ld b, $28
    pop hl
    db $10
    rlca
    rst $38
    db $fc
    db $ed

jr_008_48b7:
    jr z, @+$01

    ld hl, sp+$03
    cpl
    rst $38
    nop
    inc b
    cpl
    di
    nop
    inc b
    rst $38
    db $fc
    or h
    jr z, jr_008_48b7

    ret nz

    inc bc
    cpl
    rst $28
    ret nz

    inc bc
    cpl
    db $e3
    ret nz

    inc bc
    rst $38
    inc h
    rst $38
    ld d, c
    jr z, @+$01

    ld d, h
    cpl
    rst $38
    ld d, l
    cpl
    di
    ld d, [hl]
    rst $38
    ld hl, sp-$16
    ld a, [bc]
    inc h
    db $ec
    ld [bc], a
    jp c, $e387

    add a
    ld [c], a
    ld h, e
    ld b, e
    db $e3
    add a
    rst $38
    ld hl, sp-$16
    ld a, [bc]
    inc hl
    db $ec
    ld [bc], a
    db $db
    ld h, a
    db $e3
    add a
    jp c, $e267

    ld h, e
    ld b, e
    db $e3
    add a
    rst $38
    db $ec
    nop
    ld [hl+], a
    pop af
    add b
    rlca
    ld [hl+], a
    pop af
    nop
    rlca
    ld [hl+], a
    pop af
    sub b
    rlca
    ld [hl+], a
    pop af
    nop
    rlca
    ld [hl+], a
    pop af
    and b
    rlca
    ld [hl+], a
    pop af
    nop
    rlca
    ld [hl+], a
    pop af
    or b
    rlca
    ld [hl+], a
    pop af
    nop
    rlca
    ld [hl+], a
    pop af
    ret nz

    rlca
    ld [hl+], a
    pop af
    nop
    rlca
    ld [hl+], a
    pop af
    ret nc

    rlca
    ld [hl+], a
    pop af
    nop
    rlca
    ld [hl+], a
    pop af
    ldh [rTAC], a
    cp $0c
    jr nc, @+$4b

    cpl
    pop af
    nop
    rlca
    rst $38
    db $fc
    or e
    ld [hl+], a
    pop af
    add c
    rlca
    ld [hl+], a
    pop af
    ld bc, $2207
    pop af
    sub c
    rlca
    ld [hl+], a
    pop af
    ld bc, $2207
    pop af
    and c
    rlca
    ld [hl+], a
    pop af
    ld bc, $2207
    pop af
    or c
    rlca
    ld [hl+], a
    pop af
    ld bc, $2207
    pop af
    pop bc
    rlca
    ld [hl+], a
    pop af
    ld bc, $2207
    pop af
    pop de
    rlca
    ld [hl+], a
    pop af
    ld bc, $2207
    pop af
    pop hl
    rlca
    cp $0c
    jr nc, jr_008_49c4

    cpl
    pop af
    ld bc, $ff07
    ld hl, $49d1
    ld hl, $29d1
    cp $1a
    add b
    ld c, c
    rst $38
    db $fc
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
    jr z, jr_008_49ef

    ld b, [hl]
    rlca
    rst $38
    ld [hl+], a
    ld a, [c]
    ld c, h

jr_008_49c4:
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
    cpl
    db $d3
    ld c, h
    rst $38
    db $fc
    ldh a, [$2f]
    rst $30
    and b

jr_008_49dc:
    rlca
    ld h, $e6
    and e
    rlca
    ld a, [hl+]
    db $f4
    and b
    rlca
    db $fc
    and l
    ld a, [hl+]
    or $d8
    rlca
    inc h
    db $e3

jr_008_49ed:
    rst $10
    rlca

jr_008_49ef:
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

jr_008_4a24:
    jr z, jr_008_49dc

    inc a
    ld h, $d4
    dec a
    jr z, jr_008_49ed

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
    jr z, jr_008_4a24

    inc l
    rst $38
    db $fc
    ldh a, [$2f]
    rst $30
    add b
    ld b, $2a

jr_008_4a6c:
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

jr_008_4a88:
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

    jr z, jr_008_4a88

    jr nc, jr_008_4ae0

    rst $38
    db $fc
    ld a, [bc]
    inc h

jr_008_4add:
    ld [$0000], sp

jr_008_4ae0:
    ld h, $a7
    ld b, c
    rlca
    jr z, jr_008_4a6c

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

jr_008_4b19:
    cpl
    db $e3
    jr nc, jr_008_4b24

    inc h
    db $f4
    ld b, b
    rlca
    dec h
    or e
    ld c, b

jr_008_4b24:
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
    jr z, jr_008_4b19

    inc l
    inc l
    add $3c
    ld a, [hl+]
    or [hl]
    inc l

jr_008_4b4a:
    jr z, jr_008_4add

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

Call_008_4b60:
    dec h
    db $d3
    ret nz

    dec b
    inc h
    db $d3
    and b

Call_008_4b67:
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
    jr z, jr_008_4b4a

    add d
    inc b
    rst $38
    inc l
    db $e4
    ld c, h
    ld a, [hl+]
    rst $00

jr_008_4b91:
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

jr_008_4bcc:
    ld [bc], a
    ld b, $ff
    inc hl
    db $e4
    inc a
    inc l
    sub $2c
    inc h

jr_008_4bd6:
    db $e4
    inc a
    jr z, jr_008_4b91

jr_008_4bda:
    ld e, h
    cpl
    jp nz, $ff5d

    db $fc
    ret


    jr z, jr_008_4bda

    add b
    ld b, $22
    rst $30
    ld h, b
    ld b, $21
    rst $20
    ld b, b
    ld b, $21
    rst $20
    jr nz, jr_008_4bf7

    cpl
    pop de
    nop
    ld b, $24
    rst $00

jr_008_4bf7:
    ld b, b
    rlca
    inc h
    and a
    jr nc, jr_008_4c04

    cpl
    sub c
    jr nz, @+$09

    rst $38
    db $fc
    ld a, c

jr_008_4c04:
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
    jr jr_008_4c3c

    cpl
    push hl
    sbc b
    rlca
    jr z, jr_008_4bcc

    ld e, b

jr_008_4c3c:
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

jr_008_4c48:
    jr z, jr_008_4cbb

    ld c, b
    rlca
    rst $38
    inc hl
    and c
    inc e
    ld l, $94
    inc l
    jr z, jr_008_4bd6

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
    jr z, jr_008_4c48

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

jr_008_4c81:
    ld h, c
    ld hl, $6128
    ld de, $fcff
    ld a, [$8326]
    ld b, a

jr_008_4c8c:
    ld [bc], a
    cpl

jr_008_4c8e:
    ld h, d
    ld h, $02

jr_008_4c91:
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
    jr z, jr_008_4c91

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

jr_008_4cbb:
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
    jr z, jr_008_4c8c

    ld e, h

jr_008_4cdc:
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
    jr z, jr_008_4c8e

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
    jr z, jr_008_4c81

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

jr_008_4d1b:
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
    jr z, jr_008_4cdc

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

jr_008_4d42:
    ld b, c
    rlca
    inc h
    pop af
    add d
    rlca
    jr z, jr_008_4d1b

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
    jr nz, jr_008_4d82

    ld [hl+], a
    or d
    db $10
    ld b, $22
    and d

jr_008_4d82:
    jr jr_008_4d8a

    ld [hl+], a
    or d
    db $10
    ld b, $28
    pop bc

jr_008_4d8a:
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

jr_008_4dad:
    reti


    dec b
    jr z, jr_008_4d42

    pop hl
    dec b
    rst $38
    db $ec
    nop
    jr z, jr_008_4dad

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

jr_008_4dea:
    jr nz, jr_008_4df2

    cp $02
    jp nc, $ff4d

    db $fc

jr_008_4df2:
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

jr_008_4e20:
    ld h, $d2
    inc e
    add hl, hl
    or c
    inc l
    jr z, jr_008_4dea

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

jr_008_4e40:
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
    jr nz, jr_008_4e54

    jr z, jr_008_4e20

    db $10
    rlca
    rst $38
    db $fc
    ld e, d

jr_008_4e54:
    dec h
    or e
    pop af
    ld b, $27
    push bc
    ld d, d
    rlca

jr_008_4e5c:
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
    jr z, jr_008_4ee1

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
    jr z, jr_008_4e40

    and c
    ld b, $26
    add [hl]

jr_008_4e9d:
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
    jr z, jr_008_4e9d

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
    jr z, jr_008_4e5c

    inc a
    rst $38
    db $fc
    ldh a, [$2f]
    or $65
    dec b
    ld a, [hl+]

jr_008_4ed4:
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

jr_008_4ee1:
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

    jr z, jr_008_4ed4

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

Call_008_4f40:
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

Call_008_4f50:
    daa
    jp nc, Jump_000_0740

    cpl
    push hl
    ld h, b
    rlca
    cpl
    pop bc
    jr nc, jr_008_4f63

    rst $38
    db $fc
    add c
    ld [hl+], a
    jp nz, $0701

jr_008_4f63:
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

jr_008_4f84:
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

jr_008_4fa7:
    db $e4
    ldh [rTMA], a
    jr z, @-$2d

    ret nc

    ld b, $ff
    db $fc
    ld a, [bc]
    daa
    and $81

jr_008_4fb4:
    ld b, $2e
    push de
    pop bc
    ld b, $24
    call nz, Call_000_06b1
    inc h
    call nc, $06a1
    jr z, jr_008_4f84

jr_008_4fc3:
    sub c
    ld b, $ff
    ld a, [hl+]

Call_008_4fc7:
    and [hl]
    inc a
    ld l, $94
    inc l
    dec h
    and e
    inc a

jr_008_4fcf:
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

    jr z, jr_008_4fb4

    add b
    inc b
    rst $38
    db $fc
    xor $2b
    jp nc, Jump_000_0438

    ld l, $c6

jr_008_4fee:
    sbc b
    inc b
    inc hl

jr_008_4ff1:
    or d
    adc b
    inc b
    jr z, jr_008_4fa7

    ld a, b
    inc b
    rst $38
    ld a, [hl+]
    and $6c
    cpl

jr_008_4ffd:
    jp nc, Jump_000_235c

    jp nz, Jump_000_286c

    pop de
    ld e, h
    rst $38
    db $fc
    inc sp
    cpl
    or $c0

jr_008_500b:
    dec b
    jr z, jr_008_4ff1

    cp h
    dec b

Call_008_5010:
    ld h, $d2
    ret nc

    dec b
    ld h, $b2
    ldh [rTIMA], a
    ld h, $c2
    ldh a, [rTIMA]
    jr z, jr_008_4fcf

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

jr_008_502c:
    or d
    pop bc
    inc b
    jr z, jr_008_4fc3

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

jr_008_503f:
    ld a, [hl+]
    sub $6c
    inc h
    jp nz, $264c

jr_008_5046:
    db $d3
    ld e, h
    jr z, jr_008_4ffd

    ld c, h
    jr z, jr_008_4fee

    ld e, h
    rst $38
    db $fc
    ldh a, [$28]
    db $e4

jr_008_5053:
    sub b
    rlca
    cpl
    push af
    ret nz

    rlca
    jr z, jr_008_502c

    ret c

jr_008_505c:
    rlca
    rst $38
    db $fc
    and l

Call_008_5060:
    ld a, [hl+]
    call nz, $0771
    cpl
    or [hl]
    and d
    rlca
    jr z, jr_008_500b

    or a
    rlca
    rst $38
    jr z, jr_008_5053

    ld c, h
    ld l, $c4
    inc a
    jr z, jr_008_5046

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

jr_008_50b6:
    ld bc, $2607
    and d
    ld b, d
    rlca

jr_008_50bc:
    jr z, jr_008_503f

    add c
    rlca
    rst $38

Call_008_50c1:
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

jr_008_50d5:
    dec de
    dec h
    sub d
    ld a, [de]
    jr z, jr_008_505c

    jr @+$01

    db $fc
    ldh a, [rNR50]
    di
    add b
    rlca

Jump_008_50e3:
    cpl
    rst $20
    nop
    rlca
    jr z, jr_008_50bc

    db $10
    rlca
    inc h
    jp nz, Jump_000_0700

    inc h
    jp nc, Jump_000_06f0

    jr z, jr_008_50b6

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
    jr z, jr_008_50d5

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

jr_008_5166:
    rlca
    daa
    add $e0
    rlca

jr_008_516b:
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

jr_008_5190:
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
    jr z, jr_008_5166

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

Call_008_51b1:
    ld h, $d5
    ld d, b
    rlca
    inc h
    jp $0760


    inc hl
    jp $0780


    jr z, jr_008_5190

jr_008_51bf:
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
    jr z, jr_008_516b

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
    jr z, jr_008_51bf

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
    jr nz, jr_008_520c

    jr z, @-$5d

    inc h
    ld b, $ff
    db $fc

jr_008_520c:
    ld [hl+], a
    cpl
    or b
    jp Jump_000_2a06


    and b
    pop bc
    ld b, $26
    add h

jr_008_5217:
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

jr_008_522a:
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

    jr z, jr_008_5217

    and b
    ld b, $ff
    db $fc
    rrca
    add hl, hl
    push de
    ld sp, $2306

jr_008_5260:
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

jr_008_5271:
    sub c
    ld b, $23
    jp nz, $0671

    jr z, jr_008_522a

    ld d, c
    ld b, $ff
    ld h, $e3
    ld c, h
    inc h
    jp Jump_000_253c


jr_008_5283:
    call nc, Call_000_243c
    call nz, Call_000_262c
    or h
    inc a
    jr z, @-$3d

    inc l
    rst $38

jr_008_528f:
    db $fc
    and l
    inc hl
    db $f4
    ld b, c
    ld b, $2d
    sub $21
    rlca
    jr z, jr_008_528f

    add hl, de
    rlca
    jr z, jr_008_5260

    ld a, [de]
    rlca
    rst $38
    db $fc
    call z, $f424

jr_008_52a6:
    add b
    dec b
    ld l, $e6
    ldh [rTMA], a
    jr z, jr_008_5283

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
    jr z, jr_008_5271

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

jr_008_52da:
    dec b
    inc l

jr_008_52dc:
    pop de
    db $10
    dec b
    ld l, $c1
    inc c
    dec b
    jr z, jr_008_52a6

    ld a, [bc]

jr_008_52e6:
    dec b
    rst $38
    ld l, $f2
    ld h, l
    dec l
    ld [c], a

jr_008_52ed:
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

jr_008_52f9:
    ld h, h
    dec b
    ld [hl+], a
    ld [c], a

jr_008_52fd:
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
    jr z, jr_008_52da

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
    jr z, jr_008_52e6

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
    jr z, jr_008_52ed

    and b
    inc b
    inc hl
    db $d3
    jr nz, @+$07

    inc hl
    call nz, $04e0
    jr z, jr_008_52f9

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

    jr z, jr_008_52dc

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
    jr z, jr_008_52fd

    ld c, c
    rst $38
    ld a, [$d083]
    cp $ff
    jr z, jr_008_539b

    bit 7, a
    ret z

    and $7f
    jr nz, jr_008_5383

    call Call_008_53a7
    ld a, $1e
    jr jr_008_5395

jr_008_5383:
    cp $14
    jr nz, jr_008_538a

    call Call_008_53ac

jr_008_538a:
    ld a, $86
    ld [$c02a], a
    ld a, [$d083]
    and $7f
    dec a

jr_008_5395:
    set 7, a
    ld [$d083], a
    ret


jr_008_539b:
    xor a
    ld [$d083], a
    ld [$c02a], a
    ld de, $53c4
    jr jr_008_53af

Call_008_53a7:
    ld de, $53bc
    jr jr_008_53af

Call_008_53ac:
    ld de, $53c0

jr_008_53af:
    ld hl, $ff10
    ld c, $05
    xor a

Call_008_53b5:
jr_008_53b5:
    ld [hl+], a
    ld a, [de]
    inc de
    dec c
    jr nz, jr_008_53b5

    ret


    and b
    ld [c], a
    ld d, b
    add a
    or b
    ld [c], a
    xor $86
    nop
    nop
    nop
    add b
    xor a
    ldh [$ba], a
    call Call_000_36f4
    ld a, [$d5a2]
    and a
    jr nz, jr_008_53f3

    ld a, [$d74b]
    bit 5, a
    jr z, jr_008_53ea

    ld a, [$d5a2]
    and a
    jr nz, jr_008_53f3

    ld hl, $c3a0
    ld b, $08
    ld c, $0e
    jr jr_008_53fa

jr_008_53ea:
    ld hl, $c3a0
    ld b, $06
    ld c, $0e
    jr jr_008_53fa

jr_008_53f3:
    ld hl, $c3a0
    ld b, $0a
    ld c, $0e

jr_008_53fa:
    call Call_000_1922
    call Call_000_2429
    ld a, $03
    ld [$cc28], a
    ld a, [$d7f1]
    bit 0, a
    jr nz, jr_008_5414

    ld hl, $c3ca
    ld de, $548b
    jr jr_008_541a

jr_008_5414:
    ld hl, $c3ca
    ld de, $5497

jr_008_541a:
    call Call_000_1955
    ld hl, $c3f2
    ld de, $d158
    call Call_000_1955
    ld l, c
    ld h, b
    ld de, $54a0
    call Call_000_1955
    ld a, [$d74b]
    bit 5, a
    jr z, jr_008_5462

    ld hl, $c41a
    ld de, $54a5
    call Call_000_1955
    ld a, [$d5a2]
    and a
    jr z, jr_008_545a

    ld a, $04
    ld [$cc28], a
    ld hl, $c442
    ld de, $54b2
    call Call_000_1955
    ld hl, $c46a
    ld de, $54ba
    jr jr_008_546d

jr_008_545a:
    ld hl, $c442
    ld de, $54ba
    jr jr_008_546d

jr_008_5462:
    ld a, $02
    ld [$cc28], a
    ld hl, $c41a
    ld de, $54ba

jr_008_546d:
    call Call_000_1955
    ld a, $03
    ld [$cc29], a
    ld a, $02
    ld [$cc24], a
    ld a, $01
    ld [$cc25], a
    xor a
    ld [$cc26], a
    ld [$cc2a], a
    ld a, $01
    ldh [$ba], a
    ret


    sub d
    adc [hl]
    adc h
    add h
    adc [hl]
    adc l
    add h
    cp l
    ld a, a
    adc a
    add d
    ld d, b
    add c
    adc b
    adc e
    adc e
    cp l
    ld a, a
    adc a
    add d
    ld d, b
    cp l
    ld a, a
    adc a
    add d
    ld d, b
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$72
    add b
    adc d
    cp l
    ld a, a
    adc a
    add d
    ld d, b
    ld c, d
    adc e
    add h
    add b
    add [hl]
    sub h
    add h
    ld d, b
    adc e
    adc [hl]
    add [hl]
    ld a, a
    adc [hl]
    add l
    add l
    ld d, b
    ld hl, $d730
    set 6, [hl]
    xor a
    ld [$ccd3], a
    inc a
    ld [$d0b6], a
    call Call_000_36c0
    ld a, [$cc36]
    push af
    ld a, [$cd60]
    bit 3, a
    jr nz, jr_008_54e8

    ld a, $99
    call Call_000_23b1
    ld hl, $57e9
    call Call_000_3c49

Jump_008_54e8:
jr_008_54e8:
    ld a, [$ccd3]
    ld [$cc26], a
    ld hl, $9780
    ld de, $697e
    ld bc, $0e01
    call Call_000_1848
    call Call_000_3709
    ld hl, $c3a0
    ld b, $0a
    ld c, $0c
    call Call_000_1922
    ld hl, $c3ca
    ld de, $56e1
    call Call_000_1955
    ld hl, $cc24
    ld a, $02
    ld [hl+], a
    dec a
    ld [hl+], a
    inc hl
    inc hl
    ld a, $04
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld hl, $cc36
    ld [hl+], a
    ld [hl], a
    ld [$cc2f], a
    ld hl, $57ee
    call Call_000_3c49
    ld hl, $c4c1
    ld b, $02
    ld c, $09
    call Call_000_1922
    ld a, [$d5a0]
    and $7f
    cp $09
    jr c, jr_008_554f

    sub $09
    ld hl, $c4f1
    ld [hl], $f7
    add $f6
    jr jr_008_5551

jr_008_554f:
    add $f7

jr_008_5551:
    ld [$c4f2], a
    ld hl, $c4ea
    ld de, $5713
    call Call_000_1955
    ld a, $01
    ldh [$ba], a
    call Call_000_3dd7
    call Call_000_3abe
    bit 1, a
    jp nz, Jump_008_5588

    call Call_000_3bec
    ld a, [$cc26]
    ld [$ccd3], a
    and a
    jp z, Jump_008_5618

    cp $01
    jp z, Jump_008_55ac

    cp $02
    jp z, Jump_008_5673

    cp $03
    jp z, Jump_008_56b3

Jump_008_5588:
    ld a, [$cd60]
    bit 3, a
    jr nz, jr_008_559a

    call Call_000_36a0
    ld a, $9a
    call Call_000_23b1
    call Call_000_3748

jr_008_559a:
    ld hl, $cd60
    res 5, [hl]
    call Call_000_3701
    pop af
    ld [$cc36], a
    ld hl, $d730
    res 6, [hl]
    ret


Jump_008_55ac:
    ld a, [$d163]
    dec a
    jr nz, jr_008_55bb

    ld hl, $57fd
    call Call_000_3c49
    jp Jump_008_54e8


jr_008_55bb:
    ld a, [$da80]
    cp $14
    jr nz, jr_008_55cb

    ld hl, $5802
    call Call_000_3c49
    jp Jump_008_54e8


jr_008_55cb:
    ld hl, $d163
    call Call_008_56be
    jp c, Jump_008_54e8

    call Call_008_574b
    jp nc, Jump_008_54e8

    ld a, [$cf91]
    call Call_000_13d9
    call Call_000_3740
    ld a, $01
    ld [$cf95], a
    call Call_000_3a68
    xor a
    ld [$cf95], a
    call Call_000_391f
    call Call_000_3748
    ld hl, $cd3d
    ld a, [$d5a0]
    and $7f
    cp $09
    jr c, jr_008_560a

    sub $09
    ld [hl], $f7
    inc hl
    add $f6
    jr jr_008_560c

jr_008_560a:
    add $f7

jr_008_560c:
    ld [hl+], a
    ld [hl], $50
    ld hl, $57f8
    call Call_000_3c49
    jp Jump_008_54e8


Jump_008_5618:
    ld a, [$da80]
    and a
    jr nz, jr_008_5627

    ld hl, $580c
    call Call_000_3c49
    jp Jump_008_54e8


jr_008_5627:
    ld a, [$d163]
    cp $06
    jr nz, jr_008_5637

    ld hl, $5811
    call Call_000_3c49
    jp Jump_008_54e8


jr_008_5637:
    ld hl, $da80
    call Call_008_56be
    jp c, Jump_008_54e8

    call Call_008_574b
    jp nc, Jump_008_54e8

    ld a, [$cf92]
    ld hl, $de06
    call Call_000_15ba
    ld a, [$cf91]
    call Call_000_13d9
    call Call_000_3740
    xor a
    ld [$cf95], a
    call Call_000_3a68
    ld a, $01
    ld [$cf95], a
    call Call_000_391f
    call Call_000_3748
    ld hl, $5807
    call Call_000_3c49
    jp Jump_008_54e8


Jump_008_5673:
    ld a, [$da80]
    and a
    jr nz, jr_008_5682

    ld hl, $580c
    call Call_000_3c49
    jp Jump_008_54e8


jr_008_5682:
    ld hl, $da80
    call Call_008_56be
    jp c, Jump_008_54e8

    ld hl, $581b
    call Call_000_3c49
    call Call_000_35ec
    ld a, [$cc26]
    and a
    jr nz, jr_008_5682

    inc a
    ld [$cf95], a
    call Call_000_391f
    call Call_000_3748
    ld a, [$cf91]
    call Call_000_13d0
    ld hl, $5820
    call Call_000_3c49
    jp Jump_008_54e8


Jump_008_56b3:
    ld b, $1c
    ld hl, $78a1
    call Call_000_35d6
    jp Jump_008_54e8


Call_008_56be:
    ld a, l
    ld [$cf8b], a
    ld a, h
    ld [$cf8c], a
    xor a
    ld [$cf93], a
    ld [$cf94], a
    inc a
    ld [$d0b6], a
    ld a, [$cc2b]
    ld [$cc26], a
    call Call_000_2be6
    ld a, [$cc26]
    ld [$cc2b], a
    ret


    sub [hl]
    adc b
    sub e
    add a
    add e
    sub c
    add b
    sub [hl]
    ld a, a
    ld c, d
    ld c, [hl]
    add e
    add h
    adc a
    adc [hl]
    sub d
    adc b
    sub e
    ld a, a
    ld c, d
    ld c, [hl]
    sub c
    add h
    adc e
    add h
    add b
    sub d
    add h
    ld a, a
    ld c, d
    ld c, [hl]
    add d
    add a
    add b
    adc l
    add [hl]
    add h
    ld a, a
    add c
    adc [hl]
    sub a
    ld c, [hl]
    sub d
    add h
    add h
    ld a, a
    sbc b
    add b
    rst $20
    ld d, b
    add c
    adc [hl]
    sub a
    ld a, a
    adc l
    xor [hl]
    add sp, $50
    ld hl, $d173
    ld bc, $002c
    jr jr_008_5729

    ld hl, $da9e
    ld bc, $0021

jr_008_5729:
    ld a, [$cf92]
    call Call_000_3a87
    ld b, $04

jr_008_5731:
    ld a, [hl+]
    push hl
    push bc
    ld hl, $5745
    ld de, $0001
    call Call_000_3dab
    pop bc
    pop hl
    ret c

    dec b
    jr nz, jr_008_5731

    and a
    ret


    rrca
    inc de
    add hl, sp
    ld b, [hl]
    sub h
    rst $38

Call_008_574b:
    ld hl, $c471
    ld b, $06
    ld c, $09
    call Call_000_1922
    ld a, [$ccd3]
    and a
    ld de, $57cb
    jr nz, jr_008_5761

    ld de, $57d3

jr_008_5761:
    ld hl, $c49b
    call Call_000_1955
    ld hl, $c4c3
    ld de, $57dc
    call Call_000_1955
    ld hl, $cc24
    ld a, $0c
    ld [hl+], a
    ld a, $0a
    ld [hl+], a
    xor a
    ld [hl+], a
    inc hl
    ld a, $02
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    xor a
    ld [hl], a
    ld hl, $cc36
    ld [hl+], a
    ld [hl], a
    ld [$cc2f], a
    ld [$cc2b], a

jr_008_578f:
    call Call_000_3abe
    bit 1, a
    jr nz, jr_008_579f

    ld a, [$cc26]
    and a
    jr z, jr_008_57a1

    dec a
    jr z, jr_008_57a3

jr_008_579f:
    and a
    ret


jr_008_57a1:
    scf
    ret


jr_008_57a3:
    call Call_000_3719
    ld a, [$ccd3]
    and a
    ld a, $00
    jr nz, jr_008_57b0

    ld a, $02

jr_008_57b0:
    ld [$cc49], a
    ld a, $36
    call Call_000_3e6d
    ld a, $37
    call Call_000_3e6d
    call Call_000_3725

Call_008_57c0:
    call Call_000_3090
    call Call_000_3ded
    call Call_000_20ba
    jr jr_008_578f

    add e
    add h
    adc a
    adc [hl]
    sub d
    adc b
    sub e
    ld d, b
    sub [hl]
    adc b
    sub e
    add a
    add e
    sub c
    add b
    sub [hl]
    ld d, b
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
    rla
    ld sp, $2261
    ld d, b
    rla
    dec a
    ld h, c
    ld [hl+], a
    ld d, b
    rla
    ld b, h
    ld h, c
    ld [hl+], a
    ld d, b
    rla
    ld e, c
    ld h, c
    ld [hl+], a
    ld d, b
    rla
    ld [hl], a
    ld h, c
    ld [hl+], a
    ld d, b
    rla
    sbc b
    ld h, c
    ld [hl+], a
    ld d, b
    rla
    cp c
    ld h, c
    ld [hl+], a
    ld d, b
    rla
    rst $10
    ld h, c
    ld [hl+], a
    ld d, b
    rla
    or $61
    ld [hl+], a
    ld d, b
    rla
    jr z, jr_008_587b

    ld [hl+], a
    ld d, b
    rla
    dec a
    ld h, d
    ld [hl+], a
    ld d, b
    rla
    ld l, b
    ld h, d
    ld [hl+], a
    ld d, b
    ldh a, [$aa]
    cp $01
    ret z

    ld a, [$c109]
    cp $0c
    ret nz

    ld a, [$d35e]
    cp $ef
    ld a, $02
    jr z, jr_008_583a

    inc a

jr_008_583a:
    ld [$d12b], a
    call Call_000_3c3c
    ld a, $22
    jp Jump_000_3ef5


    ldh a, [$aa]
    cp $02
    ret z

    ld a, [$c109]
    cp $08
    ret nz

    ld a, [$d35e]
    cp $ef
    ld a, $02
    jr z, jr_008_585a

    inc a

jr_008_585a:
    ld [$d12b], a
    call Call_000_3c3c
    ld a, $22
    jp Jump_000_3ef5


    rla
    db $ed
    ld c, e
    ld [hl+], a
    ld d, b
    ld a, [$c109]
    cp $04
    ret nz

    call Call_000_3c3c
    ld a, $23
    jp Jump_000_3ef5


    db $fd
    ld c, $00

jr_008_587b:
    ld b, $00
    ld hl, $c026
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_008_58a7

    ld a, c
    cp $04
    jr nc, jr_008_58a4

    ld a, [$c002]
    and a
    jr z, jr_008_58a4

    bit 7, a
    jr nz, jr_008_58a7

    set 7, a
    ld [$c002], a
    xor a
    ldh [rNR51], a
    ldh [rNR30], a
    ld a, $80
    ldh [rNR30], a
    jr jr_008_58a7

jr_008_58a4:
    call Call_008_58ae

jr_008_58a7:
    ld a, c
    inc c
    cp $07
    jr nz, jr_008_587b

    ret


Call_008_58ae:
    ld b, $00
    ld hl, $c0b6
    add hl, bc
    ld a, [hl]
    cp $01
    jp z, Jump_008_5946

    dec a
    ld [hl], a
    ld a, c
    cp $04
    jr nc, jr_008_58ca

    ld hl, $c02a
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_008_58ca

    ret


jr_008_58ca:
    ld hl, $c02e
    add hl, bc
    bit 6, [hl]
    jr z, jr_008_58d5

    call Call_008_5fcc

jr_008_58d5:
    ld b, $00
    ld hl, $c036
    add hl, bc
    bit 0, [hl]
    jr nz, jr_008_58e7

    ld hl, $c02e
    add hl, bc
    bit 2, [hl]
    jr nz, jr_008_58fb

jr_008_58e7:
    ld hl, $c02e
    add hl, bc
    bit 4, [hl]
    jr z, jr_008_58f2

    jp Jump_008_5eb8


jr_008_58f2:
    ld hl, $c04e
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_008_58fc

    dec [hl]

jr_008_58fb:
    ret


jr_008_58fc:
    ld hl, $c056
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_008_5905

    ret


jr_008_5905:
    ld d, a
    ld hl, $c05e
    add hl, bc
    ld a, [hl]
    and $0f
    and a
    jr z, jr_008_5912

    dec [hl]
    ret


jr_008_5912:
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
    jr z, jr_008_5932

    res 3, [hl]
    ld a, d
    and $0f
    ld d, a
    ld a, e
    sub d
    jr nc, jr_008_5930

    ld a, $00

jr_008_5930:
    jr jr_008_593e

jr_008_5932:
    set 3, [hl]
    ld a, d
    and $f0
    swap a
    add e
    jr nc, jr_008_593e

    ld a, $ff

jr_008_593e:
    ld d, a
    ld b, $03
    call Call_008_5ff7
    ld [hl], d
    ret


Jump_008_5946:
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
    ld a, c
    cp $04
    jr nz, jr_008_5963

    ld a, [$d083]
    bit 7, a
    ret nz

jr_008_5963:
    call Call_008_5967
    ret


Call_008_5967:
Jump_008_5967:
    call Call_008_5fe4
    ld d, a
    cp $ff
    jp nz, Jump_008_59f5

    ld b, $00
    ld hl, $c02e
    add hl, bc
    bit 1, [hl]
    jr nz, jr_008_59a5

    ld a, c
    cp $03
    jr nc, jr_008_5981

    jr jr_008_59c0

jr_008_5981:
    res 2, [hl]
    ld hl, $c036
    add hl, bc
    res 0, [hl]
    cp $06
    jr nz, jr_008_5995

    ld a, $00
    ldh [rNR30], a
    ld a, $80
    ldh [rNR30], a

jr_008_5995:
    jr nz, jr_008_59a3

    ld a, [$c003]
    and a
    jr z, jr_008_59a3

    xor a
    ld [$c003], a
    jr jr_008_59c0

jr_008_59a3:
    jr jr_008_59c9

jr_008_59a5:
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
    jp Jump_008_5967


jr_008_59c0:
    ld hl, $62de
    add hl, bc
    ldh a, [rNR51]
    and [hl]
    ldh [rNR51], a

jr_008_59c9:
    ld a, [$c02a]
    cp $14
    jr nc, jr_008_59d2

    jr jr_008_59ef

jr_008_59d2:
    ld a, [$c02a]
    cp $86
    jr z, jr_008_59ef

    jr c, jr_008_59dd

    jr jr_008_59ef

jr_008_59dd:
    ld a, c
    cp $04
    jr z, jr_008_59e6

    call Call_008_5e6d
    ret c

jr_008_59e6:
    ld a, [$c005]
    ldh [rNR50], a
    xor a
    ld [$c005], a

jr_008_59ef:
    ld hl, $c026
    add hl, bc
    ld [hl], b
    ret


Jump_008_59f5:
    cp $fd
    jp nz, Jump_008_5a2a

    call Call_008_5fe4
    push af
    call Call_008_5fe4
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
    jp Jump_008_5967


Jump_008_5a2a:
    cp $fe
    jp nz, Jump_008_5a65

    call Call_008_5fe4
    ld e, a
    and a
    jr z, jr_008_5a4e

    ld b, $00
    ld hl, $c0be
    add hl, bc
    ld a, [hl]
    cp e
    jr nz, jr_008_5a4c

    ld a, $01
    ld [hl], a
    call Call_008_5fe4
    call Call_008_5fe4
    jp Jump_008_5967


jr_008_5a4c:
    inc a
    ld [hl], a

jr_008_5a4e:
    call Call_008_5fe4
    push af
    call Call_008_5fe4
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
    jp Jump_008_5967


Jump_008_5a65:
    and $f0
    cp $d0
    jp nz, Jump_008_5aa4

    ld a, d
    and $0f
    ld b, $00
    ld hl, $c0c6
    add hl, bc
    ld [hl], a
    ld a, c
    cp $03
    jr z, jr_008_5aa1

    call Call_008_5fe4
    ld d, a
    ld a, c
    cp $02
    jr z, jr_008_5a8d

    cp $06
    jr nz, jr_008_5a9a

    ld hl, $c0e7
    jr jr_008_5a90

jr_008_5a8d:
    ld hl, $c0e6

jr_008_5a90:
    ld a, d
    and $0f
    ld [hl], a
    ld a, d
    and $30
    sla a
    ld d, a

jr_008_5a9a:
    ld b, $00
    ld hl, $c0de
    add hl, bc
    ld [hl], d

jr_008_5aa1:
    jp Jump_008_5967


Jump_008_5aa4:
    ld a, d
    cp $e8
    jr nz, jr_008_5ab6

    ld b, $00
    ld hl, $c02e
    add hl, bc
    ld a, [hl]
    xor $01
    ld [hl], a
    jp Jump_008_5967


jr_008_5ab6:
    cp $ea
    jr nz, jr_008_5aee

    call Call_008_5fe4
    ld b, $00
    ld hl, $c04e
    add hl, bc
    ld [hl], a
    ld hl, $c06e
    add hl, bc
    ld [hl], a
    call Call_008_5fe4
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
    jp Jump_008_5967


jr_008_5aee:
    cp $eb
    jr nz, jr_008_5b26

    call Call_008_5fe4
    ld b, $00
    ld hl, $c076
    add hl, bc
    ld [hl], a
    call Call_008_5fe4
    ld d, a
    and $f0
    swap a
    ld b, a
    ld a, d
    and $0f
    call Call_008_6017
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
    call Call_008_5fe4
    ld d, a
    jp Jump_008_5c8b


jr_008_5b26:
    cp $ec
    jr nz, jr_008_5b3b

    call Call_008_5fe4
    rrca
    rrca
    and $c0
    ld b, $00
    ld hl, $c03e
    add hl, bc
    ld [hl], a
    jp Jump_008_5967


jr_008_5b3b:
    cp $ed
    jr nz, jr_008_5b7b

    ld a, c
    cp $04
    jr nc, jr_008_5b5f

    call Call_008_5fe4
    ld [$c0e8], a
    call Call_008_5fe4
    ld [$c0e9], a
    xor a
    ld [$c0ce], a
    ld [$c0cf], a
    ld [$c0d0], a
    ld [$c0d1], a
    jr jr_008_5b78

jr_008_5b5f:
    call Call_008_5fe4
    ld [$c0ea], a
    call Call_008_5fe4
    ld [$c0eb], a
    xor a
    ld [$c0d2], a
    ld [$c0d3], a
    ld [$c0d4], a
    ld [$c0d5], a

jr_008_5b78:
    jp Jump_008_5967


jr_008_5b7b:
    cp $ee
    jr nz, jr_008_5b88

    call Call_008_5fe4
    ld [$c004], a
    jp Jump_008_5967


jr_008_5b88:
    cp $ef
    jr nz, jr_008_5ba7

    call Call_008_5fe4
    push bc
    call Call_008_6035
    pop bc
    ld a, [$c003]
    and a
    jr nz, jr_008_5ba4

    ld a, [$c02d]
    ld [$c003], a
    xor a
    ld [$c02d], a

jr_008_5ba4:
    jp Jump_008_5967


jr_008_5ba7:
    cp $fc
    jr nz, jr_008_5bc5

    call Call_008_5fe4
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
    jp Jump_008_5967


jr_008_5bc5:
    cp $f0
    jr nz, jr_008_5bd1

    call Call_008_5fe4
    ldh [rNR50], a
    jp Jump_008_5967


jr_008_5bd1:
    cp $f8
    jr nz, jr_008_5be0

    ld b, $00
    ld hl, $c036
    add hl, bc
    set 0, [hl]
    jp Jump_008_5967


jr_008_5be0:
    and $f0
    cp $e0
    jr nz, jr_008_5bf3

    ld hl, $c0d6
    ld b, $00
    add hl, bc
    ld a, d
    and $0f
    ld [hl], a
    jp Jump_008_5967


jr_008_5bf3:
    cp $20
    jr nz, jr_008_5c40

    ld a, c
    cp $03
    jr c, jr_008_5c40

    ld b, $00
    ld hl, $c036
    add hl, bc
    bit 0, [hl]
    jr nz, jr_008_5c40

    call Call_008_5c8b
    ld d, a
    ld b, $00
    ld hl, $c03e
    add hl, bc
    ld a, [hl]
    or d
    ld d, a
    ld b, $01
    call Call_008_5ff7
    ld [hl], d
    call Call_008_5fe4
    ld d, a
    ld b, $02
    call Call_008_5ff7
    ld [hl], d
    call Call_008_5fe4
    ld e, a
    ld a, c
    cp $07
    ld a, $00
    jr z, jr_008_5c33

    push de
    call Call_008_5fe4
    pop de

jr_008_5c33:
    ld d, a
    push de
    call Call_008_5daa
    call Call_008_5d79
    pop de
    call Call_008_5dcc
    ret


jr_008_5c40:
    ld a, c
    cp $04
    jr c, jr_008_5c5c

    ld a, d
    cp $10
    jr nz, jr_008_5c5c

    ld b, $00
    ld hl, $c036
    add hl, bc
    bit 0, [hl]
    jr nz, jr_008_5c5c

    call Call_008_5fe4
    ldh [rNR10], a
    jp Jump_008_5967


jr_008_5c5c:
    ld a, c
    cp $03
    jr nz, jr_008_5c8b

    ld a, d
    and $f0
    cp $b0
    jr z, jr_008_5c76

    jr nc, jr_008_5c8b

    swap a
    ld b, a
    ld a, d
    and $0f
    ld d, a
    ld a, b
    push de
    push bc
    jr jr_008_5c7e

jr_008_5c76:
    ld a, d
    and $0f
    push af
    push bc
    call Call_008_5fe4

jr_008_5c7e:
    ld d, a
    ld a, [$c003]
    and a
    jr nz, jr_008_5c89

    ld a, d
    call Call_008_6035

jr_008_5c89:
    pop bc
    pop de

Call_008_5c8b:
Jump_008_5c8b:
jr_008_5c8b:
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
    call Call_008_6006
    ld a, c
    cp $04
    jr nc, jr_008_5cac

    ld a, [$c0e8]
    ld d, a
    ld a, [$c0e9]
    ld e, a
    jr jr_008_5cbf

jr_008_5cac:
    ld d, $01
    ld e, $00
    cp $07
    jr z, jr_008_5cbf

    call Call_008_5e2f
    ld a, [$c0ea]
    ld d, a
    ld a, [$c0eb]
    ld e, a

jr_008_5cbf:
    ld a, l
    ld b, $00
    ld hl, $c0ce
    add hl, bc
    ld l, [hl]
    call Call_008_6006
    ld e, l
    ld d, h
    ld hl, $c0ce
    add hl, bc
    ld [hl], e
    ld a, d
    ld hl, $c0b6
    add hl, bc
    ld [hl], a
    ld hl, $c036
    add hl, bc
    bit 0, [hl]
    jr nz, jr_008_5ce9

    ld hl, $c02e
    add hl, bc
    bit 2, [hl]
    jr z, jr_008_5ce9

    pop hl
    ret


jr_008_5ce9:
    pop af
    and $f0
    cp $c0
    jr nz, jr_008_5d20

    ld a, c
    cp $04
    jr nc, jr_008_5cfd

    ld hl, $c02a
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_008_5d1f

jr_008_5cfd:
    ld a, c
    cp $02
    jr z, jr_008_5d06

    cp $06
    jr nz, jr_008_5d13

jr_008_5d06:
    ld b, $00
    ld hl, $62de
    add hl, bc
    ldh a, [rNR51]
    and [hl]
    ldh [rNR51], a
    jr jr_008_5d1f

jr_008_5d13:
    ld b, $02
    call Call_008_5ff7
    ld a, $08
    ld [hl+], a
    inc hl
    ld a, $80
    ld [hl], a

jr_008_5d1f:
    ret


jr_008_5d20:
    swap a
    ld b, $00
    ld hl, $c0d6
    add hl, bc
    ld b, [hl]
    call Call_008_6017
    ld b, $00
    ld hl, $c02e
    add hl, bc
    bit 4, [hl]
    jr z, jr_008_5d39

    call Call_008_5f4e

jr_008_5d39:
    push de
    ld a, c
    cp $04
    jr nc, jr_008_5d4e

    ld hl, $c02a
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl]
    and a
    jr nz, jr_008_5d4c

    jr jr_008_5d4e

jr_008_5d4c:
    pop de
    ret


jr_008_5d4e:
    ld b, $00
    ld hl, $c0de
    add hl, bc
    ld d, [hl]
    ld b, $02
    call Call_008_5ff7
    ld [hl], d
    call Call_008_5daa
    call Call_008_5d79
    pop de
    ld b, $00
    ld hl, $c02e
    add hl, bc
    bit 0, [hl]
    jr z, jr_008_5d70

    inc e
    jr nc, jr_008_5d70

    inc d

jr_008_5d70:
    ld hl, $c066
    add hl, bc
    ld [hl], e
    call Call_008_5dcc
    ret


Call_008_5d79:
    ld b, $00
    ld hl, $62e6
    add hl, bc
    ldh a, [rNR51]
    or [hl]
    ld d, a
    ld a, c
    cp $07
    jr z, jr_008_5d94

    cp $04
    jr nc, jr_008_5da6

    ld hl, $c02a
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_008_5da6

jr_008_5d94:
    ld a, [$c004]
    ld hl, $62e6
    add hl, bc
    and [hl]
    ld d, a
    ldh a, [rNR51]
    ld hl, $62de
    add hl, bc
    and [hl]
    or d
    ld d, a

jr_008_5da6:
    ld a, d
    ldh [rNR51], a
    ret


Call_008_5daa:
    ld b, $00
    ld hl, $c0b6
    add hl, bc
    ld d, [hl]
    ld a, c
    cp $02
    jr z, jr_008_5dc5

    cp $06
    jr z, jr_008_5dc5

    ld a, d
    and $3f
    ld d, a
    ld hl, $c03e
    add hl, bc
    ld a, [hl]
    or d
    ld d, a

jr_008_5dc5:
    ld b, $01
    call Call_008_5ff7
    ld [hl], d
    ret


Call_008_5dcc:
    ld a, c
    cp $02
    jr z, jr_008_5dd5

    cp $06
    jr nz, jr_008_5e02

jr_008_5dd5:
    push de
    ld de, $c0e6
    cp $02
    jr z, jr_008_5de0

    ld de, $c0e7

jr_008_5de0:
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

jr_008_5df5:
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, b
    dec b
    and a
    jr nz, jr_008_5df5

    ld a, $80
    ldh [rNR30], a
    pop de

jr_008_5e02:
    ld a, d
    or $80
    and $c7
    ld d, a
    ld b, $03
    call Call_008_5ff7
    ld [hl], e
    inc hl
    ld [hl], d
    ld a, c
    cp $04
    jr c, jr_008_5e18

    call Call_008_5e56

jr_008_5e18:
    ret


    ld a, c
    cp $04
    jr nz, jr_008_5e2e

    ld a, [$d083]
    bit 7, a
    jr z, jr_008_5e2e

    xor a
    ld [$c0f1], a
    ld a, $80
    ld [$c0f2], a

jr_008_5e2e:
    ret


Call_008_5e2f:
    call Call_008_5e8b
    jr c, jr_008_5e39

    call Call_008_5e9f
    jr nc, jr_008_5e4c

jr_008_5e39:
    ld d, $00
    ld a, [$c0f2]
    add $80
    jr nc, jr_008_5e43

    inc d

jr_008_5e43:
    ld [$c0eb], a
    ld a, d
    ld [$c0ea], a
    jr jr_008_5e55

jr_008_5e4c:
    xor a
    ld [$c0eb], a
    ld a, $01
    ld [$c0ea], a

jr_008_5e55:
    ret


Call_008_5e56:
    call Call_008_5e8b
    jr c, jr_008_5e60

    call Call_008_5e9f
    jr nc, jr_008_5e6c

jr_008_5e60:
    ld a, [$c0f1]
    add e
    jr nc, jr_008_5e67

    inc d

jr_008_5e67:
    dec hl
    ld e, a
    ld [hl], e
    inc hl
    ld [hl], d

jr_008_5e6c:
    ret


Call_008_5e6d:
    call Call_008_5e8b
    jr nc, jr_008_5e88

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


jr_008_5e88:
    scf
    ccf
    ret


Call_008_5e8b:
    ld a, [$c02a]
    cp $14
    jr nc, jr_008_5e94

    jr jr_008_5e9a

jr_008_5e94:
    cp $86
    jr z, jr_008_5e9a

    jr c, jr_008_5e9d

jr_008_5e9a:
    scf
    ccf
    ret


jr_008_5e9d:
    scf
    ret


Call_008_5e9f:
    ld a, [$c02d]
    ld b, a
    ld a, [$c02a]
    or b
    cp $9d
    jr nc, jr_008_5ead

    jr jr_008_5eb3

jr_008_5ead:
    cp $ea
    jr z, jr_008_5eb3

    jr c, jr_008_5eb6

jr_008_5eb3:
    scf
    ccf
    ret


jr_008_5eb6:
    scf
    ret


Jump_008_5eb8:
    ld hl, $c02e
    add hl, bc
    bit 5, [hl]
    jp nz, Jump_008_5eff

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
    jp c, Jump_008_5f45

    jr nz, jr_008_5f32

    ld hl, $c0ae
    add hl, bc
    ld a, [hl]
    cp e
    jp c, Jump_008_5f45

    jr jr_008_5f32

Jump_008_5eff:
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
    jr c, jr_008_5f45

    jr nz, jr_008_5f32

    ld hl, $c0ae
    add hl, bc
    ld a, e
    cp [hl]
    jr c, jr_008_5f45

jr_008_5f32:
    ld hl, $c09e
    add hl, bc
    ld [hl], e
    ld hl, $c096
    add hl, bc
    ld [hl], d
    ld b, $03
    call Call_008_5ff7
    ld a, e
    ld [hl+], a
    ld [hl], d
    ret


Jump_008_5f45:
jr_008_5f45:
    ld hl, $c02e
    add hl, bc
    res 4, [hl]
    res 5, [hl]
    ret


Call_008_5f4e:
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
    jr nc, jr_008_5f66

    ld a, $01

jr_008_5f66:
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
    jr c, jr_008_5f82

    ld d, a
    ld b, $00
    ld hl, $c02e
    add hl, bc
    set 5, [hl]
    jr jr_008_5fa5

jr_008_5f82:
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

jr_008_5fa5:
    ld hl, $c076
    add hl, bc

jr_008_5fa9:
    inc b
    ld a, e
    sub [hl]
    ld e, a
    jr nc, jr_008_5fa9

    ld a, d

Call_008_5fb0:
    and a
    jr z, jr_008_5fb7

    dec a
    ld d, a
    jr jr_008_5fa9

jr_008_5fb7:
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


Call_008_5fcc:
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
    call Call_008_5ff7
    ld a, [hl]
    and $3f
    or d
    ld [hl], a
    ret


Call_008_5fe4:
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


Call_008_5ff7:
    ld a, c
    ld hl, $62d6
    add l
    jr nc, jr_008_5fff

    inc h

jr_008_5fff:
    ld l, a
    ld a, [hl]
    add b
    ld l, a
    ld h, $ff
    ret


Call_008_6006:
    ld h, $00

jr_008_6008:
    srl a
    jr nc, jr_008_600d

    add hl, de

jr_008_600d:
    sla e
    rl d
    and a
    jr z, jr_008_6016

    jr jr_008_6008

jr_008_6016:
    ret


Call_008_6017:
    ld h, $00
    ld l, a
    add hl, hl
    ld d, h
    ld e, l
    ld hl, $62ee
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, b

jr_008_6025:
    cp $07
    jr z, jr_008_6030

    sra d
    rr e
    inc a
    jr jr_008_6025

jr_008_6030:
    ld a, $08
    add d
    ld d, a
    ret


Call_008_6035:
    ld [$c001], a
    cp $ff
    jp z, Jump_008_61f3

    cp $e9
    jp z, Jump_008_610d

    jp c, Jump_008_610d

    cp $fe
    jr z, jr_008_604c

    jp nc, Jump_008_610d

jr_008_604c:
    xor a
    ld [$c000], a
    ld [$c003], a
    ld [$c0e9], a
    ld [$c0e6], a
    ld [$c0e7], a
    ld d, $08
    ld hl, $c016
    call Call_008_6248
    ld hl, $c006
    call Call_008_6248
    ld d, $04
    ld hl, $c026
    call Call_008_6248
    ld hl, $c02e
    call Call_008_6248
    ld hl, $c03e
    call Call_008_6248
    ld hl, $c046
    call Call_008_6248
    ld hl, $c04e
    call Call_008_6248
    ld hl, $c056
    call Call_008_6248
    ld hl, $c05e
    call Call_008_6248
    ld hl, $c066
    call Call_008_6248
    ld hl, $c06e
    call Call_008_6248
    ld hl, $c036
    call Call_008_6248
    ld hl, $c076
    call Call_008_6248
    ld hl, $c07e
    call Call_008_6248
    ld hl, $c086
    call Call_008_6248
    ld hl, $c08e
    call Call_008_6248
    ld hl, $c096
    call Call_008_6248
    ld hl, $c09e
    call Call_008_6248
    ld hl, $c0a6
    call Call_008_6248
    ld hl, $c0ae
    call Call_008_6248
    ld a, $01
    ld hl, $c0be
    call Call_008_6248
    ld hl, $c0b6
    call Call_008_6248
    ld hl, $c0c6
    call Call_008_6248
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
    jp Jump_008_624e


Jump_008_610d:
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

Jump_008_6126:
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
    jr z, jr_008_6162

    ld a, e
    cp $07
    jr nz, jr_008_6159

    ld a, [$c001]
    cp $14
    jr nc, jr_008_6152

    ret


jr_008_6152:
    ld a, [hl]
    cp $14
    jr z, jr_008_6162

    jr c, jr_008_6162

jr_008_6159:
    ld a, [$c001]
    cp [hl]
    jr z, jr_008_6162

    jr c, jr_008_6162

    ret


jr_008_6162:
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

Call_008_61b1:
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
    jr nz, jr_008_61ea

    ld a, $08
    ldh [rNR10], a

jr_008_61ea:
    ld a, c
    and a
    jp z, Jump_008_624e

    dec c
    jp Jump_008_6126


Jump_008_61f3:
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

Call_008_6221:
    ld [$c0eb], a
    ld [$c0e6], a
    ld [$c0e7], a
    ld d, $a0
    ld hl, $c006
    call Call_008_6248
    ld a, $01
    ld d, $18
    ld hl, $c0b6
    call Call_008_6248
    ld [$c0e8], a
    ld [$c0ea], a
    ld a, $ff
    ld [$c004], a
    ret


Call_008_6248:
    ld b, d

jr_008_6249:
    ld [hl+], a
    dec b
    jr nz, jr_008_6249

    ret


Jump_008_624e:
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

jr_008_6270:
    cp c
    jr z, jr_008_6278

    inc c
    inc hl
    inc hl
    jr jr_008_6270

jr_008_6278:
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
    jr c, jr_008_6291

    ld hl, $c02e
    add hl, bc
    set 2, [hl]

jr_008_6291:
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
    jr nz, jr_008_6270

    ld a, [$c001]
    cp $14
    jr nc, jr_008_62aa

    jr jr_008_62d4

jr_008_62aa:
    ld a, [$c001]
    cp $86
    jr z, jr_008_62d4

    jr c, jr_008_62b5

    jr jr_008_62d4

jr_008_62b5:
    ld hl, $c02a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $c012
    ld de, $62d5
    ld [hl], e
    inc hl
    ld [hl], d
    ld a, [$c005]
    and a
    jr nz, jr_008_62d4

    ldh a, [rNR50]
    ld [$c005], a
    ld a, $77
    ldh [rNR50], a

jr_008_62d4:
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
    jp c, $3efb

    sbc d
    call Call_000_3740
    ld hl, $c00e
    ld de, $6322
    call Call_008_631d
    ld de, $6325
    call Call_008_631d
    ld de, $449b

Call_008_631d:
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ret


    db $ed
    ld bc, $f800
    ret c

    nop
    call nz, $c4c6
    call nz, $c4c4
    rst $38
    ld hl, sp-$13
    ld bc, $f000
    ld [hl], a
    ld [$2606], a
    db $ec
    ld [bc], a
    add sp, -$2a
    or c
    push hl
    add c
    add c
    sub $b3
    add c
    or c
    db $e4
    ld b, a
    rst $38
    ld hl, sp-$16
    ld [$ec27], sp
    ld [bc], a
    sub $c1
    db $e4
    ld b, c
    ld b, b
    ld b, b
    sub $c3
    ld b, c
    add c
    or a
    rst $38
    ld hl, sp-$2a
    db $10
    db $e4
    or b
    ret nz

    db $d3
    db $10
    or b
    ret nz

    or b
    ret nz

    sub $10
    or b
    ret nz

    db $e3
    ld b, b
    ret nz

    db $e4
    or e
    jp $edff


    nop
    ld l, b
    ldh a, [rPCM34]
    db $ec
    inc bc
    ld [$3408], a
    add sp, -$24
    or e
    push bc
    push hl
    ld h, b
    ld d, b
    ld b, b
    ld d, b
    ld b, b
    jr nc, jr_008_63c6

    jr nc, @+$22

    jr nc, jr_008_63aa

    db $10
    jr nz, jr_008_639d

    nop
    stop
    and $b0
    rst $20
    add b
    sub b
    and b
    sub b
    and b
    or b
    and b
    or b
    and $60

jr_008_639d:
    adc $60
    ret z

    ld [hl], l
    ld h, b
    adc $60
    ret z

    ld d, l
    ld h, b
    adc $60
    ret z

jr_008_63aa:
    ld [hl], l
    ld h, b
    adc $60
    ret z

    sub l
    ld h, b
    push hl
    db $10
    ld h, b
    ld b, b
    db $10
    ld h, b

Call_008_63b7:
    ld b, b
    db $10
    ld h, b
    ld b, b
    db $10
    ld h, b
    ld b, b
    db $10
    ld h, b
    ld b, b
    db $10
    ld h, b
    ld b, b
    db $10
    ld h, b

jr_008_63c6:
    ld b, b

Call_008_63c7:
    db $10
    ld h, b
    ld b, b
    db $10
    ld h, b
    ld b, b
    db $10
    ld h, b
    ld b, b
    db $10
    and $40
    sub b
    push hl
    db $10
    and $b0
    sub b
    push hl
    db $10
    and $b0
    sub b
    push hl
    db $10
    and $b0
    sub b
    push hl
    db $10
    and $b0
    sub b
    push hl
    db $10
    and $b0
    sub b
    push hl
    db $10
    and $b0
    sub b
    push hl
    db $10
    and $b0
    sub b
    push hl
    db $10
    and $b0
    sub b
    push hl
    db $10
    and $b0
    sub b
    push hl
    db $10
    and $b0
    sub b
    ld h, b
    push hl
    db $10
    ld h, b
    ld b, b
    db $10
    ld h, b
    ld b, b
    db $10
    ld h, b
    ld b, b
    db $10
    ld h, b
    ld b, b
    db $10
    ld h, b
    ld b, b
    db $10
    ld h, b
    ld b, b
    db $10
    ld h, b
    ld b, b
    db $10
    ld h, b
    ld b, b
    db $10
    ld h, b
    ld b, b
    db $10
    ld h, b
    ld b, b
    db $10
    and $40
    sub b
    push hl
    db $10
    and $b0
    sub b
    push hl
    db $10
    and $b0
    sub b
    push hl
    db $10
    and $b0
    sub b
    push hl
    db $10
    and $b0
    sub b
    push hl
    db $10
    and $b0
    sub b
    push hl
    db $10
    and $b0
    sub b
    push hl
    db $10
    and $b0
    sub b
    push hl
    db $10
    and $b0
    sub b
    push hl
    db $10
    and $b0
    sub b
    push hl
    db $10
    and $b0
    sub b
    pop bc
    rst $20
    or b
    ret nz

    and $23
    rst $20
    or b
    ret nz

    or b
    ret nz

    and $43
    rst $20
    or b
    ret nz

    or b
    ret nz

    and $23
    rst $20
    or b
    ret nz

    and $11
    rst $20
    or b
    ret nz

    or b
    ret nz

    and $23
    rst $20
    or b
    ret nz

    or b
    ret nz

    and $43
    rst $20
    or b
    ret nz

    or b
    ret nz

    and $23
    rst $20
    or b
    ret nz

    or b
    ret nz

    and $11
    rst $20
    or c
    sub c
    and $11
    rst $20
    or b
    ret nz

    or b
    ret nz

    push hl
    nop
    and $b0
    sub b
    or b
    push hl
    nop
    and $b0
    sub b
    or b
    push hl
    nop
    and $b0
    sub b
    or b
    push hl
    nop
    and $b0
    sub b
    or b
    push hl
    nop
    and $b0
    sub b
    or b
    push hl
    nop
    and $b0
    sub b
    or b
    push hl
    nop
    and $b0
    sub b
    or b
    push hl
    nop
    and $b0
    sub b
    or b
    push hl
    nop
    and $b0
    sub b
    or b
    push hl
    nop
    and $b0
    sub b
    or b
    push hl
    nop
    and $b0
    sub b
    or b
    rst $08
    rst $20
    or b
    ret nz

    or b
    ret nz

    push hl
    nop
    and $b0
    sub b
    or b
    push hl
    nop
    and $b0
    sub b
    or b
    push hl
    nop
    and $b0
    sub b
    or b
    push hl
    nop
    and $b0
    sub b
    or b
    push hl
    nop
    and $b0
    sub b
    or b
    push hl
    nop
    and $b0
    sub b
    or b
    push hl
    nop
    and $b0
    sub b
    or b
    push hl
    nop
    and $b0
    sub b
    or b
    push hl
    nop
    and $b0
    sub b
    or b
    push hl
    nop
    and $b0
    sub b
    or b
    push hl
    nop
    and $b0
    sub b
    or b
    push hl
    nop
    and $b0
    sub b
    or b
    push hl
    nop
    and $b0
    sub b
    or b
    push hl
    nop
    and $b0
    sub b
    or b
    push hl
    nop
    and $b0
    sub b
    or b
    rst $20
    sub b
    ret nz

    sub b
    ret nz

    call c, $e5b5
    dec de
    call c, $e7b3
    sub b
    ret nz

    sub b
    ret nz

    call c, $e5b5
    sbc e
    call c, $33b3
    inc de
    inc sp
    ld b, c
    ld h, e
    and $b1
    push hl
    ld de, $b161
    ld h, c
    ld sp, $e761
    sub b
    ret nz

    sub b
    ret nz

    call c, $e5b5
    sbc e
    call c, $10b3
    and $b0
    push hl
    db $10
    jr nc, @+$42

    jr nc, jr_008_65b5

    ld h, b
    sub b
    add b
    ld h, b
    ld b, b
    ld h, b
    ld b, b
    jr nc, @+$12

    call c, $33b5
    ld b, e
    ld de, $6335
    ld b, c
    inc sp
    dec d
    rst $08
    ret


    ld b, l
    inc sp
    ld b, e
    ld de, $4335
    ld sp, $e613
    or l
    push hl
    inc sp
    ld b, e

Call_008_6597:
    ld de, $6335
    sub c
    add e
    ld b, l
    cp $00
    or b
    ld h, e
    db $ec
    inc bc
    ld [$2508], a
    call c, $e4c3
    ld d, b
    ld b, b
    jr nc, jr_008_65ed

    jr nc, @+$22

    jr nc, jr_008_65d1

    db $10
    jr nz, jr_008_65c4

    nop

jr_008_65b5:
    push hl
    or b
    call nz, Call_008_5060
    ld b, b
    ld d, b
    ld b, b
    jr nc, jr_008_65ff

    jr nc, @+$22

    jr nc, jr_008_65e3

    db $10

jr_008_65c4:
    jr nz, jr_008_65d6

    or b
    adc $b0
    ret z

    db $e4
    dec b
    push hl
    or b
    adc $b0
    ret z

jr_008_65d1:
    and l
    push hl
    or b
    adc $b0

jr_008_65d6:
    ret z

    db $e4
    dec b
    push hl
    or b
    adc $b0
    ret z

    db $e4
    dec d
    call c, Call_000_33c5

jr_008_65e3:
    inc de
    inc sp
    ld b, c
    ld h, e
    ld b, e
    ld sp, $e511
    or c
    db $e4

jr_008_65ed:
    ld de, $dc31
    or a
    db $ec
    ld [bc], a
    push hl
    sub a
    db $e4
    rla
    ld b, a
    rla
    call c, $ecc5
    inc bc
    inc sp
    inc de

jr_008_65ff:
    inc sp
    ld b, c
    ld h, e
    ld b, e

jr_008_6603:
    ld sp, $e511
    or c
    db $e4
    ld de, $dc31
    or a
    db $ec
    ld [bc], a
    rla
    push hl

jr_008_6610:
    or a

jr_008_6611:
    sub a
    call c, $e4c3
    ld b, e
    ld b, c
    ld de, $c5dc
    db $ec
    inc bc
    rst $20
    or b
    jp nz, $20e5

    db $10
    and $b0
    push hl
    jr nz, @-$3b

    ld b, b
    jr nz, jr_008_6610

    or b
    push hl
    ld b, b
    jp Jump_008_4060


    db $10
    ld h, b
    pop bc
    ld b, b
    db $10
    ld b, b
    ret nz

    ld d, b
    ret nz

    jr nz, jr_008_664b

    and $b0
    push hl
    jr nz, jr_008_6603

    ld b, b
    jr nz, @-$18

    or b
    push hl
    ld b, b
    jp Jump_008_4060


    db $10
    ld h, b

jr_008_664b:
    ld b, b
    ret nz

    db $10
    ret nz

    jr nz, jr_008_6611

    db $10
    ret nz

    ld h, b
    ret nz

    ld b, b
    ret nz

    rst $20
    or b
    ret nz

    or b
    ret nz

    call c, $e5b0
    or e
    db $e4
    inc bc
    push hl
    sub e
    or e
    db $e4
    inc bc
    push hl
    sub e
    ld [hl], e
    call c, $67b0
    call c, Call_008_67b7
    call c, Call_000_00c3
    db $10
    jr nz, jr_008_66a6

    ld b, b
    jr nc, jr_008_6699

    stop
    and $b0
    sub b
    ld [hl], b
    ld h, b
    ld d, b
    ld b, b
    ld d, b
    ld h, b
    ld [hl], b
    sub b
    or b
    call c, $e5b0
    or e
    db $e4
    inc bc
    push hl
    sub e
    or e
    db $e4
    inc bc
    push hl
    sub e
    db $e4
    inc bc
    call c, $e5b0

jr_008_6699:
    cp a
    call c, $e43f
    ld l, a
    call c, $ecc3
    inc bc
    rst $20
    sub b
    ret nz

    sub b

jr_008_66a6:
    ret nz

    call c, $e5c7
    sbc e
    call c, $e7c3
    sub b
    ret nz

    sub b
    ret nz

    call c, $e4c7
    dec de
    call c, Call_000_3fb0
    call c, Call_000_3fb7
    call c, $e7c3
    sub b
    ret nz

    sub b
    ret nz

    call c, $e4c7
    dec de
    call c, $97c0
    ld b, a
    cp a
    call c, $bfc7
    call c, $e5c4
    inc sp
    ld b, e
    ld de, $6335
    sub c
    add e
    pop bc
    or b
    db $e4
    jr nc, jr_008_673e

    and b
    call c, $bfc0
    ld l, a
    sbc a
    db $e3
    rla
    pop bc
    call c, $e4c3
    sub l
    cp $00
    ldh [$65], a
    ld [$2000], a
    call c, $cb13
    push hl
    or b
    db $e4
    nop
    stop
    db $10
    jr nz, jr_008_670e

    jr nz, jr_008_6730

    jr nz, jr_008_6732

    ld b, b
    jr nc, jr_008_6745

    ld d, b
    ld b, b
    ld d, b
    ld h, b
    ld d, b
    ld h, b
    push hl
    or b
    ret nz

jr_008_670e:
    db $e4
    ld h, b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    ld h, b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    ld h, b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    ld h, b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    ld h, b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    ld h, b
    ret nz

    push hl

jr_008_6730:
    or b
    ret nz

jr_008_6732:
    db $e4
    dec b
    push hl
    or b
    ret nz

    db $e4
    ld h, b
    ret nz

    push hl
    or b
    ret nz

    db $e4

jr_008_673e:
    ld h, b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    ld h, b

jr_008_6745:
    ret nz

    push hl
    or b
    ret nz

    db $e4
    ld h, b
    ret nz

    push hl
    or b
    ret nz

    db $e4

Call_008_6750:
    ld h, b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    ld h, b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    ld d, l
    push hl
    or b
    ret nz

Call_008_6760:
    db $e4
    ld h, b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    ld h, b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    ld h, b
    ret nz

    push hl

Call_008_6770:
    or b
    ret nz

    db $e4
    ld h, b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    ld h, b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    ld h, b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    dec b
    push hl
    or b
    ret nz

    db $e4
    ld h, b
    ret nz

    push hl
    or b
    ret nz

    db $e4

Call_008_6790:
    ld h, b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    ld h, b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    ld h, b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    ld h, b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    ld h, b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    dec d
    call c, $e514
    or c
    db $e4
    ld h, c
    push hl
    or c

Call_008_67b7:
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    sub c
    db $e4
    ld b, c
    push hl
    sub c
    db $e4
    ld b, c
    push hl
    sub c
    db $e4
    ld b, c
    push hl
    sub c
    db $e4
    ld b, c
    push hl
    sub c
    db $e4
    ld b, c
    push hl
    sub c
    db $e4
    ld b, c
    push hl
    sub c
    db $e4
    ld b, c
    push hl
    sub c
    db $e4
    ld b, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    sub c
    db $e4
    ld b, c
    push hl
    sub c
    db $e4
    ld b, c
    push hl
    sub c
    db $e4
    ld b, c
    push hl
    sub c
    db $e4
    ld b, c
    push hl
    sub c
    db $e4
    ld b, c
    push hl
    sub c
    db $e4
    ld b, c
    push hl
    sub c
    db $e4
    ld b, c
    push hl
    sub c
    db $e4
    ld b, c
    push hl
    or b
    ret nz

    or b
    ret nz

    db $e4
    inc hl
    push hl
    or b
    ret nz

    or b
    ret nz

    db $e4
    ld b, e
    push hl
    or b
    ret nz

    or b
    ret nz

    db $e4
    inc hl
    push hl
    or b
    ret nz

    db $e4
    ld de, $b0e5
    ret nz

    or b
    ret nz

    db $e4
    inc hl
    push hl
    or b
    ret nz

    or b
    ret nz

    db $e4
    ld b, e
    push hl
    or b
    ret nz

    or b
    ret nz

    db $e4
    inc hl
    push hl
    or b
    ret nz

    or b
    ret nz

    db $e4
    ld de, $b1e5
    sub c
    db $e4
    ld de, $b0e5
    ret nz

    or b
    call z, $c0b0
    or b
    call z, $c0b0
    or b
    call z, $c0b0
    or b
    call z, $c0b0
    or b
    call z, $c0b0
    or b
    call z, $c0b0
    or b
    call z, $c0b0
    or b
    call z, $c090
    sub b
    ret nz

    db $e4
    dec de
    push hl
    sub b
    ret nz

    sub b
    ret nz

    db $e4
    ld c, e
    ccf
    push hl
    cp a
    sub b
    ret nz

    sub b
    ret nz

    db $e4
    ld c, e
    rla
    ld b, a
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld b, l
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld [hl], l
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    dec b
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld [hl], l
    cp $00
    or c
    ld h, a
    db $ed
    nop
    ld [hl], b
    ldh a, [rPCM34]
    db $ec
    inc bc
    ld [$3406], a
    add sp, -$24
    or d
    rst $00
    push hl
    ld d, b
    ld b, b
    ld d, b
    ld b, b
    jr nc, jr_008_696e

    jr nc, @+$22

    jr nc, @+$22

    db $10
    jr nz, jr_008_6945

    nop
    stop
    and $b0
    push hl
    nop
    and $b0
    and b
    or b
    and b
    sub b
    and b
    push hl
    dec h

jr_008_6945:
    ld b, l
    ld d, e
    ld hl, $5543
    inc bc
    dec h
    ld b, l
    ld d, e
    ld hl, $5543
    ld bc, $2511
    ld b, l
    ld d, e
    ld hl, $5543
    inc bc
    dec h
    ld b, l
    ld d, e
    ld hl, $5543
    ld bc, $dc11
    or l
    ld hl, $1143
    inc hl
    and $b3
    ld h, e
    push hl
    ld b, c
    inc hl

jr_008_696e:
    ld de, $4121
    ld d, a
    call c, $00b2
    db $10
    jr nz, jr_008_69a8

    ld b, b
    jr nc, jr_008_699b

    nop
    nop
    db $10
    jr nz, @+$32

    ld b, b
    ld d, b
    ld h, b
    ld [hl], b
    add b
    ld [hl], b
    ld h, b
    ld d, b
    ld b, b
    jr nc, jr_008_69ab

    nop
    call c, Call_000_21b5
    ld b, e

Call_008_6990:
    ld de, $e623
    or e
    ld h, e
    push hl
    ld b, c
    inc hl
    ld de, $b1e6

jr_008_699b:
    push hl
    ld de, $a7dc
    daa
    rla
    and $b7
    push hl
    rla
    call c, Call_000_21b5

jr_008_69a8:
    ld de, $b1e6

jr_008_69ab:
    sub c
    ld [hl], c
    pop bc
    push hl
    ld hl, $e611
    or c
    sub c
    ld [hl], c
    pop bc
    push hl
    ld hl, $e611
    or c
    push hl
    ld de, $e643
    ld [hl], b
    sub b
    or b
    push hl
    db $10
    inc hl
    and $60
    ld [hl], b
    sub b
    or b
    push hl
    inc de
    and $70
    sub b
    or b
    push hl
    db $10
    inc hl
    and $60
    ld [hl], b
    sub b
    or b
    push hl
    ld hl, $e611
    or c
    sub c
    ld [hl], c
    pop bc
    push hl
    ld hl, $e611
    or c
    sub c
    or c
    ld [hl], c
    push hl
    ld hl, $6141
    ld [hl], c
    sub c
    or c
    sub c
    ld [hl], c
    sub c
    pop bc
    sub c
    or c
    sub c
    ld [hl], c
    ld h, c
    ld [hl], c
    sub c
    ld b, c
    ld [hl], c
    ld h, c
    and $b0
    push hl
    nop
    db $10
    jr nz, @+$32

    ld b, b
    ld d, b
    ld h, b
    ld [hl], b
    add b
    sub b
    and b
    or b
    db $e4
    nop
    db $10
    jr nz, @+$32

    jr nz, jr_008_6a23

    nop
    push hl
    or b
    and b
    sub b
    add b
    ld [hl], b
    ld h, b
    ld d, b
    ld b, b
    jr nc, jr_008_6a3f

    stop
    nop
    db $10

jr_008_6a23:
    jr nz, jr_008_6a55

    ld b, b
    ld d, b
    ld h, b
    ld [hl], b
    add b
    sub b
    and b
    or b
    db $e4
    nop
    db $10
    jr nz, jr_008_6a62

    ld b, b
    jr nc, jr_008_6a55

    stop
    push hl
    or b
    and b
    sub b
    add b
    ld [hl], b
    ld h, b
    ld d, b

jr_008_6a3f:
    ld b, b
    jr nc, jr_008_6a62

    db $10
    db $10
    jr nz, jr_008_6a76

    ld b, b
    ld d, b
    ld h, b
    ld [hl], b
    add b
    sub b
    and b
    or b
    db $e4
    nop
    db $10
    jr nz, jr_008_6a83

    ld b, b
    ld d, b

jr_008_6a55:
    ld b, b
    jr nc, jr_008_6a78

    stop
    push hl
    or b
    and b
    sub b
    add b
    ld [hl], b
    ld h, b
    ld d, b

jr_008_6a62:
    ld b, b
    jr nc, @+$22

    jr nz, @+$32

    ld b, b
    ld d, b
    ld h, b
    ld [hl], b
    add b
    sub b
    and b
    or b
    db $e4
    nop
    db $10
    jr nz, @+$32

    ld b, b
    ld d, b

jr_008_6a76:
    ld h, b
    ld d, b

jr_008_6a78:
    ld b, b
    jr nc, @+$22

    stop
    push hl
    or b
    and b
    or b
    db $e4
    nop

jr_008_6a83:
    db $10
    jr nz, @+$32

    ld b, b
    ld d, b
    push hl
    sub e
    db $e4
    inc hl
    push hl
    sub c
    jr nz, @+$42

    ld h, b
    ld [hl], b
    add b
    and b
    or c
    db $e4
    ld bc, $91e5
    db $e4
    ld bc, $71e5
    or c
    ld d, c
    ld [hl], c
    sub c
    db $e4
    ld bc, $c121
    push hl
    sub e
    db $e4
    inc bc
    ld hl, $50e5
    ld [hl], b
    sub b
    or b
    db $e4
    nop
    jr nz, @+$43

    ld d, c
    ld hl, $2151
    ld d, c
    ld hl, $2151
    ld d, c
    ld hl, $4151
    ld d, c
    ld b, c
    ld d, c
    ld b, c
    ld d, c
    ld b, c
    ld d, c
    ld b, c
    ld d, c
    ld b, c
    ld d, c
    ld b, c
    ld d, c
    ld b, c
    push hl
    or c
    ld bc, $91e6
    push hl
    ld b, c
    ld bc, $91e6
    push hl
    ld b, c
    ld bc, $91e6
    push hl
    ld b, c
    ld bc, $91e6
    push hl
    ld b, c
    ld bc, $91e6
    push hl
    ld bc, $2141
    and $a1
    push hl
    ld d, c
    ld hl, $a1e6
    push hl
    ld d, c
    ld hl, $a1e6
    push hl
    ld d, c
    ld hl, $a1e6
    push hl
    ld d, c
    ld hl, $a1e6
    push hl
    ld hl, $0151
    and $91
    push hl
    ld b, c
    ld bc, $91e6
    push hl
    ld b, c
    ld bc, $91e6
    push hl
    ld b, c
    ld bc, $91e6
    push hl
    ld b, c
    ld bc, $91e6
    push hl
    ld bc, $2141
    and $a1
    push hl
    ld d, c
    ld hl, $a1e6
    push hl
    ld d, c
    ld hl, $a1e6
    push hl
    ld d, c
    ld hl, $a1e6
    push hl
    ld d, c
    ld hl, $a1e6
    push hl
    ld hl, $2f51
    rrca
    and $af
    ld a, e
    push hl
    jr nz, @+$42

    ld [hl], b
    db $e4
    nop
    daa
    ld d, a
    push hl
    and a
    db $e4
    rlca
    daa
    ld b, a
    ld d, a
    ld [hl], a

jr_008_6b4c:
    ld b, c
    jp $c341


    ld b, c
    pop bc
    ld b, c
    jp $c341


    ld b, c

jr_008_6b57:
    pop bc
    ld b, c
    jp $c341


    ld b, c
    pop bc
    ld b, c
    jp $c341


    ld b, c
    pop bc
    push hl
    ld bc, $e623
    or c
    push hl
    inc de
    pop bc
    db $10
    jr nz, jr_008_6baf

    ret nz

Call_008_6b70:
    jr nz, @-$3e

    and $b0
    ret nz

    push hl
    db $10

Call_008_6b77:
    ret z

    jr nz, jr_008_6baa

    ld b, b
    ld d, b
    ld d, b
    ld b, b
    jr nc, jr_008_6ba0

    db $10
    call nz, Call_000_2010
    ld b, b
    ret nz

    ld d, b
    ret nz

    ld b, b
    ret nz

    jr nz, jr_008_6b4c

    ld hl, $5141
    ld [hl], c
    jr nc, jr_008_6bd2

    ld d, b
    ld h, b
    ld h, b
    ld d, b
    ld b, b
    jr nc, jr_008_6bb9

    ret z

    ld h, c
    ld b, e
    ld sp, $6141
    add c

jr_008_6ba0:
    ld b, a
    ld h, a
    ld [hl], a
    db $e4
    inc bc
    push hl
    ld [hl], b
    add b
    sub b
    and b

jr_008_6baa:
    cp $00
    ld h, d
    ld l, c
    db $ec

jr_008_6baf:
    inc bc
    ld [$250a], a
    call c, $e4c2
    sub b
    add b
    ld [hl], b

jr_008_6bb9:
    ld h, b
    sub b
    ld d, b
    ld h, b
    ld d, b
    sub b
    ld b, b

Call_008_6bc0:
    ld d, b
    ld b, b
    sub b
    jr nc, @+$42

    jr nc, jr_008_6b57

    jr nz, jr_008_6bf9

    jr nz, @-$6e

    db $10
    jr nz, jr_008_6bde

    sub b
    nop
    stop

jr_008_6bd2:
    sub b
    push hl
    or b
    db $e4
    nop
    push hl
    or b
    call c, $e4e1
    cp a
    rst $08

jr_008_6bde:
    call c, $bfd1
    res 2, e
    call c, $e5c2
    or l
    db $e4
    dec d
    inc hl
    push hl
    or c
    db $e4
    inc de
    dec h
    sub c
    and c
    or l
    db $e3
    dec d
    inc hl
    db $e4
    or c
    db $e3
    inc de

jr_008_6bf9:
    dec h
    db $e4
    sub e
    call c, $e5c7
    or l
    ld l, l
    or e
    ld h, e
    or e
    call c, $e450
    rlca
    call c, Call_000_0730
    call c, Call_000_074e
    call c, Call_000_07c7
    push hl
    or l
    ld l, l
    or e
    ld h, e
    or e
    call c, $9790
    call c, $9750
    call c, $9740
    call c, $9730
    call c, Call_008_7fc7
    db $e4
    daa
    push hl
    ld [hl], a
    call c, $9780
    call c, $9750
    call c, $9740
    call c, $9760
    call c, Call_008_7fc7
    db $e4
    ld b, a
    ld h, a
    ld c, a
    call c, Call_008_73c5
    sub c
    ld [hl], c
    ld h, c
    ld b, c
    ld hl, $dc41
    or a
    ld h, a
    call c, Call_008_6750
    call c, Call_008_6760
    call c, Call_008_6770
    call c, Call_008_77a0
    call c, Call_008_77a7
    call c, Call_008_73b7
    call c, $91c5
    ld [hl], c
    ld [hl], c
    ld h, c
    ld b, c
    ld h, c
    call c, $87a0
    call c, $8770
    call c, $8780
    call c, $8760
    call c, $9fa0
    call c, $e3b0
    rla
    ld b, a
    call c, $23c0
    db $e4
    sub e
    db $e3
    ld bc, $c7dc
    db $e4
    or a
    call c, $b760
    call c, $b569
    call c, $b596
    pop bc
    call c, $e3c0
    inc hl
    db $e4
    sub e
    and c
    call c, $e3b0
    ld e, l
    call c, Call_008_7f60
    call c, Call_008_4f50
    call c, Call_008_4f40
    call c, $e4c7
    dec b
    push hl
    sbc l
    db $e4
    inc bc
    push hl
    sub e
    db $e4
    inc bc
    push hl
    and l
    db $e4
    ld e, l
    push hl
    and e
    db $e4
    ld d, e
    inc hl
    dec b
    push hl
    sbc l
    db $e4
    inc bc
    ld b, c
    ld hl, $4101
    ld hl, $a3e5
    db $e4
    ld e, c
    ld [hl], l
    ld d, l
    inc hl
    call c, Call_008_5fb0
    ld c, a
    cpl
    ld c, a
    call c, $e3a0
    ld e, a
    ld c, a
    ld a, a
    ld e, a
    call c, $e5d1
    and l
    and l
    and e
    sub l
    sub l
    sub e
    db $e4
    dec b
    dec b
    inc bc
    push hl
    and l
    and l
    sub e
    call c, $93c7
    or e
    ld [hl], c
    sbc c
    or c
    db $e4
    ld de, $2141
    ld de, $b1e5
    xor a
    pop bc
    and c
    db $e4
    ld bc, $4151
    ld hl, $e501
    and c
    cp a
    pop bc
    or c
    db $e4
    ld de, $6171
    ld b, c
    ld hl, $b1e5
    db $e4
    rrca
    ld b, a
    ld [hl], a
    cp $00
    db $fc
    ld l, e
    ld [$2000], a
    call c, $e514
    or b
    and b
    sub b
    add b
    sub b
    add b
    ld [hl], b
    ld h, b
    ld [hl], b
    ld h, b
    ld d, b
    ld b, b
    ld d, b
    ld b, b
    jr nc, @+$22

    jr nc, jr_008_6d48

    stop
    stop
    and $b0
    and b
    or b
    and b
    sub b
    add b
    sub c
    and c
    or c
    or c
    push hl
    ld hl, $e641
    or c
    push hl
    ld d, c
    ld b, c
    ld hl, $b1e6
    or c
    push hl
    ld hl, $e641
    or c

jr_008_6d48:
    push hl
    ld hl, $a1e6
    push hl
    ld bc, $b1e6
    or c
    push hl
    ld hl, $e641
    or c
    push hl
    ld d, c
    ld b, c
    ld hl, $b1e6
    or c
    push hl
    ld hl, $e641
    or c
    push hl
    ld hl, $a1e6
    push hl
    ld bc, $b1e6
    or c
    push hl
    ld hl, $e641
    or c
    push hl
    ld d, c
    ld b, c
    ld hl, $b1e6
    or c
    push hl
    ld hl, $e641
    or c
    push hl
    ld hl, $a1e6
    push hl
    ld bc, $b1e6
    or c
    push hl
    ld hl, $e641
    or c
    push hl
    ld d, c
    ld b, c
    ld hl, $b1e6
    or c
    push hl
    ld hl, $e641
    or c
    push hl
    ld hl, $a1e6
    push hl
    ld bc, $a0e6
    or b
    push hl
    ld h, c
    and $b1
    push hl
    ld h, c
    and $b1
    push hl
    ld h, c
    and $b1
    push hl
    ld h, c
    and $b1
    push hl
    ld h, c
    and $b1
    push hl
    ld h, c
    and $b1
    push hl
    ld h, c
    and $b1
    push hl
    ld h, c
    and $b1
    push hl
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    sub c
    ld [hl], c
    ld h, c
    ld b, c
    ld hl, $e601
    or c
    push hl
    ld h, c
    and $b1
    push hl
    ld h, c
    and $b1
    push hl
    ld h, c
    and $b1
    push hl
    ld h, c
    and $b1
    push hl
    ld h, c
    and $b1
    push hl
    ld h, c
    and $b1
    push hl
    ld h, c
    and $b1
    push hl
    ld d, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    ld hl, $2111
    ld de, $91e6
    add c
    ld [hl], c
    push hl
    ld hl, $71e6
    push hl
    ld hl, $71e6
    push hl
    ld hl, $71e6
    push hl
    ld hl, $71e6
    push hl
    ld hl, $71e6
    push hl
    ld hl, $71e6
    push hl
    ld hl, $71e6
    add c
    sub c
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $71
    push hl
    ld hl, $71e6
    push hl
    ld hl, $71e6
    push hl
    ld hl, $71e6
    push hl
    ld hl, $71e6
    push hl
    ld hl, $71e6
    push hl
    ld hl, $71e6
    push hl
    ld hl, $71e6
    add c
    sub c
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    ld hl, $e611
    or c
    push hl
    ld h, c
    and $b1
    push hl
    ld h, c
    and $b1
    push hl
    ld h, c
    and $b1
    push hl
    ld h, c
    and $b1
    push hl
    ld h, c
    ld hl, $6141
    ld b, c
    ld hl, $0161
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld sp, $7151
    ld d, c
    ld sp, $1171
    add c
    ld de, $1181
    add c
    ld de, $1181
    add c
    ld b, c
    ld h, c
    add c
    ld h, c
    ld b, c
    add c
    ld hl, $2191
    sub c
    ld hl, $2191
    sub c
    ld hl, $5191
    ld [hl], c
    sub c
    ld [hl], c
    ld d, c
    ld b, c
    inc hl
    and $93
    push hl
    ld bc, $e671
    or c
    push hl
    ld [hl], c
    and $b1
    push hl
    ld [hl], c
    and $b1
    push hl
    ld [hl], c
    and $b1
    push hl
    ld [hl], c
    and $b1
    push hl
    ld [hl], c
    and $b1
    push hl
    ld [hl], c
    and $b1
    push hl
    ld [hl], c
    inc hl
    and $93
    and c
    push hl
    ld d, c
    and $a1
    push hl
    ld d, c
    and $a1
    push hl
    ld d, c
    and $a1
    push hl
    ld d, c
    and $a1
    push hl
    ld d, c
    and $a1
    push hl
    ld d, c
    and $a1
    push hl
    ld d, c
    and $a1
    push hl
    ld d, c
    and $b1
    push hl
    ld b, c
    and $b1
    push hl
    ld b, c
    and $b1
    push hl
    ld b, c
    and $b1
    push hl
    ld b, c
    and $b1
    push hl
    ld b, c
    and $b1
    push hl
    ld b, c
    and $b1
    push hl
    ld b, c
    and $b1
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $a1
    push hl
    ld d, c
    and $a1
    push hl
    ld d, c
    and $a1
    push hl
    ld d, c
    and $a1
    push hl
    ld d, c
    and $a1
    push hl
    ld d, c
    and $a1
    push hl
    ld d, c
    and $a1
    push hl
    ld d, c
    and $a1
    push hl
    ld d, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $a1
    push hl
    ld d, c
    and $a1
    push hl
    ld d, c
    and $a1
    push hl
    ld d, c
    and $a1
    push hl
    ld d, c
    and $a1
    push hl
    ld d, c
    and $a1
    push hl
    ld d, c
    and $a1
    push hl
    ld d, c
    and $a1
    push hl
    ld d, c
    and $a3
    push hl
    ld d, e
    and $a3
    push hl
    ld d, e
    and $a3
    push hl
    ld b, e
    and $a3
    push hl
    ld b, e
    and $a3
    push hl
    inc hl
    and $a3
    push hl
    inc hl
    and $a3
    push hl
    ld b, e
    and $a3
    push hl
    ld b, e
    and $a3
    push hl
    ld d, e
    and $a3
    push hl
    ld d, e
    and $a3
    push hl
    ld b, e
    and $a3
    push hl
    ld b, e
    and $a3
    push hl
    inc hl
    and $a3
    push hl
    inc hl
    and $a3
    push hl
    ld b, e
    and $a3
    push hl
    ld b, e
    and $91
    push hl
    ld b, c
    ld b, c
    and $91
    push hl
    ld b, c
    ld b, c
    and $91
    push hl
    ld b, c
    ld b, c
    and $91
    push hl
    ld b, c
    ld b, c
    and $91
    push hl
    ld b, c
    ld b, c
    and $b1
    sub c
    push hl
    ld b, c
    ld b, c
    and $91
    push hl
    ld b, c
    ld b, c
    and $91
    push hl
    ld b, c
    ld b, c
    and $91
    push hl
    ld b, c
    ld b, c
    and $91
    push hl
    ld b, c
    ld b, c
    and $b1
    sub c
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $a1
    push hl
    ld d, c
    and $a1
    push hl
    ld d, c
    and $a1
    push hl
    ld d, c
    and $a1
    push hl
    ld d, c
    and $a1
    push hl
    ld d, c
    and $a1
    push hl
    ld d, c
    and $a1
    push hl
    ld d, c
    and $a1
    push hl
    ld d, c
    and $b1
    push hl
    ld h, c
    and $b1
    push hl
    ld h, c
    and $b1
    push hl
    ld h, c
    and $b1
    push hl
    ld h, c
    and $b1
    push hl
    ld h, c
    and $b1
    push hl
    ld h, c
    and $b1
    push hl
    ld h, c
    and $b1
    push hl
    ld h, c
    ld bc, $0171
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld bc, $6171
    ld b, c
    ld h, c
    ld b, c
    ld hl, $fe01
    nop
    sbc h
    ld l, l
    db $ed
    nop
    ld l, b
    ldh a, [rPCM34]
    db $ec
    inc bc
    ld [$3406], a
    add sp, -$24
    or e
    db $e4
    nop
    push hl
    or b
    and b
    sub b
    and b
    sub b
    add b
    ld [hl], b
    add b
    ld [hl], b
    ld h, b
    ld d, b
    ld h, b
    ld d, b
    ld b, b
    jr nc, jr_008_70f9

    jr nc, jr_008_70db

    db $10
    jr nz, @+$12

    nop
    and $b0

Call_008_70c1:
    push hl
    nop
    and $b0
    and b
    sub b
    and b
    or b
    push hl
    nop
    db $10
    call c, Call_008_75b1
    ld b, l
    dec sp
    dec e
    ld b, l
    add hl, sp
    call c, Call_000_194f
    call c, Call_008_75b1
    ld b, l

jr_008_70db:
    dec sp
    dec e
    ld b, l
    add hl, sp
    add hl, de
    call c, $10b3
    jr nz, jr_008_70f5

    nop
    db $10
    jr nz, jr_008_70f9

    nop
    db $10
    jr nz, jr_008_711d

    jr nz, jr_008_70ff

    nop
    and $b0
    push hl
    nop
    db $10

jr_008_70f5:
    jr nz, jr_008_7127

    jr nz, jr_008_7109

jr_008_70f9:
    jr nz, jr_008_712b

    jr nz, jr_008_710d

    jr nz, @+$32

jr_008_70ff:
    ld b, b
    ld d, b
    ld b, b
    jr nc, jr_008_7124

    db $10
    jr nz, jr_008_7137

    ld b, b
    ld d, b

jr_008_7109:
    ld h, b
    ld [hl], b
    add b
    sub b

jr_008_710d:
    add b
    ld [hl], b
    ld h, b
    ld d, b
    ld b, b
    jr nc, jr_008_7134

    db $10
    jr nz, @+$32

    ld b, b
    ld d, b
    ld h, b
    ld [hl], b
    ld h, b
    ld d, b

jr_008_711d:
    ld b, b
    jr nc, jr_008_7160

    ld d, b
    ld h, b
    ld [hl], b
    add b

jr_008_7124:
    sub b
    jr nz, jr_008_7157

jr_008_7127:
    ld b, b
    jr nc, jr_008_714a

    db $10

jr_008_712b:
    jr nz, jr_008_715d

    ld b, b
    jr nc, jr_008_7150

    db $10
    jr nz, jr_008_7163

    ld b, b

jr_008_7134:
    jr nc, jr_008_7156

    db $10

jr_008_7137:
    jr nz, jr_008_7169

    ld b, b
    jr nc, jr_008_715c

    db $10
    jr nz, jr_008_716f

    ld b, b
    ld d, b
    ld h, b
    ld d, b
    ld b, b
    jr nc, @+$22

    jr nc, jr_008_7188

    jr nc, jr_008_716a

jr_008_714a:
    db $10
    jr nz, jr_008_717d

    ld b, b
    jr nc, jr_008_7170

jr_008_7150:
    db $10
    jr nz, @+$32

    ld b, b
    jr nc, @+$22

jr_008_7156:
    db $10

jr_008_7157:
    jr nz, jr_008_7189

    ld b, b
    jr nc, jr_008_717c

jr_008_715c:
    db $10

jr_008_715d:
    jr nz, jr_008_718f

    ld b, b

jr_008_7160:
    ld d, b
    ld h, b
    ld d, b

jr_008_7163:
    ld b, b
    db $10
    jr nz, jr_008_7197

    ld b, b
    ld d, b

jr_008_7169:
    ld h, b

jr_008_716a:
    ld [hl], b
    add b
    sub b
    add b
    ld [hl], b

jr_008_716f:
    ld h, b

jr_008_7170:
    ld d, b
    ld b, b
    jr nc, jr_008_7194

    db $10
    jr nz, jr_008_71a7

    ld b, b
    ld d, b
    ld h, b
    ld [hl], b
    add b

jr_008_717c:
    sub b

jr_008_717d:
    add b
    ld [hl], b
    ld h, b
    ld d, b
    ld b, b
    jr nc, jr_008_71a4

    db $10
    jr nz, jr_008_71b7

    ld b, b

jr_008_7188:
    ld d, b

jr_008_7189:
    ld h, b
    ld [hl], b
    add b
    sub b
    add b
    ld [hl], b

jr_008_718f:
    ld h, b
    ld d, b
    ld b, b
    jr nc, jr_008_71b4

jr_008_7194:
    db $10
    jr nz, @+$32

jr_008_7197:
    ld b, b
    ld d, b
    ld h, b
    ld [hl], b
    ld h, b
    ld d, b
    ld b, b
    jr nc, jr_008_71e0

    ld d, b
    ld h, b
    ld [hl], b
    add b

jr_008_71a4:
    call c, Call_000_23b5

jr_008_71a7:
    inc bc
    inc hl
    ld d, e
    ld b, l
    dec h
    ld d, e
    call c, $9fb7
    ld a, a
    call c, Call_000_23b5

jr_008_71b4:
    inc bc
    inc hl
    ld d, e

jr_008_71b7:
    ld [hl], l
    sub l
    or e
    call c, $e4b7
    rrca
    call c, $7f3f
    call c, $e5b5
    dec bc
    ld bc, $21c1
    ld bc, $1bcb
    ld de, $51c1
    call c, Call_000_35a3
    call c, Call_000_17a7
    cp $00
    ldh [rSVBK], a
    db $ec
    inc bc
    ld [$2508], a
    call c, $e4c3

jr_008_71e0:
    ld [hl], b
    ld h, b
    ld d, b
    db $e3
    ld [hl], b
    db $e4
    ld [hl], b
    ld h, b
    ld d, b
    db $e3
    ld [hl], b
    db $e4
    ld [hl], b
    ld h, b
    ld d, b
    db $e3
    ld [hl], b
    db $e4
    ld [hl], b
    ld h, b
    ld d, b
    db $e3
    ld [hl], b
    db $e4
    ld [hl], b
    ld h, b
    ld d, b
    db $e3
    ld [hl], b
    db $e4
    ld [hl], b
    ld h, b
    ld d, b
    db $e3
    ld [hl], b
    db $e4
    ld [hl], b
    ld h, b
    ld d, b
    db $e3
    ld [hl], b
    db $e4
    ld [hl], b
    ld h, b
    ld d, b
    db $e3
    ld [hl], b
    call c, $e4c2
    ld [hl], l
    push hl
    ld [hl], l
    ld a, e
    ld a, l
    ld [hl], l
    ld a, c
    call c, Call_008_6990
    call c, $75c2
    ld [hl], l
    ld a, e
    ld a, l
    ld [hl], l
    ld a, c
    ld a, c
    call c, Call_008_75c5
    ld h, l
    ld b, e
    ld [hl], l
    sub l
    ld [hl], e
    db $e4
    adc e
    ld [hl], c
    pop bc
    add c
    ld [hl], c
    jp $b7dc


    db $e3
    rla
    call c, $e4c5
    dec b
    push hl
    and l
    add e
    db $e4
    dec d
    dec b
    push hl
    and e
    db $e4
    ld d, l
    ld b, l
    inc hl
    call c, $e5c7
    and e
    db $e4
    inc bc
    inc hl
    ld d, e
    call c, $8fc0
    call c, $8fb0
    call c, Call_008_7f4e
    call c, Call_008_7fc7

jr_008_725c:
    push hl
    ld d, a
    and a
    db $e4

jr_008_7260:
    daa
    ld d, a
    call c, $4fc0
    call c, Call_008_4fc7
    push hl
    ld d, a
    and a
    db $e4
    daa
    ld d, a
    call c, Call_008_7fc0
    call c, $e33f
    rrca
    call c, $e4c5
    ld c, e
    ld b, c
    pop bc
    ld d, c
    call c, Call_008_43c1
    call c, $c9c5
    ld e, e
    ld d, c
    pop bc
    add c
    call c, Call_008_75a3
    call c, $57c7
    cp $00
    dec h
    ld [hl], d
    ld [$2000], a
    call c, $e411
    db $10
    ret nz

    stop
    jr nz, jr_008_725c

    jr nz, jr_008_729e

jr_008_729e:
    jr nc, jr_008_7260

    jr nc, jr_008_72a2

jr_008_72a2:
    ld b, b
    ret nz

    ld b, b
    nop
    ld d, b
    ret nz

    ld d, b
    nop
    ld h, b
    ret nz

    ld h, b
    nop
    ld [hl], b
    ret nz

    ld [hl], b
    nop
    push hl
    and c
    or c
    db $e4
    ld bc, $0171
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld de, $1381
    add c
    and c
    add c
    ld [hl], c
    ld de, $1381
    add c
    and c
    add c
    ld d, c
    cp $02
    or l
    ld [hl], d
    ld bc, $0171
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    adc e
    ld [hl], c
    pop bc
    add c
    ld [hl], c
    jp Jump_008_4151


    ld hl, $0111
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld bc, $1171
    add c
    ld de, $1181
    add c
    ld de, $1181
    add c
    ld de, $1181
    add c
    ld de, $0181
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld bc, $e571
    and c
    db $e4
    ld d, c
    push hl
    and c
    db $e4
    ld d, c
    push hl
    and c
    db $e4
    ld d, c
    push hl
    and c
    db $e4
    ld d, c
    push hl
    and c
    db $e4
    ld d, c
    push hl
    and c
    db $e4
    ld d, c
    push hl
    and c
    db $e4
    ld d, c
    push hl
    and c
    db $e4
    ld d, c
    ld bc, $0171
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld bc, $0151
    ld d, c
    ld bc, $0151
    ld d, c
    ld bc, $0151
    ld d, c
    ld bc, $0151
    ld d, c
    ld bc, $0171
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld de, $1181
    add c
    ld de, $1181
    add c
    ld de, $1181
    add c
    ld de, $1181
    add c
    cp $00
    ret c

    ld [hl], d
    db $ed
    nop
    ld [hl], b
    ldh a, [rPCM34]
    db $ec
    inc bc
    ld [$3406], a
    add sp, -$24
    or d

Call_008_73b3:
    push hl
    ld h, b
    ld d, b
    ld h, b

Call_008_73b7:
    ld [hl], b
    ld h, b
    ld [hl], b

jr_008_73ba:
    add b
    ld [hl], b
    call c, $80a2
    sub b
    add b
    sub b
    and b
    sub b
    and b

Call_008_73c5:
    or b
    call c, $a092
    or b
    db $e4
    nop
    push hl
    or b
    db $e4
    nop
    stop
    db $10
    call c, $2082
    db $10
    jr nz, jr_008_7409

    jr nz, @+$32

    ld b, b
    jr nc, jr_008_73ba

    pop bc
    push hl
    ld b, b
    ld b, [hl]
    ld d, b
    ld d, [hl]
    ld [hl], b
    db $76
    ld d, b
    ld d, [hl]
    ld b, b
    ld b, [hl]
    ld d, b
    ld d, [hl]
    ld [hl], b
    db $76
    add b
    add d
    inc sp
    call c, Call_008_40c1
    ld b, d
    call c, Call_008_43b3
    call c, Call_008_50c1
    ld d, d
    call c, $53b3
    call c, Call_008_70c1
    ld [hl], d
    call c, Call_008_73b3
    call c, Call_008_50c1

jr_008_7409:
    ld d, d
    call c, $53b3
    call c, Call_008_40c1
    ld b, d
    call c, Call_008_43b3
    call c, Call_008_50c1
    ld d, d
    call c, $53b3
    call c, Call_008_70c1
    ld [hl], d
    call c, Call_008_73b3
    call c, $80c1
    add d
    call c, Call_000_33b7
    call c, $e5b7
    ld b, e
    or e
    inc sp
    and e
    inc hl
    sub e
    and $b3
    push hl
    ld h, e
    ld d, e
    ld h, e
    call c, Call_008_61b1
    ld d, b
    ld h, b
    sub b
    ld h, c
    ld h, b
    call c, $e6b7
    or l
    call c, $e5a0
    dec h
    call c, Call_008_63b7
    ld b, e
    or e
    inc sp
    and e
    inc hl
    sub e
    and $b3
    push hl
    ld h, e
    ld d, e
    ld l, e
    and e
    call c, $bb5e
    call c, Call_008_42b2
    ld b, d
    ld b, c
    ld b, b
    ld h, b
    ld b, b
    or b
    ld h, b
    ld b, b
    ld h, b
    or b
    ld h, b
    ld b, b
    ld h, b
    or b
    ld h, b
    ld b, b
    ld h, b
    or b
    ld h, b
    call c, Call_008_40c2
    ld h, b
    or b
    ld h, b
    call c, Call_008_40d2
    ld h, b
    or b
    call c, Call_008_40c1
    ld b, [hl]
    ld b, b
    ld b, [hl]
    ld b, b
    ld b, [hl]
    ld b, b
    ld b, [hl]
    ld b, b
    ld b, d
    call c, Call_000_23b5
    call c, Call_008_40c1
    ld b, d
    call c, Call_008_53b5
    call c, Call_008_40c1
    ld b, d
    call c, Call_000_23b5
    call c, Call_008_40c1
    call c, $46b7
    call c, Call_008_41c1
    or b
    sub b
    ld b, c
    or b
    sub b
    ld b, c
    or b
    sub b
    ld b, c
    or b
    sub d
    ld b, b
    ld [hl+], a
    ld b, b
    ld [hl+], a
    ld b, b
    ld [hl+], a
    ld b, b
    jr nz, @+$53

    db $e4
    nop
    push hl
    or b
    ld d, c
    db $e4
    nop
    push hl
    or b
    ld d, c
    db $e4
    nop
    push hl
    or b
    ld d, c
    db $e4
    nop
    push hl
    or d
    ld d, b
    ld b, d
    ld d, b
    ld b, d
    ld d, b
    ld b, d
    ld d, b
    ld b, b
    ld h, c
    db $e4
    stop
    push hl
    ld h, c
    db $e4
    stop
    push hl
    ld h, c
    db $e4
    stop
    push hl
    ld h, c
    db $e4
    db $10
    ld [bc], a
    push hl
    ld h, b
    ld d, d
    ld h, b
    ld d, d
    ld h, b
    ld d, d
    ld h, b
    ld d, d
    ld h, b
    ld d, d
    ld h, b
    ld d, d
    ld h, b
    ld d, d
    call c, $e4b7
    ld bc, $b0dc
    rla
    call c, Call_000_17b7
    call c, $e5a0
    ld h, a
    ld h, a
    call c, $e5b0
    sub a
    call c, $97b7
    ld [hl], e
    cp e
    call c, $97b0
    call c, $97b7
    call c, Call_008_47b0
    call c, $47b7
    call c, $a7b0
    call c, $a7b7
    db $e4
    ld d, a
    push hl
    and a
    db $e4
    inc de
    ld c, e
    push hl
    sub e
    db $e4
    dec de
    call c, $fd40
    db $10
    ld [hl], a
    db $fd
    db $10
    ld [hl], a
    call c, $e5b7
    ld b, e
    or e
    inc sp
    and e
    inc hl
    sub e
    and $b3
    push hl
    ld h, e
    ld d, e
    ld l, e
    call c, $97b0
    ld [hl], a
    call c, Call_008_43b7
    or e
    inc sp
    and e
    inc hl
    sub e
    and $b3
    push hl
    ld h, e
    ld d, e
    ld l, e
    call c, $97b0
    call c, $e4b7
    rlca
    call c, $e5b0
    or a
    call c, $b7b7
    call c, $e4b0
    ld b, a
    call c, $47b7
    cp $00

jr_008_7568:
    add hl, hl
    ld [hl], h

jr_008_756a:
    db $ec
    inc bc
    ld [$2508], a
    call c, $e3c2
    nop
    db $e4
    add b
    or b
    ld h, b
    sub b
    ld b, b
    ld [hl], b
    db $e3
    nop
    db $e4
    ld d, b
    db $10
    ld b, b
    nop
    jr nc, jr_008_7568

    or b
    db $e4
    jr nz, jr_008_756a

    nop
    db $e4
    nop
    push hl
    add b
    or b
    ld h, b
    and b
    ld d, b
    sub b
    db $e3
    nop
    push hl
    add b
    jr nc, jr_008_7607

    jr nz, jr_008_75e9

    db $10
    ld b, b
    db $e3
    nop
    call c, $e4c1
    ld b, b
    ld b, [hl]
    ld b, b

Call_008_75a3:
    ld b, [hl]
    ld b, b
    ld b, [hl]
    ld b, b
    ld b, [hl]
    ld b, b
    ld b, d
    call c, $e3c2
    ld b, e
    call c, $e4c1

Call_008_75b1:
    ld b, b
    ld b, d
    call c, $e3c2
    ld b, e
    call c, $e4c1
    ld b, b
    ld b, d
    call c, $e3c2
    ld b, e
    call c, $e4c1
    ld b, b
    ld b, d

Call_008_75c5:
    call c, $33c2
    db $fd
    inc b
    ld [hl], a
    db $fd
    inc b
    ld [hl], a
    db $fd
    inc b
    ld [hl], a
    db $fd
    inc b
    ld [hl], a
    db $fd
    inc b
    ld [hl], a
    db $fd
    inc b
    ld [hl], a
    db $fd
    inc b
    ld [hl], a
    call c, $e4c1
    ld b, b
    ld b, d
    call c, $e54a
    add e
    call c, $e4d7

jr_008_75e9:
    ld b, a
    scf
    daa
    push hl
    or a
    call c, $a3d7
    cp e
    call c, Call_008_51b1
    ld h, d
    sub b
    or b
    sub b
    db $e4
    nop
    push hl
    or c
    sub b
    or b
    or b
    sub b
    and b
    call c, $e4d7
    ld b, a
    scf

jr_008_7607:
    daa
    push hl
    or a
    call c, $a3d7
    cp e
    db $e4
    inc sp
    ld c, e
    call c, $e5a0
    or a
    db $e4
    daa
    ld d, a
    daa
    call c, Call_008_40d1
    ld b, d
    call c, $e5c4
    inc hl
    call c, $e4d1
    ld b, b
    ld b, d
    call c, $e5c4
    ld d, e
    call c, $e4d1
    ld b, b
    ld b, d
    call c, $e5c4
    inc hl
    call c, $e4d1
    ld b, b
    ld b, b
    call c, $e6c4
    or e
    push hl
    ld hl, $c2dc
    db $e4
    ld b, b
    ld b, b
    jr nz, jr_008_7685

    ld d, b
    ld b, b
    jr nz, jr_008_7699

    ld b, b
    ld b, b
    ld h, b
    ld d, b
    ld b, b
    jr nc, @+$42

    ld h, b
    ld b, b
    ld b, b
    ld d, b
    ld b, b
    jr nz, jr_008_7667

    jr nz, jr_008_7689

    ld b, b
    ld b, b
    call c, $e6c4
    or e
    push hl
    ld hl, $d7dc
    db $e4
    ld b, e
    ld d, c
    ld l, e

jr_008_7667:
    call c, $e5c2
    or c
    or e
    or c
    or e
    or c
    call c, $e4d7
    ld d, e
    ld h, c
    ld a, e
    call c, Call_000_01c2
    inc bc
    ld bc, $0103
    call c, $63d7
    ld [hl], c
    adc e
    call c, Call_000_1182
    inc de

jr_008_7685:
    call c, $11a2
    inc de

jr_008_7689:
    inc de
    call c, $11d2
    inc de
    call c, Call_000_11f2
    inc de
    call c, Call_008_40c4
    ld d, b
    call c, Call_008_6bc0

jr_008_7699:
    call c, Call_008_63c7
    call c, $e51f
    ld h, a
    call c, Call_008_6790
    call c, $e4c7
    inc de
    call c, Call_000_2bc0
    daa
    call c, Call_000_27c7
    call c, Call_008_47c0
    call c, $47c7
    call c, $e5c0
    sub a
    call c, $97c7
    call c, $e4c0
    ld d, a
    call c, $57c7
    db $e3
    rlca
    db $e4
    and a
    call c, $9fc0
    sub a
    call c, $97c7
    call c, $fdc5
    db $10
    ld [hl], a
    call c, $fdb1
    db $10
    ld [hl], a
    call c, $e4d7
    ld b, a
    scf
    daa
    push hl
    or a
    and e
    cp e
    call c, $e4c7
    daa
    call c, Call_000_074c
    call c, Call_008_47d7
    scf
    daa
    push hl
    or a
    and e
    cp e
    call c, $e45d
    daa
    call c, Call_008_57c0
    call c, Call_008_47c0
    call c, $47c7
    and e
    cp e
    cp $00
    and $75
    db $e4
    ld b, b
    ld b, b
    ld [hl], b
    db $e3
    nop
    ld b, b
    nop
    db $e4
    ld [hl], b
    ld d, b
    rst $38
    db $e4
    ld hl, $e511
    or c
    db $e4
    ld de, $1121
    ld h, c
    ld hl, $dcff
    ld de, $43e4
    db $e3
    ld b, e
    db $e4
    ld d, e
    db $e3
    inc sp
    db $e4
    ld [hl], e
    db $e3
    inc hl
    db $e4
    add e
    or e
    ld b, b
    ld b, b
    push bc
    ld b, b
    ld b, b
    push bc
    ld b, b
    ld b, b
    push bc
    ld b, b
    ld b, b
    pop bc
    inc sp
    ld b, b
    ld b, b
    pop bc
    or e
    ld b, b
    ld b, b
    pop bc
    db $e3
    inc bc
    db $e4
    ld b, b
    ld b, b
    pop bc
    db $e3
    inc hl

jr_008_7749:
    db $e4
    ld b, b
    ld b, b
    db $e3
    inc bc
    db $e4

jr_008_774f:
    and c
    ld b, b
    ld b, b
    pop bc
    or e
    ld b, b
    ld b, b
    pop bc
    db $e3
    inc bc
    db $e4
    ld b, b
    ld b, b
    pop bc
    db $e3
    inc hl
    db $e4
    ld b, b
    ld b, b
    db $e3
    inc bc
    ld hl, $40e4
    ld b, b
    pop bc
    or e
    ld b, b

jr_008_776b:
    ld b, b
    pop bc
    db $e3
    inc bc
    db $e4
    ld b, b

jr_008_7771:
    ld b, b
    pop bc
    db $e3
    inc hl
    db $e4
    ld b, b
    ld b, b
    pop bc
    ld b, b
    jr nc, @+$42

    ld [hl], b
    db $e4

jr_008_777e:
    ld b, b
    push hl
    ld b, b
    pop bc
    db $e4
    ld h, e

jr_008_7784:
    jr nc, jr_008_776b

    jr nc, jr_008_7749

    db $e4
    ld d, e
    jr nz, jr_008_7771

    jr nz, jr_008_774f

    db $e4
    ld b, e
    ld h, b
    push hl
    ld h, b
    pop bc
    db $e4
    ld h, e
    ld d, e
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl

Call_008_77a0:
jr_008_77a0:
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4

jr_008_77a6:
    ld h, c

Call_008_77a7:
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    ld b, b
    push hl
    ld b, b
    pop bc
    db $e4
    ld h, e
    jr nc, jr_008_77a0

    jr nc, jr_008_777e

    db $e4
    ld d, e
    jr nz, jr_008_77a6

    jr nz, jr_008_7784

    db $e4
    ld b, e
    ld h, b
    push hl
    ld h, b
    pop bc
    db $e4
    ld h, e
    ld d, e
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    ld b, b
    jr nc, @+$42

    ld h, b
    ld b, c
    or c
    ld b, c
    or c
    ld b, c
    or c
    ld b, c
    or c
    ld b, c
    or c
    ld b, c
    or c
    ld b, c
    or c
    ld b, c
    or c
    ld b, c
    or c
    ld b, c
    or c
    ld b, c
    or c
    ld b, b
    ld b, b
    pop bc
    inc hl
    ld b, b
    ld b, b
    pop bc
    ld d, e
    ld b, b
    ld b, b
    pop bc
    inc hl
    ld b, b
    ld b, b
    push hl
    or l
    db $e4
    ld b, b
    ld b, b
    pop bc
    inc hl
    ld b, b
    ld b, b
    pop bc
    ld d, e
    ld b, b
    ld b, b
    pop bc
    inc hl
    ld b, b
    ld b, b
    push hl
    or l
    db $e4
    ld b, c
    db $e3
    ld hl, $41e4
    db $e3
    ld hl, $41e4
    db $e3
    ld hl, $41e4
    db $e3
    ld hl, $41e4
    or c
    or c
    ld b, c
    or c
    or c
    db $e3
    ld de, $b1e4
    ld d, c
    db $e3
    ld sp, $51e4
    db $e3
    ld sp, $51e4
    db $e3
    ld sp, $51e4
    db $e3
    ld sp, $51e4
    db $e3
    ld bc, $e401
    ld d, c
    db $e3
    ld bc, $2101
    ld bc, $61e4
    db $e3
    ld b, c
    db $e4
    ld h, c
    db $e3
    ld b, c
    db $e4
    ld h, c
    db $e3
    ld b, c
    db $e4
    ld h, c
    db $e3
    ld b, c
    db $e4
    ld h, c
    db $e3
    ld de, $e411
    ld h, c
    db $e3
    ld de, $4111
    ld de, $61e4
    db $e3
    ld de, $e411
    ld h, c
    db $e3
    ld de, $4111
    ld de, $5bfd
    ld a, c
    db $fd
    ld e, e
    ld a, c
    db $e4
    ld [hl], c
    db $e3
    ld hl, $71e4
    db $e3
    ld hl, $71e4
    db $e3
    ld hl, $71e4
    db $e3
    ld hl, $71e4
    db $e3
    ld hl, $71e4
    db $e3
    ld hl, $71e4
    db $e3
    ld hl, $70e4
    ld h, b
    ld [hl], b
    add b
    db $fd
    ld l, h
    ld a, c
    db $fd
    ld l, h
    ld a, c
    db $e4
    and c
    db $e3
    ld d, c
    db $e4
    and c
    db $e3
    ld d, c
    db $e4
    and c
    db $e3
    ld d, c
    db $e4
    and c
    db $e3
    ld d, c
    db $e4
    and c
    db $e3
    ld d, c
    ld [hl], c
    ld d, c
    ld b, c
    ld hl, $e411
    and c
    sub c
    db $e3
    ld de, $91e4
    db $e3
    ld de, $91e4
    db $e3
    ld de, $91e4
    db $e3
    ld de, $91e4
    db $e3
    ld de, $91e4
    db $e3
    ld de, $91e4
    db $e3
    ld de, $91e4
    add c
    ld [hl], c
    db $e3
    ld hl, $71e4
    db $e3
    ld hl, $71e4
    db $e3
    ld hl, $71e4
    db $e3
    ld hl, $71e4
    db $e3
    ld hl, $71e4
    db $e3
    ld hl, $71e4
    db $e3
    ld hl, $70e4
    ld h, b
    ld [hl], b
    add b
    ld b, c
    sub c
    ld b, c
    sub c
    ld b, c
    sub c
    ld b, c
    sub c
    ld b, c
    sub c
    ld b, c
    sub c
    ld b, c
    ld d, c
    ld h, c
    ld [hl], c
    ld h, c
    or c
    ld h, c
    or c
    ld h, c
    or c
    ld h, c
    or c
    ld h, c
    or c
    ld h, c
    or c
    ld h, c
    or c
    ld h, c
    ld sp, $b141
    ld b, c
    or c
    ld b, c
    or c
    ld b, c
    or c
    ld b, c
    or c
    ld b, c
    or c
    ld b, c
    ld d, c
    ld h, c
    ld [hl], c
    ld h, c
    db $e3
    ld hl, $61e4
    db $e3
    ld hl, $61e4
    db $e3
    ld hl, $61e4
    db $e3
    ld hl, $61e4
    db $e3
    ld hl, $61e4
    db $e3
    ld hl, $61e4
    db $e3
    ld hl, $61e4
    ld d, c
    ld b, c
    or c
    db $e3
    ld b, e
    db $e4
    ld b, c
    or c
    db $e3
    inc sp
    db $e4
    ld b, c
    or c
    db $e3
    inc hl
    db $e4
    ld b, c
    sub c
    or e
    cp $00
    ld a, l
    ld [hl], a
    db $e4
    ld h, c
    db $e3
    ld de, $61e4
    db $e3
    ld de, $61e4
    db $e3
    ld de, $61e4
    db $e3
    ld de, $e4ff
    sub c
    db $e3
    ld b, c
    db $e4
    sub c
    db $e3
    ld b, c
    db $e4
    sub c
    db $e3
    ld b, c
    db $e4
    sub c
    db $e3
    ld b, c
    rst $38
    ld hl, sp-$13
    ld bc, $f000
    ld [hl], a

jr_008_7983:
    db $ec
    ld [bc], a
    add sp, -$2a
    or h
    db $e4
    ld d, e
    call nc, Call_000_01b2
    ld d, c
    ld bc, $b3d6
    ld sp, $4131
    sub $b4
    ld d, a
    rst $38
    ld hl, sp-$16
    inc b
    ld [hl+], a
    db $ec
    ld [bc], a
    sub $c4
    db $e4
    sub e
    call nc, $91c2
    sub c
    sub c
    sub $c4
    and c
    and c
    and c
    sub $c4
    sub a
    rst $38
    ld hl, sp-$2a
    db $10
    db $e3
    sub e
    call nc, Call_008_5010
    ret nz

    ld d, b
    ret nz

    ld d, b
    ret nz

    sub $10
    ld [hl], b
    ret nz

    jr nc, jr_008_7983

    ld [hl], b
    ret nz

    sub a
    rst $38

jr_008_79c7:
    ld hl, sp-$13

jr_008_79c9:
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

jr_008_7a01:
    db $e3
    ld d, e
    inc sp
    rlca
    jr nc, jr_008_79c7

    jr nc, jr_008_79c9

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
    inc bc
    add sp, -$2a
    or d
    push hl
    ld b, c
    ld h, c
    add c
    add b
    add b
    or c
    db $e4
    ld de, $3031
    jr nc, jr_008_7a01

    or l
    ld b, a
    rst $38
    ld hl, sp-$14
    ld [bc], a
    sub $c2
    db $e4
    add c
    add b
    add b
    ld b, c
    ld b, b
    ld b, b
    or c
    or b
    or b
    sub c
    sub b
    sub b
    sub $c5
    add a
    rst $38
    ld hl, sp-$2a
    db $10
    db $e4
    or c
    pop bc
    db $e3
    ld de, $31c1
    pop bc
    ld h, c
    ld [hl], c
    add e
    rst $38
    db $ed
    nop
    ldh [$f0], a
    ld [hl], a
    db $ec
    ld [bc], a
    add sp, -$13
    nop
    ldh [$d4], a
    and d
    db $e4
    ld hl, $00ed
    ldh [$d4], a
    and d
    ld hl, $2121
    push hl
    sub c
    db $e4
    ld hl, $b3d4
    ld l, e
    db $ec
    ld bc, $00ed
    ldh [$d4], a
    ld h, e
    push hl
    sub l
    ld h, d
    sub d
    or l
    add d
    or d
    db $e4
    ld [de], a
    push hl
    or d
    sub d
    ld [hl], d
    sub d
    or d
    sub d
    ld [hl], d
    sub l
    ld h, d
    sub d
    or l
    add d
    or d
    db $e4
    ld [de], a
    ld [hl+], a
    ld b, d
    ld h, d
    ld [de], a
    push hl
    or d
    sub d
    db $e4
    ld [de], a
    push hl
    sub l
    ld h, d
    sub d
    or l
    add d
    or d
    db $e4
    dec b
    push hl
    sub d
    db $e4
    ld [bc], a
    ld [hl+], a
    push hl
    or d
    db $e4
    dec h
    ld [de], a
    push hl
    or d
    sub d
    ld [hl], d
    ld h, d
    ld [hl], d
    sub d
    or d
    sub d
    ld [hl], d
    ld h, d
    ld b, d
    ld h, d
    ld [hl], d
    sub d
    or d
    cp $00
    db $76
    ld a, d
    db $ec
    ld [bc], a
    call nc, $e4c3
    sub c
    call nc, $91c3
    sub c
    sub c
    or c
    db $e3
    ld de, $c4d4
    dec hl
    call nc, $e485
    dec h
    push hl
    sub d
    db $e4
    ld [hl+], a
    ld b, l
    push hl
    or d
    db $e4
    ld b, d
    ld h, d
    ld [hl], d
    sub l
    ld b, d
    ld h, d
    ld [hl], l
    dec h
    push hl
    sub d
    db $e4
    ld [hl+], a
    ld b, l
    push hl
    or d
    db $e4
    ld b, d
    ld h, d
    ld [hl], d
    sub l
    ld h, d
    ld [hl], d
    sub l
    dec h
    push hl
    sub d
    db $e4
    ld [hl+], a
    ld b, l
    push hl
    or d
    db $e4
    ld b, d
    ld d, l
    ld [bc], a
    ld d, d
    ld [hl], d
    ld [hl+], a
    ld [hl], l
    call nc, Call_008_6b70
    call nc, Call_008_6b77
    call nc, Call_008_4b60
    call nc, Call_008_4b67
    cp $00
    jp nc, $d47a

    db $10
    db $e3
    ld hl, $10d4
    ld hl, $e421
    or c
    sub c
    ld [hl], c
    sbc e
    call nc, Call_008_6221
    jp nz, $c262

    add d
    jp nz, $c282

    sub d
    jp nz, $c292

    or d
    jp nz, $c2b2

    ld h, d
    jp nz, $c262

    add d
    jp nz, $c282

    sub d
    jp nz, $c292

    db $e3
    ld [de], a
    jp nz, $e412

    sub d
    ld h, d
    db $e3
    ld [hl+], a
    db $e4
    ld h, d
    jp nz, $e382

    ld b, d
    db $e4
    add d
    jp nz, $e392

    ld d, d
    db $e4
    sub d
    jp nz, $e3b2

    ld [hl], d
    db $e4
    or d
    and d
    sub d
    jp nz, $c292

    sub d
    jp nz, $e392

    ld [bc], a
    ld [de], a
    jp nz, $c212

    ld [de], a
    jp nz, $e412

    sub d
    cp $00
    inc h
    ld a, e
    db $ed
    nop
    ld [hl], b
    ldh a, [rPCM34]
    ld hl, sp-$14
    inc bc
    ld [$3406], a
    add sp, -$13
    nop
    ld [hl], b
    call c, $e5b7
    or b
    sub b
    add b
    ld h, b
    ld c, e
    call c, Call_008_4162
    ld h, c
    ld b, c
    ld h, c
    add c
    add c
    add e
    sub c
    sub c
    sub e
    add c
    add c
    add e
    ld b, c
    ld h, c
    ld b, c
    ld h, c
    add c
    add c
    add e
    sub c
    sub c
    sub e
    add a
    ld d, c
    ld [hl], c
    ld d, c
    ld [hl], c
    sub c
    sub c
    sub e
    and c
    and c
    and e
    sub c
    sub c
    sub e
    ld d, c
    ld [hl], c
    ld d, c
    ld [hl], c
    sub c
    sub c
    sub e
    and c
    and c
    and e
    sub a
    cp $00
    adc e
    ld a, e
    ld hl, sp-$14
    ld [bc], a
    call c, $e4c3
    ld b, b
    ld h, b
    add b
    sub b
    call c, $bbc7
    call c, $e582
    or c
    sub c
    add c
    sub c
    or c
    or c
    or e
    db $e4
    ld de, $1311
    push hl

jr_008_7bdd:
    or c
    or c
    or e
    or c
    sub c
    add c
    sub c
    or c
    or c
    or e
    db $e4
    ld de, $1311
    push hl
    or a
    db $e4
    ld bc, $a1e5
    sub c
    and c
    db $e4
    ld bc, $0301
    ld hl, $2321
    ld bc, $0301
    ld bc, $a1e5
    sub c

jr_008_7c01:
    and c
    db $e4
    ld bc, $0301
    ld hl, $2321
    rlca
    cp $00
    adc $7b
    ld hl, sp-$24
    jr nz, @-$1b

    ld b, b
    ret nz

    ld [c], a
    db $10
    ret nz

    db $e3
    or b
    ret nz

    ld [c], a
    jr nc, jr_008_7bdd

    ld b, b
    jp nz, $c240

    db $e4
    ld b, b
    ret nz

    db $e3
    ld b, b
    ret nz

    db $e4
    ld b, b
    ret nz

    db $e3
    ld b, b
    ret nz

    db $e4
    ld b, b
    jp nz, $40e3

    jp nz, $60e4

    ret nz

    db $e3
    ld h, b
    ret nz

    db $e4
    ld h, b
    jp nz, $c060

    db $e3
    jr nc, jr_008_7c01

    db $e4
    ld h, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    db $e3
    ld b, b
    ret nz

    db $e4
    ld b, b
    ret nz

    db $e3
    ld b, b
    ret nz

    db $e4
    ld b, b
    jp nz, $40e3

    jp nz, $60e4

    ret nz

    db $e3
    ld h, b
    ret nz

    db $e4
    ld h, b
    jp nz, $40e3

    jp nz, $33e4

    db $e4
    ld d, b
    ret nz

    db $e3
    ld d, b
    ret nz

    db $e4
    ld d, b
    ret nz

    db $e3
    ld d, b
    ret nz

    db $e4
    ld d, b
    jp nz, Jump_008_50e3

    jp nz, $70e4

    ret nz

    db $e3
    ld [hl], b
    ret nz

    db $e4
    ld [hl], b
    jp nz, $c050

    db $e3
    ld d, b
    ret nz

    db $e4
    ld d, b
    ret nz

    ld d, b
    ret nz

    ld d, b
    ret nz

    db $e3
    ld d, b
    ret nz

    db $e4
    ld d, b
    ret nz

    db $e3
    ld d, b
    ret nz

    db $e4
    ld d, b
    jp nz, Jump_008_50e3

    jp nz, $70e4

    ret nz

    db $e3
    ld [hl], b
    ret nz

    db $e4
    ld [hl], b
    jp nz, Jump_008_50e3

    jp nz, $33e4

    cp $00
    ld hl, $ed7c
    nop
    ld [hl], b
    ldh a, [rPCM34]
    db $ec
    inc bc
    ld [$3112], a
    add sp, -$13
    nop
    ld [hl], b
    call c, $e4a6
    dec h
    push hl
    sub b
    db $e4
    jr nz, jr_008_7d29

    jr nz, jr_008_7d26

    call c, $97a0
    call c, $97a7
    call c, $e5b2
    sub c
    sub c
    ld h, e
    ld [hl], c
    ld [hl], c
    ld b, e
    ld hl, $2141
    ld b, c
    inc hl
    inc hl
    sub c
    sub c
    ld h, e
    ld [hl], c
    ld [hl], c
    ld b, e
    ld hl, $2141
    ld de, $b1dc
    and $b7
    call c, $e5b2
    sub c
    sub c
    ld h, e
    ld [hl], c
    ld [hl], c
    ld b, e
    ld hl, $2141
    ld b, c
    inc hl
    inc hl
    sub c
    sub c
    ld h, e
    ld [hl], c
    ld [hl], c
    ld b, e
    ld hl, $2141
    ld de, $b1dc
    and $b7
    call c, $e597
    dec h
    and $90
    push hl
    jr nz, jr_008_7d76

    call c, $65b0
    ld b, b
    ld h, b
    sub a
    call c, Call_008_4597
    db $10
    ld b, b
    add a
    call c, $85b0
    ld b, b
    add b
    or a
    call c, $1597
    and $90

jr_008_7d26:
    push hl
    db $10
    ld b, a

jr_008_7d29:
    call c, Call_008_45b0
    db $10
    ld b, b
    ld b, e
    ld [hl], e
    call c, Call_008_6790
    ld b, a
    daa
    rla
    call c, Call_000_2597
    and $90
    push hl
    jr nz, jr_008_7da5

    call c, $65b0
    ld b, b
    ld h, b
    sub a
    call c, Call_008_4597
    db $10
    ld b, b
    add a
    call c, $85b0
    ld b, b
    add b
    or a
    call c, $1597
    and $90
    push hl
    db $10
    ld b, a
    call c, Call_008_45b0

jr_008_7d5b:
    db $10
    ld b, b
    ld b, e
    ld [hl], e
    call c, Call_008_6597
    ld b, b
    ld h, b
    sub a
    call c, Call_008_77a7
    ld b, a
    cp $00
    call z, $ec7c
    ld [bc], a
    ld [$2418], a
    call c, $e4c4
    sub l

jr_008_7d76:
    ld h, b
    sub b
    db $e3
    dec h
    db $e4
    sub b
    db $e3
    jr nz, jr_008_7d5b

    or b
    ld h, a
    call c, Call_008_67b7
    call c, $e4c2
    ld hl, $e511
    or e
    db $e4
    ld de, $b1e5
    sub e
    or c
    sub c
    ld [hl], c
    ld h, c
    call c, $93c4
    sub e
    call c, $e4c2
    ld hl, $e511
    or e
    db $e4
    ld de, $b1e5
    sub e
    or c

jr_008_7da5:
    sub c
    ld [hl], c
    ld h, c
    call c, Call_000_25c1
    sub $c2
    ld [hl], b
    sub b
    or b
    db $e4
    db $10
    call c, Call_000_21c2
    ld de, $b3e5
    db $e4
    ld de, $b1e5
    sub e
    or c
    sub c
    ld [hl], c
    ld h, c
    call c, $93c4
    sub d
    sub $c2
    or b
    db $e4
    db $10
    call c, Call_000_21c2
    ld de, $b3e5
    db $e4
    ld de, $b1e5
    sub e
    or c
    sub c
    ld [hl], c
    ld h, c
    call c, Call_000_27c1
    call c, $95c7
    ld h, b
    sub b
    call c, $e4b0
    daa
    call c, $27a0
    call c, Call_000_2797
    call c, $e5c7
    or l
    add b
    or b
    call c, $e480
    ld b, a
    call c, Call_008_47a0
    call c, $47c7
    push hl
    ld [hl], l
    ld b, b
    ld [hl], b
    call c, $e46f
    rla
    call c, Call_000_17c7
    ld h, e
    ld b, e
    call c, $2db0
    push hl
    or c
    call c, $97a0
    call c, $97b7
    call c, $95c7
    ld h, b
    sub b
    call c, $e4b0
    daa
    call c, $27a0
    call c, Call_000_2797
    call c, $e5c7
    or l
    add b
    or b
    call c, $e44f
    ld b, a
    call c, Call_008_47b0
    call c, $47c7
    push hl
    ld [hl], l
    ld b, b
    ld [hl], b
    call c, $e4b0
    rla
    call c, Call_000_17b7
    push hl
    sub e
    db $e4
    inc de
    call c, $2db0
    ld b, c
    dec hl
    call c, $e5c2
    ld [hl], b
    sub b
    or b
    db $e4
    db $10
    cp $00
    add h
    ld a, l
    call c, $ea10
    db $10
    ld [de], a
    db $e4

jr_008_7e58:
    ld h, l
    jr nz, @+$62

    sub l

jr_008_7e5c:
    ld h, b
    sub b
    db $e3
    dec h

jr_008_7e60:
    db $e4
    sub b
    db $e3
    jr nz, jr_008_7ecc

    db $e4
    ld h, b
    ret nz

jr_008_7e68:
    ld h, b
    ret nz

    ld h, b
    jp nz, $c070

    ld [hl], b
    ret nz

jr_008_7e70:
    ld [hl], b
    jp nz, $c090

    sub b
    ret nz

    sub b
    ret nz

jr_008_7e78:
    ld [hl], b
    ret nz

    ld h, d
    ret nz

jr_008_7e7c:
    ld h, d
    ret nz

    ld h, b
    ret nz

jr_008_7e80:
    ld h, b
    ret nz

    ld h, b
    jp nz, $c070

    ld [hl], b
    ret nz

jr_008_7e88:
    ld b, b
    ret nz

    ld b, b
    ret nz

jr_008_7e8c:
    ld h, b
    ret nz

    ld h, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    jr nz, @-$3a

    jr nz, jr_008_7e58

    ld h, b
    ret nz

    jr nz, jr_008_7e5c

    ld h, b
    ret nz

    jr nz, jr_008_7e60

    ld [hl], b
    ret nz

    jr nz, @-$3e

    ld [hl], b
    ret nz

    jr nz, jr_008_7e68

    sub b
    ret nz

    jr nz, @-$3e

    sub b
    ret nz

    jr nz, jr_008_7e70

    ld [hl], d
    ret nz

    ld [hl+], a
    ret nz

    ld h, b
    ret nz

    jr nz, jr_008_7e78

    ld h, b
    ret nz

    jr nz, jr_008_7e7c

    ld [hl], b
    ret nz

    jr nz, jr_008_7e80

    ld [hl], b
    ret nz

    jr nz, @-$3e

    sub b
    ret nz

    jr nz, jr_008_7e88

    ld [hl], b
    ret nz

    jr nz, jr_008_7e8c

jr_008_7ecc:
    ld h, b
    add $21
    sub c
    ld hl, $2191
    sub c
    ld hl, $2191
    sub c
    ld hl, $8191
    ld h, c
    ld b, c
    ld sp, $b141
    ld b, c
    or c
    ld b, c
    or c
    ld b, c
    or c
    ld b, c
    or c
    ld b, c
    or c
    ld b, c
    or c
    ld b, c
    or c
    ld de, $1191
    sub c
    ld de, $1191
    sub c
    ld de, $1191
    sub c
    ld de, $1191
    sub c
    ld hl, $2191
    sub c
    ld hl, $2191
    sub c
    ld hl, $2191
    sub c
    ld hl, $2111
    ld b, c
    ld hl, $2191
    sub c
    ld hl, $2191
    sub c
    ld hl, $2191
    sub c
    add c
    ld h, c
    ld b, c
    ld sp, $b141
    ld b, c
    or c
    ld b, c
    or c
    ld b, c
    or c
    ld b, c
    or c
    ld b, c
    or c
    ld b, c
    or c
    ld b, c
    or c
    ld de, $1191
    sub c
    ld de, $1191
    sub c
    ld de, $1191
    sub c
    ld de, $1191
    sub c
    ld hl, $2191
    sub c
    ld hl, $2191
    sub c
    ld hl, $2191
    sub c
    ld [hl], c
    sub c
    ld [hl], c
    ld b, c

Call_008_7f4e:
    cp $00
    ld h, l
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
    nop
    nop
    nop

Call_008_7f60:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_008_7fc0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_008_7fc7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
