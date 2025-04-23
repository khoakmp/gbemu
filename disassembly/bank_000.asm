; Disassembly of "Pokemon Red (UE) [S][!].gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $000", ROM0[$0]

RST_00::
    rst $38

Call_000_0001:
    nop
    nop
    nop
    nop
    nop
    nop
    nop

RST_08::
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop

RST_10::
    rst $38

Call_000_0011:
    nop
    nop

Call_000_0013:
    nop
    nop
    nop

Jump_000_0016:
    nop
    nop

RST_18::
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop

RST_20::
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop

RST_28::
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop

RST_30::
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop

RST_38::
    rst $38
    nop
    nop
    nop

Jump_000_003c:
    nop
    nop
    nop
    nop

VBlankInterrupt::
    jp Jump_000_2024


    nop

Call_000_0044:
    nop
    nop

Call_000_0046:
    nop
    nop

LCDCInterrupt::
    rst $38
    nop
    nop

Jump_000_004b:
    nop
    nop
    nop
    nop
    nop

TimerOverflowInterrupt::
    jp Jump_000_2306


    nop
    nop

Call_000_0055:
    nop
    nop
    nop

SerialTransferCompleteInterrupt::
    jp Jump_000_2125


    nop
    nop
    nop

Jump_000_005e:
    nop
    nop

JoypadTransitionInterrupt::
    reti


Call_000_0061:
    xor a
    ldh [rIF], a
    ldh a, [rIE]
    ld b, a
    db $cb

    add a
    ldh [rIE], a

jr_000_006b:
    ldh a, [rLY]
    cp $91
    jr nz, jr_000_006b

    ldh a, [rLCDC]

Jump_000_0073:
    and $7f
    ldh [rLCDC], a

Call_000_0077:
    ld a, b
    ldh [rIE], a
    ret


Call_000_007b:
Jump_000_007b:
    ldh a, [rLCDC]
    set 7, a
    ldh [rLCDC], a
    ret


Call_000_0082:
Jump_000_0082:
    xor a
    ld hl, $c300
    ld b, $a0

jr_000_0088:
    ld [hl+], a
    dec b
    jr nz, jr_000_0088

    ret


Call_000_008d:
Jump_000_008d:
    ld a, $a0
    ld hl, $c300
    ld de, $0004
    ld b, $28

jr_000_0097:
    ld [hl], a
    add hl, de
    dec b
    jr nz, jr_000_0097

    ret


Call_000_009d:
    ld [$cee9], a
    ldh a, [$b8]
    push af
    ld a, [$cee9]
    ldh [$b8], a
    ld [$2000], a
    call Call_000_00b5
    pop af
    ldh [$b8], a
    ld [$2000], a
    ret


Call_000_00b5:
Jump_000_00b5:
jr_000_00b5:
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, c
    or b
    jr nz, jr_000_00b5

    ret


    nop
    nop
    nop
    nop

Call_000_00c2:
    nop

Call_000_00c3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_00cd:
    nop
    nop
    nop
    nop
    nop

Jump_000_00d2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_00eb:
    nop

Call_000_00ec:
    nop

Call_000_00ed:
Jump_000_00ed:
    nop
    nop
    nop
    nop
    nop

Jump_000_00f2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_00fe:
Jump_000_00fe:
    nop

Call_000_00ff:
Jump_000_00ff:
    nop

Boot::
    nop

Jump_000_0101:
    jp Jump_000_0150


HeaderLogo::
    db $ce, $ed, $66, $66, $cc, $0d, $00, $0b, $03, $73, $00, $83, $00, $0c, $00, $0d
    db $00, $08, $11, $1f, $88, $89, $00, $0e, $dc, $cc, $6e, $e6, $dd, $dd, $d9, $99
    db $bb, $bb, $67, $63, $6e, $0e, $ec, $cc, $dd, $dc, $99, $9f, $bb, $b9, $33, $3e

HeaderTitle::
    db "POKEMON RED", $00, $00, $00, $00, $00

HeaderNewLicenseeCode::
    db $30, $31

HeaderSGBFlag::
    db $03

HeaderCartridgeType::
    db $13

HeaderROMSize::
    db $05

HeaderRAMSize::
    db $03

HeaderDestinationCode::
    db $01

HeaderOldLicenseeCode::
    db $33

HeaderMaskROMVersion::
    db $00

HeaderComplementCheck::
    db $20

HeaderGlobalChecksum::
    db $91, $e6

Jump_000_0150:
    cp $11
    jr z, jr_000_0157

    xor a
    jr jr_000_0159

jr_000_0157:
    ld a, $00

jr_000_0159:
    ld [$cf1a], a
    jp Jump_000_1f54


Call_000_015f:
    ld a, $20
    ld c, $00

Jump_000_0163:
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    swap a
    ld b, a
    ld a, $10

Call_000_0179:
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    or b
    ldh [$f8], a
    ld a, $30
    ldh [rP1], a
    ret


Call_000_019a:
Jump_000_019a:
    ldh a, [$b8]
    push af
    ld a, $03
    ldh [$b8], a
    ld [$2000], a
    call $4000
    pop af
    ldh [$b8], a
    ld [$2000], a
    ret


    and c
    ld b, d

Call_000_01b0:
    ld d, a
    ld b, e

Call_000_01b2:
    ld d, h
    ld b, l
    ld c, [hl]
    ld b, a
    nop
    ld b, b
    sbc b
    ld c, c
    nop
    ld b, b
    and a
    ld c, e
    nop
    ld b, b
    ld e, $49

Call_000_01c2:
    and h
    ld c, c
    and h
    ld c, c
    jp VBlankInterrupt


    ld b, b
    and $41
    sub b
    ld b, e
    add c
    ld b, l
    nop
    ld b, b
    nop
    ld b, b
    dec l
    ld b, c
    add [hl]
    ld b, [hl]
    call nc, $be42
    ld b, h
    ld l, l
    ld b, [hl]
    inc c
    ld c, b
    sbc c
    ld c, c
    inc l
    ld c, c
    jp c, $204a

    ld c, e
    jr c, jr_000_0236

    ld a, b
    ld c, [hl]
    pop af

Jump_000_01ed:
    ld b, b
    rst $38
    ld c, a
    nop
    ld b, b
    ccf
    ld b, e
    add d
    ld b, [hl]
    sbc e
    ld b, a
    ld e, h
    ld b, c
    and h
    ld b, b
    cpl
    ld e, e
    ld [bc], a
    ld c, e

Jump_000_0200:
    ld d, c
    ld b, d
    ld h, d
    ld d, h
    ld b, b
    ld d, l
    ld a, l
    ld d, l

Jump_000_0208:
    sub a
    ld c, b
    and h
    ld e, [hl]
    ld a, e
    ld d, l
    pop hl
    ld e, [hl]
    ret z

    ld d, l
    ld d, b
    ld d, [hl]
    ld bc, $eb51
    ld b, b
    dec bc
    ld b, e
    ld a, e
    ld b, e
    rst $20
    ld d, l
    and c
    ld c, h
    inc a

Call_000_0221:
    ld d, [hl]
    ld a, e
    ld b, l
    cp h
    ld e, c
    ld [hl], $5a
    rst $38
    ld e, h
    ld a, c
    ld d, [hl]
    ld [$3956], a
    ld b, [hl]
    and a
    ld b, [hl]
    jr nc, jr_000_028b

    adc c
    ld c, b

jr_000_0236:
    jp $7952


    ld d, [hl]
    daa
    ld e, a
    sbc l
    ld d, [hl]
    ld b, e
    ld h, d
    ld sp, $e360
    ld d, [hl]
    db $e3
    ld d, [hl]
    db $f4
    ld h, b
    jr nz, jr_000_02a1

    ld e, l
    ld d, a
    cp e
    ld h, c
    ld a, l
    ld h, d
    xor [hl]
    ld d, e
    ret nc

    ld b, h
    cp d
    ld h, d
    nop
    ld d, h
    xor [hl]
    ld h, l
    ld c, b
    ld d, h
    ld hl, sp+$54
    ld e, [hl]
    ld h, a
    add e
    ld c, c
    ld h, h

Call_000_0263:
    ld e, e
    push de
    ld c, c
    ld a, [de]
    ld c, d
    ldh a, [$5a]
    ld b, [hl]
    ld e, e
    ld e, c

Call_000_026d:
    ld d, d
    sub e
    ld d, e
    ld h, $49
    ld [hl+], a
    ld d, [hl]
    and d
    ld d, [hl]
    and a
    ld d, a
    adc c
    ld e, b
    ld l, d
    ld e, c
    ccf
    ld e, e
    ld c, c
    ld e, l
    and d
    ld h, d
    and d
    ld h, d
    and d
    ld h, d
    cp $59
    and d
    ld h, d
    and d

jr_000_028b:
    ld h, d
    and d
    ld h, d
    and d
    ld h, d
    and d
    ld h, d
    and d
    ld h, d
    and d
    ld h, d
    and d
    ld h, d
    and d
    ld h, d
    sub d
    ld h, h
    ld a, [de]
    ld e, a
    ld de, $3e5f

jr_000_02a1:
    ld e, a
    ld a, d
    ld c, a
    jp hl


    ld h, b
    add hl, de

Jump_000_02a7:
    ld b, d
    ld c, d
    ld b, e
    ret


    ld b, e
    db $f4
    ld b, l
    adc b
    ld b, [hl]

Call_000_02b0:
Jump_000_02b0:
    ld l, $47
    add h
    ld b, a
    ld e, a
    ld c, b
    ld l, $5d
    xor h
    ld c, b
    cp $48
    or c

Jump_000_02bd:
    ld c, e
    ld e, l

Call_000_02bf:
    ld d, b
    db $e4
    ld d, b
    ld b, l
    ld d, c
    ld [bc], a
    ld d, d
    ld e, l
    ld d, d
    adc $48

Call_000_02ca:
    jr nz, jr_000_0310

    and $44
    ret nz

    ld b, [hl]
    ld [$2647], a
    ld c, c
    db $e3
    ld c, d
    ld sp, hl
    ld c, h
    sbc h
    ld e, b
    jr nz, jr_000_0325

    and d
    ld e, c
    ld a, h
    ld e, l
    inc c
    ld d, b
    ld d, a
    ld d, b
    xor c
    ld d, b
    pop bc
    ld d, c
    ld sp, $d754
    ld d, [hl]
    add hl, bc
    ld h, e
    ld b, l
    ld h, h
    add c
    ld h, l
    adc l
    ld h, a
    ld h, h
    ld h, b
    ld [hl], b
    ld h, c
    and e
    ld b, d
    ld a, $57

Call_000_02fc:
    add b

Call_000_02fd:
    ld e, e
    dec d

Jump_000_02ff:
    ld e, h
    ld a, e
    ld e, h
    dec h

Call_000_0303:
    ld e, l
    jr nz, jr_000_0364

    ld [hl], d
    ld e, [hl]
    ld [hl], d
    ld e, [hl]
    ld c, a
    ld e, h
    or a
    ld e, [hl]
    ld h, l

Jump_000_030f:
    ld c, h

jr_000_0310:
    ld d, c
    ld c, l
    ld bc, $d150
    ld e, l
    db $fd
    ld d, e
    ld b, d
    ld d, h
    add hl, hl
    ld d, l
    jr nc, jr_000_037c

    or $55
    ld a, $56
    or d
    ld d, [hl]
    rst $38

jr_000_0325:
    ld d, a
    db $ec
    ld h, l
    ld [hl], e
    ld h, h
    ld l, d
    ld e, b
    ld l, c
    ld e, c
    db $dd
    ld b, a
    ld [hl], a
    ld h, [hl]
    sub c
    ld d, a
    ld d, h
    ld d, l
    ld b, $5c
    ld h, d
    ld e, a
    ld [hl], h
    ld c, c
    cp [hl]

Call_000_033d:
    ld c, e
    dec de

Call_000_033f:
    ld c, [hl]

Call_000_0340:
    add hl, de
    ld d, d
    ld d, c
    ld d, h
    inc b
    ld d, a
    inc b
    ld d, a
    inc b
    ld d, a
    inc b
    ld d, a
    push hl
    ld e, h
    ld c, a
    ld e, a
    rst $38
    ld e, h
    dec hl
    ld e, a
    sbc l
    ld h, c
    ld d, l
    ld e, e
    ld hl, sp+$64
    call z, $e25f
    ld h, c
    xor l
    ld h, e

Call_000_0360:
    ld e, a
    ld e, b
    sbc a

Call_000_0363:
    ld e, c

jr_000_0364:
    xor c
    ld h, c
    and [hl]
    ld e, e
    pop hl
    ld e, h
    dec bc
    ld h, e
    ld e, $5d
    ld l, c
    ld e, l
    or h
    ld e, l
    rst $38
    ld e, l
    db $e4
    ld e, [hl]
    nop
    ld c, l
    ld b, $5a
    db $fd
    ld c, l

jr_000_037c:
    or d
    ld d, [hl]
    rst $18
    ld e, a
    xor a
    ld d, a
    dec l
    ld h, c
    xor $60
    or h
    ld d, a
    push hl
    ld e, h
    push hl
    ld e, h
    inc b
    ld a, l
    ld [hl], c
    ld a, l
    push hl
    ld e, h
    push hl
    ld e, h
    push hl
    ld e, h
    push hl
    ld e, h
    ld l, a
    ld h, c
    jp z, Jump_000_2162

    ld h, h

Call_000_039e:
    ld b, $1c
    ld hl, $487e
    jp Jump_000_35d6


Jump_000_03a6:
    ld a, $ff
    ld [$cd6b], a
    call Call_000_1241
    ld b, $03

Call_000_03b0:
Jump_000_03b0:
    ld hl, $4335
    call Call_000_35d6
    ld hl, $d72c
    bit 0, [hl]
    jr z, jr_000_03c2

    ld a, $03
    ld [$d13c], a

jr_000_03c2:
    ld hl, $d72e
    bit 5, [hl]

Jump_000_03c7:
    res 5, [hl]
    call z, Call_000_12e7
    call nz, Call_000_091f
    ld hl, $d732
    ld a, [hl]
    and $18
    jr z, jr_000_03e4

    res 3, [hl]
    ld b, $1c
    ld hl, $4510
    call Call_000_35d6

Jump_000_03e1:
    call Call_000_2429

jr_000_03e4:
    ld b, $03
    ld hl, $438b
    call Call_000_35d6

Jump_000_03ec:
    ld hl, $d72d
    res 5, [hl]
    call Call_000_2429
    ld hl, $d126
    set 5, [hl]
    set 6, [hl]
    xor a
    ld [$cd6b], a

Jump_000_03ff:
    call Call_000_20af

Call_000_0402:
Jump_000_0402:
    call Call_000_20af
    call Call_000_20ba
    ld a, [$d736]
    bit 6, a
    call nz, Call_000_039e
    ld a, [$cfc5]
    and a
    jp nz, Jump_000_05b5

    call Call_000_0f4d
    ld b, $07
    ld hl, $6988
    call Call_000_35d6
    ld a, [$da46]
    and a
    jp nz, Jump_000_073c

    ld hl, $d72d
    bit 3, [hl]
    res 3, [hl]
    jp nz, Jump_000_073c

    ld a, [$d732]
    and $18

Jump_000_0438:
    jp nz, Jump_000_0965

    ld a, [$d059]
    and a
    jp nz, Jump_000_062c

    ld a, [$d730]

Call_000_0445:
    bit 7, a
    jr z, jr_000_044d

    ldh a, [$b4]
    jr jr_000_044f

Call_000_044d:
jr_000_044d:
    ldh a, [$b3]

jr_000_044f:
    bit 3, a
    jr z, jr_000_0459

    xor a
    ldh [$8c], a

Jump_000_0456:
    jp Jump_000_047d


jr_000_0459:
    bit 0, a
    jp z, Jump_000_04eb

    ld a, [$d730]
    bit 2, a
    jp nz, Jump_000_04cd

    call Call_000_30fd
    jr nz, jr_000_04c3

    call Call_000_3eb5
    ldh a, [$eb]
    and a
    jp z, Jump_000_03ff

    call Call_000_0b23
    ldh a, [$8c]
    and a
    jp z, Jump_000_03ff

Jump_000_047d:
    ld a, $35
    call Call_000_3e6d

Jump_000_0482:
    call Call_000_2429
    ld a, [$cd60]
    bit 2, a
    jr nz, jr_000_04c3

    bit 0, a
    jr nz, jr_000_04c3

Jump_000_0490:
    ld a, [$c45c]
    ld [$cf0e], a
    call Call_000_2920
    ld a, [$cc47]
    and a
    jr z, jr_000_04c3

    dec a
    ld a, $00
    ld [$cc47], a
    jr z, jr_000_04c0

    ld a, $52
    call Call_000_3e6d

Call_000_04ac:
    ld a, [$d35e]
    ld [$d71a], a
    call $62ce
    ld a, [$d35e]
    call Call_000_12bc
    ld hl, $d367
    set 7, [hl]

jr_000_04c0:
    jp Jump_000_03a6


jr_000_04c3:
    ld a, [$d059]
    and a
    jp nz, Jump_000_062c

    jp Jump_000_03ff


Jump_000_04cd:
jr_000_04cd:
    ld hl, $cd60
    res 2, [hl]
    call Call_000_2429
    ld a, $01
    ld [$cc4b], a
    ld a, [$d528]
    and a
    jp z, Jump_000_03ff

    ld [$d529], a
    xor a
    ld [$d528], a
    jp Jump_000_03ff


Jump_000_04eb:
    ldh a, [$b4]

Jump_000_04ed:
    bit 7, a
    jr z, jr_000_04fa

    ld a, $01
    ld [$c103], a
    ld a, $04
    jr jr_000_051d

jr_000_04fa:
    bit 6, a
    jr z, jr_000_0507

Jump_000_04fe:
    ld a, $ff

Call_000_0500:
Jump_000_0500:
    ld [$c103], a
    ld a, $08
    jr jr_000_051d

Jump_000_0507:
jr_000_0507:
    bit 5, a
    jr z, jr_000_0514

    ld a, $ff
    ld [$c105], a
    ld a, $02
    jr jr_000_051d

jr_000_0514:
    bit 4, a
    jr z, jr_000_04cd

    ld a, $01
    ld [$c105], a

jr_000_051d:
    ld [$d52a], a
    ld a, [$d730]

Call_000_0523:
    bit 7, a
    jr nz, jr_000_057e

    ld a, [$cc4b]
    and a
    jr z, jr_000_057e

    ld a, [$d52a]
    ld b, a
    ld a, [$d529]
    cp b
    jr z, jr_000_057e

    swap a
    or b
    cp $48
    jr nz, jr_000_0545

    ld a, $02

Jump_000_0540:
    ld [$d528], a
    jr jr_000_0564

Call_000_0545:
jr_000_0545:
    cp $84

Jump_000_0547:
    jr nz, jr_000_0550

    ld a, $01

Jump_000_054b:
    ld [$d528], a

Call_000_054e:
    jr jr_000_0564

Jump_000_0550:
jr_000_0550:
    cp $12

Jump_000_0552:
    jr nz, jr_000_055b

    ld a, $04

Jump_000_0556:
    ld [$d528], a
    jr jr_000_0564

jr_000_055b:
    cp $21
    jr nz, jr_000_0564

    ld a, $08
    ld [$d528], a

jr_000_0564:
    ld hl, $cd60
    set 2, [hl]
    ld hl, $cc4b
    dec [hl]

Jump_000_056d:
    jr nz, jr_000_0564

    ld a, [$d52a]
    ld [$d528], a
    call Call_000_0683
    jp c, Jump_000_0637

    jp Jump_000_03ff


jr_000_057e:
    ld a, [$d52a]

Jump_000_0581:
    ld [$d528], a
    call Call_000_2429
    ld a, [$d700]
    cp $02
    jr z, jr_000_05a8

    call Call_000_0bd1
    jr nc, jr_000_05ae

    push hl
    ld hl, $d736
    bit 2, [hl]
    pop hl
    jp z, Jump_000_03ff

    push hl
    call Call_000_08e9
    pop hl
    jp c, Jump_000_0706

    jp Jump_000_03ff


jr_000_05a8:
    call Call_000_0fb7
    jp c, Jump_000_03ff

jr_000_05ae:
    ld a, $08

Jump_000_05b0:
    ld [$cfc5], a
    jr jr_000_05c7

Jump_000_05b5:
    ld a, [$d736]
    bit 7, a
    jr z, jr_000_05c4

    ld b, $11
    ld hl, $4fd7

Jump_000_05c1:
    call Call_000_35d6

jr_000_05c4:
    call Call_000_2429

Call_000_05c7:
Jump_000_05c7:
jr_000_05c7:
    ld hl, $cd60
    res 2, [hl]
    ld a, [$d700]
    dec a
    jr nz, jr_000_05dc

    ld a, [$d736]
    bit 6, a
    jr nz, jr_000_05dc

    call Call_000_06a0

jr_000_05dc:
    call Call_000_0d27
    ld a, [$cfc5]
    and a
    jp nz, Jump_000_07ba

    ld a, [$d730]
    bit 7, a
    jr nz, jr_000_0603

    ld hl, $d13b
    dec [hl]
    ld a, [$d72c]
    bit 0, a

Jump_000_05f6:
    jr z, jr_000_0603

    ld hl, $d13c
    dec [hl]
    jr nz, jr_000_0603

    ld hl, $d72c

Call_000_0601:
    res 0, [hl]

Jump_000_0603:
jr_000_0603:
    ld a, [$d790]

Jump_000_0606:
    bit 7, a

Call_000_0608:
Jump_000_0608:
    jr z, jr_000_0619

    ld b, $07
    ld hl, $6997
    call Call_000_35d6
    ld a, [$da46]
    and a
    jp nz, Jump_000_073c

jr_000_0619:
    ld a, [$d057]
    and a
    jp nz, Jump_000_06b4

Jump_000_0620:
    ld a, $13
    call Call_000_3e6d
    ld a, [$d12d]

Jump_000_0628:
    and a
    jp nz, Jump_000_0931

Jump_000_062c:
    call Call_000_0683
    ld hl, $d736

Call_000_0632:
    res 2, [hl]
    jp nc, Jump_000_06b4

Jump_000_0637:
    ld hl, $d72d
    res 6, [hl]
    ld hl, $d733
    res 3, [hl]
    ld hl, $d126
    set 5, [hl]
    set 6, [hl]
    xor a
    ldh [$b4], a
    ld a, [$d35e]
    cp $a6
    jr nz, jr_000_0657

Jump_000_0652:
    ld hl, $d79b
    set 7, [hl]

jr_000_0657:
    ld hl, $d72e
    set 5, [hl]
    ld a, [$d35e]
    cp $28
    jp z, Jump_000_0670

    ld hl, $4a83
    ld b, $0f
    call Call_000_35d6
    ld a, d
    and a
    jr z, jr_000_0678

Call_000_0670:
Jump_000_0670:
    ld c, $0a
    call Call_000_3739
    jp Jump_000_03a6


jr_000_0678:
    ld a, $ff
    ld [$d057], a
    call Call_000_101b

Jump_000_0680:
    jp Jump_000_0931


Call_000_0683:
Jump_000_0683:
    ld a, [$d72d]
    bit 4, a

Call_000_0688:
    jr nz, jr_000_069e

    call Call_000_30fd

Call_000_068d:
    jr nz, jr_000_069e

    ld a, [$d72e]
    bit 4, a
    jr nz, jr_000_069e

    ld b, $0f
    ld hl, $6f12
    jp Jump_000_35d6


Call_000_069e:
jr_000_069e:
    and a
    ret


Call_000_06a0:
    ld a, [$cc57]
    and a
    ret nz

    ld a, [$d35e]
    cp $1c
    jr nz, jr_000_06b1

    ldh a, [$b4]
    and $70
    ret nz

Call_000_06b1:
jr_000_06b1:
    jp Jump_000_0d27


Jump_000_06b4:
    ld a, [$d3ae]
    and a
    jp z, Jump_000_07ba

    ld a, [$d3ae]
    ld b, $00

Jump_000_06c0:
    ld c, a

Call_000_06c1:
    ld a, [$d361]
    ld d, a
    ld a, [$d362]
    ld e, a
    ld hl, $d3af

Jump_000_06cc:
    ld a, [hl+]
    cp d
    jr nz, jr_000_072f

    ld a, [hl+]

Call_000_06d1:
    cp e
    jr nz, jr_000_0730

    push hl
    push bc
    ld hl, $d736
    set 2, [hl]
    ld b, $03
    ld hl, $449d

Jump_000_06e0:
    call Call_000_35d6
    pop bc
    pop hl
    jr c, jr_000_0735

    push hl
    push bc
    call Call_000_08e9
    pop bc
    pop hl
    jr nc, jr_000_0730

Jump_000_06f0:
    ld a, [$d733]
    bit 2, a
    jr nz, jr_000_0735

    push de
    push bc
    call Call_000_019a
    pop bc
    pop de
    ldh a, [$b4]

Jump_000_0700:
    and $f0

Call_000_0702:
    jr z, jr_000_0730

Jump_000_0704:
    jr jr_000_0735

Jump_000_0706:
    ld a, [$d3ae]
    ld c, a

Jump_000_070a:
    ld hl, $d3af

jr_000_070d:
    ld a, [hl+]
    ld b, a
    ld a, [$d361]

Jump_000_0712:
    cp b
    jr nz, jr_000_0726

    ld a, [hl+]
    ld b, a
    ld a, [$d362]
    cp b
    jr nz, jr_000_0727

    ld a, [hl+]
    ld [$d42f], a

Jump_000_0721:
    ld a, [hl]
    ldh [$8b], a
    jr jr_000_073c

jr_000_0726:
    inc hl

jr_000_0727:
    inc hl

Jump_000_0728:
    inc hl
    dec c
    jr nz, jr_000_070d

    jp Jump_000_03ff


jr_000_072f:
    inc hl

Call_000_0730:
jr_000_0730:
    inc hl
    inc hl
    jp Jump_000_07b5


jr_000_0735:
    ld a, [hl+]
    ld [$d42f], a
    ld a, [hl+]
    ldh [$8b], a

Jump_000_073c:
jr_000_073c:
    ld a, [$d3ae]
    sub c

Jump_000_0740:
    ld [$d73b], a

Call_000_0743:
Jump_000_0743:
    ld a, [$d35e]

Call_000_0746:
    ld [$d73c], a

Jump_000_0749:
    call Call_000_08e1

Call_000_074c:
    jr nz, jr_000_0770

Call_000_074e:
    ld a, [$d35e]

Jump_000_0751:
    ld [$d365], a
    ld a, [$d369]
    ld [$d366], a
    ldh a, [$8b]
    ld [$d35e], a
    cp $52
    jr nz, jr_000_076b

    ld a, $06
    ld [$d35d], a
    call Call_000_20ef

jr_000_076b:
    call Call_000_08c9
    jr jr_000_07aa

Call_000_0770:
jr_000_0770:
    ldh a, [$8b]
    cp $ff
    jr z, jr_000_079d

    ld [$d35e], a

Jump_000_0779:
    ld b, $1c
    ld hl, $4787
    call Call_000_35d6

Jump_000_0781:
    ld a, [$cd5b]
    dec a
    jr nz, jr_000_0791

    ld hl, $d732
    set 3, [hl]
    call Call_000_098f
    jr jr_000_0794

jr_000_0791:
    call Call_000_08c9

jr_000_0794:
    ld hl, $d736
    res 0, [hl]
    res 1, [hl]
    jr jr_000_07aa

jr_000_079d:
    ld a, [$d365]
    ld [$d35e], a
    call Call_000_08c9
    xor a
    ld [$d35d], a

jr_000_07aa:
    ld hl, $d736
    set 0, [hl]
    call Call_000_12da
    jp Jump_000_03a6


Jump_000_07b5:
    inc b
    dec c

Call_000_07b7:
    jp nz, Jump_000_06cc

Jump_000_07ba:
    ld a, [$d362]

Call_000_07bd:
    cp $ff
    jr nz, jr_000_07fe

Call_000_07c1:
    ld a, [$d387]
    ld [$d35e], a

Call_000_07c7:
    ld a, [$d38f]
    ld [$d362], a
    ld a, [$d361]
    ld c, a
    ld a, [$d38e]
    add c
    ld c, a
    ld [$d361], a
    ld a, [$d390]
    ld l, a
    ld a, [$d391]
    ld h, a

Jump_000_07e1:
    srl c
    jr z, jr_000_07f3

jr_000_07e5:
    ld a, [$d38d]
    add $06
    ld e, a
    ld d, $00
    ld b, $00
    add hl, de
    dec c
    jr nz, jr_000_07e5

jr_000_07f3:
    ld a, l
    ld [$d35f], a
    ld a, h
    ld [$d360], a
    jp Jump_000_08ad


jr_000_07fe:
    ld b, a
    ld a, [$d525]
    cp b
    jr nz, jr_000_0842

    ld a, [$d392]
    ld [$d35e], a
    ld a, [$d39a]
    ld [$d362], a
    ld a, [$d361]
    ld c, a
    ld a, [$d399]
    add c
    ld c, a
    ld [$d361], a
    ld a, [$d39b]
    ld l, a
    ld a, [$d39c]
    ld h, a
    srl c
    jr z, jr_000_0837

jr_000_0829:
    ld a, [$d398]
    add $06
    ld e, a
    ld d, $00
    ld b, $00
    add hl, de
    dec c
    jr nz, jr_000_0829

jr_000_0837:
    ld a, l
    ld [$d35f], a
    ld a, h
    ld [$d360], a
    jp Jump_000_08ad


jr_000_0842:
    ld a, [$d361]
    cp $ff
    jr nz, jr_000_0879

    ld a, [$d371]
    ld [$d35e], a
    ld a, [$d378]
    ld [$d361], a

Jump_000_0855:
    ld a, [$d362]
    ld c, a
    ld a, [$d379]
    add c
    ld c, a
    ld [$d362], a
    ld a, [$d37a]
    ld l, a
    ld a, [$d37b]
    ld h, a
    ld b, $00
    srl c
    add hl, bc
    ld a, l
    ld [$d35f], a
    ld a, h
    ld [$d360], a
    jp Jump_000_08ad


jr_000_0879:
    ld b, a
    ld a, [$d524]
    cp b
    jr nz, jr_000_08c6

    ld a, [$d37c]
    ld [$d35e], a
    ld a, [$d383]
    ld [$d361], a
    ld a, [$d362]
    ld c, a
    ld a, [$d384]
    add c
    ld c, a
    ld [$d362], a
    ld a, [$d385]
    ld l, a
    ld a, [$d386]
    ld h, a
    ld b, $00
    srl c
    add hl, bc
    ld a, l
    ld [$d35f], a
    ld a, h
    ld [$d360], a

Jump_000_08ad:
    call Call_000_107c
    call Call_000_2312
    ld b, $09
    call Call_000_3def
    ld b, $05
    ld hl, $785b
    call Call_000_35d6
    call Call_000_09fc
    jp Jump_000_0402


jr_000_08c6:
    jp Jump_000_03ff


Call_000_08c9:
    ld a, [$c448]
    cp $0b
    jr nz, jr_000_08d4

    ld a, $ad
    jr jr_000_08d6

jr_000_08d4:
    ld a, $b5

jr_000_08d6:
    call Call_000_23b1
    ld a, [$d35d]
    and a
    ret nz

    jp Jump_000_20ef


Call_000_08e1:
    ld a, [$d367]
    and a
    ret z

    cp $17
    ret


Call_000_08e9:
    ld a, [$d35e]
    cp $61
    jr z, jr_000_0912

    cp $c7
    jr z, jr_000_0917

    cp $c8
    jr z, jr_000_0917

Call_000_08f8:
    cp $ca
    jr z, jr_000_0917

    cp $52
    jr z, jr_000_0917

    ld a, [$d367]
    and a
    jr z, jr_000_0917

    cp $0d
    jr z, jr_000_0917

    cp $0e
    jr z, jr_000_0917

    cp $17
    jr z, jr_000_0917

Call_000_0912:
jr_000_0912:
    ld hl, $43ff
    jr jr_000_091a

jr_000_0917:
    ld hl, $444e

jr_000_091a:
    ld b, $03
    jp Jump_000_35d6


Call_000_091f:
    ld b, $03
    ld hl, $435f
    call Call_000_35d6
    ld a, [$d35d]
    and a
    jp z, Jump_000_20f6

    jp Jump_000_20ba


Jump_000_0931:
    call Call_000_20ef
    ld a, $08
    call Call_000_0951
    ld hl, $d72e
    res 5, [hl]
    ld a, $01
    ldh [$b8], a
    ld [$2000], a
    call $40b0
    call $62ce
    call Call_000_2312
    jp $5d5f


Call_000_0951:
    ld [$cfc7], a
    ld a, $ff
    ld [$c0ee], a
    call Call_000_23b1

jr_000_095c:
    ld a, [$cfc7]
    and a
    jr nz, jr_000_095c

    jp Jump_000_200e


Jump_000_0965:
    call Call_000_2429
    call Call_000_3dd7
    xor a
    ld [$cf0b], a
    ld [$d700], a
    ld [$d057], a
    ld [$d35d], a
    ld hl, $d732
    set 2, [hl]
    res 5, [hl]
    call Call_000_098f
    ld a, $01
    ldh [$b8], a
    ld [$2000], a
    call $62ce
    jp $5d5f


Call_000_098f:
    ld b, $1c
    ld hl, $45ba
    jp Jump_000_35d6


Call_000_0997:
Jump_000_0997:
    ld a, [$d700]
    dec a
    jr z, jr_000_09a4

    ldh a, [$d7]
    and a
    jr nz, jr_000_09b3

    jr jr_000_09a9

jr_000_09a4:
    call Call_000_09c5
    jr c, jr_000_09b3

Call_000_09a9:
Jump_000_09a9:
jr_000_09a9:
    xor a
    ld [$d700], a
    ld [$d11a], a
    jp Jump_000_104d


jr_000_09b3:
    ld a, [$d700]
    and a
    jp z, Jump_000_104d

Jump_000_09ba:
    dec a
    jp z, Jump_000_105d

    dec a
    jp z, Jump_000_1055

    jp Jump_000_104d


Call_000_09c5:
    ld a, [$d35e]
    cp $22
    jr z, jr_000_09e0

    cp $09
    jr z, jr_000_09e0

    ld a, [$d367]
    ld b, a
    ld hl, $09e2

jr_000_09d7:
    ld a, [hl+]
    cp b
    jr z, jr_000_09e0

    inc a
    jr nz, jr_000_09d7

    and a
    ret


jr_000_09e0:
    scf
    ret


    nop
    inc bc
    dec bc
    ld c, $11
    rst $38

Call_000_09e8:
    ld a, [$d52e]
    ld l, a
    ld a, [$d52f]
    ld h, a
    ld de, $9000
    ld bc, $0600

Jump_000_09f6:
    ld a, [$d52b]

Jump_000_09f9:
    jp Jump_000_17f7


Call_000_09fc:
    ld hl, $c6e8
    ld a, [$d3ad]

Jump_000_0a02:
    ld d, a
    ld bc, $0514

Call_000_0a06:
Jump_000_0a06:
jr_000_0a06:
    ld a, d
    ld [hl+], a
    dec bc

Call_000_0a09:
Jump_000_0a09:
    ld a, c
    or b
    jr nz, jr_000_0a06

    ld hl, $c6e8
    ld a, [$d369]
    ldh [$8c], a
    add $06
    ldh [$8b], a
    ld b, $00
    ld c, a
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $03
    add hl, bc
    ld a, [$d36a]
    ld e, a
    ld a, [$d36b]
    ld d, a
    ld a, [$d368]
    ld b, a

jr_000_0a2e:
    push hl
    ldh a, [$8c]
    ld c, a

jr_000_0a32:
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_000_0a32

    pop hl
    ldh a, [$8b]
    add l
    ld l, a
    jr nc, jr_000_0a40

    inc h

jr_000_0a40:
    dec b
    jr nz, jr_000_0a2e

    ld a, [$d371]
    cp $ff
    jr z, jr_000_0a6a

Call_000_0a4a:
    call Call_000_12bc
    ld a, [$d372]
    ld l, a
    ld a, [$d373]
    ld h, a

Call_000_0a55:
    ld a, [$d374]
    ld e, a
    ld a, [$d375]

Jump_000_0a5c:
    ld d, a
    ld a, [$d376]
    ldh [$8b], a
    ld a, [$d377]
    ldh [$8c], a
    call Call_000_0ade

jr_000_0a6a:
    ld a, [$d37c]

Call_000_0a6d:
    cp $ff
    jr z, jr_000_0a91

    call Call_000_12bc
    ld a, [$d37d]
    ld l, a
    ld a, [$d37e]
    ld h, a
    ld a, [$d37f]
    ld e, a
    ld a, [$d380]
    ld d, a

Call_000_0a84:
    ld a, [$d381]
    ldh [$8b], a
    ld a, [$d382]
    ldh [$8c], a
    call Call_000_0ade

jr_000_0a91:
    ld a, [$d387]
    cp $ff
    jr z, jr_000_0ab7

    call Call_000_12bc
    ld a, [$d388]
    ld l, a
    ld a, [$d389]
    ld h, a
    ld a, [$d38a]
    ld e, a

Call_000_0aa7:
    ld a, [$d38b]
    ld d, a
    ld a, [$d38c]
    ld b, a
    ld a, [$d38d]
    ldh [$8b], a
    call Call_000_0b02

jr_000_0ab7:
    ld a, [$d392]
    cp $ff
    jr z, jr_000_0add

    call Call_000_12bc
    ld a, [$d393]
    ld l, a

Call_000_0ac5:
    ld a, [$d394]
    ld h, a
    ld a, [$d395]
    ld e, a
    ld a, [$d396]
    ld d, a
    ld a, [$d397]
    ld b, a
    ld a, [$d398]
    ldh [$8b], a
    call Call_000_0b02

jr_000_0add:
    ret


Call_000_0ade:
    ld c, $03

jr_000_0ae0:
    push de
    push hl
    ldh a, [$8b]
    ld b, a

jr_000_0ae5:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_0ae5

Call_000_0aeb:
    pop hl
    pop de
    ldh a, [$8c]
    add l
    ld l, a
    jr nc, jr_000_0af4

    inc h

jr_000_0af4:
    ld a, [$d369]
    add $06
    add e
    ld e, a
    jr nc, jr_000_0afe

    inc d

Jump_000_0afe:
jr_000_0afe:
    dec c
    jr nz, jr_000_0ae0

Jump_000_0b01:
    ret


Call_000_0b02:
jr_000_0b02:
    push hl
    push de
    ld c, $03

Call_000_0b06:
jr_000_0b06:
    ld a, [hl+]

Jump_000_0b07:
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_0b06

    pop de
    pop hl
    ldh a, [$8b]
    add l
    ld l, a
    jr nc, jr_000_0b15

    inc h

jr_000_0b15:
    ld a, [$d369]
    add $06
    add e
    ld e, a
    jr nc, jr_000_0b1f

    inc d

jr_000_0b1f:
    dec b
    jr nz, jr_000_0b02

    ret


Call_000_0b23:
    xor a
    ldh [$8c], a
    ld a, [$d4b0]
    and a
    jr z, jr_000_0b58

    ld a, $35
    call Call_000_3e6d

Call_000_0b31:
    ld hl, $d4b1
    ld a, [$d4b0]
    ld b, a
    ld c, $00

jr_000_0b3a:
    inc c
    ld a, [hl+]
    cp d
    jr z, jr_000_0b42

    inc hl
    jr jr_000_0b55

jr_000_0b42:
    ld a, [hl+]
    cp e
    jr nz, jr_000_0b55

    push hl
    push bc
    ld hl, $d4d1
    ld b, $00
    dec c
    add hl, bc
    ld a, [hl]
    ldh [$8c], a
    pop bc
    pop hl
    ret


Call_000_0b55:
jr_000_0b55:
    dec b
    jr nz, jr_000_0b3a

jr_000_0b58:
    ld a, $35
    call Call_000_3e6d
    ld hl, $d532
    ld b, $03
    ld d, $20

jr_000_0b64:
    ld a, [hl+]
    cp c
    jr z, jr_000_0b6d

    dec b
    jr nz, jr_000_0b64

Call_000_0b6b:
    ld d, $10

Call_000_0b6d:
jr_000_0b6d:
    ld bc, $3c40
    ld a, [$c109]
    cp $04
    jr nz, jr_000_0b7e

    ld a, b
    sub d
    ld b, a
    ld a, $08
    jr jr_000_0b99

jr_000_0b7e:
    cp $00
    jr nz, jr_000_0b89

    ld a, b
    add d
    ld b, a
    ld a, $04

Jump_000_0b87:
    jr jr_000_0b99

jr_000_0b89:
    cp $0c
    jr nz, jr_000_0b94

    ld a, c
    add d
    ld c, a
    ld a, $01
    jr jr_000_0b99

jr_000_0b94:
    ld a, c
    sub d
    ld c, a
    ld a, $02

jr_000_0b99:
    ld [$d52a], a
    ld a, [$d4e1]
    and a
    ret z

    ld hl, $c110
    ld d, a
    ld e, $01

jr_000_0ba7:
    push hl
    ld a, [hl+]

Jump_000_0ba9:
    and a
    jr z, jr_000_0bbb

    inc l
    ld a, [hl+]
    inc a
    jr z, jr_000_0bbb

    inc l
    ld a, [hl+]
    cp b
    jr nz, jr_000_0bbb

    inc l
    ld a, [hl]
    cp c
    jr z, jr_000_0bc5

jr_000_0bbb:
    pop hl
    ld a, l
    add $10
    ld l, a
    inc e
    dec d
    jr nz, jr_000_0ba7

    ret


jr_000_0bc5:
    pop hl
    ld a, l
    and $f0
    inc a
    ld l, a
    set 7, [hl]
    ld a, e
    ldh [$8c], a
    ret


Call_000_0bd1:
    ld a, [$d736]
    bit 6, a
    jr nz, jr_000_0c0e

    ld a, [$cd38]
    and a
    jr nz, jr_000_0c0e

    ld a, [$d52a]
    ld d, a
    ld a, [$c10c]
    and d
    jr nz, jr_000_0c00

    xor a

Jump_000_0be9:
    ldh [$8c], a
    call Call_000_0b6b
    ldh a, [$8c]
    and a
    jr nz, jr_000_0c00

    ld hl, $0c7e
    call Call_000_0c2a
    jr c, jr_000_0c00

    call Call_000_0c10
    jr nc, jr_000_0c0e

jr_000_0c00:
    ld a, [$c02a]
    cp $b4
    jr z, jr_000_0c0c

    ld a, $b4
    call Call_000_23b1

jr_000_0c0c:
    scf
    ret


jr_000_0c0e:
    and a

Jump_000_0c0f:
    ret


Call_000_0c10:
    ld a, $35
    call Call_000_3e6d
    ld a, [$cfc6]
    ld c, a
    ld hl, $d530
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_000_0c1f:
    ld a, [hl+]
    cp $ff
    jr z, jr_000_0c28

    cp c
    ret z

    jr jr_000_0c1f

jr_000_0c28:
    scf
    ret


Call_000_0c2a:
    push hl
    ld a, $35
    call Call_000_3e6d
    push de
    push bc
    ld b, $06
    ld hl, $6672
    call Call_000_35d6
    pop bc
    pop de
    pop hl
    and a
    ld a, [$d736]
    bit 6, a
    ret nz

Call_000_0c44:
    ld a, [$c45c]
    ld [$cf0e], a

Call_000_0c4a:
    ld a, [$cfc6]
    ld c, a

jr_000_0c4e:
    ld a, [$d367]

Jump_000_0c51:
    ld b, a
    ld a, [hl+]
    cp $ff
    jr z, jr_000_0c7c

    cp b
    jr z, jr_000_0c5e

    inc hl

jr_000_0c5b:
    inc hl
    jr jr_000_0c4e

jr_000_0c5e:
    ld a, [$cf0e]
    ld b, a
    ld a, [hl]
    cp b
    jr z, jr_000_0c6d

    inc hl

Jump_000_0c67:
    ld a, [hl]
    cp b
    jr z, jr_000_0c74

    jr jr_000_0c5b

jr_000_0c6d:
    inc hl
    ld a, [hl]
    cp c
    jr z, jr_000_0c7a

    jr jr_000_0c4e

jr_000_0c74:
    dec hl
    ld a, [hl+]
    cp c
    inc hl
    jr nz, jr_000_0c4e

jr_000_0c7a:
    scf
    ret


jr_000_0c7c:
    and a
    ret


    ld de, $0520
    ld de, $0541
    inc bc
    jr nc, jr_000_0cb5

    ld de, $052a
    ld de, $2105
    inc bc
    ld d, d
    ld l, $03
    ld d, l
    ld l, $03
    ld d, [hl]
    ld l, $03
    jr nz, jr_000_0cc7

    inc bc
    ld e, [hl]
    ld l, $03
    ld e, a
    ld l, $ff
    inc bc
    inc d
    ld l, $03
    ld c, b
    ld l, $11
    inc d
    dec b
    rst $38

Call_000_0caa:
    ldh a, [$b8]
    push af
    ld a, [$d52b]
    ldh [$b8], a
    ld [$2000], a

jr_000_0cb5:
    ld a, [$d35f]
    ld e, a
    ld a, [$d360]
    ld d, a
    ld hl, $c508
    ld b, $05

Jump_000_0cc2:
jr_000_0cc2:
    push hl
    push de
    ld c, $06

jr_000_0cc6:
    push bc

jr_000_0cc7:
    push de
    push hl

Call_000_0cc9:
    ld a, [de]
    ld c, a
    call Call_000_0f1d
    pop hl
    pop de
    pop bc
    inc hl
    inc hl
    inc hl
    inc hl
    inc de
    dec c
    jr nz, jr_000_0cc6

    pop de
    ld a, [$d369]
    add $06
    add e
    ld e, a
    jr nc, jr_000_0ce4

    inc d

jr_000_0ce4:
    pop hl
    ld a, $60
    add l
    ld l, a
    jr nc, jr_000_0cec

    inc h

jr_000_0cec:
    dec b
    jr nz, jr_000_0cc2

    ld hl, $c508
    ld bc, $0000
    ld a, [$d363]
    and a
    jr z, jr_000_0cff

    ld bc, $0030

Call_000_0cfe:
    add hl, bc

jr_000_0cff:
    ld a, [$d364]
    and a
    jr z, jr_000_0d09

    ld bc, $0002
    add hl, bc

jr_000_0d09:
    ld de, $c3a0
    ld b, $12

jr_000_0d0e:
    ld c, $14

jr_000_0d10:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_0d10

    ld a, $04
    add l
    ld l, a
    jr nc, jr_000_0d1d

    inc h

jr_000_0d1d:
    dec b
    jr nz, jr_000_0d0e

    pop af
    ldh [$b8], a
    ld [$2000], a
    ret


Call_000_0d27:
Jump_000_0d27:
    ld a, [$c103]
    ld b, a
    ld a, [$c105]
    ld c, a
    ld hl, $cfc5
    dec [hl]
    jr nz, jr_000_0d43

    ld a, [$d361]
    add b
    ld [$d361], a
    ld a, [$d362]
    add c
    ld [$d362], a

jr_000_0d43:
    ld a, [$cfc5]
    cp $07
    jp nz, Jump_000_0e36

    ld a, c
    cp $01
    jr nz, jr_000_0d62

    ld a, [$d526]
    ld e, a
    and $e0
    ld d, a
    ld a, e
    add $02
    and $1f
    or d
    ld [$d526], a
    jr jr_000_0dad

jr_000_0d62:
    cp $ff
    jr nz, jr_000_0d78

    ld a, [$d526]
    ld e, a
    and $e0
    ld d, a
    ld a, e
    sub $02
    and $1f
    or d
    ld [$d526], a
    jr jr_000_0dad

jr_000_0d78:
    ld a, b
    cp $01
    jr nz, jr_000_0d94

    ld a, [$d526]
    add $40
    ld [$d526], a
    jr nc, jr_000_0dad

    ld a, [$d527]
    inc a
    and $03
    or $98
    ld [$d527], a
    jr jr_000_0dad

jr_000_0d94:
    cp $ff
    jr nz, jr_000_0dad

    ld a, [$d526]
    sub $40
    ld [$d526], a
    jr nc, jr_000_0dad

    ld a, [$d527]
    dec a
    and $03
    or $98
    ld [$d527], a

jr_000_0dad:
    ld a, c
    and a
    jr z, jr_000_0db1

jr_000_0db1:
    ld hl, $d364
    ld a, [hl]
    add c
    ld [hl], a
    cp $02
    jr nz, jr_000_0dc9

    xor a
    ld [hl], a
    ld hl, $d4e3
    inc [hl]
    ld de, $d35f
    call Call_000_0e65
    jr jr_000_0e0b

jr_000_0dc9:
    cp $ff
    jr nz, jr_000_0ddc

    ld a, $01
    ld [hl], a
    ld hl, $d4e3
    dec [hl]
    ld de, $d35f
    call Call_000_0e6f
    jr jr_000_0e0b

jr_000_0ddc:
    ld hl, $d363
    ld a, [hl]
    add b
    ld [hl], a
    cp $02
    jr nz, jr_000_0df7

    xor a
    ld [hl], a
    ld hl, $d4e2
    inc [hl]
    ld de, $d35f
    ld a, [$d369]
    call Call_000_0e79
    jr jr_000_0e0b

jr_000_0df7:
    cp $ff
    jr nz, jr_000_0e0b

Jump_000_0dfb:
    ld a, $01
    ld [hl], a

Call_000_0dfe:
    ld hl, $d4e2

Jump_000_0e01:
    dec [hl]
    ld de, $d35f
    ld a, [$d369]
    call Call_000_0e85

jr_000_0e0b:
    call Call_000_0caa
    ld a, [$c103]
    cp $01
    jr nz, jr_000_0e1a

    call Call_000_0eb2
    jr jr_000_0e36

jr_000_0e1a:
    cp $ff
    jr nz, jr_000_0e23

    call Call_000_0e91
    jr jr_000_0e36

jr_000_0e23:
    ld a, [$c105]
    cp $01
    jr nz, jr_000_0e2f

    call Call_000_0ed3
    jr jr_000_0e36

jr_000_0e2f:
    cp $ff
    jr nz, jr_000_0e36

    call Call_000_0f08

Jump_000_0e36:
jr_000_0e36:
    ld a, [$c103]
    ld b, a

Jump_000_0e3a:
    ld a, [$c105]
    ld c, a
    sla b
    sla c
    ldh a, [$af]
    add b
    ldh [$af], a

Call_000_0e47:
    ldh a, [$ae]
    add c
    ldh [$ae], a
    ld hl, $c114
    ld a, [$d4e1]
    and a
    jr z, jr_000_0e64

    ld e, a

jr_000_0e56:
    ld a, [hl]
    sub b
    ld [hl+], a
    inc l
    ld a, [hl]
    sub c
    ld [hl], a
    ld a, $0e
    add l
    ld l, a
    dec e
    jr nz, jr_000_0e56

jr_000_0e64:
    ret


Call_000_0e65:
    ld a, [de]
    add $01
    ld [de], a
    ret nc

    inc de
    ld a, [de]
    inc a
    ld [de], a
    ret


Call_000_0e6f:
    ld a, [de]
    sub $01
    ld [de], a
    ret nc

    inc de
    ld a, [de]
    dec a
    ld [de], a
    ret


Call_000_0e79:
    add $06
    ld b, a
    ld a, [de]
    add b
    ld [de], a
    ret nc

    inc de
    ld a, [de]

Jump_000_0e82:
    inc a
    ld [de], a
    ret


Call_000_0e85:
    add $06
    ld b, a
    ld a, [de]
    sub b
    ld [de], a
    ret nc

    inc de
    ld a, [de]
    dec a
    ld [de], a
    ret


Call_000_0e91:
    ld hl, $c3a0
    call Call_000_0ea6
    ld a, [$d526]
    ldh [$d1], a
    ld a, [$d527]
    ldh [$d2], a
    ld a, $02
    ldh [$d0], a
    ret


Call_000_0ea6:
    ld de, $cbfc
    ld c, $28

jr_000_0eab:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_0eab

    ret


Call_000_0eb2:
    ld hl, $c4e0
    call Call_000_0ea6
    ld a, [$d526]
    ld l, a
    ld a, [$d527]
    ld h, a
    ld bc, $0200
    add hl, bc
    ld a, h
    and $03
    or $98
    ldh [$d2], a
    ld a, l
    ldh [$d1], a
    ld a, $02
    ldh [$d0], a
    ret


Call_000_0ed3:
    ld hl, $c3b2
    call Call_000_0ef2
    ld a, [$d526]
    ld c, a
    and $e0
    ld b, a
    ld a, c
    add $12
    and $1f
    or b
    ldh [$d1], a
    ld a, [$d527]
    ldh [$d2], a
    ld a, $01
    ldh [$d0], a
    ret


Call_000_0ef2:
    ld de, $cbfc
    ld c, $12

jr_000_0ef7:
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]

Jump_000_0efb:
    ld [de], a
    inc de
    ld a, $13
    add l

Jump_000_0f00:
    ld l, a
    jr nc, jr_000_0f04

Jump_000_0f03:
    inc h

Jump_000_0f04:
jr_000_0f04:
    dec c
    jr nz, jr_000_0ef7

    ret


Call_000_0f08:
    ld hl, $c3a0
    call Call_000_0ef2
    ld a, [$d526]
    ldh [$d1], a
    ld a, [$d527]
    ldh [$d2], a
    ld a, $01
    ldh [$d0], a
    ret


Call_000_0f1d:
    push hl
    ld a, [$d52c]
    ld l, a
    ld a, [$d52d]
    ld h, a
    ld a, c
    swap a
    ld b, a
    and $f0
    ld c, a
    ld a, b
    and $0f
    ld b, a
    add hl, bc
    ld d, h
    ld e, l
    pop hl
    ld c, $04

jr_000_0f37:
    push bc
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl], a
    inc de
    ld bc, $0015
    add hl, bc

Call_000_0f48:
    pop bc

Call_000_0f49:
    dec c
    jr nz, jr_000_0f37

    ret


Call_000_0f4d:
    xor a
    ld [$c103], a
    ld [$c105], a
    call Call_000_101b
    call Call_000_019a
    ld a, [$d733]
    bit 3, a
    jr nz, jr_000_0f72

    ld a, [$d35e]
    cp $1c
    jr nz, jr_000_0f72

    ldh a, [$b4]
    and $f3
    jr nz, jr_000_0f72

    ld a, $80
    ldh [$b4], a

jr_000_0f72:
    ld a, [$d730]
    bit 7, a
    ret z

    ldh a, [$b4]
    ld b, a
    ld a, [$cd3b]
    and b
    ret nz

    ld hl, $cd38
    dec [hl]

Call_000_0f84:
    ld a, [hl]
    cp $ff
    jr z, jr_000_0f9b

    ld hl, $ccd3
    add l
    ld l, a
    jr nc, jr_000_0f91

    inc h

jr_000_0f91:
    ld a, [hl]
    ldh [$b4], a
    and a
    ret nz

    ldh [$b3], a
    ldh [$b2], a
    ret


jr_000_0f9b:
    xor a
    ld [$cd3a], a
    ld [$cd38], a
    ld [$ccd3], a
    ld [$cd6b], a
    ldh [$b4], a
    ld hl, $d736
    ld a, [hl]
    and $f8
    ld [hl], a

Jump_000_0fb1:
    ld hl, $d730
    res 7, [hl]
    ret


Call_000_0fb7:
    ld a, [$d730]
    bit 7, a
    jp nz, Jump_000_1004

    ld a, [$d52a]
    ld d, a
    ld a, [$c10c]
    and d

Jump_000_0fc7:
    jr nz, jr_000_0fe5

    ld hl, $0ca0
    call Call_000_0c2a
    jr c, jr_000_0ff5

Jump_000_0fd1:
    ld a, $35
    call Call_000_3e6d
    ld a, [$cfc6]
    cp $14
    jr z, jr_000_1004

    cp $32
    jr z, jr_000_1012

    cp $48
    jr z, jr_000_1004

jr_000_0fe5:
    ld hl, $d530
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_000_0feb:
    ld a, [hl+]
    cp $ff
    jr z, jr_000_0ff5

    cp c
    jr z, jr_000_1006

    jr jr_000_0feb

jr_000_0ff5:
    ld a, [$c02a]
    cp $b4
    jr z, jr_000_1001

Jump_000_0ffc:
    ld a, $b4

Jump_000_0ffe:
    call Call_000_23b1

Call_000_1001:
jr_000_1001:
    scf
    jr jr_000_1005

Jump_000_1004:
jr_000_1004:
    and a

jr_000_1005:
    ret


jr_000_1006:
    xor a
    ld [$d700], a
    call Call_000_0997
    call Call_000_2307
    jr jr_000_1004

Jump_000_1012:
jr_000_1012:
    ld a, [$d367]
    cp $0e
    jr nz, jr_000_1004

    jr jr_000_1006

Call_000_101b:
    push hl
    push de
    push bc
    ld b, $03
    ld hl, $7225
    call Call_000_35d6

Call_000_1026:
    ld a, [$cd60]
    bit 1, a
    jr z, jr_000_1035

    ld b, $03
    ld hl, $72b5
    call Call_000_35d6

jr_000_1035:
    pop bc
    pop de
    pop hl
    call Call_000_310e

Jump_000_103b:
    ld a, [$d35e]
    call Call_000_12bc

Jump_000_1041:
    ld hl, $d36e
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $104c
    push de
    jp hl


Call_000_104c:
    ret


Jump_000_104d:
    ld de, $4180
    ld hl, $8000
    jr jr_000_1063

Jump_000_1055:
    ld de, $76c0
    ld hl, $8000
    jr jr_000_1063

Jump_000_105d:
    ld de, $4000
    ld hl, $8000

jr_000_1063:
    push de
    push hl
    ld bc, $050c
    call Call_000_1848
    pop hl
    pop de
    ld a, $c0
    add e
    ld e, a
    jr nc, jr_000_1074

    inc d

jr_000_1074:
    set 3, h
    ld bc, $050c

Call_000_1079:
    jp Jump_000_1848


Call_000_107c:
    ld b, $03
    ld hl, $7113
    call Call_000_35d6
    ld a, [$d367]
    ld [$d119], a
    ld a, [$d35e]
    call Call_000_12bc
    ld a, [$d367]
    ld b, a
    res 7, a
    ld [$d367], a
    ldh [$8b], a
    bit 7, b
    ret nz

    ld hl, $01ae
    ld a, [$d35e]
    sla a
    jr nc, jr_000_10a9

    inc h

Call_000_10a9:
jr_000_10a9:
    add l
    ld l, a
    jr nc, jr_000_10ae

Jump_000_10ad:
    inc h

jr_000_10ae:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $d367
    ld c, $0a

jr_000_10b6:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_10b6

    ld a, $ff
    ld [$d371], a
    ld [$d37c], a
    ld [$d387], a

Call_000_10c7:
    ld [$d392], a
    ld a, [$d370]
    ld b, a
    bit 3, b
    jr z, jr_000_10d8

    ld de, $d371
    call Call_000_1238

Jump_000_10d8:
jr_000_10d8:
    bit 2, b
    jr z, jr_000_10e2

    ld de, $d37c
    call Call_000_1238

jr_000_10e2:
    bit 1, b
    jr z, jr_000_10ec

    ld de, $d387
    call Call_000_1238

jr_000_10ec:
    bit 0, b
    jr z, jr_000_10f6

    ld de, $d392
    call Call_000_1238

jr_000_10f6:
    ld a, [hl+]
    ld [$d3a9], a
    ld a, [hl+]
    ld [$d3aa], a

Jump_000_10fe:
    push hl

Call_000_10ff:
    ld a, [$d3a9]
    ld l, a
    ld a, [$d3aa]
    ld h, a
    ld de, $d3ad
    ld a, [hl+]
    ld [de], a
    ld a, [hl+]
    ld [$d3ae], a
    and a
    jr z, jr_000_1122

    ld c, a
    ld de, $d3af

jr_000_1117:
    ld b, $04

jr_000_1119:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_1119

    dec c
    jr nz, jr_000_1117

jr_000_1122:
    ld a, [hl+]
    ld [$d4b0], a
    and a
    jr z, jr_000_1150

    ld c, a
    ld de, $d4d1
    ld a, d
    ldh [$95], a
    ld a, e
    ldh [$96], a
    ld de, $d4b1

jr_000_1136:
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    push de
    ldh a, [$95]
    ld d, a
    ldh a, [$96]
    ld e, a
    ld a, [hl+]

Call_000_1144:
    ld [de], a
    inc de
    ld a, d
    ldh [$95], a
    ld a, e
    ldh [$96], a

Jump_000_114c:
    pop de
    dec c
    jr nz, jr_000_1136

jr_000_1150:
    ld a, [$d72e]
    bit 5, a
    jp nz, Jump_000_11f8

    ld a, [hl+]
    ld [$d4e1], a
    push hl
    ld hl, $c110
    ld de, $c210

Call_000_1163:
    xor a
    ld b, $f0

jr_000_1166:
    ld [hl+], a
    ld [de], a
    inc e
    dec b
    jr nz, jr_000_1166

    ld hl, $c112
    ld de, $0010
    ld c, $0f

jr_000_1174:
    ld [hl], $ff
    add hl, de
    dec c
    jr nz, jr_000_1174

    pop hl
    ld de, $c110
    ld a, [$d4e1]
    and a

Call_000_1182:
Jump_000_1182:
    jp z, Jump_000_11f8

    ld b, a
    ld c, $00

Jump_000_1188:
    ld a, [hl+]
    ld [de], a
    inc d
    ld a, $04
    add e
    ld e, a
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ld a, [hl+]
    ldh [$8d], a
    ld a, [hl+]
    ldh [$8e], a
    push bc
    push hl
    ld b, $00
    ld hl, $d4e4
    add hl, bc

Call_000_11a5:
    ldh a, [$8d]
    ld [hl+], a
    ldh a, [$8e]
    ld [hl], a
    ldh a, [$8e]
    ldh [$8d], a
    and $3f

Jump_000_11b1:
    ld [hl], a
    pop hl
    ldh a, [$8d]
    bit 6, a
    jr nz, jr_000_11bf

    bit 7, a
    jr nz, jr_000_11d3

    jr jr_000_11e3

jr_000_11bf:
    ld a, [hl+]
    ldh [$8d], a
    ld a, [hl+]
    ldh [$8e], a
    push hl
    ld hl, $d504
    add hl, bc
    ldh a, [$8d]
    ld [hl+], a
    ldh a, [$8e]
    ld [hl], a
    pop hl
    jr jr_000_11ec

jr_000_11d3:
    ld a, [hl+]
    ldh [$8d], a
    push hl
    ld hl, $d504
    add hl, bc
    ldh a, [$8d]

Jump_000_11dd:
    ld [hl+], a
    xor a
    ld [hl], a
    pop hl
    jr jr_000_11ec

jr_000_11e3:
    push hl
    ld hl, $d504
    add hl, bc
    xor a
    ld [hl+], a
    ld [hl], a
    pop hl

jr_000_11ec:
    pop bc
    dec d
    ld a, $0a
    add e
    ld e, a

Call_000_11f2:
    inc c
    inc c
    dec b
    jp nz, Jump_000_1188

Jump_000_11f8:
    ld a, $19
    call Call_000_3e6d
    ld hl, $4eb8

Call_000_1200:
Jump_000_1200:
    ld b, $03
    call Call_000_35d6

Jump_000_1205:
    pop hl
    ld a, [$d368]
    add a

Jump_000_120a:
    ld [$d524], a

Jump_000_120d:
    ld a, [$d369]
    add a
    ld [$d525], a

Jump_000_1214:
    ld a, [$d35e]
    ld c, a
    ld b, $00
    ldh a, [$b8]
    push af
    ld a, $03
    ldh [$b8], a
    ld [$2000], a

Jump_000_1224:
    ld hl, $404d
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld [$d35b], a
    ld a, [hl]
    ld [$d35c], a
    pop af
    ldh [$b8], a
    ld [$2000], a
    ret


Call_000_1238:
    ld c, $0b

jr_000_123a:
    ld a, [hl+]
    ld [de], a
    inc de

Jump_000_123d:
    dec c
    jr nz, jr_000_123a

    ret


Call_000_1241:
    ldh a, [$b8]
    push af
    call Call_000_0061
    ld a, $98
    ld [$d527], a

Jump_000_124c:
    xor a
    ld [$d526], a
    ldh [$af], a

Jump_000_1252:
    ldh [$ae], a
    ld [$cfc5], a
    ld [$d119], a
    ld [$d11a], a
    ld [$d3a8], a
    call Call_000_36a0
    call Call_000_107c
    ld b, $05
    ld hl, $785b
    call Call_000_35d6
    call Call_000_09fc
    call Call_000_09e8

Call_000_1274:
    call Call_000_0caa
    ld hl, $c3a0
    ld de, $9800
    ld b, $12

jr_000_127f:
    ld c, $14

jr_000_1281:
    ld a, [hl+]
    ld [de], a
    inc e
    dec c
    jr nz, jr_000_1281

    ld a, $0c
    add e
    ld e, a
    jr nc, jr_000_128e

    inc d

jr_000_128e:
    dec b
    jr nz, jr_000_127f

    ld a, $01
    ld [$cfcb], a
    call Call_000_007b
    ld b, $09
    call Call_000_3def
    call Call_000_0997
    ld a, [$d732]
    and $18

Call_000_12a6:
    jr nz, jr_000_12b5

    ld a, [$d733]
    bit 1, a
    jr nz, jr_000_12b5

    call Call_000_235f
    call Call_000_2312

jr_000_12b5:
    pop af
    ldh [$b8], a
    ld [$2000], a
    ret


Call_000_12bc:
    push hl
    push bc

Call_000_12be:
    ld c, a
    ld b, $00
    ld a, $03
    call Call_000_35bc
    ld hl, $423d
    add hl, bc
    ld a, [hl]
    ldh [$e8], a
    call Call_000_35cd
    ldh a, [$e8]
    ldh [$b8], a
    ld [$2000], a
    pop bc
    pop hl
    ret


Call_000_12da:
    ld a, $1e
    ld [$d13a], a
    ld hl, $d730
    ld a, [hl]
    or $26
    ld [hl], a

Call_000_12e6:
    ret


Call_000_12e7:
    ld hl, $d728
    res 0, [hl]
    ret


Jump_000_12ed:
    ld b, $05
    ld hl, $0997

Call_000_12f2:
    call Call_000_35d6
    jp Jump_000_2307


Call_000_12f8:
jr_000_12f8:
    call Call_000_20af
    push bc
    call Call_000_3831
    pop bc
    ldh a, [$b4]
    cp $46

Call_000_1304:
    jr z, jr_000_1311

Call_000_1306:
Jump_000_1306:
    ldh a, [$b5]
    and $09
    jr nz, jr_000_1311

    dec c
    jr nz, jr_000_12f8

    and a
    ret


jr_000_1311:
    scf
    ret


Call_000_1313:
    ld b, a
    ldh a, [$b8]
    push af
    ld a, [$cf12]
    ldh [$b8], a
    ld [$2000], a
    ld a, b
    add a
    add a
    ld c, a
    ld b, $00
    add hl, bc
    ld bc, $0004
    ld de, $d35f
    call Call_000_00b5
    pop af
    ldh [$b8], a
    ld [$2000], a
    ret


Call_000_1336:
    push hl
    push de
    push bc
    ld a, $71
    ld [hl+], a
    ld a, $62
    ld [hl+], a
    push hl
    ld a, $63

Jump_000_1342:
jr_000_1342:
    ld [hl+], a
    dec d

Jump_000_1344:
    jr nz, jr_000_1342

    ld a, [$cf94]
    dec a
    ld a, $6d
    jr z, jr_000_134f

    dec a

jr_000_134f:
    ld [hl], a
    pop hl
    ld a, e
    and a
    jr nz, jr_000_135b

Call_000_1355:
    ld a, c
    and a
    jr z, jr_000_136e

    ld e, $01

jr_000_135b:
    ld a, e
    sub $08
    jr c, jr_000_136a

    ld e, a

Call_000_1361:
    ld a, $6b
    ld [hl+], a
    ld a, e
    and a
    jr z, jr_000_136e

    jr jr_000_135b

jr_000_136a:
    ld a, $63
    add e
    ld [hl], a

jr_000_136e:
    pop bc
    pop de
    pop hl

Call_000_1371:
    ret


Call_000_1372:
    ld hl, $45b6
    ld b, $01
    jp Jump_000_35d6


    ld hl, $d0dc
    ld e, b
    ld d, $00
    add hl, de
    ld a, c
    ld [hl], a
    ret


Call_000_1384:
Jump_000_1384:
    ld a, $01
    ld [$d0aa], a

Call_000_1389:
Jump_000_1389:
    push hl
    ld a, [$d11e]
    push af
    ld a, [$cf91]
    ld [$d11e], a
    ld a, $3a
    call Call_000_3e6d
    ld hl, $d11e
    ld a, [hl]
    pop bc
    ld [hl], b
    and a
    pop hl
    jr z, jr_000_13a7

    cp $98

Call_000_13a5:
    jr c, jr_000_13ad

jr_000_13a7:
    ld a, $01

Call_000_13a9:
    ld [$cf91], a
    ret


jr_000_13ad:
    push hl
    ld de, $9000
    call Call_000_1665
    pop hl

Call_000_13b5:
    ldh a, [$b8]
    push af
    ld a, $0f
    ldh [$b8], a
    ld [$2000], a
    xor a
    ldh [$e1], a
    call $70d0
    xor a
    ld [$d0aa], a
    pop af
    ldh [$b8], a
    ld [$2000], a
    ret


Call_000_13d0:
Jump_000_13d0:
    call Call_000_13d9
    call Call_000_23b1
    jp Jump_000_3748


Call_000_13d9:
    dec a
    ld c, a
    ld b, $00
    ld hl, $5446
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, $0e
    call Call_000_35bc
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld [$c0f1], a
    ld a, [hl]
    ld [$c0f2], a

Call_000_13f2:
    call Call_000_35cd
    ld a, b
    ld c, $14
    rlca
    add b
    add c
    ret


Call_000_13fc:
    ldh a, [$d7]
    push af

Call_000_13ff:
    xor a
    ldh [$d7], a
    call Call_000_3dd4
    call Call_000_0082
    call Call_000_1420
    call Call_000_14d4
    jp Jump_000_145a


Call_000_1411:
    ldh a, [$d7]
    push af
    xor a

Call_000_1415:
    ldh [$d7], a
    call Call_000_1420
    call Call_000_14d9
    jp Jump_000_145a


Call_000_1420:
    ld a, $01
    call Call_000_35bc
    call Call_000_36c0
    ld hl, $d730
    set 6, [hl]
    xor a
    ld [$cc49], a
    ld [$cc37], a
    ld hl, $cc24
    inc a
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, [$cc2b]
    push af
    ld [hl+], a
    inc hl

Jump_000_1441:
    ld a, [$d163]
    and a
    jr z, jr_000_1448

    dec a

jr_000_1448:
    ld [hl+], a
    ld a, [$d11f]
    and a

Jump_000_144d:
    ld a, $03
    jr z, jr_000_1456

    xor a
    ld [$d11f], a
    inc a

jr_000_1456:
    ld [hl+], a
    pop af
    ld [hl], a
    ret


Call_000_145a:
Jump_000_145a:
jr_000_145a:
    ld a, $01
    ld [$cc4a], a
    ld a, $40
    ld [$d09b], a
    call Call_000_3ac2
    call Call_000_3bec
    ld b, a
    xor a
    ld [$d09b], a
    ld a, [$cc26]
    ld [$cc2b], a
    ld hl, $d730
    res 6, [hl]
    ld a, [$cc35]
    and a
    jp nz, Jump_000_14ac

    pop af
    ldh [$d7], a
    bit 1, b
    jr nz, jr_000_14a7

    ld a, [$d163]
    and a

Call_000_148c:
Jump_000_148c:
    jr z, jr_000_14a7

    ld a, [$cc26]

Call_000_1491:
    ld [$cf92], a
    ld hl, $d164

Jump_000_1497:
    ld b, $00
    ld c, a
    add hl, bc
    ld a, [hl]
    ld [$cf91], a
    ld [$cfd9], a
    call Call_000_35cd
    and a
    ret


jr_000_14a7:
    call Call_000_35cd
    scf
    ret


Jump_000_14ac:
    bit 1, b
    jr z, jr_000_14c4

    ld b, $04
    ld hl, $72ed
    call Call_000_35d6
    xor a
    ld [$cc35], a
    ld [$d07d], a
    call Call_000_14d9

Call_000_14c2:
    jr jr_000_145a

jr_000_14c4:
    ld a, [$cc26]
    ld [$cf92], a
    ld b, $04
    ld hl, $7613
    call Call_000_35d6
    jr jr_000_145a

Call_000_14d4:
Jump_000_14d4:
    ld hl, $6cd2
    jr jr_000_14dc

Call_000_14d9:
    ld hl, $6ce3

jr_000_14dc:
    ld b, $04
    jp Jump_000_35d6


Call_000_14e1:
    push de
    dec de
    dec de
    ld a, [de]
    ld b, a
    dec de
    ld a, [de]
    or b
    pop de
    jr nz, jr_000_14f6

    ld a, $85
    ld [hl+], a
    ld a, $8d
    ld [hl+], a

Call_000_14f2:
    ld [hl], $93
    and a
    ret


Call_000_14f6:
jr_000_14f6:
    ldh a, [$b8]
    push af
    ld a, $1d
    ldh [$b8], a
    ld [$2000], a

Jump_000_1500:
    call $47de

Jump_000_1503:
    pop bc

Jump_000_1504:
    ld a, b

Call_000_1505:
Jump_000_1505:
    ldh [$b8], a

Call_000_1507:
Jump_000_1507:
    ld [$2000], a

Call_000_150a:
Jump_000_150a:
    ret


Call_000_150b:
    ld a, $6e

Jump_000_150d:
    ld [hl+], a
    ld c, $02
    ld a, [$cfb9]

Jump_000_1513:
    cp $64
    jr c, jr_000_1523

    dec hl
    inc c
    jr jr_000_1523

    ld a, $6e
    ld [hl+], a
    ld c, $03
    ld a, [$cfb9]

Call_000_1523:
jr_000_1523:
    ld [$d11e], a

Call_000_1526:
    ld de, $d11e
    ld b, $41
    jp Jump_000_3c5f


    ld hl, $d0dc
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    ret


Call_000_1537:
    ldh a, [$b8]

Call_000_1539:
    push af
    ld a, $0e
    ldh [$b8], a
    ld [$2000], a
    push bc
    push de
    push hl
    ld a, [$d11e]
    push af
    ld a, [$d0b5]
    ld [$d11e], a

Jump_000_154e:
    ld de, $79e8
    ld b, $66
    cp $b6
    jr z, jr_000_1588

    ld de, $66b5
    cp $b8
    jr z, jr_000_1588

    ld de, $6536
    ld b, $77
    cp $b7
    jr z, jr_000_1588

    cp $15
    jr z, jr_000_1592

    ld a, $3a
    call Call_000_3e6d
    ld a, [$d11e]
    dec a
    ld bc, $001c
    ld hl, $43de
    call Call_000_3a87
    ld de, $d0b8
    ld bc, $001c

Jump_000_1583:
    call Call_000_00b5
    jr jr_000_15a0

jr_000_1588:
    ld hl, $d0c2
    ld [hl], b
    inc hl
    ld [hl], e
    inc hl
    ld [hl], d
    jr jr_000_15a0

jr_000_1592:
    ld hl, $425b
    ld de, $d0b8
    ld bc, $001c
    ld a, $01
    call Call_000_009d

Call_000_15a0:
jr_000_15a0:
    ld a, [$d0b5]
    ld [$d0b8], a
    pop af

Call_000_15a7:
    ld [$d11e], a

Jump_000_15aa:
    pop hl
    pop de
    pop bc
    pop af
    ldh [$b8], a
    ld [$2000], a
    ret


Call_000_15b4:
    ld a, [$cf92]

Call_000_15b7:
    ld hl, $d2b5

Call_000_15ba:
    push hl
    push bc
    call Call_000_3a7d
    ld de, $cd6d
    push de
    ld bc, $000b
    call Call_000_00b5
    pop de
    pop bc
    pop hl
    ret


Call_000_15cd:
Jump_000_15cd:
    ld b, c
    res 7, c
    res 6, c
    res 5, c
    bit 5, b
    jr z, jr_000_15df

    bit 7, b
    jr nz, jr_000_15df

    ld [hl], $f0
    inc hl

jr_000_15df:
    ld a, [de]
    swap a
    call Call_000_1604
    ld a, [de]
    call Call_000_1604
    inc de
    dec c
    jr nz, jr_000_15df

    bit 7, b
    jr z, jr_000_1603

    bit 6, b
    jr nz, jr_000_15f6

    dec hl

jr_000_15f6:
    bit 5, b
    jr z, jr_000_15fd

    ld [hl], $f0
    inc hl

jr_000_15fd:
    ld [hl], $f6
    call Call_000_38d3
    inc hl

jr_000_1603:
    ret


Call_000_1604:
    and $0f
    and a
    jr z, jr_000_161e

Jump_000_1609:
    bit 7, b

Call_000_160b:
    jr z, jr_000_1618

    bit 5, b
    jr z, jr_000_1616

    ld [hl], $f0
    inc hl
    res 5, b

jr_000_1616:
    res 7, b

jr_000_1618:
    add $f6
    ld [hl+], a
    jp Jump_000_38d3


jr_000_161e:
    bit 7, b
    jr z, jr_000_1618

Jump_000_1622:
    bit 6, b
    ret nz

    inc hl

Jump_000_1626:
    ret


Call_000_1627:
    ld bc, $d0b8

Jump_000_162a:
    add hl, bc
    ld a, [hl+]

Jump_000_162c:
    ld [$d0ab], a
    ld a, [hl]
    ld [$d0ac], a
    ld a, [$cf91]
    ld b, a
    cp $15
    ld a, $01
    jr z, jr_000_1662

    ld a, b
    cp $b6
    ld a, $0b
    jr z, jr_000_1662

    ld a, b
    cp $1f
    ld a, $09
    jr c, jr_000_1662

    ld a, b
    cp $4a
    ld a, $0a
    jr c, jr_000_1662

    ld a, b
    cp $74
    ld a, $0b
    jr c, jr_000_1662

    ld a, b
    cp $99
    ld a, $0c
    jr c, jr_000_1662

    ld a, $0d

Call_000_1662:
jr_000_1662:
    jp Jump_000_24fd


Call_000_1665:
    push de
    ld hl, $000b
    call Call_000_1627
    ld hl, $d0c2
    ld a, [hl+]
    ld c, a
    pop de

Jump_000_1672:
    push de
    and $0f
    ldh [$8b], a
    ld b, a
    ld a, $07
    sub b
    inc a
    srl a
    ld b, a
    add a
    add a
    add a
    sub b
    ldh [$8d], a
    ld a, c
    swap a
    and $0f
    ld b, a
    add a
    add a
    add a
    ldh [$8c], a
    ld a, $07
    sub b
    ld b, a
    ldh a, [$8d]
    add b
    add a
    add a
    add a
    ldh [$8d], a
    xor a
    ld [$4000], a
    ld hl, $a000
    call Call_000_16df
    ld de, $a188
    ld hl, $a000
    call Call_000_16c2
    ld hl, $a188
    call Call_000_16df
    ld de, $a310
    ld hl, $a188
    call Call_000_16c2
    pop de
    jp Jump_000_16ea


Call_000_16c2:
    ldh a, [$8d]
    ld b, $00
    ld c, a
    add hl, bc
    ldh a, [$8b]

jr_000_16ca:
    push af
    push hl
    ldh a, [$8c]
    ld c, a

jr_000_16cf:
    ld a, [de]

Call_000_16d0:
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_000_16cf

    pop hl
    ld bc, $0038
    add hl, bc
    pop af
    dec a
    jr nz, jr_000_16ca

    ret


Call_000_16df:
    ld bc, $0188

jr_000_16e2:
    xor a
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_000_16e2

    ret


Call_000_16ea:
Jump_000_16ea:
    xor a
    ld [$4000], a
    push de
    ld hl, $a497
    ld de, $a30f
    ld bc, $a187
    ld a, $c4
    ldh [$8b], a

jr_000_16fc:
    ld a, [de]
    dec de
    ld [hl-], a
    ld a, [bc]

Call_000_1700:
Jump_000_1700:
    dec bc

Jump_000_1701:
    ld [hl-], a

Jump_000_1702:
    ld a, [de]

Call_000_1703:
    dec de

Call_000_1704:
    ld [hl-], a
    ld a, [bc]

Jump_000_1706:
    dec bc
    ld [hl-], a
    ldh a, [$8b]
    dec a
    ldh [$8b], a
    jr nz, jr_000_16fc

    ld a, [$d0aa]
    and a
    jr z, jr_000_1723

    ld bc, $0310
    ld hl, $a188

jr_000_171b:
    swap [hl]
    inc hl
    dec bc
    ld a, b
    or c
    jr nz, jr_000_171b

jr_000_1723:
    pop hl
    ld de, $a188
    ld c, $31
    ldh a, [$b8]
    ld b, a
    jp Jump_000_1848


    dec bc
    inc c
    inc de
    dec d
    jr @+$01

    nop
    db $10
    dec de
    jr nz, @+$23

    inc hl
    inc l
    dec l
    ld l, $30
    ld sp, $3933
    inc a
    ld a, $52
    ld d, h
    ld e, b
    ld e, e
    rst $38
    ld bc, $0302
    ld de, $1312
    inc d
    inc e
    ld a, [de]

Jump_000_1752:
    rst $38
    ld de, $1c1a
    inc a
    ld e, [hl]
    rst $38

Jump_000_1759:
    ld de, $1916
    dec hl

Call_000_175d:
Jump_000_175d:
    inc a
    dec a
    ccf
    ld c, d
    ld c, h
    ld c, l
    inc bc
    rst $38
    ld e, $20

Jump_000_1767:
    ld l, $30
    inc [hl]
    scf
    add hl, sp
    ld a, [hl-]
    ld b, b
    ld d, c
    ld d, d
    ld e, d
    ld e, h
    ld e, [hl]
    ld e, a
    rst $38
    ld bc, $1412
    jr z, jr_000_17ac

    scf
    ld b, h
    ld d, h
    ld e, h
    rst $38
    ld bc, $1412
    ld a, [de]
    inc e
    scf
    jr c, @+$3d

    inc a
    ld e, [hl]
    rst $38
    inc b
    dec c
    rla
    dec e
    ld e, $23
    inc [hl]
    scf
    add hl, sp
    ld c, d
    rst $38
    ld a, [bc]
    ld a, [de]
    ld [hl-], a
    dec sp
    rst $38
    ld bc, $1310
    dec de
    ld [hl+], a
    ld b, d

Call_000_17a0:
    ld d, d
    rst $38
    inc b
    rrca
    dec d
    rra
    dec sp

Call_000_17a7:
    ld b, l
    ld b, a
    ld d, l
    ld d, [hl]
    rst $38

jr_000_17ac:
    dec b
    dec d
    jr jr_000_17ca

    jr nz, jr_000_17d3

    ld [hl+], a
    ld a, [hl+]
    dec l
    jr nc, @+$01

Call_000_17b7:
    rst $38
    inc d
    rla
    ld a, [de]
    inc e
    jr nz, jr_000_17f6

    ld b, l
    rst $38
    ld bc, $1105
    ld [de], a
    inc d
    ld a, [de]
    inc e

Call_000_17c7:
    inc l
    ld d, e
    rst $38

jr_000_17ca:
    inc c
    ld h, $16
    ld e, $34
    scf
    rst $38
    rrca
    ld a, [de]

jr_000_17d3:
    rra
    ld h, $28
    add hl, hl
    inc l
    dec l
    ld l, $2f
    ld b, c
    rst $38
    ld bc, $1110
    inc de
    dec de
    jr nz, @+$23

    ld [hl+], a
    jr nc, @+$33

    ld [hl-], a
    ld b, d
    ld b, e
    ld c, b
    ld d, d
    ld d, l
    ld e, b
    ld e, [hl]
    rst $38
    dec de

Jump_000_17f1:
    inc hl
    inc l
    dec l
    dec sp
    ld b, l

jr_000_17f6:
    rst $38

Call_000_17f7:
Jump_000_17f7:
    ldh [$8b], a
    ldh a, [$b8]
    push af
    ldh a, [$8b]

Jump_000_17fe:
    ldh [$b8], a
    ld [$2000], a
    call Call_000_00b5
    pop af

Call_000_1807:
    ldh [$b8], a
    ld [$2000], a
    ret


    ldh [$8b], a
    ldh a, [$b8]
    push af
    ldh a, [$8b]
    ldh [$b8], a
    ld [$2000], a
    push hl
    push de
    push de
    ld d, h
    ld e, l
    pop hl
    call Call_000_00b5
    pop de
    pop hl
    pop af
    ldh [$b8], a
    ld [$2000], a
    ret


Call_000_182b:
Jump_000_182b:
    ldh [$8b], a
    ldh a, [$b8]
    push af
    ldh a, [$8b]
    ldh [$b8], a
    ld [$2000], a

jr_000_1837:
    ld a, [hl+]
    ld [de], a
    inc de
    ld [de], a
    inc de
    dec bc

Jump_000_183d:
    ld a, c
    or b
    jr nz, jr_000_1837

    pop af
    ldh [$b8], a
    ld [$2000], a
    ret


Call_000_1848:
Jump_000_1848:
    ldh a, [$ba]
    push af

Jump_000_184b:
    xor a
    ldh [$ba], a
    ldh a, [$b8]
    ldh [$8b], a
    ld a, b
    ldh [$b8], a
    ld [$2000], a
    ld a, e
    ldh [$c7], a
    ld a, d
    ldh [$c8], a
    ld a, l
    ldh [$c9], a
    ld a, h
    ldh [$ca], a

jr_000_1864:
    ld a, c
    cp $08

Call_000_1867:
    jr nc, jr_000_1879

    ldh [$c6], a
    call Call_000_20af
    ldh a, [$8b]
    ldh [$b8], a
    ld [$2000], a
    pop af
    ldh [$ba], a
    ret


jr_000_1879:
    ld a, $08
    ldh [$c6], a
    call Call_000_20af
    ld a, c
    sub $08
    ld c, a
    jr jr_000_1864

Call_000_1886:
Jump_000_1886:
    ldh a, [$ba]
    push af
    xor a
    ldh [$ba], a

Jump_000_188c:
    ldh a, [$b8]
    ldh [$8b], a
    ld a, b
    ldh [$b8], a
    ld [$2000], a
    ld a, e
    ldh [$cc], a
    ld a, d
    ldh [$cd], a
    ld a, l
    ldh [$ce], a
    ld a, h
    ldh [$cf], a

jr_000_18a2:
    ld a, c
    cp $08
    jr nc, jr_000_18b7

    ldh [$cb], a
    call Call_000_20af
    ldh a, [$8b]
    ldh [$b8], a
    ld [$2000], a
    pop af
    ldh [$ba], a
    ret


jr_000_18b7:
    ld a, $08
    ldh [$cb], a
    call Call_000_20af
    ld a, c
    sub $08

Jump_000_18c1:
    ld c, a
    jr jr_000_18a2

Call_000_18c4:
Jump_000_18c4:
    ld a, $7f
    ld de, $0014

jr_000_18c9:
    push hl
    push bc

jr_000_18cb:
    ld [hl+], a
    dec c
    jr nz, jr_000_18cb

    pop bc
    pop hl
    add hl, de
    dec b
    jr nz, jr_000_18c9

    ret


Call_000_18d6:
    ld c, $06
    ld hl, $0000
    ld de, $c3a0
    call Call_000_18fc
    call Call_000_20af
    ld hl, $0600
    ld de, $c418
    call Call_000_18fc
    call Call_000_20af
    ld hl, $0c00
    ld de, $c490
    call Call_000_18fc
    jp Jump_000_20af


Call_000_18fc:
    ld a, d
    ldh [$c2], a
    call Call_000_1cdd
    ld a, l
    ldh [$c3], a
    ld a, h
    ldh [$c4], a
    ld a, c
    ldh [$c5], a
    ld a, e
    ldh [$c1], a
    ret


Call_000_190f:
Jump_000_190f:
    ld bc, $0168
    inc b
    ld hl, $c3a0
    ld a, $7f

jr_000_1918:
    ld [hl+], a

Jump_000_1919:
    dec c
    jr nz, jr_000_1918

    dec b
    jr nz, jr_000_1918

    jp Jump_000_3dd7


Call_000_1922:
    push hl
    ld a, $79
    ld [hl+], a
    inc a
    call Call_000_194f
    inc a
    ld [hl], a
    pop hl
    ld de, $0014
    add hl, de

jr_000_1931:
    push hl
    ld a, $7c
    ld [hl+], a
    ld a, $7f
    call Call_000_194f
    ld [hl], $7c
    pop hl
    ld de, $0014
    add hl, de
    dec b
    jr nz, jr_000_1931

Call_000_1944:
    ld a, $7d
    ld [hl+], a
    ld a, $7a
    call Call_000_194f
    ld [hl], $7e
    ret


Call_000_194f:
    ld d, c

jr_000_1950:
    ld [hl+], a
    dec d
    jr nz, jr_000_1950

    ret


Call_000_1955:
Jump_000_1955:
    push hl

Jump_000_1956:
    ld a, [de]
    cp $50
    jr nz, jr_000_195f

    ld b, h
    ld c, l

Jump_000_195d:
    pop hl
    ret


jr_000_195f:
    cp $4e
    jr nz, jr_000_1975

    ld bc, $0028
    ldh a, [$f6]
    bit 2, a
    jr z, jr_000_196f

    ld bc, $0014

jr_000_196f:
    pop hl
    add hl, bc
    push hl
    jp Jump_000_19e8


jr_000_1975:
    cp $4f
    jr nz, jr_000_1981

    pop hl

Jump_000_197a:
    ld hl, $c4e1
    push hl
    jp Jump_000_19e8


jr_000_1981:
    and a
    jp z, Jump_000_19ec

    cp $4c
    jp z, Jump_000_1b0a

    cp $4b
    jp z, Jump_000_1af8

Jump_000_198f:
    cp $51
    jp z, Jump_000_1ab4

    cp $49
    jp z, Jump_000_1ad5

    cp $52
    jp z, Jump_000_19f9

    cp $53
    jp z, Jump_000_19ff

    cp $54
    jp z, Jump_000_1a1d

    cp $5b

Jump_000_19aa:
    jp z, Jump_000_1a11

    cp $5e
    jp z, Jump_000_1a17

    cp $5c
    jp z, Jump_000_1a0b

    cp $5d
    jp z, Jump_000_1a05

    cp $55
    jp z, Jump_000_1a7c

    cp $56
    jp z, Jump_000_1a23

    cp $57
    jp z, Jump_000_1aad

    cp $58
    jp z, Jump_000_1a95

    cp $4a
    jp z, Jump_000_1a29

    cp $5f
    jp z, Jump_000_1a91

    cp $59
    jp z, Jump_000_1a2f

    cp $5a

Jump_000_19e1:
    jp z, Jump_000_1a35

    ld [hl+], a
    call Call_000_38d3

Jump_000_19e8:
    inc de
    jp Jump_000_1956


Jump_000_19ec:
    ld b, h
    ld c, l
    pop hl
    ld de, $19f4
    dec de
    ret


    rla
    sub [hl]
    ld h, [hl]
    ld [hl+], a
    ld d, b

Jump_000_19f9:
    push de
    ld de, $d158
    jr jr_000_1a4b

Jump_000_19ff:
    push de
    ld de, $d34a
    jr jr_000_1a4b

Jump_000_1a05:
    push de
    ld de, $1a58

Jump_000_1a09:
    jr jr_000_1a4b

Jump_000_1a0b:
    push de
    ld de, $1a55

Jump_000_1a0f:
    jr jr_000_1a4b

Jump_000_1a11:
    push de
    ld de, $1a60
    jr jr_000_1a4b

Jump_000_1a17:
    push de
    ld de, $1a63
    jr jr_000_1a4b

Jump_000_1a1d:
    push de
    ld de, $1a6a
    jr jr_000_1a4b

Call_000_1a23:
Jump_000_1a23:
    push de
    ld de, $1a6f
    jr jr_000_1a4b

Jump_000_1a29:
    push de
    ld de, $1a79
    jr jr_000_1a4b

Jump_000_1a2f:
    ldh a, [$f3]
    xor $01
    jr jr_000_1a37

Jump_000_1a35:
    ldh a, [$f3]

jr_000_1a37:
    push de
    and a
    jr nz, jr_000_1a40

    ld de, $d009
    jr jr_000_1a4b

jr_000_1a40:
    ld de, $1a72
    call Call_000_1955
    ld h, b
    ld l, c
    ld de, $cfda

jr_000_1a4b:
    call Call_000_1955
    ld h, b

Jump_000_1a4f:
    ld l, c
    pop de
    inc de
    jp Jump_000_1956


    sub e
    adc h
    ld d, b
    sub e
    sub c
    add b
    adc b
    adc l
    add h
    sub c
    ld d, b
    adc a
    add d
    ld d, b

Jump_000_1a63:
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub e

Jump_000_1a69:
    ld d, b
    adc a
    adc [hl]
    adc d
    cp d
    ld d, b
    ld [hl], l
    ld [hl], l
    ld d, b
    add h
    xor l
    and h
    xor h
    cp b
    ld a, a
    ld d, b
    pop hl
    ld [c], a
    ld d, b

Jump_000_1a7c:
    push de
    ld b, h
    ld c, l
    ld hl, $1a8c
    call Call_000_1b40
    ld h, b
    ld l, c
    pop de
    inc de
    jp Jump_000_1956


    rla
    and e
    ld h, [hl]
    ld [hl+], a
    ld d, b

Jump_000_1a91:
    ld [hl], $e8
    pop hl
    ret


Jump_000_1a95:
    ld a, [$d12b]
    cp $04
    jp z, Jump_000_1aa2

    ld a, $ee
    ld [$c4f2], a

Jump_000_1aa2:
    call Call_000_1b3a
    call Call_000_3898
    ld a, $7f

Call_000_1aaa:
    ld [$c4f2], a

Jump_000_1aad:
    pop hl
    ld de, $1ab3
    dec de
    ret


    ld d, b

Jump_000_1ab4:
    push de
    ld a, $ee
    ld [$c4f2], a
    call Call_000_1b3a
    call Call_000_3898
    ld hl, $c4a5
    ld bc, $0412
    call Call_000_18c4
    ld c, $14
    call Call_000_3739
    pop de
    ld hl, $c4b9
    jp Jump_000_19e8


Jump_000_1ad5:
    push de
    ld a, $ee
    ld [$c4f2], a
    call Call_000_1b3a
    call Call_000_3898
    ld hl, $c469
    ld bc, $0712
    call Call_000_18c4
    ld c, $14
    call Call_000_3739
    pop de
    pop hl
    ld hl, $c47d

Call_000_1af4:
    push hl
    jp Jump_000_19e8


Jump_000_1af8:
    ld a, $ee
    ld [$c4f2], a
    call Call_000_1b3a

Jump_000_1b00:
    push de
    call Call_000_3898
    pop de
    ld a, $7f
    ld [$c4f2], a

Jump_000_1b0a:
    push de
    call Call_000_1b18
    call Call_000_1b18
    ld hl, $c4e1
    pop de
    jp Jump_000_19e8


Call_000_1b18:
    ld hl, $c4b8
    ld de, $c4a4
    ld b, $3c

jr_000_1b20:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_1b20

    ld hl, $c4e1
    ld a, $7f
    ld b, $12

jr_000_1b2d:
    ld [hl+], a
    dec b
    jr nz, jr_000_1b2d

    ld b, $05

jr_000_1b33:
    call Call_000_20af
    dec b
    jr nz, jr_000_1b33

    ret


Call_000_1b3a:
    push bc
    call Call_000_3dd7
    pop bc
    ret


Call_000_1b40:
Jump_000_1b40:
    ld a, [$d358]
    push af
    set 1, a
    ld e, a
    ldh a, [$f4]
    xor e
    ld [$d358], a
    ld a, c
    ld [$cc3a], a
    ld a, b
    ld [$cc3b], a

Jump_000_1b55:
jr_000_1b55:
    ld a, [hl+]
    cp $50
    jr nz, jr_000_1b5f

    pop af
    ld [$d358], a
    ret


jr_000_1b5f:
    push hl
    cp $17
    jp z, Jump_000_1ca3

    cp $0e

Call_000_1b67:
    jp nc, Jump_000_1c31

    ld hl, $1cc1
    push bc
    add a
    ld b, $00
    ld c, a
    add hl, bc
    pop bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    pop hl
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a
    push hl
    ld h, d
    ld l, e
    call Call_000_1922
    pop hl
    jr jr_000_1b55

    pop hl
    ld d, h
    ld e, l
    ld h, b
    ld l, c
    call Call_000_1955

Call_000_1b92:
    ld h, d
    ld l, e
    inc hl
    jr jr_000_1b55

    pop hl
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push hl
    ld h, b
    ld l, c
    call Call_000_1955
    pop hl
    jr jr_000_1b55

    pop hl
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    push hl
    ld h, b
    ld l, c
    ld c, a
    call Call_000_15cd
    ld b, h
    ld c, l
    pop hl
    jr jr_000_1b55

    pop hl
    ld a, [hl+]
    ld [$cc3a], a
    ld c, a
    ld a, [hl+]

Jump_000_1bbe:
    ld [$cc3b], a
    ld b, a
    jp Jump_000_1b55


    pop hl
    ld bc, $c4e1
    jp Jump_000_1b55


    ld a, [$d12b]
    cp $04
    jp z, Jump_000_1c9a

    ld a, $ee
    ld [$c4f2], a
    push bc
    call Call_000_3898
    pop bc
    ld a, $7f
    ld [$c4f2], a
    pop hl
    jp Jump_000_1b55


    ld a, $7f
    ld [$c4f2], a
    call Call_000_1b18
    call Call_000_1b18
    pop hl
    ld bc, $c4e1
    jp Jump_000_1b55


    pop hl
    ld de, $1b55
    push de
    jp hl


    pop hl
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    push hl
    ld h, b
    ld l, c
    ld b, a
    and $0f
    ld c, a
    ld a, b
    and $f0
    swap a
    set 6, a
    ld b, a
    call Call_000_3c5f
    ld b, h
    ld c, l
    pop hl
    jp Jump_000_1b55


    push bc
    call Call_000_019a

Call_000_1c21:
    ldh a, [$b4]
    and $03
    jr nz, jr_000_1c2c

    ld c, $1e
    call Call_000_3739

jr_000_1c2c:
    pop bc
    pop hl
    jp Jump_000_1b55


Jump_000_1c31:
    pop hl
    push bc
    dec hl
    ld a, [hl+]
    ld b, a
    push hl
    ld hl, $1c64

jr_000_1c3a:
    ld a, [hl+]
    cp b
    jr z, jr_000_1c41

    inc hl
    jr jr_000_1c3a

jr_000_1c41:
    cp $14
    jr z, jr_000_1c59

    cp $15
    jr z, jr_000_1c59

    cp $16
    jr z, jr_000_1c59

    ld a, [hl]
    call Call_000_23b1
    call Call_000_3748
    pop hl
    pop bc
    jp Jump_000_1b55


jr_000_1c59:
    push de
    ld a, [hl]
    call Call_000_13d0
    pop de
    pop hl
    pop bc
    jp Jump_000_1b55


    dec bc
    add [hl]
    ld [de], a
    sbc d
    ld c, $91

Call_000_1c6a:
    rrca
    add [hl]
    db $10
    adc c
    ld de, $1394
    sbc b
    inc d
    xor b
    dec d
    sub a
    ld d, $78
    pop hl
    ld a, [hl+]
    ld d, a
    push hl
    ld h, b
    ld l, c

jr_000_1c7e:
    ld a, $75
    ld [hl+], a
    push de
    call Call_000_019a
    pop de
    ldh a, [$b4]
    and $03
    jr nz, jr_000_1c91

Jump_000_1c8c:
    ld c, $0a

Call_000_1c8e:
    call Call_000_3739

jr_000_1c91:
    dec d
    jr nz, jr_000_1c7e

    ld b, h
    ld c, l
    pop hl
    jp Jump_000_1b55


Jump_000_1c9a:
    push bc
    call Call_000_3898
    pop bc
    pop hl
    jp Jump_000_1b55


Jump_000_1ca3:
    pop hl
    ldh a, [$b8]
    push af
    ld a, [hl+]

Jump_000_1ca8:
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ldh [$b8], a
    ld [$2000], a
    push hl
    ld l, e
    ld h, d
    call Call_000_1b40
    pop hl
    pop af
    ldh [$b8], a
    ld [$2000], a
    jp Jump_000_1b55


    adc d
    dec de
    sub a
    dec de
    and l

Jump_000_1cc6:
    dec de

Call_000_1cc7:
    or a
    dec de
    ld a, b
    dec de
    push bc
    dec de

Call_000_1ccd:
    call z, $e71b
    dec de
    ld sp, hl
    dec de
    rst $38
    dec de

Call_000_1cd5:
    dec e
    inc e
    ld sp, $781c
    inc e
    sbc d
    inc e

Call_000_1cdd:
    xor a
    srl h
    rr a
    srl h
    rr a
    srl h
    rr a
    or l
    ld l, a
    ld a, b
    or h
    ld h, a
    ret


Call_000_1cf0:
    ld a, $7f
    jr jr_000_1cf5

    ld a, l

jr_000_1cf5:
    ld de, $0400
    ld l, e

jr_000_1cf9:
    ld [hl+], a
    dec e
    jr nz, jr_000_1cf9

    dec d
    jr nz, jr_000_1cf9

    ret


Call_000_1d01:
    ldh a, [$d0]
    and a
    ret z

    ld b, a
    xor a
    ldh [$d0], a
    dec b

Jump_000_1d0a:
    jr nz, jr_000_1d30

    ld hl, $cbfc
    ldh a, [$d1]
    ld e, a
    ldh a, [$d2]
    ld d, a
    ld c, $12

Call_000_1d17:
jr_000_1d17:
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, $1f
    add e
    ld e, a
    jr nc, jr_000_1d23

    inc d

jr_000_1d23:
    ld a, d
    and $03
    or $98
    ld d, a
    dec c
    jr nz, jr_000_1d17

    xor a
    ldh [$d0], a
    ret


jr_000_1d30:
    ld hl, $cbfc
    ldh a, [$d1]
    ld e, a
    ldh a, [$d2]
    ld d, a
    push de
    call Call_000_1d42
    pop de
    ld a, $20
    add e
    ld e, a

Call_000_1d42:
    ld c, $0a

jr_000_1d44:
    ld a, [hl+]
    ld [de], a
    inc de

Jump_000_1d47:
    ld a, [hl+]
    ld [de], a
    ld a, e
    inc a
    and $1f
    ld b, a
    ld a, e
    and $e0
    or b
    ld e, a
    dec c
    jr nz, jr_000_1d44

    ret


Call_000_1d57:
    ldh a, [$ba]
    and a
    ret z

    ld hl, sp+$00
    ld a, h
    ldh [$bf], a
    ld a, l
    ldh [$c0], a
    ldh a, [$bb]
    and a
    jr z, jr_000_1d7c

    dec a
    jr z, jr_000_1d8a

    ld hl, $c490
    ld sp, hl
    ldh a, [$bd]
    ld h, a
    ldh a, [$bc]
    ld l, a
    ld de, $0180
    add hl, de
    xor a
    jr jr_000_1d9a

jr_000_1d7c:
    ld hl, $c3a0
    ld sp, hl
    ldh a, [$bd]
    ld h, a
    ldh a, [$bc]
    ld l, a
    ld a, $01
    jr jr_000_1d9a

jr_000_1d8a:
    ld hl, $c418

Jump_000_1d8d:
    ld sp, hl
    ldh a, [$bd]
    ld h, a
    ldh a, [$bc]
    ld l, a
    ld de, $00c0
    add hl, de
    ld a, $02

jr_000_1d9a:
    ldh [$bb], a
    ld b, $06

jr_000_1d9e:
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    ld a, $0d
    add l
    ld l, a
    jr nc, jr_000_1dd6

    inc h

jr_000_1dd6:
    dec b
    jr nz, jr_000_1d9e

    ldh a, [$bf]
    ld h, a
    ldh a, [$c0]
    ld l, a
    ld sp, hl
    ret


Call_000_1de1:
    ldh a, [$c1]
    and a
    ret z

    ld hl, sp+$00
    ld a, h
    ldh [$bf], a
    ld a, l
    ldh [$c0], a
    ldh a, [$c1]
    ld l, a
    ldh a, [$c2]
    ld h, a
    ld sp, hl
    ldh a, [$c3]
    ld l, a
    ldh a, [$c4]
    ld h, a
    ldh a, [$c5]
    ld b, a
    xor a
    ldh [$c1], a
    jr jr_000_1d9e

Call_000_1e02:
    ldh a, [$cb]
    and a
    ret z

    ld hl, sp+$00
    ld a, h
    ldh [$bf], a
    ld a, l
    ldh [$c0], a
    ldh a, [$cc]
    ld l, a
    ldh a, [$cd]
    ld h, a
    ld sp, hl
    ldh a, [$ce]
    ld l, a
    ldh a, [$cf]
    ld h, a
    ldh a, [$cb]
    ld b, a
    xor a
    ldh [$cb], a

jr_000_1e21:
    pop de
    ld [hl], e
    inc l
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    ld [hl], d
    inc hl
    dec b
    jr nz, jr_000_1e21

    ld a, l
    ldh [$ce], a
    ld a, h
    ldh [$cf], a
    ld hl, sp+$00
    ld a, l
    ldh [$cc], a
    ld a, h
    ldh [$cd], a
    ldh a, [$bf]
    ld h, a
    ldh a, [$c0]
    ld l, a
    ld sp, hl
    ret


Call_000_1e5e:
    ldh a, [$c6]
    and a
    ret z

    ld hl, sp+$00
    ld a, h
    ldh [$bf], a
    ld a, l

Jump_000_1e68:
    ldh [$c0], a
    ldh a, [$c7]
    ld l, a
    ldh a, [$c8]
    ld h, a
    ld sp, hl
    ldh a, [$c9]
    ld l, a
    ldh a, [$ca]
    ld h, a
    ldh a, [$c6]
    ld b, a
    xor a
    ldh [$c6], a

jr_000_1e7d:
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e

Jump_000_1e9d:
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc hl
    dec b
    jr nz, jr_000_1e7d

    ld a, l
    ldh [$c9], a

Jump_000_1eab:
jr_000_1eab:
    ld a, h
    ldh [$ca], a
    ld hl, sp+$00
    ld a, l
    ldh [$c7], a
    ld a, h
    ldh [$c8], a
    ldh a, [$bf]
    ld h, a
    ldh a, [$c0]

jr_000_1ebb:
    ld l, a
    ld sp, hl
    ret


Call_000_1ebe:
    ldh a, [$d7]
    and a
    ret z

    ldh a, [$d8]
    inc a
    ldh [$d8], a
    cp $14
    ret c

jr_000_1eca:
    cp $15
    jr z, jr_000_1ef6

    ld hl, $9140
    ld c, $10
    ld a, [$d085]

Call_000_1ed6:
    inc a
    and $07
    ld [$d085], a
    and $04
    jr nz, jr_000_1ee8

jr_000_1ee0:
    ld a, [hl]
    rrca
    ld [hl+], a
    dec c
    jr nz, jr_000_1ee0

    jr jr_000_1eee

jr_000_1ee8:
    ld a, [hl]
    rlca
    ld [hl+], a
    dec c
    jr nz, jr_000_1ee8

jr_000_1eee:
    ldh a, [$d7]
    rrca
    ret nc

    xor a
    ldh [$d8], a
    ret


jr_000_1ef6:
    xor a
    ldh [$d8], a
    ld a, [$d085]
    and $03

Call_000_1efe:
    cp $02
    ld hl, $1f19
    jr c, jr_000_1f0d

    ld hl, $1f29
    jr z, jr_000_1f0d

    ld hl, $1f39

jr_000_1f0d:
    ld de, $9030
    ld c, $10

jr_000_1f12:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_1f12

    ret


    add c
    nop
    nop
    jr jr_000_1f1e

jr_000_1f1e:
    inc h
    add l
    ld e, d
    inc e
    ld b, d
    jr jr_000_1eca

    nop
    ld a, [hl]
    add c
    jr jr_000_1eab

    nop
    nop

Call_000_1f2c:
    inc c
    nop
    ld [de], a
    add d
    dec l
    ld c, $e1
    inc c
    ld [hl], e
    nop
    ld a, $81
    jr jr_000_1ebb

    jr jr_000_1f3c

jr_000_1f3c:
    inc h
    inc b
    ld e, d
    sbc l
    ld b, d
    jr @+$26

    nop
    db $db
    nop
    ld a, [hl]
    add c
    jr @-$31

    ld c, $20
    call Call_000_3de5
    ld c, $20
    call Call_000_3739

Jump_000_1f54:
    di
    xor a
    ldh [rIF], a
    ldh [rIE], a
    ldh [rSCX], a
    ldh [rSCY], a
    ldh [rSB], a
    ldh [rSC], a

Jump_000_1f62:
    ldh [rWX], a
    ldh [rWY], a
    ldh [rTMA], a
    ldh [rTAC], a
    ldh [rBGP], a
    ldh [rOBP0], a
    ldh [rOBP1], a
    ld a, $80
    ldh [rLCDC], a
    call Call_000_0061
    ld sp, $dfff
    ld hl, $c000
    ld bc, $2000

jr_000_1f80:
    ld [hl], $00
    inc hl
    dec bc
    ld a, b
    or c
    jr nz, jr_000_1f80

    call Call_000_2004
    ld hl, $ff80
    ld bc, $007f
    call Call_000_36e0
    call Call_000_0082
    ld a, $01
    ldh [$b8], a
    ld [$2000], a
    call $4bed
    xor a
    ldh [$d7], a
    ldh [rSTAT], a
    ldh [$ae], a
    ldh [$af], a

Jump_000_1faa:
    ldh [rIF], a
    ld a, $0d
    ldh [rIE], a
    ld a, $90
    ldh [$b0], a
    ldh [rWY], a
    ld a, $07
    ldh [rWX], a
    ld a, $ff
    ldh [$aa], a

Jump_000_1fbe:
    ld h, $98
    call Call_000_1cf0
    ld h, $9c
    call Call_000_1cf0
    ld a, $e3
    ldh [rLCDC], a
    ld a, $10
    ldh [$8a], a
    call Call_000_200e
    ei
    ld a, $40
    call Call_000_3e6d
    ld a, $1f
    ld [$c0ef], a
    ld [$c0f0], a
    ld a, $9c
    ldh [$bd], a
    xor a
    ldh [$bc], a
    dec a
    ld [$cfcb], a
    ld a, $32
    call Call_000_3e6d

Jump_000_1ff1:
    call Call_000_0061
    call Call_000_2004
    call Call_000_3ddc
    call Call_000_0082
    ld a, $e3
    ldh [rLCDC], a

Jump_000_2001:
    jp $42b7


Call_000_2004:
    ld hl, $8000
    ld bc, $2000
    xor a
    jp Jump_000_36e0


Call_000_200e:
Jump_000_200e:
    ld a, $02

Call_000_2010:
    ld [$c0ef], a
    ld [$c0f0], a
    xor a
    ld [$cfc7], a
    ld [$c0ee], a
    ld [$cfca], a
    dec a
    jp Jump_000_23b1


Jump_000_2024:
    push af
    push bc
    push de
    push hl

Call_000_2028:
    ldh a, [$b8]
    ld [$d122], a
    ldh a, [$ae]
    ldh [rSCX], a
    ldh a, [$af]
    ldh [rSCY], a
    ld a, [$d0a0]
    and a
    jr nz, jr_000_203f

    ldh a, [$b0]
    ldh [rWY], a

jr_000_203f:
    call Call_000_1d57
    call Call_000_1de1
    call Call_000_1d01
    call Call_000_1e5e
    call Call_000_1e02
    call Call_000_1ebe
    call $ff80
    ld a, $01
    ldh [$b8], a
    ld [$2000], a
    call $4b0f
    call Call_000_3e5c
    ldh a, [$d6]

Call_000_2063:
    and a
    jr z, jr_000_2069

    xor a
    ldh [$d6], a

jr_000_2069:
    ldh a, [$d5]
    and a
    jr z, jr_000_2071

    dec a
    ldh [$d5], a

jr_000_2071:
    call Call_000_28cb
    ld a, [$c0ef]

Jump_000_2077:
    ldh [$b8], a
    ld [$2000], a
    cp $02
    jr nz, jr_000_2085

    call $5103
    jr jr_000_2094

jr_000_2085:
    cp $08
    jr nz, jr_000_2091

    call $536e
    call $5879
    jr jr_000_2094

jr_000_2091:
    call $5177

jr_000_2094:
    ld b, $06
    ld hl, $4dee
    call Call_000_35d6
    ldh a, [$f9]
    and a
    call z, Call_000_015f
    ld a, [$d122]
    ldh [$b8], a
    ld [$2000], a
    pop hl
    pop de
    pop bc
    pop af
    reti


Call_000_20af:
Jump_000_20af:
    ld a, $01
    ldh [$d6], a

jr_000_20b3:
    db $76
    ldh a, [$d6]
    and a
    jr nz, jr_000_20b3

    ret


Call_000_20ba:
Jump_000_20ba:
    ld a, [$d35d]
    ld b, a
    ld hl, $2116

Call_000_20c1:
    ld a, l
    sub b

Call_000_20c3:
    ld l, a
    jr nc, jr_000_20c7

Call_000_20c6:
    dec h

jr_000_20c7:
    ld a, [hl+]
    ldh [rBGP], a
    ld a, [hl+]
    ldh [rOBP0], a
    ld a, [hl+]
    ldh [rOBP1], a
    ret


Call_000_20d1:
    ld hl, $210d
    ld b, $04
    jr jr_000_20dd

Call_000_20d8:
Jump_000_20d8:
    ld hl, $211c
    ld b, $03

jr_000_20dd:
    ld a, [hl+]
    ldh [rBGP], a
    ld a, [hl+]

Call_000_20e1:
    ldh [rOBP0], a
    ld a, [hl+]
    ldh [rOBP1], a
    ld c, $08

Call_000_20e8:
    call Call_000_3739
    dec b
    jr nz, jr_000_20dd

    ret


Call_000_20ef:
Jump_000_20ef:
    ld hl, $2118
    ld b, $04
    jr jr_000_20fb

Call_000_20f6:
Jump_000_20f6:
    ld hl, $2121
    ld b, $03

jr_000_20fb:
    ld a, [hl-]
    ldh [rOBP1], a
    ld a, [hl-]
    ldh [rOBP0], a

Jump_000_2101:
    ld a, [hl-]
    ldh [rBGP], a
    ld c, $08
    call Call_000_3739
    dec b
    jr nz, jr_000_20fb

    ret


    rst $38
    rst $38
    rst $38
    cp $fe
    ld hl, sp-$07
    db $e4
    db $e4

Jump_000_2116:
    db $e4
    ret nc

    ldh [$e4], a
    ret nc

    ldh [$90], a
    add b
    sub b
    ld b, b
    ld b, b
    ld b, b
    nop
    nop
    nop

Jump_000_2125:
    push af

Call_000_2126:
    push bc
    push de
    push hl
    ldh a, [$aa]
    inc a
    jr z, jr_000_2142

    ldh a, [rSB]
    ldh [$ad], a
    ldh a, [$ac]
    ldh [rSB], a
    ldh a, [$aa]
    cp $02
    jr z, jr_000_2162

    ld a, $80
    ldh [rSC], a
    jr jr_000_2162

jr_000_2142:
    ldh a, [rSB]
    ldh [$ad], a
    ldh [$aa], a
    cp $02

Call_000_214a:
    jr z, jr_000_215f

    xor a
    ldh [rSB], a
    ld a, $03
    ldh [rDIV], a

jr_000_2153:
    ldh a, [rDIV]
    bit 7, a
    jr nz, jr_000_2153

    ld a, $80
    ldh [rSC], a
    jr jr_000_2162

Jump_000_215f:
jr_000_215f:
    xor a
    ldh [rSB], a

Jump_000_2162:
jr_000_2162:
    ld a, $01
    ldh [$a9], a

Call_000_2166:
    ld a, $fe
    ldh [$ac], a
    pop hl
    pop de
    pop bc

Jump_000_216d:
    pop af
    reti


Call_000_216f:
    ld a, $01
    ldh [$ab], a

jr_000_2173:
    ld a, [hl]
    ldh [$ac], a
    call Call_000_219a
    push bc
    ld b, a
    inc hl
    ld a, $30

jr_000_217e:
    dec a
    jr nz, jr_000_217e

Call_000_2181:
    ldh a, [$ab]
    and a
    ld a, b
    pop bc
    jr z, jr_000_2192

    dec hl
    cp $fd
    jr nz, jr_000_2173

    xor a
    ldh [$ab], a
    jr jr_000_2173

jr_000_2192:
    ld [de], a
    inc de
    dec bc

Call_000_2195:
    ld a, b
    or c

Jump_000_2197:
    jr nz, jr_000_2173

    ret


Call_000_219a:
Jump_000_219a:
    xor a
    ldh [$a9], a
    ldh a, [$aa]
    cp $02
    jr nz, jr_000_21a7

    ld a, $81
    ldh [rSC], a

jr_000_21a7:
    ldh a, [$a9]

Call_000_21a9:
    and a

Jump_000_21aa:
    jr nz, jr_000_21f1

    ldh a, [$aa]
    cp $01
    jr nz, jr_000_21cc

    call Call_000_2237

Call_000_21b5:
    jr z, jr_000_21cc

Call_000_21b7:
    call Call_000_2231
    push hl
    ld hl, $cc48
    inc [hl]
    jr nz, jr_000_21c3

Call_000_21c1:
Jump_000_21c1:
    dec hl

Call_000_21c2:
    inc [hl]

jr_000_21c3:
    pop hl
    call Call_000_2237
    jr nz, jr_000_21a7

    jp Jump_000_223f


jr_000_21cc:
    ldh a, [rIE]
    and $0f
    cp $08
    jr nz, jr_000_21a7

    ld a, [$d074]
    dec a
    ld [$d074], a
    jr nz, jr_000_21a7

    ld a, [$d075]
    dec a
    ld [$d075], a

Jump_000_21e4:
    jr nz, jr_000_21a7

    ldh a, [$aa]
    cp $01
    jr z, jr_000_21f1

    ld a, $ff

jr_000_21ee:
    dec a
    jr nz, jr_000_21ee

jr_000_21f1:
    xor a
    ldh [$a9], a
    ldh a, [rIE]
    and $0f
    sub $08
    jr nz, jr_000_2204

    ld [$d074], a
    ld a, $50
    ld [$d075], a

jr_000_2204:
    ldh a, [$ad]

Jump_000_2206:
    cp $fe
    ret nz

    call Call_000_2237
    jr z, jr_000_221f

    push hl

Jump_000_220f:
    ld hl, $cc48
    ld a, [hl]
    dec a
    ld [hl-], a
    inc a
    jr nz, jr_000_2219

    dec [hl]

jr_000_2219:
    pop hl
    call Call_000_2237
    jr z, jr_000_223f

jr_000_221f:
    ldh a, [rIE]
    and $0f
    cp $08
    ld a, $fe
    ret z

    ld a, [hl]
    ldh [$ac], a
    call Call_000_20af
    jp Jump_000_219a


Call_000_2231:
    ld a, $0f

jr_000_2233:
    dec a
    jr nz, jr_000_2233

    ret


Call_000_2237:
    push hl
    ld hl, $cc47
    ld a, [hl+]
    or [hl]
    pop hl
    ret


Jump_000_223f:
jr_000_223f:
    dec a
    ld [$cc47], a

Jump_000_2243:
    ld [$cc48], a
    ret


Call_000_2247:
    ld hl, $cc42
    ld de, $cc3d
    ld c, $02
    ld a, $01
    ldh [$ab], a

jr_000_2253:
    call Call_000_20af
    ld a, [hl]
    ldh [$ac], a
    call Call_000_219a

Call_000_225c:
Jump_000_225c:
    ld b, a
    inc hl

Call_000_225e:
    ldh a, [$ab]
    and a
    ld a, $00
    ldh [$ab], a

Call_000_2265:
    jr nz, jr_000_2253

Jump_000_2267:
    ld a, b

Jump_000_2268:
    ld [de], a
    inc de
    dec c

Call_000_226b:
    jr nz, jr_000_2253

    ret


Call_000_226e:
    call Call_000_3719
    ld hl, $4c05
    ld b, $01
    call Call_000_35d6
    call Call_000_227f
    jp Jump_000_3725


Call_000_227f:
    ld a, $ff
    ld [$cc3e], a

jr_000_2284:
    call Call_000_22c3
    call Call_000_20af
    call Call_000_2237
    jr z, jr_000_22a0

    push hl
    ld hl, $cc48
    dec [hl]
    jr nz, jr_000_229f

    dec hl
    dec [hl]
    jr nz, jr_000_229f

    pop hl
    xor a
    jp Jump_000_223f


jr_000_229f:
    pop hl

jr_000_22a0:
    ld a, [$cc3e]
    inc a
    jr z, jr_000_2284

    ld b, $0a

jr_000_22a8:
    call Call_000_20af
    call Call_000_22c3
    dec b

Jump_000_22af:
    jr nz, jr_000_22a8

    ld b, $0a

jr_000_22b3:
    call Call_000_20af
    call Call_000_22ed
    dec b
    jr nz, jr_000_22b3

    ld a, [$cc3e]
    ld [$cc3d], a
    ret


Call_000_22c3:
    call Call_000_22d7
    ld a, [$cc42]
    add $60
    ldh [$ac], a
    ldh a, [$aa]
    cp $02
    jr nz, jr_000_22d7

    ld a, $81
    ldh [rSC], a

Call_000_22d7:
jr_000_22d7:
    ldh a, [$ad]
    ld [$cc3d], a
    and $f0
    cp $60
    ret nz

    xor a
    ldh [$ad], a
    ld a, [$cc3d]
    and $0f
    ld [$cc3e], a
    ret


Call_000_22ed:
    xor a
    ldh [$ac], a
    ldh a, [$aa]
    cp $02
    ret nz

    ld a, $81
    ldh [rSC], a
    ret


Call_000_22fa:
    ld a, $02
    ldh [rSB], a
    xor a

Call_000_22ff:
    ldh [$ad], a

Jump_000_2301:
    ld a, $80
    ldh [rSC], a
    ret


Jump_000_2306:
    reti


Call_000_2307:
Jump_000_2307:
    call Call_000_3748
    xor a
    ld c, a
    ld d, a
    ld [$cfca], a
    jr jr_000_2324

Call_000_2312:
    ld c, $0a
    ld d, $00
    ld a, [$d72e]
    bit 5, a
    jr z, jr_000_2324

    xor a
    ld [$cfca], a
    ld c, $08
    ld d, c

Jump_000_2324:
jr_000_2324:
    ld a, [$d700]

Call_000_2327:
    and a
    jr z, jr_000_2343

    cp $02
    jr z, jr_000_2332

    ld a, $d2
    jr jr_000_2334

jr_000_2332:
    ld a, $d6

jr_000_2334:
    ld b, a
    ld a, d
    and a
    ld a, $1f
    jr nz, jr_000_233e

    ld [$c0ef], a

jr_000_233e:
    ld [$c0f0], a
    jr jr_000_234c

jr_000_2343:
    ld a, [$d35b]
    ld b, a
    call Call_000_2385

Jump_000_234a:
    jr c, jr_000_2351

Call_000_234c:
jr_000_234c:
    ld a, [$cfca]
    cp b
    ret z

Jump_000_2351:
jr_000_2351:
    ld a, c
    ld [$cfc7], a
    ld a, b
    ld [$cfca], a
    ld [$c0ee], a

Jump_000_235c:
    jp Jump_000_23b1


Call_000_235f:
    ld a, [$c0ef]

Call_000_2362:
    ld b, a
    cp $02

Jump_000_2365:
    jr nz, jr_000_236c

    ld hl, $5103
    jr jr_000_2378

jr_000_236c:
    cp $08
    jr nz, jr_000_2375

Call_000_2370:
    ld hl, $5879
    jr jr_000_2378

jr_000_2375:
    ld hl, $5177

jr_000_2378:
    ld c, $06

jr_000_237a:
    push bc
    push hl
    call Call_000_35d6
    pop hl
    pop bc
    dec c
    jr nz, jr_000_237a

    ret


Call_000_2385:
    ld a, [$d35c]

Call_000_2388:
    ld e, a
    ld a, [$c0ef]
    cp e
    jr nz, jr_000_2394

    ld [$c0f0], a
    and a

Call_000_2393:
    ret


jr_000_2394:
    ld a, c
    and a
    ld a, e
    jr nz, jr_000_239c

    ld [$c0ef], a

jr_000_239c:
    ld [$c0f0], a
    scf
    ret


Call_000_23a1:
Jump_000_23a1:
    ld b, a
    ld [$c0ee], a
    xor a
    ld [$cfc7], a
    ld a, c
    ld [$c0ef], a
    ld [$c0f0], a

Call_000_23b0:
    ld a, b

Call_000_23b1:
Jump_000_23b1:
    push hl
    push de
    push bc
    ld b, a

Call_000_23b5:
    ld a, [$c0ee]
    and a
    jr z, jr_000_23c8

    xor a
    ld [$c02a], a
    ld [$c02b], a
    ld [$c02c], a
    ld [$c02d], a

jr_000_23c8:
    ld a, [$cfc7]
    and a
    jr z, jr_000_23e3

    ld a, [$c0ee]
    and a
    jr z, jr_000_2425

    xor a
    ld [$c0ee], a
    ld a, [$cfca]
    cp $ff
    jr nz, jr_000_2414

    xor a
    ld [$cfc7], a

Jump_000_23e3:
jr_000_23e3:
    xor a
    ld [$c0ee], a
    ldh a, [$b8]
    ldh [$b9], a
    ld a, [$c0ef]
    ldh [$b8], a
    ld [$2000], a
    cp $02
    jr nz, jr_000_23fd

    ld a, b
    call $5876
    jr jr_000_240b

jr_000_23fd:
    cp $08
    jr nz, jr_000_2407

Call_000_2401:
    ld a, b
    call $6035
    jr jr_000_240b

jr_000_2407:
    ld a, b

Call_000_2408:
Jump_000_2408:
    call $58ea

jr_000_240b:
    ldh a, [$b9]
    ldh [$b8], a
    ld [$2000], a
    jr jr_000_2425

jr_000_2414:
    ld a, b
    ld [$cfca], a
    ld a, [$cfc7]
    ld [$cfc8], a
    ld [$cfc9], a
    ld a, b
    ld [$cfc7], a

jr_000_2425:
    pop bc
    pop de
    pop hl

Call_000_2428:
    ret


Call_000_2429:
Jump_000_2429:
    ld a, [$cfcb]

Jump_000_242c:
    dec a
    ret nz

    ldh a, [$b8]
    push af
    ld a, $01
    ldh [$b8], a
    ld [$2000], a
    call $4c34
    pop af

Call_000_243c:
    ldh [$b8], a
    ld [$2000], a
    ret


    cp $04
    inc b
    dec bc
    rrca
    inc c
    rst $38
    cp $07

Call_000_244b:
    inc b
    inc d

Call_000_244d:
Jump_000_244d:
    dec e
    dec bc

Call_000_244f:
    inc c
    ld c, $0f
    rst $38
    cp $07
    inc b
    inc d
    ld e, $0b

Call_000_2459:
    inc c
    ld c, $0f

Call_000_245c:
    rst $38
    cp $01
    ld b, $ff

Jump_000_2461:
    cp $06
    inc b
    inc de
    dec c
    ld c, $0f
    ld e, $ff
    cp $09
    inc bc
    inc de
    dec [hl]
    dec e
    jr c, jr_000_247d

    inc c
    dec c

Call_000_2474:
    rrca
    rst $38
    cp $09
    inc bc
    inc de
    dec [hl]
    jr c, @+$0d

jr_000_247d:
    inc c
    dec c
    ld c, $0f
    rst $38
    cp $09
    add sp, -$17
    jp z, $edcf

    ret


    call $d9d1
    rst $38
    cp $05
    inc sp
    jr nz, jr_000_24b4

    ld [hl+], a
    cpl
    rst $38
    cp $07

Call_000_2498:
    ld l, $37

Call_000_249a:
    ld a, [hl-]
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    rst $38
    cp $05

Jump_000_24a2:
    inc hl
    inc h
    dec h
    ld h, $27
    rst $38
    cp $06
    ld [bc], a
    inc bc
    inc de
    dec [hl]
    inc [hl]
    jr c, @+$01

    cp $05
    inc bc

jr_000_24b4:
    ld [de], a
    inc de
    inc [hl]
    dec [hl]
    rst $38
    cp $07
    ld [bc], a
    inc bc
    ld [de], a
    add hl, sp
    dec e
    inc [hl]
    dec [hl]

Jump_000_24c2:
    rst $38
    cp $06
    inc bc
    ld [de], a
    add hl, sp
    dec e
    inc [hl]
    dec [hl]
    rst $38
    cp $07
    ld [bc], a
    inc bc
    db $10
    ld de, $3534
    add hl, sp
    rst $38
    ld d, b

Jump_000_24d7:
    ld hl, $24d6
    ret


    rla
    sub e
    ld b, b
    jr nz, jr_000_2530

    rla
    sub [hl]
    ld b, b
    jr nz, @+$52

    rla
    or c
    ld b, b

Jump_000_24e8:
    jr nz, @+$52

    rla
    jp nc, $2040

    ld d, b
    rla
    db $fc
    ld b, b
    jr nz, @+$52

    ld [$5c3e], sp
    call Call_000_3e6d
    jp Jump_000_24d7


Jump_000_24fd:
    ld b, a
    ldh a, [$b8]
    push af
    ld a, b
    ldh [$b8], a
    ld [$2000], a
    ld a, $0a
    ld [$0000], a
    xor a
    ld [$4000], a
    call Call_000_251a
    pop af
    ldh [$b8], a
    ld [$2000], a
    ret


Call_000_251a:
    ld hl, $a188
    ld c, $10
    ld b, $03
    xor a
    call Call_000_36e0

Call_000_2525:
Jump_000_2525:
    ld a, $01
    ld [$d0a6], a
    ld a, $03

Jump_000_252c:
    ld [$d0a7], a
    xor a

jr_000_2530:
    ld [$d0a1], a
    ld [$d0a2], a
    ld [$d0a8], a
    call Call_000_268b

Jump_000_253c:
    ld b, a
    and $0f
    add a
    add a
    add a

Call_000_2542:
    ld [$d0a4], a
    ld a, b

Jump_000_2546:
    swap a
    and $0f
    add a
    add a

Jump_000_254c:
    add a
    ld [$d0a3], a
    call Call_000_2670

Call_000_2553:
    ld [$d0a8], a

Jump_000_2556:
    ld hl, $a188
    ld a, [$d0a8]
    bit 0, a
    jr z, jr_000_2563

    ld hl, $a310

jr_000_2563:
    call Call_000_2897
    ld a, [$d0a8]

Call_000_2569:
    bit 1, a
    jr z, jr_000_257a

    call Call_000_2670
    and a
    jr z, jr_000_2577

    call Call_000_2670
    inc a

jr_000_2577:
    ld [$d0a9], a

jr_000_257a:
    call Call_000_2670
    and a
    jr z, jr_000_2595

jr_000_2580:
    call Call_000_2670
    ld c, a
    call Call_000_2670
    sla c
    or c
    and a
    jr z, jr_000_2595

    call Call_000_2649
    call Call_000_25d8

Call_000_2593:
    jr jr_000_2580

jr_000_2595:
    ld c, $00

Call_000_2597:
jr_000_2597:
    call Call_000_2670
    and a
    jr z, jr_000_25a0

    inc c
    jr jr_000_2597

jr_000_25a0:
    ld a, c
    add a
    ld hl, $269f
    add l
    ld l, a
    jr nc, jr_000_25aa

    inc h

jr_000_25aa:
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    push de
    inc c
    ld e, $00
    ld d, e

jr_000_25b2:
    call Call_000_2670

Call_000_25b5:
    or e
    ld e, a
    dec c
    jr z, jr_000_25c0

    sla e
    rl d
    jr jr_000_25b2

jr_000_25c0:
    pop hl

Call_000_25c1:
    add hl, de
    ld e, l
    ld d, h

jr_000_25c4:
    ld b, e
    xor a
    call Call_000_2649
    ld e, b
    call Call_000_25d8
    dec de
    ld a, d
    and a
    jr nz, jr_000_25d4

    ld a, e
    and a

jr_000_25d4:
    jr nz, jr_000_25c4

    jr jr_000_2580

Call_000_25d8:
    ld a, [$d0a4]
    ld b, a
    ld a, [$d0a2]
    inc a
    cp b
    jr z, jr_000_25f6

    ld [$d0a2], a
    ld a, [$d0ad]
    inc a

Call_000_25ea:
    ld [$d0ad], a
    ret nz

    ld a, [$d0ae]
    inc a
    ld [$d0ae], a
    ret


jr_000_25f6:
    xor a
    ld [$d0a2], a
    ld a, [$d0a7]
    and a
    jr z, jr_000_2610

    dec a
    ld [$d0a7], a
    ld hl, $d0af
    ld a, [hl+]
    ld [$d0ad], a
    ld a, [hl]
    ld [$d0ae], a
    ret


jr_000_2610:
    ld a, $03
    ld [$d0a7], a
    ld a, [$d0a1]

Jump_000_2618:
    add $08

Jump_000_261a:
    ld [$d0a1], a
    ld b, a

Call_000_261e:
    ld a, [$d0a3]
    cp b

Call_000_2622:
    jr z, jr_000_2630

    ld a, [$d0ad]
    ld l, a
    ld a, [$d0ae]
    ld h, a

Call_000_262c:
    inc hl
    jp Jump_000_2897


jr_000_2630:
    pop hl
    xor a
    ld [$d0a1], a

Call_000_2635:
    ld a, [$d0a8]
    bit 1, a
    jr nz, jr_000_2646

    xor $01
    set 1, a
    ld [$d0a8], a

Call_000_2643:
    jp Jump_000_2556


jr_000_2646:
    jp Jump_000_26bf


Call_000_2649:
    ld e, a
    ld a, [$d0a7]
    and a
    jr z, jr_000_2664

    cp $02
    jr c, jr_000_265c

    jr z, jr_000_2662

    rrc e

Call_000_2658:
    rrc e
    jr jr_000_2664

jr_000_265c:
    sla e
    sla e
    jr jr_000_2664

Call_000_2662:
jr_000_2662:
    swap e

jr_000_2664:
    ld a, [$d0ad]
    ld l, a

Jump_000_2668:
    ld a, [$d0ae]
    ld h, a
    ld a, [hl]
    or e
    ld [hl], a
    ret


Call_000_2670:
    ld a, [$d0a6]
    dec a
    jr nz, jr_000_267e

    call Call_000_268b
    ld [$d0a5], a
    ld a, $08

jr_000_267e:
    ld [$d0a6], a
    ld a, [$d0a5]
    rlca
    ld [$d0a5], a
    and $01
    ret


Call_000_268b:
    ld a, [$d0ab]
    ld l, a
    ld a, [$d0ac]
    ld h, a
    ld a, [hl+]
    ld b, a
    ld a, l
    ld [$d0ab], a
    ld a, h
    ld [$d0ac], a
    ld a, b
    ret


    ld bc, $0300
    nop
    rlca
    nop

Jump_000_26a5:
    rrca
    nop
    rra

Call_000_26a8:
    nop
    ccf
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38

Jump_000_26bf:
    ld a, [$d0a9]
    cp $02
    jp z, Jump_000_2877

    and a
    jp nz, Jump_000_27c7

    ld hl, $a188
    call Call_000_26d4
    ld hl, $a310

Call_000_26d4:
    xor a
    ld [$d0a1], a
    ld [$d0a2], a
    call Call_000_2897
    ld a, [$d0aa]
    and a
    jr z, jr_000_26ec

    ld hl, $27b7
    ld de, $27bf
    jr jr_000_26f2

jr_000_26ec:
    ld hl, $27a7
    ld de, $27af

jr_000_26f2:
    ld a, l
    ld [$d0b1], a
    ld a, h
    ld [$d0b2], a
    ld a, e
    ld [$d0b3], a
    ld a, d
    ld [$d0b4], a
    ld e, $00

Jump_000_2704:
jr_000_2704:
    ld a, [$d0ad]
    ld l, a
    ld a, [$d0ae]
    ld h, a
    ld a, [hl]
    ld b, a
    swap a
    and $0f
    call Call_000_276d
    swap a
    ld d, a
    ld a, b
    and $0f
    call Call_000_276d

Call_000_271e:
    or d
    ld b, a
    ld a, [$d0ad]
    ld l, a
    ld a, [$d0ae]
    ld h, a
    ld a, b
    ld [hl], a
    ld a, [$d0a4]
    add l
    jr nc, jr_000_2731

    inc h

jr_000_2731:
    ld [$d0ad], a
    ld a, h
    ld [$d0ae], a
    ld a, [$d0a1]
    add $08
    ld [$d0a1], a
    ld b, a
    ld a, [$d0a3]
    cp b
    jr nz, jr_000_2704

Call_000_2747:
    xor a
    ld e, a
    ld [$d0a1], a

Call_000_274c:
    ld a, [$d0a2]
    inc a
    ld [$d0a2], a

Jump_000_2753:
    ld b, a
    ld a, [$d0a4]
    cp b
    jr z, jr_000_2768

    ld a, [$d0af]
    ld l, a
    ld a, [$d0b0]
    ld h, a
    inc hl
    call Call_000_2897
    jr jr_000_2704

jr_000_2768:
    xor a
    ld [$d0a2], a
    ret


Call_000_276d:
    srl a
    ld c, $00
    jr nc, jr_000_2775

Call_000_2773:
    ld c, $01

jr_000_2775:
    ld l, a
    ld a, [$d0aa]
    and a
    jr z, jr_000_2780

    bit 3, e
    jr jr_000_2782

jr_000_2780:
    bit 0, e

jr_000_2782:
    ld e, l
    jr nz, jr_000_278e

    ld a, [$d0b1]
    ld l, a

Call_000_2789:
    ld a, [$d0b2]
    jr jr_000_2795

jr_000_278e:
    ld a, [$d0b3]
    ld l, a
    ld a, [$d0b4]

jr_000_2795:
    ld h, a
    ld a, e

Call_000_2797:
    add l
    ld l, a
    jr nc, jr_000_279c

    inc h

jr_000_279c:
    ld a, [hl]
    bit 0, c
    jr nz, jr_000_27a3

    swap a

jr_000_27a3:
    and $0f
    ld e, a
    ret


    ld bc, $7632
    ld b, l
    cp $cd
    adc c
    cp d
    cp $cd
    adc c
    cp d
    ld bc, $7632
    ld b, l

Call_000_27b7:
    ld [$e6c4], sp
    ld a, [hl+]

Jump_000_27bb:
    rst $30
    dec sp
    add hl, de
    push de
    rst $30
    dec sp

Call_000_27c1:
    add hl, de
    push de
    ld [$e6c4], sp
    ld a, [hl+]

Call_000_27c7:
Jump_000_27c7:
    xor a
    ld [$d0a1], a
    ld [$d0a2], a
    call Call_000_2841
    ld a, [$d0ad]
    ld l, a
    ld a, [$d0ae]
    ld h, a
    call Call_000_26d4
    call Call_000_2841
    ld a, [$d0ad]
    ld l, a
    ld a, [$d0ae]
    ld h, a

Call_000_27e7:
    ld a, [$d0af]
    ld e, a
    ld a, [$d0b0]
    ld d, a

jr_000_27ef:
    ld a, [$d0aa]
    and a
    jr z, jr_000_280b

    push de
    ld a, [de]
    ld b, a
    swap a
    and $0f
    call Call_000_2837
    swap a
    ld c, a
    ld a, b
    and $0f
    call Call_000_2837
    or c
    pop de
    ld [de], a

jr_000_280b:
    ld a, [hl+]

Jump_000_280c:
    ld b, a
    ld a, [de]

Jump_000_280e:
    xor b
    ld [de], a
    inc de

Jump_000_2811:
    ld a, [$d0a2]
    inc a
    ld [$d0a2], a
    ld b, a
    ld a, [$d0a4]
    cp b
    jr nz, jr_000_27ef

    xor a
    ld [$d0a2], a
    ld a, [$d0a1]
    add $08
    ld [$d0a1], a
    ld b, a
    ld a, [$d0a3]
    cp b
    jr nz, jr_000_27ef

    xor a

Jump_000_2833:
    ld [$d0a1], a
    ret


Call_000_2837:
    ld de, $2867
    add e
    ld e, a
    jr nc, jr_000_283f

    inc d

jr_000_283f:
    ld a, [de]
    ret


Call_000_2841:
Jump_000_2841:
    ld a, [$d0a8]

Jump_000_2844:
    bit 0, a
    jr nz, jr_000_2850

    ld de, $a188
    ld hl, $a310
    jr jr_000_2856

jr_000_2850:
    ld de, $a310
    ld hl, $a188

jr_000_2856:
    ld a, l
    ld [$d0ad], a
    ld a, h

Call_000_285b:
    ld [$d0ae], a
    ld a, e
    ld [$d0af], a

Jump_000_2862:
    ld a, d
    ld [$d0b0], a
    ret


    nop
    ld [$0c04], sp
    ld [bc], a

Jump_000_286c:
    ld a, [bc]
    ld b, $0e
    ld bc, $0509
    dec c
    inc bc
    dec bc
    rlca
    rrca

Jump_000_2877:
    call Call_000_2841
    ld a, [$d0aa]
    push af
    xor a
    ld [$d0aa], a
    ld a, [$d0af]
    ld l, a
    ld a, [$d0b0]
    ld h, a
    call Call_000_26d4

Call_000_288d:
    call Call_000_2841
    pop af
    ld [$d0aa], a
    jp Jump_000_27c7


Call_000_2897:
Jump_000_2897:
    ld a, l
    ld [$d0ad], a
    ld [$d0af], a
    ld a, h
    ld [$d0ae], a
    ld [$d0b0], a
    ret


Call_000_28a6:
    ld hl, $c100
    call Call_000_28c4
    ld hl, $c200
    call Call_000_28c4
    ld a, $01
    ld [$c100], a
    ld [$c20e], a
    ld hl, $c104
    ld [hl], $3c
    inc hl
    inc hl
    ld [hl], $40
    ret


Call_000_28c4:
    ld bc, $0010
    xor a
    jp Jump_000_36e0


Call_000_28cb:
    ld a, [$cfc7]
    and a
    jr nz, jr_000_28dc

    ld a, [$d72c]
    bit 1, a
    ret nz

    ld a, $77
    ldh [rNR50], a
    ret


jr_000_28dc:
    ld a, [$cfc9]
    and a
    jr z, jr_000_28e7

    dec a
    ld [$cfc9], a
    ret


jr_000_28e7:
    ld a, [$cfc8]
    ld [$cfc9], a
    ldh a, [rNR50]
    and a
    jr z, jr_000_2903

    ld b, a

Jump_000_28f3:
    and $0f
    dec a
    ld c, a
    ld a, b
    and $f0
    swap a
    dec a
    swap a
    or c
    ldh [rNR50], a
    ret


jr_000_2903:
    ld a, [$cfc7]
    ld b, a
    xor a
    ld [$cfc7], a
    ld a, $ff
    ld [$c0ee], a
    call Call_000_23b1
    ld a, [$c0f0]

Jump_000_2916:
    ld [$c0ef], a
    ld a, b
    ld [$c0ee], a
    jp Jump_000_23b1


Call_000_2920:
Jump_000_2920:
    ldh a, [$b8]

Jump_000_2922:
    push af
    ld b, $01

Jump_000_2925:
    ld hl, $7096
    call Call_000_35d6
    ld hl, $cf11
    bit 0, [hl]
    res 0, [hl]
    jr nz, jr_000_293a

    ld a, [$d35e]
    call Call_000_12bc

jr_000_293a:
    ld a, $1e
    ldh [$d5], a
    ld hl, $d36c
    ld a, [hl+]

Call_000_2942:
    ld h, [hl]

Call_000_2943:
    ld l, a

Call_000_2944:
    ld d, $00
    ldh a, [$8c]

Jump_000_2948:
    ld [$cf13], a
    and a
    jp z, Jump_000_2acd

    cp $d3
    jp z, Jump_000_2a90

    cp $d0

Jump_000_2956:
    jp z, Jump_000_2a9b

    cp $d1
    jp z, Jump_000_2aa9

    cp $d2
    jp z, Jump_000_2abf

    ld a, [$d4e1]
    ld e, a
    ldh a, [$8c]

Jump_000_2969:
    cp e
    jr z, jr_000_296e

    jr nc, jr_000_298a

jr_000_296e:
    push hl
    push de
    push bc
    ld b, $04
    ld hl, $7074
    call Call_000_35d6
    pop bc
    pop de
    ld hl, $d4e4
    ldh a, [$8c]
    dec a
    add a

Jump_000_2982:
    add l
    ld l, a
    jr nc, jr_000_2987

    inc h

Jump_000_2987:
jr_000_2987:
    inc hl
    ld a, [hl]
    pop hl

jr_000_298a:
    dec a
    ld e, a
    sla e
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl]
    cp $fe
    jp z, Jump_000_2a2e

    cp $ff
    jp z, Jump_000_2a72

Jump_000_299d:
    cp $fc
    jp z, Jump_000_3460

    cp $fd
    jp z, Jump_000_346a

    cp $f9

Jump_000_29a9:
    jp z, Jump_000_347f

    cp $f5
    jr nz, jr_000_29ba

    ld b, $1d
    ld hl, $4ee0
    call Call_000_35d6
    jr jr_000_29d6

jr_000_29ba:
    cp $f7

Jump_000_29bc:
    jp z, Jump_000_3474

    cp $f6
    jr nz, jr_000_29cd

    ld hl, $71c5

Call_000_29c6:
    ld b, $01
    call Call_000_35d6
    jr jr_000_29d6

jr_000_29cd:
    call Call_000_3c59
    ld a, [$cc3c]
    and a
    jr nz, jr_000_29df

Jump_000_29d6:
jr_000_29d6:
    ld a, [$cc47]
    and a
    jr nz, jr_000_29df

    call Call_000_3865

Jump_000_29df:
jr_000_29df:
    call Call_000_019a
    ldh a, [$b4]
    bit 0, a
    jr nz, jr_000_29df

Jump_000_29e8:
    ld a, [$d35e]
    call Call_000_12bc
    ld a, $90
    ldh [$b0], a
    call Call_000_20af
    call Call_000_20ba
    xor a
    ldh [$ba], a
    ld hl, $c219
    ld c, $0f
    ld de, $0010

jr_000_2a03:
    ld a, [hl]
    dec h
    ld [hl], a

Jump_000_2a06:
    inc h
    add hl, de
    dec c
    jr nz, jr_000_2a03

    ld a, $05
    ldh [$b8], a
    ld [$2000], a
    call $785b
    ld hl, $cfc4
    res 0, [hl]

Jump_000_2a1a:
    ld a, [$d732]
    bit 3, a
    call z, Call_000_0997
    call Call_000_0caa
    pop af
    ldh [$b8], a

Call_000_2a28:
    ld [$2000], a
    jp Jump_000_2429


Jump_000_2a2e:
    push hl
    ld hl, $2a55
    call Call_000_3c49
    pop hl
    inc hl
    call Call_000_2a5a
    ld a, $02
    ld [$cf94], a
    ldh a, [$b8]
    push af
    ld a, $01
    ldh [$b8], a
    ld [$2000], a
    call $6c20
    pop af
    ldh [$b8], a
    ld [$2000], a
    jp Jump_000_29d6


    rla
    sbc h
    ld h, l
    jr z, @+$52

Call_000_2a5a:
    ld a, $01
    ld [$cfcb], a
    ld a, h
    ld [$d128], a
    ld a, l
    ld [$d129], a
    ld de, $cf7b

jr_000_2a6a:
    ld a, [hl+]
    ld [de], a
    inc de
    cp $ff
    jr nz, jr_000_2a6a

    ret


Jump_000_2a72:
    xor a
    ldh [$8b], a
    ldh [$8c], a
    ldh [$8d], a
    inc hl

Jump_000_2a7a:
    ldh a, [$b8]
    push af
    ld a, $01
    ldh [$b8], a
    ld [$2000], a
    call $6fe6
    pop af
    ldh [$b8], a

Jump_000_2a8a:
    ld [$2000], a
    jp Jump_000_29d6


Jump_000_2a90:
    ld hl, $69ed
    ld b, $07
    call Call_000_35d6
    jp Jump_000_29d6


Jump_000_2a9b:
    ld hl, $2aa4
    call Call_000_3c49
    jp Jump_000_29d6


    rla
    or a
    ld h, l
    jr z, @+$52

Jump_000_2aa9:
    ld hl, $2aba
    call Call_000_3c49
    ld a, [$d732]
    res 5, a
    ld [$d732], a
    jp Jump_000_29df


    rla
    push bc
    ld h, l
    jr z, jr_000_2b0f

Jump_000_2abf:
    ld hl, $2ac8
    call Call_000_3c49
    jp Jump_000_29d6


    rla
    rst $28
    ld h, l
    jr z, @+$52

Jump_000_2acd:
    ld a, $04
    ldh [$b8], a
    ld [$2000], a
    ld a, [$d700]
    ld [$d11a], a
    ld a, $8f
    call Call_000_23b1

Jump_000_2adf:
    ld b, $01
    ld hl, $710b
    call Call_000_35d6
    ld b, $03
    ld hl, $452f

Jump_000_2aec:
    call Call_000_35d6
    call Call_000_2429

jr_000_2af2:
    call Call_000_3abe
    ld b, a
    bit 6, a
    jr z, jr_000_2b18

    ld a, [$cc26]
    and a
    jr nz, jr_000_2af2

    ld a, [$cc2a]
    and a
    jr nz, jr_000_2af2

    ld a, [$d74b]

Call_000_2b09:
    bit 5, a
    ld a, $06
    jr nz, jr_000_2b10

jr_000_2b0f:
    dec a

jr_000_2b10:
    ld [$cc26], a
    call Call_000_3bf9
    jr jr_000_2af2

jr_000_2b18:
    bit 7, a
    jr z, jr_000_2b35

Jump_000_2b1c:
    ld a, [$d74b]
    bit 5, a
    ld a, [$cc26]
    ld c, $07
    jr nz, jr_000_2b29

    dec c

jr_000_2b29:
    cp c
    jr nz, jr_000_2af2

    xor a
    ld [$cc26], a
    call Call_000_3bf9
    jr jr_000_2af2

jr_000_2b35:
    call Call_000_3bec
    ld a, [$cc26]
    ld [$cc2d], a
    ld a, b
    and $0a
    jp nz, Jump_000_2b70

    call Call_000_36f4
    ld a, [$d74b]
    bit 5, a
    ld a, [$cc26]
    jr nz, jr_000_2b52

    inc a

jr_000_2b52:
    cp $00

Call_000_2b54:
    jp z, $7095

    cp $01
    jp z, $70a9

    cp $02
    jp z, $7302

    cp $03
    jp z, $7460

    cp $04
    jp z, $75e3

Jump_000_2b6b:
    cp $05
    jp z, $75f6

Jump_000_2b70:
jr_000_2b70:
    call Call_000_019a
    ldh a, [$b3]
    bit 0, a
    jr nz, jr_000_2b70

    call Call_000_36a0
    jp Jump_000_29e8


Call_000_2b7f:
    ld c, $00

jr_000_2b81:
    ld a, [hl+]
    ld e, a
    ld d, $08

jr_000_2b85:
    srl e
    ld a, $00
    adc c
    ld c, a
    dec d
    jr nz, jr_000_2b85

    dec b
    jr nz, jr_000_2b81

    ld a, c
    ld [$d11e], a
    ret


Call_000_2b96:
    ld b, $01
    ld hl, $6b21
    jp Jump_000_35d6


Call_000_2b9e:
    ld de, $d349
    ld hl, $ffa1
    ld c, $03
    ld a, $0b
    call Call_000_3e6d
    ld a, $13
    ld [$d125], a
    call Call_000_30e8
    ld a, $b2
    call Call_000_3740
    jp Jump_000_3748


Call_000_2bbb:
Jump_000_2bbb:
    ldh a, [$b8]
    push af
    ld a, $03

Call_000_2bc0:
    ldh [$b8], a
    ld [$2000], a
    call $4e74
    pop af
    ldh [$b8], a
    ld [$2000], a
    ret


Call_000_2bcf:
    push bc
    ldh a, [$b8]
    push af
    ld a, $03
    ldh [$b8], a
    ld [$2000], a
    call $4e04
    pop bc
    ld a, b
    ldh [$b8], a
    ld [$2000], a
    pop bc
    ret


Call_000_2be6:
    xor a
    ldh [$ba], a
    ld a, $01
    ldh [$b7], a
    ld a, [$d05a]
    and a
    jr nz, jr_000_2bf7

    ld a, $01
    jr jr_000_2bf9

jr_000_2bf7:
    ld a, $0f

jr_000_2bf9:
    call Call_000_35bc
    ld hl, $d730
    set 6, [hl]
    xor a
    ld [$cc35], a
    ld [$d12a], a
    ld a, [$cf8b]
    ld l, a
    ld a, [$cf8c]
    ld h, a
    ld a, [hl]
    ld [$d12a], a
    ld a, $0d
    ld [$d125], a
    call Call_000_30e8
    call Call_000_2429
    ld hl, $c3cc
    ld de, $090e
    ld a, [$cf94]
    and a
    jr nz, jr_000_2c2e

    call Call_000_2429

jr_000_2c2e:
    ld a, $01
    ld [$cc37], a
    ld a, [$d12a]
    cp $02
    jr c, jr_000_2c3c

    ld a, $02

Call_000_2c3c:
jr_000_2c3c:
    ld [$cc28], a

Call_000_2c3f:
    ld a, $04
    ld [$cc24], a
    ld a, $05
    ld [$cc25], a
    ld a, $07
    ld [$cc29], a
    ld c, $0a
    call Call_000_3739

Jump_000_2c53:
    xor a
    ldh [$ba], a
    call Call_000_2e5a
    ld a, $01
    ldh [$ba], a
    call Call_000_3dd7
    ld a, [$d05a]
    and a
    jr z, jr_000_2c81

    ld a, $ed
    ld [$c3f5], a
    ld c, $50
    call Call_000_3739
    xor a
    ld [$cc26], a
    ld hl, $c3f5
    ld a, l
    ld [$cc30], a
    ld a, h
    ld [$cc31], a
    jr jr_000_2c91

jr_000_2c81:
    call Call_000_20ba
    call Call_000_3abe
    push af
    call Call_000_3b7c
    pop af
    bit 0, a
    jp z, Jump_000_2d2d

jr_000_2c91:
    ld a, [$cc26]
    call Call_000_3bec
    ld a, $01
    ld [$d12e], a
    ld [$d12d], a
    xor a
    ld [$cc37], a
    ld a, [$cc26]
    ld c, a
    ld a, [$cc36]
    add c
    ld c, a
    ld a, [$d12a]
    and a
    jp z, Jump_000_2e3b

    dec a
    cp c
    jp c, Jump_000_2e3b

    ld a, c
    ld [$cf92], a
    ld a, [$cf94]
    cp $03
    jr nz, jr_000_2cc5

    sla c

jr_000_2cc5:
    ld a, [$cf8b]
    ld l, a
    ld a, [$cf8c]
    ld h, a
    inc hl
    ld b, $00
    add hl, bc
    ld a, [hl]
    ld [$cf91], a
    ld a, [$cf94]
    and a
    jr z, jr_000_2cfc

    push hl
    call Call_000_37df
    pop hl
    ld a, [$cf94]
    cp $03
    jr nz, jr_000_2cec

    inc hl
    ld a, [hl]
    ld [$cf97], a

jr_000_2cec:
    ld a, [$cf91]
    ld [$d0b5], a
    ld a, $01
    ld [$d0b7], a
    call Call_000_376b
    jr jr_000_2d11

jr_000_2cfc:
    ld hl, $d163
    ld a, [$cf8b]
    cp l
    ld hl, $d2b5
    jr z, jr_000_2d0b

    ld hl, $de06

jr_000_2d0b:
    ld a, [$cf92]
    call Call_000_15ba

jr_000_2d11:
    ld de, $cd6d
    call Call_000_3826
    ld a, $01
    ld [$d12e], a
    ld a, [$cc26]
    ld [$d12d], a
    xor a
    ldh [$b7], a

Jump_000_2d25:
    ld hl, $d730
    res 6, [hl]
    jp Jump_000_35cd


Jump_000_2d2d:
    bit 1, a
    jp nz, Jump_000_2e3b

    bit 2, a
    jp nz, $6b44

    ld b, a
    bit 7, b
    ld hl, $cc36
    jr z, jr_000_2d4e

    ld a, [hl]
    add $03
    ld b, a
    ld a, [$d12a]

Call_000_2d46:
    cp b
    jp c, Jump_000_2c53

    inc [hl]
    jp Jump_000_2c53


jr_000_2d4e:
    ld a, [hl]
    and a
    jp z, Jump_000_2c53

    dec [hl]
    jp Jump_000_2c53


Call_000_2d57:
    ld hl, $c463
    ld b, $01
    ld c, $03
    ld a, [$cf94]
    cp $02
    jr nz, jr_000_2d6c

    ld hl, $c45b
    ld b, $01
    ld c, $0b

jr_000_2d6c:
    call Call_000_1922
    ld hl, $c478
    ld a, [$cf94]
    cp $02
    jr nz, jr_000_2d7c

    ld hl, $c470

jr_000_2d7c:
    ld de, $2e30
    call Call_000_1955
    xor a
    ld [$cf96], a
    jp Jump_000_2da2


Jump_000_2d89:
jr_000_2d89:
    call Call_000_3831
    ldh a, [$b3]
    bit 0, a
    jp nz, Jump_000_2e24

    bit 1, a
    jp nz, Jump_000_2e29

    bit 6, a
    jr nz, jr_000_2da2

    bit 7, a
    jr nz, jr_000_2db4

    jr jr_000_2d89

Jump_000_2da2:
jr_000_2da2:
    ld a, [$cf97]
    inc a
    ld b, a
    ld hl, $cf96
    inc [hl]
    ld a, [hl]
    cp b
    jr nz, jr_000_2dbe

    ld a, $01
    ld [hl], a
    jr jr_000_2dbe

jr_000_2db4:
    ld hl, $cf96
    dec [hl]
    jr nz, jr_000_2dbe

    ld a, [$cf97]
    ld [hl], a

jr_000_2dbe:
    ld hl, $c479

Call_000_2dc1:
    ld a, [$cf94]
    cp $02

Jump_000_2dc6:
    jr nz, jr_000_2e18

    ld c, $03
    ld a, [$cf96]
    ld b, a
    ld hl, $ff9f
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a

jr_000_2dd5:
    ld de, $ffa1
    ld hl, $ff8d
    push bc
    ld a, $0b
    call Call_000_3e6d
    pop bc
    dec b
    jr nz, jr_000_2dd5

    ldh a, [$8e]
    and a
    jr z, jr_000_2e04

    xor a
    ldh [$a2], a
    ldh [$a3], a
    ld a, $02
    ldh [$a4], a
    ld a, $0d
    call Call_000_3e6d
    ldh a, [$a2]
    ldh [$9f], a
    ldh a, [$a3]
    ldh [$a0], a

Call_000_2e00:
Jump_000_2e00:
    ldh a, [$a4]
    ldh [$a1], a

jr_000_2e04:
    ld hl, $c474
    ld de, $2e34
    call Call_000_1955
    ld de, $ff9f
    ld c, $a3
    call Call_000_15cd
    ld hl, $c471

jr_000_2e18:
    ld de, $cf96
    ld bc, $8102
    call Call_000_3c5f
    jp Jump_000_2d89


Jump_000_2e24:
    xor a
    ld [$cc35], a
    ret


Jump_000_2e29:
    xor a
    ld [$cc35], a
    ld a, $ff
    ret


    pop af
    or $f7
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld d, b

Jump_000_2e3b:
    ld a, [$cc26]
    ld [$d12d], a
    ld a, $02
    ld [$d12e], a
    ld [$cc37], a
    xor a
    ldh [$b7], a
    ld hl, $d730
    res 6, [hl]
    call Call_000_35cd
    xor a
    ld [$cc35], a
    scf
    ret


Call_000_2e5a:
    ld hl, $c3e1
    ld b, $09
    ld c, $0e
    call Call_000_18c4
    ld a, [$cf8b]
    ld e, a
    ld a, [$cf8c]
    ld d, a
    inc de
    ld a, [$cc36]
    ld c, a
    ld a, [$cf94]
    cp $03
    ld a, c
    jr nz, jr_000_2e7d

    sla a
    sla c

jr_000_2e7d:
    add e
    ld e, a
    jr nc, jr_000_2e82

    inc d

jr_000_2e82:
    ld hl, $c3f6
    ld b, $04

Jump_000_2e87:
    ld a, b
    ld [$cf92], a
    ld a, [de]
    ld [$d11e], a
    cp $ff
    jp z, Jump_000_2f91

    push bc
    push de
    push hl
    push hl
    push de
    ld a, [$cf94]
    and a
    jr z, jr_000_2ea8

    cp $01
    jr z, jr_000_2eca

    call Call_000_2fcf
    jr jr_000_2ecd

jr_000_2ea8:
    push hl
    ld hl, $d163
    ld a, [$cf8b]
    cp l
    ld hl, $d2b5
    jr z, jr_000_2eb8

    ld hl, $de06

jr_000_2eb8:
    ld a, [$cf92]
    ld b, a
    ld a, $04
    sub b
    ld b, a
    ld a, [$cc36]
    add b
    call Call_000_15ba
    pop hl
    jr jr_000_2ecd

jr_000_2eca:
    call Call_000_3058

jr_000_2ecd:
    call Call_000_1955
    pop de
    pop hl
    ld a, [$cf93]
    and a
    jr z, jr_000_2eed

    push hl
    ld a, [de]
    ld de, $4608
    ld [$cf91], a
    call Call_000_37df
    pop hl
    ld bc, $0019
    add hl, bc
    ld c, $a3
    call Call_000_15cd

jr_000_2eed:
    ld a, [$cf94]

Call_000_2ef0:
    and a
    jr nz, jr_000_2f31

    ld a, [$d11e]
    push af
    push hl
    ld hl, $d163
    ld a, [$cf8b]
    cp l
    ld a, $00

Jump_000_2f01:
    jr z, jr_000_2f05

    ld a, $02

jr_000_2f05:
    ld [$cc49], a
    ld hl, $cf92
    ld a, [hl]
    ld b, a
    ld a, $04
    sub b
    ld b, a
    ld a, [$cc36]
    add b
    ld [hl], a
    call Call_000_1372
    ld a, [$cc49]
    and a
    jr z, jr_000_2f25

    ld a, [$cf9b]
    ld [$cfb9], a

jr_000_2f25:
    pop hl
    ld bc, $001c
    add hl, bc
    call Call_000_150b
    pop af
    ld [$d11e], a

jr_000_2f31:
    pop hl

Jump_000_2f32:
    pop de
    inc de
    ld a, [$cf94]
    cp $03
    jr nz, jr_000_2f7f

    ld a, [$d11e]
    ld [$cf91], a
    call Call_000_30d9
    ld a, [$d124]
    and a
    jr nz, jr_000_2f6b

    push hl
    ld bc, $001c
    add hl, bc
    ld a, $f1
    ld [hl+], a
    ld a, [$d11e]
    push af
    ld a, [de]
    ld [$cf97], a
    push de
    ld de, $d11e
    ld [de], a
    ld bc, $0102
    call Call_000_3c5f
    pop de
    pop af
    ld [$d11e], a
    pop hl

jr_000_2f6b:
    inc de
    pop bc
    inc c
    push bc
    inc c
    ld a, [$cc35]
    and a
    jr z, jr_000_2f7f

    sla a
    cp c
    jr nz, jr_000_2f7f

    dec hl

Call_000_2f7c:
    ld a, $ec
    ld [hl+], a

jr_000_2f7f:
    ld bc, $0028
    add hl, bc
    pop bc
    inc c
    dec b
    jp nz, Jump_000_2e87

    ld bc, $fff8
    add hl, bc
    ld a, $ee
    ld [hl], a
    ret


Jump_000_2f91:
    ld de, $2f97
    jp Jump_000_1955


    add d
    add b
    adc l
    add d
    add h
    adc e
    ld d, b

Call_000_2f9e:
Jump_000_2f9e:
    push hl
    ldh a, [$b8]
    push af
    ld a, $07
    ldh [$b8], a

Call_000_2fa6:
    ld [$2000], a
    ld a, [$d11e]
    dec a
    ld hl, $421e
    ld c, $0a
    ld b, $00
    call Call_000_3a87
    ld de, $cd6d
    push de
    ld bc, $000a
    call Call_000_00b5
    ld hl, $cd77
    ld [hl], $50
    pop de
    pop af
    ldh [$b8], a
    ld [$2000], a
    pop hl
    ret


Call_000_2fcf:
    push hl
    push bc
    ld a, [$d11e]
    cp $c4
    jr nc, jr_000_2fea

    ld [$d0b5], a
    ld a, $04
    ld [$d0b6], a
    ld a, $01
    ld [$d0b7], a
    call Call_000_376b
    jr jr_000_2fed

jr_000_2fea:
    call Call_000_2ff3

jr_000_2fed:
    ld de, $cd6d
    pop bc
    pop hl
    ret


Call_000_2ff3:
Jump_000_2ff3:
    push hl
    push de
    push bc
    ld a, [$d11e]
    push af
    cp $c9
    jr nc, jr_000_300b

    add $05
    ld [$d11e], a

Call_000_3003:
    ld hl, $303e
    ld bc, $0002
    jr jr_000_3011

jr_000_300b:
    ld hl, $303c
    ld bc, $0002

jr_000_3011:
    ld de, $cd6d
    call Call_000_00b5
    ld a, [$d11e]
    sub $c8
    ld b, $f6

jr_000_301e:
    sub $0a
    jr c, jr_000_3025

    inc b
    jr jr_000_301e

jr_000_3025:
    add $0a
    push af
    ld a, b

Jump_000_3029:
    ld [de], a

Jump_000_302a:
    inc de
    pop af
    ld b, $f6
    add b
    ld [de], a
    inc de
    ld a, $50
    ld [de], a

Call_000_3034:
    pop af
    ld [$d11e], a
    pop bc
    pop de
    pop hl
    ret


Call_000_303c:
    sub e
    adc h
    add a
    adc h

Call_000_3040:
Jump_000_3040:
    cp $c4
    jr c, jr_000_3047

    cp $c9
    ret


jr_000_3047:
    and a
    ret


Call_000_3049:
    ld hl, $3052
    ld de, $0001
    jp Jump_000_3dab


Call_000_3052:
    rrca
    inc de

Call_000_3054:
    add hl, sp
    ld b, [hl]
    sub h
    rst $38

Call_000_3058:
    push hl
    ld a, $02
    ld [$d0b6], a
    ld a, [$d11e]

Jump_000_3061:
    ld [$d0b5], a
    ld a, $2c
    ld [$d0b7], a
    call Call_000_376b
    ld de, $cd6d
    pop hl
    ret


Call_000_3071:
Jump_000_3071:
    ldh a, [$b8]
    push af
    ld a, [$d35e]
    call Call_000_12bc

Jump_000_307a:
    call Call_000_0061
    call Call_000_36a0
    call Call_000_0caa
    call Call_000_09e8
    call Call_000_007b
    pop af
    ldh [$b8], a
    ld [$2000], a
    ret


Call_000_3090:
Jump_000_3090:
    ldh a, [$b8]
    push af
    ld a, [$d35e]
    call Call_000_12bc

Call_000_3099:
    call Call_000_0061
    call Call_000_09e8
    call Call_000_007b
    pop af
    ldh [$b8], a
    ld [$2000], a
    ret


Call_000_30a9:
    ld hl, $d72e
    res 4, [hl]

Jump_000_30ae:
    ld b, $1c
    ld hl, $4f90
    jp Jump_000_35d6


Call_000_30b6:
    ld a, $01
    ld [$cc3c], a
    ret


Call_000_30bc:
    ld b, $03
    ld hl, $55c7
    jp Jump_000_35d6


Call_000_30c4:
    ldh a, [$b8]
    push af
    ld a, $03
    ldh [$b8], a
    ld [$2000], a
    call $66f1
    pop de
    ld a, d
    ldh [$b8], a
    ld [$2000], a
    ret


Call_000_30d9:
    push hl
    push de
    push bc
    ld b, $03
    ld hl, $6764
    call Call_000_35d6
    pop bc
    pop de
    pop hl
    ret


Call_000_30e8:
Jump_000_30e8:
    ldh a, [$b8]
    push af
    ld a, $01
    ldh [$b8], a

Jump_000_30ef:
    ld [$2000], a
    call $72ea
    pop bc
    ld a, b
    ldh [$b8], a
    ld [$2000], a
    ret


Call_000_30fd:
    ld a, [$cc57]
    and a
    ret nz

    ld a, [$d736]
    bit 1, a
    ret nz

    ld a, [$d730]
    and $80
    ret


Call_000_310e:
    ld hl, $d736
    bit 0, [hl]
    res 0, [hl]
    jr nz, jr_000_3146

    ld a, [$cc57]
    and a
    ret z

    dec a
    add a
    ld d, $00
    ld e, a
    ld hl, $3140

Call_000_3124:
    add hl, de
    ld a, [hl+]

Call_000_3126:
    ld h, [hl]
    ld l, a
    ldh a, [$b8]
    push af
    ld a, [$cc58]
    ldh [$b8], a
    ld [$2000], a
    ld a, [$cf10]
    call Call_000_3d97
    pop af
    ldh [$b8], a
    ld [$2000], a
    ret


    ld b, d

Jump_000_3141:
    ld h, h
    db $10
    ld h, l
    ld a, l

Jump_000_3145:
    ld h, l

Call_000_3146:
jr_000_3146:
    ld b, $06
    ld hl, $63e0
    jp Jump_000_35d6


Jump_000_314e:
    ld b, $06
    ld hl, $641d
    jp Jump_000_35d6


    ret


Call_000_3157:
    ld a, h

Call_000_3158:
    ld [$da30], a
    ld a, l
    ld [$da31], a
    ret


Call_000_3160:
    push af
    push de
    call Call_000_3157
    pop hl
    pop af
    push hl
    ld hl, $d733
    bit 4, [hl]
    res 4, [hl]
    jr z, jr_000_3174

    ld a, [$da39]

jr_000_3174:
    pop hl
    ld [$da39], a
    call Call_000_3d97
    ld a, [$da39]
    ret


Call_000_317f:
Jump_000_317f:
    push de
    ld de, $cf5f
    ld bc, $0011
    call Call_000_00b5
    pop hl
    ld de, $cf70
    ld bc, $000b
    jp Jump_000_00b5


Call_000_3193:
    push de
    push af

Jump_000_3195:
    ld d, $00
    ld e, a

Call_000_3198:
    ld hl, $da30
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    add hl, de
    pop af
    and a
    jr nz, jr_000_31a9

    ld a, [hl]
    ld [$cc55], a
    jr jr_000_31c5

jr_000_31a9:
    cp $02
    jr z, jr_000_31c2

    cp $04
    jr z, jr_000_31c2

    cp $06
    jr z, jr_000_31c2

    cp $08
    jr z, jr_000_31c2

    cp $0a
    jr nz, jr_000_31c5

    ld a, [hl+]
    ld d, [hl]
    ld e, a
    jr jr_000_31c5

jr_000_31c2:
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_000_31c5:
    pop de
    ret


Call_000_31c7:
    ld a, $10
    jp Jump_000_3e6d


Call_000_31cc:
    call Call_000_3157
    xor a
    call Call_000_3193
    ld a, $02
    call Call_000_3193
    ld a, [$cc55]
    ld c, a
    ld b, $02
    call Call_000_31c7
    ld a, c
    and a
    jr z, jr_000_31ed

    ld a, $06
    call Call_000_3193
    jp Jump_000_3c49


jr_000_31ed:
    ld a, $04
    call Call_000_3193
    call Call_000_3c49
    ld a, $0a
    call Call_000_3193
    push de
    ld a, $08
    call Call_000_3193
    pop de
    call Call_000_3354
    ld hl, $d733
    set 4, [hl]
    ld hl, $cd60
    bit 0, [hl]
    ret nz

    call Call_000_336a
    ld hl, $da39
    inc [hl]

Jump_000_3216:
    jp Jump_000_325d


Call_000_3219:
Jump_000_3219:
    call Call_000_3306
    ld a, [$cf13]
    cp $ff
    jr nz, jr_000_322b

    xor a
    ld [$cf13], a
    ld [$cc55], a
    ret


jr_000_322b:
    ld hl, $d733
    set 3, [hl]
    ld [$cd4f], a
    xor a
    ld [$cd50], a
    ld a, $4c
    call Call_000_3e6d
    ld a, $f0
    ld [$cd6b], a
    xor a
    ldh [$b4], a
    call Call_000_32cf

Call_000_3247:
    ld hl, $da39
    inc [hl]
    ret


    ld a, [$d730]
    and $01
    ret nz

    ld [$cd6b], a
    ld a, [$cf13]
    ldh [$8c], a
    call Call_000_2920

Jump_000_325d:
    xor a
    ld [$cd6b], a
    call Call_000_32d7
    ld hl, $d72d
    set 6, [hl]
    set 7, [hl]
    ld hl, $d72e
    set 1, [hl]
    ld hl, $da39
    inc [hl]
    ret


Call_000_3275:
    ld hl, $d126
    set 5, [hl]
    set 6, [hl]
    ld hl, $d72d
    res 7, [hl]
    ld hl, $cd60
    res 0, [hl]
    ld a, [$d057]
    cp $ff
    jp z, Jump_000_32c1

    ld a, $02
    call Call_000_3193
    ld a, [$cc55]
    ld c, a
    ld b, $01
    call Call_000_31c7
    ld a, [$d713]
    cp $c8
    jr nc, jr_000_32b9

    ld hl, $d5ce
    ld de, $0002
    ld a, [$cf13]
    call Call_000_3dab
    inc hl
    ld a, [hl]
    ld [$cc4d], a
    ld a, $11
    call Call_000_3e6d

jr_000_32b9:
    ld hl, $d730
    bit 4, [hl]

Call_000_32be:
Jump_000_32be:
    res 4, [hl]
    ret nz

Jump_000_32c1:
    xor a
    ld [$cd6b], a
    ldh [$b4], a
    ldh [$b3], a

Call_000_32c9:
    ldh [$b2], a
    ld [$da39], a
    ret


Call_000_32cf:
    ld b, $15
    ld hl, $6881
    jp Jump_000_35d6


Call_000_32d7:
    ld a, [$cd2d]
    ld [$d059], a
    ld [$d713], a
    cp $c8
    ld a, [$cd2e]
    jr c, jr_000_32eb

    ld [$d05d], a
    ret


jr_000_32eb:
    ld [$d127], a
    ret


Call_000_32ef:
    ld hl, $67f9
    jr jr_000_3301

Call_000_32f4:
    ld hl, $6819
    jr jr_000_3301

Call_000_32f9:
    ld hl, $683d

Call_000_32fc:
    jr jr_000_3301

Call_000_32fe:
    ld hl, $685d

jr_000_3301:
    ld b, $15
    jp Jump_000_35d6


Call_000_3306:
    xor a
    call Call_000_3193
    ld d, h

Jump_000_330b:
    ld e, l

jr_000_330c:
    call Call_000_3157
    ld a, [de]
    ld [$cf13], a
    ld [$cc55], a
    cp $ff
    ret z

    ld a, $02
    call Call_000_3193
    ld b, $02
    ld a, [$cc55]
    ld c, a
    call Call_000_31c7

Call_000_3327:
    ld a, c
    and a
    jr nz, jr_000_334c

    push hl
    push de
    push hl
    xor a
    call Call_000_3193
    inc hl
    ld a, [hl]
    pop hl
    ld [$cd3e], a
    ld a, [$cf13]
    swap a
    ld [$cd3d], a
    ld a, $39

Call_000_3342:
    call Call_000_3e6d

Jump_000_3345:
    pop de
    pop hl
    ld a, [$cd3d]
    and a
    ret nz

jr_000_334c:
    ld hl, $000c
    add hl, de
    ld d, h
    ld e, l
    jr jr_000_330c

Call_000_3354:
    ldh a, [$b8]
    ld [$d092], a
    ld a, h

Call_000_335a:
    ld [$d08c], a
    ld a, l
    ld [$d08d], a
    ld a, d
    ld [$d08e], a
    ld a, e
    ld [$d08f], a
    ret


Call_000_336a:
    ld hl, $d504
    ld d, $00
    ld a, [$cf13]
    dec a
    add a
    ld e, a
    add hl, de
    ld a, [hl+]
    ld [$cd2d], a
    ld a, [hl]
    ld [$cd2e], a
    jp Jump_000_33e8


Call_000_3381:
    push hl
    ld hl, $d72d

Jump_000_3385:
    bit 7, [hl]
    res 7, [hl]
    pop hl

Call_000_338a:
    ret z

    ldh a, [$b8]
    push af
    ld a, [$d092]
    ldh [$b8], a
    ld [$2000], a
    push hl

Call_000_3397:
    ld b, $09
    ld hl, $7e4a
    call Call_000_35d6
    ld hl, $33cf
    call Call_000_3c49
    pop hl
    pop af

Call_000_33a7:
    ldh [$b8], a
    ld [$2000], a
    ld b, $06
    ld hl, $65e7
    call Call_000_35d6
    jp Jump_000_3748


Call_000_33b7:
    ld a, [$cf0b]
    and a
    jr nz, jr_000_33c6

    ld a, [$d08c]
    ld h, a
    ld a, [$d08d]
    ld l, a

Call_000_33c5:
    ret


jr_000_33c6:
    ld a, [$d08e]
    ld h, a
    ld a, [$d08f]
    ld l, a
    ret


    rla
    ld b, l
    ld b, b
    jr nz, @+$0a

    call Call_000_33b7
    call Call_000_1b40
    jp Jump_000_24d7


    ld a, [$cd60]
    bit 0, a
    ret nz

    call Call_000_336a
    xor a
    ret


Jump_000_33e8:
    ld a, [$cd2d]
    cp $e1
    ret z

    cp $f2
    ret z

    cp $f3
    ret z

    ld a, [$d05c]
    and a
    ret nz

    xor a
    ld [$cfc7], a
    ld a, $ff
    call Call_000_23b1
    ld a, $1f
    ld [$c0ef], a
    ld [$c0f0], a
    ld a, [$cd2d]
    ld b, a

Jump_000_340e:
    ld hl, $3439

jr_000_3411:
    ld a, [hl+]
    cp $ff
    jr z, jr_000_341d

    cp b
    jr nz, jr_000_3411

Jump_000_3419:
    ld a, $f6
    jr jr_000_342e

jr_000_341d:
    ld hl, $3434

jr_000_3420:
    ld a, [hl+]
    cp $ff
    jr z, jr_000_342c

Jump_000_3425:
    cp b
    jr nz, jr_000_3420

    ld a, $f9
    jr jr_000_342e

jr_000_342c:
    ld a, $fc

jr_000_342e:
    ld [$c0ee], a
    jp Jump_000_23b1


Call_000_3434:
    set 1, [hl]
    jp c, $ffe8

    push de
    reti


    call c, $e3dd
    db $e4
    push hl
    and $ff

Call_000_3442:
jr_000_3442:
    ld a, [hl+]
    cp $ff
    ret z

    cp b
    jr nz, jr_000_345b

    ld a, [hl+]
    cp c
    jr nz, jr_000_345c

    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $ccd3
    call Call_000_350c
    dec a
    ld [$cd38], a
    ret


jr_000_345b:
    inc hl

jr_000_345c:
    inc hl
    inc hl
    jr jr_000_3442

Jump_000_3460:
    call Call_000_36f4
    ld b, $01
    ld hl, $78e6
    jr jr_000_3479

Jump_000_346a:
    call Call_000_36f4
    ld b, $08
    ld hl, $54c2
    jr jr_000_3479

Jump_000_3474:
    ld b, $14
    ld hl, $671b

jr_000_3479:
    call Call_000_35d6
    jp Jump_000_29df


Jump_000_347f:
    ld b, $05
    ld hl, $7e2c
    jr jr_000_3479

Call_000_3486:
Jump_000_3486:
    xor a
    ld [$cd3b], a
    ld [$c206], a
    ld hl, $d730
    set 7, [hl]
    ret


Call_000_3493:
Jump_000_3493:
    ld a, $1c
    call Call_000_3e6d
    ld a, b
    and a
    ret


Call_000_349b:
    ld [$d11e], a
    ld b, $01
    ld hl, $7c18

Jump_000_34a3:
    jp Jump_000_35d6


Call_000_34a6:
Jump_000_34a6:
    call Call_000_34ae
    ld c, $06
    jp Jump_000_3739


Call_000_34ae:
    ld a, $09
    ldh [$8b], a
    call Call_000_34fc
    ldh a, [$8d]
    ld [hl], a
    ret


Call_000_34b9:
    ld de, $fff9
    add hl, de
    ld [hl], a
    ret


Call_000_34bf:
    ld a, [$d361]
    ld b, a
    ld a, [$d362]
    ld c, a

Jump_000_34c7:
    xor a
    ld [$cd3d], a

jr_000_34cb:
    ld a, [hl+]
    cp $ff
    jr z, jr_000_34e2

    push hl
    ld hl, $cd3d
    inc [hl]
    pop hl

Call_000_34d6:
    cp b
    jr z, jr_000_34dc

    inc hl
    jr jr_000_34cb

Call_000_34dc:
jr_000_34dc:
    ld a, [hl+]
    cp c
    jr nz, jr_000_34cb

    scf
    ret


jr_000_34e2:
    and a
    ret


Call_000_34e4:
    push hl
    ld hl, $c204
    ldh a, [$8c]
    swap a
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl+]
    sub $04
    ld b, a
    ld a, [hl]
    sub $04
    ld c, a
    pop hl
    jp Jump_000_34c7


Call_000_34fc:
    ld h, $c1
    jr jr_000_3502

Call_000_3500:
    ld h, $c2

jr_000_3502:
    ldh a, [$8b]
    ld b, a
    ldh a, [$8c]
    swap a
    add b
    ld l, a
    ret


Call_000_350c:
    xor a
    ld [$ccd2], a

jr_000_3510:
    ld a, [de]
    cp $ff
    jr z, jr_000_352b

    ldh [$8b], a
    inc de
    ld a, [de]
    ld b, $00
    ld c, a
    ld a, [$ccd2]
    add c
    ld [$ccd2], a
    ldh a, [$8b]
    call Call_000_36e0
    inc de
    jr jr_000_3510

jr_000_352b:
    ld a, $ff
    ld [hl], a
    ld a, [$ccd2]
    inc a
    ret


    push hl
    call Call_000_354e
    ld [hl], $fe
    call Call_000_3558
    ldh a, [$8d]
    ld [hl], a
    pop hl
    ret


Call_000_3541:
Jump_000_3541:
    push hl
    call Call_000_354e
    ld [hl], $ff
    call Call_000_3558
    ld [hl], $ff
    pop hl
    ret


Call_000_354e:
    ld h, $c2
    ldh a, [$8c]
    swap a
    add $06
    ld l, a
    ret


Call_000_3558:
    push de
    ld hl, $d4e4
    ldh a, [$8c]
    dec a
    add a
    ld d, $00
    ld e, a

Jump_000_3563:
    add hl, de
    pop de
    ret


Call_000_3566:
    call Call_000_359e
    ld a, [$d12b]
    and a
    jr nz, jr_000_3594

    ld a, $0e
    call Call_000_35bc
    ld a, [$d031]
    dec a
    ld hl, $5914
    ld bc, $0005
    call Call_000_3a87

Jump_000_3581:
    ld de, $d033
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ld de, $d046
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    jp Jump_000_35cd


jr_000_3594:
    ld hl, $d033
    ld de, $6ede
    ld [hl], e
    inc hl
    ld [hl], d
    ret


Call_000_359e:
    ld b, $04
    ld hl, $7a58

Call_000_35a3:
    jp Jump_000_35d6


Call_000_35a6:
    ld de, $d347
    ld hl, $ff9f
    ld c, $03
    jp Jump_000_3a8e


Call_000_35b1:
Jump_000_35b1:
    ld de, $d5a4
    ld hl, $ffa0
    ld c, $02
    jp Jump_000_3a8e


Call_000_35bc:
    ld [$cf09], a
    ldh a, [$b8]
    ld [$cf08], a
    ld a, [$cf09]
    ldh [$b8], a
    ld [$2000], a
    ret


Call_000_35cd:
Jump_000_35cd:
    ld a, [$cf08]
    ldh [$b8], a
    ld [$2000], a
    ret


Call_000_35d6:
Jump_000_35d6:
    ldh a, [$b8]
    push af
    ld a, b

Jump_000_35da:
    ldh [$b8], a
    ld [$2000], a
    ld bc, $35e4
    push bc
    jp hl


    pop bc
    ld a, b

Call_000_35e6:
    ldh [$b8], a
    ld [$2000], a
    ret


Call_000_35ec:
    call Call_000_3719
    call Call_000_35ff
    jr jr_000_3628

    ld a, $14
    ld [$d125], a
    call Call_000_35ff
    jp Jump_000_30e8


Call_000_35ff:
    xor a
    ld [$d12c], a
    ld hl, $c43a
    ld bc, $080f
    ret


Call_000_360a:
    call Call_000_3719
    ld a, $06
    ld [$d12c], a
    ld hl, $c423
    ld bc, $080c
    jr jr_000_3628

    call Call_000_3719

Jump_000_361d:
    ld a, $03
    ld [$d12c], a
    ld hl, $c438
    ld bc, $080d

jr_000_3628:
    ld a, $14
    ld [$d125], a
    call Call_000_30e8
    jp Jump_000_3725


Call_000_3633:
    sub b
    ret nc

    cpl
    add $01
    scf
    ret


Call_000_363a:
Jump_000_363a:
    call Call_000_3541

Jump_000_363d:
    push hl
    push bc
    call Call_000_354e
    xor a
    ld [hl], a
    ld hl, $cc5b
    ld c, $00

jr_000_3649:
    ld a, [de]
    ld [hl+], a
    inc de
    inc c
    cp $ff
    jr nz, jr_000_3649

    ld a, c

Jump_000_3652:
    ld [$cf0f], a
    pop bc
    ld hl, $d730
    set 0, [hl]
    pop hl
    xor a
    ld [$cd3b], a
    ld [$ccd3], a
    dec a
    ld [$cd6b], a
    ld [$cd3a], a
    ret


Call_000_366b:
    push hl
    ld hl, $ffe7
    xor a
    ld [hl-], a
    ld a, [hl-]
    and a

Call_000_3673:
    jr z, jr_000_367e

    ld a, [hl+]

jr_000_3676:
    sub [hl]
    jr c, jr_000_367e

    inc hl
    inc [hl]
    dec hl
    jr jr_000_3676

jr_000_367e:
    pop hl
    ret


Call_000_3680:
    ldh a, [rLCDC]
    bit 7, a
    jr nz, jr_000_3694

    ld hl, $5a80
    ld de, $8800
    ld bc, $0400
    ld a, $04
    jp Jump_000_182b


jr_000_3694:
    ld de, $5a80
    ld hl, $8800
    ld bc, $0480
    jp Jump_000_1886


Call_000_36a0:
Jump_000_36a0:
    ldh a, [rLCDC]
    bit 7, a
    jr nz, jr_000_36b4

    ld hl, $6288
    ld de, $9600
    ld bc, $0200
    ld a, $04

Call_000_36b1:
    jp Jump_000_17f7


jr_000_36b4:
    ld de, $6288
    ld hl, $9600
    ld bc, $0420
    jp Jump_000_1848


Call_000_36c0:
    ldh a, [rLCDC]
    bit 7, a

Call_000_36c4:
    jr nz, jr_000_36d4

    ld hl, $5ea0
    ld de, $9620
    ld bc, $01e0
    ld a, $04
    jp Jump_000_17f7


jr_000_36d4:
    ld de, $5ea0
    ld hl, $9620
    ld bc, $041e
    jp Jump_000_1848


Call_000_36e0:
Jump_000_36e0:
    push de
    ld d, a

jr_000_36e2:
    ld a, d
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_000_36e2

    pop de
    ret


Call_000_36eb:
    ld hl, $d0ab
    ld [hl], e
    inc hl
    ld [hl], d
    jp Jump_000_24fd


Call_000_36f4:
    ld hl, $c3a0
    ld de, $cd81
    ld bc, $0168

Call_000_36fd:
    call Call_000_00b5
    ret


Call_000_3701:
Jump_000_3701:
    call Call_000_3709
    ld a, $01
    ldh [$ba], a
    ret


Call_000_3709:
    xor a
    ldh [$ba], a
    ld hl, $cd81
    ld de, $c3a0
    ld bc, $0168
    call Call_000_00b5
    ret


Call_000_3719:
Jump_000_3719:
    ld hl, $c3a0
    ld de, $c508
    ld bc, $0168
    jp Jump_000_00b5


Call_000_3725:
Jump_000_3725:
    xor a
    ldh [$ba], a

Call_000_3728:
    ld hl, $c508
    ld de, $c3a0
    ld bc, $0168
    call Call_000_00b5
    ld a, $01
    ldh [$ba], a
    ret


Call_000_3739:
Jump_000_3739:
jr_000_3739:
    call Call_000_20af
    dec c
    jr nz, jr_000_3739

    ret


Call_000_3740:
Jump_000_3740:
    push af
    call Call_000_3748
    pop af
    jp Jump_000_23b1


Call_000_3748:
Jump_000_3748:
    ld a, [$d083]
    and $80
    ret nz

    push hl

jr_000_374f:
    ld hl, $c02a
    xor a
    or [hl]
    inc hl
    or [hl]
    inc hl
    inc hl
    or [hl]
    jr nz, jr_000_374f

    pop hl
    ret


    ld e, $42
    nop
    ld b, b
    sub d
    ld c, d
    dec hl
    ld b, a
    ld [hl], e
    jp nc, $d9ac

    rst $38
    ld e, c

Call_000_376b:
    ld a, [$d0b5]
    ld [$d11e], a
    cp $c4
    jp nc, Jump_000_2ff3

    ldh a, [$b8]
    push af
    push hl
    push bc
    push de
    ld a, [$d0b6]
    dec a
    jr nz, jr_000_378d

    call Call_000_2f9e
    ld hl, $000b
    add hl, de
    ld e, l
    ld d, h
    jr jr_000_37cd

jr_000_378d:
    ld a, [$d0b7]
    ldh [$b8], a
    ld [$2000], a
    ld a, [$d0b6]
    dec a
    add a
    ld d, $00
    ld e, a
    jr nc, jr_000_37a0

    inc d

jr_000_37a0:
    ld hl, $375d
    add hl, de
    ld a, [hl+]
    ldh [$96], a
    ld a, [hl]
    ldh [$95], a
    ldh a, [$95]
    ld h, a
    ldh a, [$96]
    ld l, a
    ld a, [$d0b5]
    ld b, a
    ld c, $00

jr_000_37b6:
    ld d, h
    ld e, l

jr_000_37b8:
    ld a, [hl+]
    cp $50
    jr nz, jr_000_37b8

    inc c
    ld a, b
    cp c
    jr nz, jr_000_37b6

    ld h, d
    ld l, e
    ld de, $cd6d
    ld bc, $0014
    call Call_000_00b5

jr_000_37cd:
    ld a, e
    ld [$cf8d], a
    ld a, d
    ld [$cf8e], a
    pop de
    pop bc
    pop hl
    pop af
    ldh [$b8], a
    ld [$2000], a
    ret


Call_000_37df:
    ldh a, [$b8]
    push af
    ld a, [$cf94]
    cp $01
    ld a, $01
    jr nz, jr_000_37ed

    ld a, $0f

jr_000_37ed:
    ldh [$b8], a
    ld [$2000], a
    ld hl, $cf8f
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$cf91]
    cp $c4
    jr nc, jr_000_3812

    ld bc, $0003

Jump_000_3802:
jr_000_3802:
    add hl, bc
    dec a
    jr nz, jr_000_3802

    dec hl
    ld a, [hl-]
    ldh [$8d], a
    ld a, [hl-]
    ldh [$8c], a
    ld a, [hl]
    ldh [$8b], a
    jr jr_000_381c

jr_000_3812:
    ld a, $1e
    ldh [$b8], a
    ld [$2000], a

Jump_000_3819:
    call $7f86

jr_000_381c:
    ld de, $ff8b
    pop af
    ldh [$b8], a

Jump_000_3822:
    ld [$2000], a
    ret


Call_000_3826:
Jump_000_3826:
    ld hl, $cf4b

Call_000_3829:
jr_000_3829:
    ld a, [de]
    inc de
    ld [hl+], a
    cp $50
    jr nz, jr_000_3829

Call_000_3830:
    ret


Call_000_3831:
    call Call_000_019a
    ldh a, [$b7]
    and a

Call_000_3837:
    ldh a, [$b3]

Jump_000_3839:
    jr z, jr_000_383d

    ldh a, [$b4]

jr_000_383d:
    ldh [$b5], a
    ldh a, [$b3]
    and a
    jr z, jr_000_3849

    ld a, $1e
    ldh [$d5], a
    ret


jr_000_3849:
    ldh a, [$d5]
    and a
    jr z, jr_000_3852

    xor a
    ldh [$b5], a
    ret


jr_000_3852:
    ldh a, [$b4]
    and $03
    jr z, jr_000_3860

    ldh a, [$b6]
    and a
    jr nz, jr_000_3860

    xor a
    ldh [$b5], a

jr_000_3860:
    ld a, $05
    ldh [$d5], a
    ret


Call_000_3865:
Jump_000_3865:
    ldh a, [$8b]
    push af
    ldh a, [$8c]
    push af
    xor a
    ldh [$8b], a
    ld a, $06
    ldh [$8c], a

jr_000_3872:
    push hl
    ld a, [$d09b]
    and a
    jr z, jr_000_387c

    call $56c6

jr_000_387c:
    ld hl, $c4f2
    call Call_000_3c04
    pop hl
    call Call_000_3831
    ld a, $2d
    call Call_000_3e6d
    ldh a, [$b5]
    and $03
    jr z, jr_000_3872

    pop af
    ldh [$8c], a
    pop af
    ldh [$8b], a
    ret


Call_000_3898:
    ld a, [$d12b]
    cp $04
    jr z, jr_000_38a7

    call Call_000_3865
    ld a, $90
    jp Jump_000_23b1


jr_000_38a7:
    ld c, $41
    jp Jump_000_3739


Call_000_38ac:
Jump_000_38ac:
    push hl
    push bc

Jump_000_38ae:
    ld hl, $7d41
    ld b, $0d
    call Call_000_35d6
    pop bc
    pop hl
    ret


Call_000_38b9:
    push hl
    push de
    push bc
    ldh a, [$b8]
    push af
    ld a, $0d
    ldh [$b8], a
    ld [$2000], a

Call_000_38c6:
    call $7da5
    pop af
    ldh [$b8], a
    ld [$2000], a
    pop bc
    pop de
    pop hl
    ret


Call_000_38d3:
Jump_000_38d3:
    ld a, [$d730]
    bit 6, a
    ret nz

    ld a, [$d358]
    bit 1, a
    ret z

    push hl
    push de
    push bc
    ld a, [$d358]

Jump_000_38e5:
    bit 0, a
    jr z, jr_000_38f2

    ld a, [$d355]
    and $0f
    ldh [$d5], a
    jr jr_000_38f6

jr_000_38f2:
    ld a, $01
    ldh [$d5], a

jr_000_38f6:
    call Call_000_019a
    ldh a, [$b4]
    bit 0, a
    jr z, jr_000_3901

    jr jr_000_3905

jr_000_3901:
    bit 1, a
    jr z, jr_000_390a

Call_000_3905:
jr_000_3905:
    call Call_000_20af
    jr jr_000_390f

Jump_000_390a:
jr_000_390a:
    ldh a, [$d5]
    and a
    jr nz, jr_000_38f6

jr_000_390f:
    pop bc
    pop de
    pop hl
    ret


Call_000_3913:
Jump_000_3913:
jr_000_3913:
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, h
    cp b
    jr nz, jr_000_3913

    ld a, l
    cp c
    jr nz, jr_000_3913

    ret


Call_000_391f:
    ld hl, $7b68
    ld b, $01
    jp Jump_000_35d6


Call_000_3927:
    push hl
    push de
    push bc
    ld b, $03
    ld hl, $72e5
    call Call_000_35d6
    pop bc
    pop de
    pop hl

Call_000_3935:
    ret


Call_000_3936:
Jump_000_3936:
    ld c, $00

jr_000_3938:
    inc c
    call Call_000_394a
    ldh a, [$97]
    ld [de], a
    inc de
    ldh a, [$98]
    ld [de], a
    inc de
    ld a, c
    cp $05
    jr nz, jr_000_3938

    ret


Call_000_394a:
    push hl
    push de

Jump_000_394c:
    push bc
    ld a, b
    ld d, a
    push hl
    ld hl, $d0b8
    ld b, $00
    add hl, bc

Jump_000_3956:
    ld a, [hl]
    ld e, a
    pop hl
    push hl
    sla c
    ld a, d
    and a
    jr z, jr_000_397f

    add hl, bc

jr_000_3961:
    xor a
    ldh [$96], a
    ldh [$97], a
    inc b
    ld a, b
    cp $ff
    jr z, jr_000_397f

    ldh [$98], a
    ldh [$99], a
    call Call_000_38ac
    ld a, [hl-]
    ld d, a
    ldh a, [$98]
    sub d
    ld a, [hl+]
    ld d, a
    ldh a, [$97]
    sbc d
    jr c, jr_000_3961

jr_000_397f:
    srl c
    pop hl
    push bc
    ld bc, $000b

Call_000_3986:
    add hl, bc
    pop bc
    ld a, c
    cp $02
    jr z, jr_000_39bf

    cp $03
    jr z, jr_000_39c6

    cp $04
    jr z, jr_000_39cb

    cp $05
    jr z, jr_000_39d3

    push bc
    ld a, [hl]
    swap a
    and $01
    sla a
    sla a
    sla a
    ld b, a

Call_000_39a6:
    ld a, [hl+]
    and $01
    sla a
    sla a
    add b
    ld b, a
    ld a, [hl]
    swap a
    and $01
    sla a

Call_000_39b6:
    add b
    ld b, a

Call_000_39b8:
    ld a, [hl]
    and $01
    add b
    pop bc
    jr jr_000_39d7

jr_000_39bf:
    ld a, [hl]
    swap a
    and $0f
    jr jr_000_39d7

jr_000_39c6:
    ld a, [hl]
    and $0f
    jr jr_000_39d7

jr_000_39cb:
    inc hl
    ld a, [hl]
    swap a
    and $0f
    jr jr_000_39d7

jr_000_39d3:
    inc hl
    ld a, [hl]
    and $0f

jr_000_39d7:
    ld d, $00
    add e
    ld e, a
    jr nc, jr_000_39de

    inc d

jr_000_39de:
    sla e
    rl d
    srl b
    srl b
    ld a, b
    add e
    jr nc, jr_000_39eb

    inc d

jr_000_39eb:
    ldh [$98], a
    ld a, d
    ldh [$97], a

Jump_000_39f0:
    xor a
    ldh [$96], a
    ld a, [$d127]
    ldh [$99], a
    call Call_000_38ac
    ldh a, [$96]
    ldh [$95], a
    ldh a, [$97]
    ldh [$96], a
    ldh a, [$98]
    ldh [$97], a
    ld a, $64
    ldh [$99], a
    ld a, $03
    ld b, a
    call Call_000_38b9
    ld a, c

Jump_000_3a12:
    cp $01
    ld a, $05
    jr nz, jr_000_3a2a

    ld a, [$d127]
    ld b, a
    ldh a, [$98]
    add b
    ldh [$98], a
    jr nc, jr_000_3a28

Jump_000_3a23:
    ldh a, [$97]
    inc a
    ldh [$97], a

jr_000_3a28:
    ld a, $0a

jr_000_3a2a:
    ld b, a
    ldh a, [$98]
    add b
    ldh [$98], a
    jr nc, jr_000_3a37

    ldh a, [$97]
    inc a
    ldh [$97], a

jr_000_3a37:
    ldh a, [$97]
    cp $04
    jr nc, jr_000_3a47

    cp $03
    jr c, jr_000_3a4f

    ldh a, [$98]
    cp $e8
    jr c, jr_000_3a4f

jr_000_3a47:
    ld a, $03
    ldh [$97], a
    ld a, $e7
    ldh [$98], a

jr_000_3a4f:
    pop bc
    pop de
    pop hl
    ret


Call_000_3a53:
    ldh a, [$b8]
    push af
    ld a, $03
    ldh [$b8], a
    ld [$2000], a
    call $749d
    pop bc
    ld a, b
    ldh [$b8], a
    ld [$2000], a

Jump_000_3a67:
    ret


Call_000_3a68:
    ldh a, [$b8]
    push af
    ld a, $03
    ldh [$b8], a
    ld [$2000], a
    call $751e
    pop bc
    ld a, b
    ldh [$b8], a
    ld [$2000], a
    ret


Call_000_3a7d:
Jump_000_3a7d:
    and a
    ret z

    ld bc, $000b

jr_000_3a82:
    add hl, bc
    dec a
    jr nz, jr_000_3a82

    ret


Call_000_3a87:
    and a
    ret z

jr_000_3a89:
    add hl, bc

Call_000_3a8a:
    dec a
    jr nz, jr_000_3a89

    ret


Call_000_3a8e:
Jump_000_3a8e:
jr_000_3a8e:
    ld a, [de]

Jump_000_3a8f:
    cp [hl]
    ret nz

    inc de
    inc hl
    dec c
    jr nz, jr_000_3a8e

    ret


Call_000_3a97:
Jump_000_3a97:
    ld h, $c3
    swap a
    ld l, a
    call Call_000_3ab3
    push bc
    ld a, $08
    add c
    ld c, a
    call Call_000_3ab3
    pop bc
    ld a, $08
    add b
    ld b, a
    call Call_000_3ab3
    ld a, $08
    add c
    ld c, a

Call_000_3ab3:
    ld [hl], b

Jump_000_3ab4:
    inc hl

Jump_000_3ab5:
    ld [hl], c
    inc hl
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ret


Call_000_3abe:
Jump_000_3abe:
    xor a
    ld [$d09b], a

Call_000_3ac2:
    ldh a, [$8b]
    push af
    ldh a, [$8c]

Jump_000_3ac7:
    push af
    xor a
    ldh [$8b], a
    ld a, $06
    ldh [$8c], a

Jump_000_3acf:
    xor a
    ld [$d08b], a
    call Call_000_3b7c
    call Call_000_3dd7

jr_000_3ad9:
    push hl
    ld a, [$d09b]
    and a
    jr z, jr_000_3ae8

    ld b, $1c
    ld hl, $56ff
    call Call_000_35d6

jr_000_3ae8:
    pop hl
    call Call_000_3831
    ldh a, [$b5]
    and a
    jr nz, jr_000_3b0c

    push hl
    ld hl, $c48e
    call Call_000_3c04

Jump_000_3af8:
    pop hl
    ld a, [$cc34]
    dec a
    jr z, jr_000_3b01

    jr jr_000_3ad9

jr_000_3b01:
    pop af
    ldh [$8c], a
    pop af
    ldh [$8b], a
    xor a
    ld [$cc4a], a
    ret


jr_000_3b0c:
    xor a
    ld [$cc4b], a
    ldh a, [$b5]
    ld b, a
    bit 6, a
    jr z, jr_000_3b31

Jump_000_3b17:
    ld a, [$cc26]
    and a
    jr z, jr_000_3b23

    dec a
    ld [$cc26], a
    jr jr_000_3b4c

jr_000_3b23:
    ld a, [$cc4a]
    and a
    jr z, jr_000_3b74

    ld a, [$cc28]
    ld [$cc26], a
    jr jr_000_3b4c

jr_000_3b31:
    bit 7, a
    jr z, jr_000_3b4c

    ld a, [$cc26]
    inc a
    ld c, a
    ld a, [$cc28]
    cp c
    jr nc, jr_000_3b48

    ld a, [$cc4a]
    and a
    jr z, jr_000_3b74

    ld c, $00

jr_000_3b48:
    ld a, c
    ld [$cc26], a

jr_000_3b4c:
    ld a, [$cc29]
    and b
    jp z, Jump_000_3acf

jr_000_3b53:
    ldh a, [$b5]
    and $03
    jr z, jr_000_3b67

    push hl
    ld hl, $cd60
    bit 5, [hl]
    pop hl
    jr nz, jr_000_3b67

    ld a, $90
    call Call_000_23b1

jr_000_3b67:
    pop af
    ldh [$8c], a
    pop af
    ldh [$8b], a
    xor a
    ld [$cc4a], a
    ldh a, [$b5]

Call_000_3b73:
    ret


jr_000_3b74:
    ld a, [$cc37]
    and a
    jr z, jr_000_3b4c

    jr jr_000_3b53

Call_000_3b7c:
    ld a, [$cc24]
    and a
    jr z, jr_000_3b8c

    ld hl, $c3a0
    ld bc, $0014

jr_000_3b88:
    add hl, bc
    dec a
    jr nz, jr_000_3b88

jr_000_3b8c:
    ld a, [$cc25]

Jump_000_3b8f:
    ld b, $00
    ld c, a
    add hl, bc
    push hl
    ld a, [$cc2a]
    and a
    jr z, jr_000_3bae

    push af
    ldh a, [$f6]
    bit 1, a
    jr z, jr_000_3ba6

    ld bc, $0014
    jr jr_000_3ba9

jr_000_3ba6:
    ld bc, $0028

jr_000_3ba9:
    pop af

jr_000_3baa:
    add hl, bc
    dec a
    jr nz, jr_000_3baa

jr_000_3bae:
    ld a, [hl]
    cp $ed
    jr nz, jr_000_3bb7

    ld a, [$cc27]
    ld [hl], a

jr_000_3bb7:
    pop hl
    ld a, [$cc26]
    and a
    jr z, jr_000_3bd2

    push af
    ldh a, [$f6]
    bit 1, a
    jr z, jr_000_3bca

    ld bc, $0014
    jr jr_000_3bcd

jr_000_3bca:
    ld bc, $0028

jr_000_3bcd:
    pop af

jr_000_3bce:
    add hl, bc
    dec a
    jr nz, jr_000_3bce

Call_000_3bd2:
jr_000_3bd2:
    ld a, [hl]
    cp $ed
    jr z, jr_000_3bda

    ld [$cc27], a

jr_000_3bda:
    ld a, $ed
    ld [hl], a
    ld a, l
    ld [$cc30], a
    ld a, h
    ld [$cc31], a
    ld a, [$cc26]
    ld [$cc2a], a
    ret


Call_000_3bec:
    ld b, a
    ld a, [$cc30]
    ld l, a
    ld a, [$cc31]
    ld h, a
    ld [hl], $ec
    ld a, b
    ret


Call_000_3bf9:
Jump_000_3bf9:
    ld a, [$cc30]
    ld l, a
    ld a, [$cc31]

Call_000_3c00:
    ld h, a
    ld [hl], $7f

Jump_000_3c03:
    ret


Call_000_3c04:
    ld a, [hl]
    ld b, a
    ld a, $ee
    cp b
    jr nz, jr_000_3c23

    ldh a, [$8b]
    dec a
    ldh [$8b], a
    ret nz

    ldh a, [$8c]
    dec a
    ldh [$8c], a
    ret nz

    ld a, $7f
    ld [hl], a
    ld a, $ff
    ldh [$8b], a
    ld a, $06
    ldh [$8c], a
    ret


jr_000_3c23:
    ldh a, [$8b]
    and a
    ret z

    dec a

Jump_000_3c28:
    ldh [$8b], a
    ret nz

    dec a
    ldh [$8b], a
    ldh a, [$8c]

Call_000_3c30:
    dec a
    ldh [$8c], a
    ret nz

    ld a, $06
    ldh [$8c], a
    ld a, $ee
    ld [hl], a
    ret


Call_000_3c3c:
Jump_000_3c3c:
    xor a
    jr jr_000_3c41

Jump_000_3c3f:
    ld a, $01

jr_000_3c41:
    ld [$cf0c], a
    xor a
    ld [$cc3c], a
    ret


Call_000_3c49:
Jump_000_3c49:
    push hl
    ld a, $01
    ld [$d125], a
    call Call_000_30e8
    call Call_000_2429
    call Call_000_3dd7
    pop hl

Call_000_3c59:
    ld bc, $c4b9
    jp Jump_000_1b40


Call_000_3c5f:
Jump_000_3c5f:
    push bc
    xor a
    ldh [$95], a
    ldh [$96], a
    ldh [$97], a
    ld a, b
    and $0f

Jump_000_3c6a:
    cp $01
    jr z, jr_000_3c88

    cp $02
    jr z, jr_000_3c7f

    ld a, [de]
    ldh [$96], a
    inc de
    ld a, [de]
    ldh [$97], a
    inc de
    ld a, [de]
    ldh [$98], a
    jr jr_000_3c8b

jr_000_3c7f:
    ld a, [de]
    ldh [$97], a
    inc de
    ld a, [de]
    ldh [$98], a
    jr jr_000_3c8b

jr_000_3c88:
    ld a, [de]
    ldh [$98], a

jr_000_3c8b:
    push de
    ld d, b
    ld a, c
    ld b, a
    xor a
    ld c, a
    ld a, b
    cp $02
    jr z, jr_000_3cfc

    cp $03
    jr z, jr_000_3cec

    cp $04
    jr z, jr_000_3cdb

Jump_000_3c9e:
    cp $05
    jr z, jr_000_3cca

    cp $06
    jr z, jr_000_3cb8

    ld a, $0f
    ldh [$99], a
    ld a, $42
    ldh [$9a], a
    ld a, $40

Jump_000_3cb0:
    ldh [$9b], a
    call Call_000_3d25
    call Call_000_3d89

jr_000_3cb8:
    ld a, $01
    ldh [$99], a
    ld a, $86
    ldh [$9a], a
    ld a, $a0
    ldh [$9b], a
    call Call_000_3d25
    call Call_000_3d89

jr_000_3cca:
    xor a
    ldh [$99], a
    ld a, $27
    ldh [$9a], a
    ld a, $10
    ldh [$9b], a
    call Call_000_3d25
    call Call_000_3d89

jr_000_3cdb:
    xor a
    ldh [$99], a
    ld a, $03
    ldh [$9a], a
    ld a, $e8
    ldh [$9b], a
    call Call_000_3d25
    call Call_000_3d89

jr_000_3cec:
    xor a
    ldh [$99], a

Call_000_3cef:
    xor a
    ldh [$9a], a
    ld a, $64
    ldh [$9b], a
    call Call_000_3d25
    call Call_000_3d89

Call_000_3cfc:
jr_000_3cfc:
    ld c, $00
    ldh a, [$98]

jr_000_3d00:
    cp $0a
    jr c, jr_000_3d09

Call_000_3d04:
    sub $0a
    inc c
    jr jr_000_3d00

jr_000_3d09:
    ld b, a
    ldh a, [$95]
    or c
    ldh [$95], a
    jr nz, jr_000_3d16

    call Call_000_3d83
    jr jr_000_3d1a

jr_000_3d16:
    ld a, $f6

Jump_000_3d18:
    add c
    ld [hl], a

jr_000_3d1a:
    call Call_000_3d89
    ld a, $f6
    add b
    ld [hl+], a

Jump_000_3d21:
    pop de
    dec de
    pop bc
    ret


Call_000_3d25:
    ld c, $00

jr_000_3d27:
    ldh a, [$99]
    ld b, a
    ldh a, [$96]
    ldh [$9c], a
    cp b
    jr c, jr_000_3d77

    sub b
    ldh [$96], a
    ldh a, [$9a]
    ld b, a
    ldh a, [$97]
    ldh [$9d], a
    cp b
    jr nc, jr_000_3d49

    ldh a, [$96]
    or $00
    jr z, jr_000_3d73

    dec a
    ldh [$96], a
    ldh a, [$97]

jr_000_3d49:
    sub b
    ldh [$97], a
    ldh a, [$9b]
    ld b, a
    ldh a, [$98]
    ldh [$9e], a
    cp b
    jr nc, jr_000_3d69

    ldh a, [$97]
    and a
    jr nz, jr_000_3d64

    ldh a, [$96]
    and a
    jr z, jr_000_3d6f

    dec a
    ldh [$96], a
    xor a

jr_000_3d64:
    dec a
    ldh [$97], a
    ldh a, [$98]

jr_000_3d69:
    sub b
    ldh [$98], a
    inc c
    jr jr_000_3d27

jr_000_3d6f:
    ldh a, [$9d]
    ldh [$97], a

jr_000_3d73:
    ldh a, [$9c]
    ldh [$96], a

jr_000_3d77:
    ldh a, [$95]
    or c
    jr z, jr_000_3d83

    ld a, $f6
    add c
    ld [hl], a
    ldh [$95], a
    ret


Call_000_3d83:
jr_000_3d83:
    bit 7, d
    ret z

    ld [hl], $f6
    ret


Call_000_3d89:
    bit 7, d
    jr nz, jr_000_3d95

    bit 6, d
    jr z, jr_000_3d95

    ldh a, [$95]
    and a
    ret z

jr_000_3d95:
    inc hl
    ret


Call_000_3d97:
Jump_000_3d97:
    push hl
    push de
    push bc
    add a
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $3da7
    push de
    jp hl


    pop bc
    pop de
    pop hl

Jump_000_3daa:
    ret


Call_000_3dab:
Jump_000_3dab:
    ld b, $00

Call_000_3dad:
    ld c, a

jr_000_3dae:
    ld a, [hl]
    cp $ff
    jr z, jr_000_3dba

    cp c
    jr z, jr_000_3dbc

    inc b
    add hl, de
    jr jr_000_3dae

jr_000_3dba:
    and a
    ret


jr_000_3dbc:
    scf
    ret


Call_000_3dbe:
    call Call_000_0082
    ld a, $01
    ld [$cfcb], a
    call Call_000_3e08
    call Call_000_3701
    call Call_000_36a0
    call Call_000_3ded
    jr jr_000_3dd7

Call_000_3dd4:
    call Call_000_3de5

Call_000_3dd7:
Jump_000_3dd7:
jr_000_3dd7:
    ld c, $03
    jp Jump_000_3739


Call_000_3ddc:
Jump_000_3ddc:
    ld a, $e4
    ldh [rBGP], a
    ld a, $d0
    ldh [rOBP0], a
    ret


Call_000_3de5:
Jump_000_3de5:
    xor a
    ldh [rBGP], a
    ldh [rOBP0], a
    ldh [rOBP1], a
    ret


Call_000_3ded:
Jump_000_3ded:
    ld b, $ff

Call_000_3def:
Jump_000_3def:
    ld a, [$cf1b]
    and a
    ret z

    ld a, $45
    jp Jump_000_3e6d


Call_000_3df9:
    ld a, e
    cp $1b
    ld d, $00
    jr nc, jr_000_3e06

    cp $0a
    inc d
    jr nc, jr_000_3e06

    inc d

jr_000_3e06:
    ld [hl], d
    ret


Call_000_3e08:
    ld hl, $cfc4
    ld a, [hl]
    push af
    res 0, [hl]
    push hl
    xor a
    ld [$d3a8], a
    call Call_000_0061
    ld b, $05
    ld hl, $785b
    call Call_000_35d6
    call Call_000_007b
    pop hl
    pop af
    ld [hl], a
    call Call_000_0997
    call Call_000_3680
    jp Jump_000_2429


Call_000_3e2e:
    ld a, b
    ld [$d11e], a
    ld [$cf91], a
    ld a, c
    ld [$cf96], a
    ld hl, $d31d
    call Call_000_2bcf
    ret nc

    call Call_000_2fcf
    call Call_000_3826
    scf
    ret


Call_000_3e48:
    ld a, b
    ld [$cf91], a
    ld a, c
    ld [$d127], a
    xor a
    ld [$cc49], a
    ld b, $13
    ld hl, $7da5
    jp Jump_000_35d6


Call_000_3e5c:
Jump_000_3e5c:
    push hl
    push de
    push bc
    ld b, $04
    ld hl, $7a8f
    call Call_000_35d6
    ldh a, [$d3]
    pop bc
    pop de
    pop hl

Jump_000_3e6c:
    ret


Call_000_3e6d:
Jump_000_3e6d:
    ld [$cc4e], a
    ldh a, [$b8]
    ld [$cf12], a
    push af
    ld a, $13
    ldh [$b8], a

Call_000_3e7a:
    ld [$2000], a
    call $7e49
    ld a, [$d0b7]
    ldh [$b8], a
    ld [$2000], a
    ld de, $3e8d
    push de
    jp hl


    pop af
    ldh [$b8], a
    ld [$2000], a
    ret


Call_000_3e94:
    ld a, [$cc4f]
    ld h, a
    ld a, [$cc50]
    ld l, a
    ld a, [$cc51]
    ld d, a
    ld a, [$cc52]
    ld e, a
    ld a, [$cc53]
    ld b, a
    ld a, [$cc54]
    ld c, a
    ret


Call_000_3ead:
    ld b, $07
    ld hl, $6b0a
    jp Jump_000_35d6


Call_000_3eb5:
    ldh a, [$b8]
    push af
    ldh a, [$b4]
    bit 0, a
    jr z, jr_000_3eea

    ld a, $11
    ld [$2000], a
    ldh [$b8], a
    call $69a0
    ldh a, [$ee]
    and a
    jr nz, jr_000_3edd

    ld a, [$cd3e]
    ld [$2000], a
    ldh [$b8], a
    ld de, $3eda
    push de
    jp hl


    xor a
    jr jr_000_3eec

jr_000_3edd:
    ld b, $03
    ld hl, $7b50
    call Call_000_35d6
    ldh a, [$db]
    and a
    jr z, jr_000_3eec

Call_000_3eea:
jr_000_3eea:
    ld a, $ff

jr_000_3eec:
    ldh [$eb], a
    pop af
    ld [$2000], a
    ldh [$b8], a
    ret


Call_000_3ef5:
Jump_000_3ef5:
    ldh [$8c], a
    ld hl, $3f22
    call Call_000_3f0f
    ld hl, $cf11
    set 0, [hl]
    call Call_000_2920

Call_000_3f05:
    ld hl, $d36c
    ldh a, [$ec]
    ld [hl+], a
    ldh a, [$ed]
    ld [hl], a
    ret


Call_000_3f0f:
    ld a, [$d36c]
    ldh [$ec], a
    ld a, [$d36d]
    ldh [$ed], a
    ld a, l
    ld [$d36c], a
    ld a, h
    ld [$d36d], a
    ret


    xor $66
    ld hl, sp+$66
    adc [hl]
    ld e, e
    add c
    ld e, e
    ld h, b
    ld l, c
    ld a, [hl]
    ld l, c
    add e
    ld l, c
    cp l
    ld l, h
    cp [hl]
    ld e, e
    xor b
    ld e, e
    call nc, $535b
    ld h, h
    ld e, b
    ld h, h
    ld de, $a365
    ld h, h
    xor b
    ld h, h
    xor l
    ld h, h
    or d
    ld h, h
    ret nc

    ld h, h
    push de
    ld h, h
    ld [bc], a
    ld h, l
    jp c, $df64

    ld h, h
    db $e4
    ld h, h
    or a
    ld h, h

Call_000_3f54:
    cp h
    ld h, h
    pop bc
    ld h, h
    add $64
    bit 4, h
    ld [$2965], sp
    ld h, l
    xor d

Jump_000_3f61:
    ld l, c
    db $ed
    ld e, h
    ld h, l
    ld e, b
    ld a, b
    ld e, b
    ld e, e
    ld h, a
    sub h
    ld h, a
    rst $30
    ld e, l
    dec a
    ld l, d
    ld a, c
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    add e
    ld a, [hl]
    ld b, a
    ld l, b
    ld c, l
    ld l, b
    db $dd
    ld l, e
    ld [c], a
    ld l, e
    dec b
    ld l, h
    ld l, c
    ld l, e
    dec h
    ld l, d
    scf
    ld a, a
    ld [hl-], a
    ld a, a
    add hl, hl
    ld e, h
    and h
    ld l, c
    ld a, [hl+]
    ld l, d
    db $10
    ld l, d
    dec e
    ld l, d
    ld d, e
    ld l, c
    cp a
    ld a, e
    ret z

    ld e, [hl]
    db $db
    ld e, [hl]
    rst $28
    ld e, [hl]
    ld [bc], a

Jump_000_3f9d:
    ld e, a
    ld [de], a
    ld a, h
    add sp, $7b
    dec c
    ld a, h
    ld b, l
    ld a, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_3fb0:
Jump_000_3fb0:
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_3fb6:
    nop

Call_000_3fb7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_3fc5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_3fcc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_3fe5:
    nop
    nop
    nop

Jump_000_3fe8:
    nop
    nop

Jump_000_3fea:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_3ff8:
    nop
    nop
    nop
    nop
    nop

Call_000_3ffd:
    nop
    nop
    nop
