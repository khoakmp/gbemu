; Disassembly of "Pokemon Red (UE) [S][!].gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01d", ROMX[$4000], BANK[$1d]

    inc b
    add hl, bc
    dec b
    rlca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld bc, $0f02
    rrca
    dec bc
    rrca
    rrca
    ld [de], a
    inc de
    inc de
    add hl, bc
    ld d, $0f
    inc d
    inc d
    jr @+$1b

    dec d
    dec d
    rla
    ld a, [de]
    dec bc
    rrca
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
    jr nz, jr_01d_4042

    ld bc, $0c02
    dec c
    dec c
    ld hl, $0504
    rlca
    rlca
    ld [hl+], a
    inc hl
    ld [$0f0f], sp
    rrca

jr_01d_4042:
    rrca
    rrca
    dec de
    ld c, $0a
    dec bc
    ld c, $0f
    rrca
    ld c, $3d
    add hl, bc
    dec a
    dec a
    dec bc
    dec bc
    rlca
    ld b, $0b
    dec bc
    dec bc
    inc l
    dec bc
    dec de
    dec bc
    dec [hl]
    ld b, $1c
    ld hl, $41a0
    call Call_000_35d6
    call Call_000_190f
    ld c, $64
    call Call_000_3739
    call Call_000_0061
    ld hl, $8800
    ld bc, $0400
    call Call_01d_4171
    ld hl, $9600
    ld bc, $0100
    call Call_01d_4171
    ld hl, $97e0
    ld bc, $0010
    ld a, $ff
    call Call_000_36e0
    ld hl, $c3a0
    call Call_01d_417b
    ld hl, $c4b8
    call Call_01d_417b
    ld a, $c0
    ldh [rBGP], a
    call Call_000_007b
    ld a, $ff
    call Call_000_3740
    ld c, $1f
    ld a, $c7
    call Call_000_23a1
    ld c, $80
    call Call_000_3739
    xor a
    ld [$cd3d], a
    ld [$cd3e], a
    jp Jump_01d_418e


Call_01d_40ba:
Jump_01d_40ba:
    ld hl, $4160
    ld b, $04

jr_01d_40bf:
    ld a, [hl+]
    ldh [rBGP], a
    ld c, $05
    call Call_000_3739
    dec b
    jr nz, jr_01d_40bf

    ret


Call_01d_40cb:
    xor a
    ldh [$ba], a
    call Call_000_3719
    call Call_01d_4183
    ld hl, $cd3e
    ld c, [hl]
    inc [hl]
    ld b, $00
    ld hl, $4131
    add hl, bc
    ld a, [hl]
    ld [$cf91], a
    ld [$d0b5], a
    ld hl, $c420
    call Call_000_1537
    call Call_000_1389
    ld hl, $980c
    call Call_01d_4164
    xor a
    ldh [$ba], a
    call Call_000_3725
    ld hl, $9800
    call Call_01d_4164
    ld a, $a7
    ldh [rWX], a
    ld hl, $9c00
    call Call_01d_4164
    call Call_01d_4183
    ld a, $fc
    ldh [rBGP], a
    ld bc, $0007

jr_01d_4115:
    call $4140
    dec c
    jr nz, jr_01d_4115

    ld c, $14

jr_01d_411d:
    call $4140
    ldh a, [rWX]
    sub $08
    ldh [rWX], a
    dec c
    jr nz, jr_01d_411d

    xor a
    ldh [$b0], a
    ld a, $c0
    ldh [rBGP], a
    ret


    sbc d
    dec l
    ld [de], a
    inc hl
    sub h
    daa
    dec hl
    ld e, $98
    ld d, $4c
    ld h, e
    cp e
    rlca
    ld l, $60
    ld l, $20
    call Call_01d_4152
    ld h, $00
    ld l, $70
    call Call_01d_4152
    ld a, b
    add $08
    ld b, a
    ret


Call_01d_4152:
jr_01d_4152:
    ldh a, [rLY]
    cp l
    jr nz, jr_01d_4152

    ld a, h
    ldh [rSCX], a

jr_01d_415a:
    ldh a, [rLY]
    cp h
    jr z, jr_01d_415a

    ret


    ret nz

    ret nc

    ldh [$f0], a

Call_01d_4164:
    ld a, l
    ldh [$bc], a
    ld a, h
    ldh [$bd], a
    ld a, $01
    ldh [$ba], a
    jp Jump_000_3dd7


Call_01d_4171:
jr_01d_4171:
    ld [hl], $00
    inc hl
    inc hl
    dec bc
    ld a, b
    or c
    jr nz, jr_01d_4171

    ret


Call_01d_417b:
    ld bc, $0050
    ld a, $7e
    jp Jump_000_36e0


Call_01d_4183:
    ld hl, $c3f0
    ld bc, $00c8
    ld a, $7f
    jp Jump_000_36e0


Jump_01d_418e:
    ld de, $4243
    push de

jr_01d_4192:
    pop de
    ld hl, $c421
    push hl
    call Call_01d_4183
    pop hl

jr_01d_419b:
    ld a, [de]
    inc de
    push de
    cp $ff
    jr z, jr_01d_41d5

    cp $fe
    jr z, jr_01d_41dc

    cp $fd
    jr z, jr_01d_41e6

    cp $fc
    jr z, jr_01d_41ed

    cp $fb
    jr z, jr_01d_41f4

    cp $fa
    jr z, jr_01d_4201

    push hl
    push hl
    ld hl, $42c3
    add a
    ld c, a
    ld b, $00
    add hl, bc
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    inc de
    ld c, a
    ld b, $ff
    pop hl
    add hl, bc
    call Call_000_1955
    pop hl
    ld bc, $0028
    add hl, bc
    pop de
    jr jr_01d_419b

jr_01d_41d5:
    call Call_01d_40ba
    ld c, $5a
    jr jr_01d_41de

jr_01d_41dc:
    ld c, $6e

jr_01d_41de:
    call Call_000_3739
    call Call_01d_40cb
    jr jr_01d_4192

jr_01d_41e6:
    call Call_01d_40ba
    ld c, $78
    jr jr_01d_41ef

jr_01d_41ed:
    ld c, $8c

jr_01d_41ef:
    call Call_000_3739
    jr jr_01d_4192

jr_01d_41f4:
    push de
    ld b, $01
    ld hl, $4541
    call Call_000_35d6
    pop de
    pop de
    jr jr_01d_419b

jr_01d_4201:
    ld c, $10
    call Call_000_3739
    call Call_01d_4183
    pop de
    ld de, $473e
    ld hl, $9600
    ld bc, $1d0a
    call Call_000_1848
    ld hl, $c444
    ld de, $4229
    call Call_000_1955
    ld hl, $c458
    inc de
    call Call_000_1955
    jp Jump_01d_40ba


    ld h, b
    ld a, a
    ld h, d
    ld a, a
    ld h, h
    ld a, a
    ld a, a
    ld h, h
    ld a, a
    ld h, [hl]
    ld a, a
    ld l, b
    ld d, b
    ld h, c
    ld a, a
    ld h, e
    ld a, a
    ld h, l
    ld a, a
    ld a, a
    ld h, l
    ld a, a
    ld h, a
    ld a, a
    ld l, c
    ld d, b
    inc e
    nop
    rst $38
    dec e
    ld bc, $1eff
    ld [bc], a
    inc bc
    db $fd
    ld e, $04
    dec b
    inc l
    cp $1f
    rlca
    ld [$20ff], sp
    dec b
    db $fd
    ld hl, $fe05
    ld [hl+], a
    ld bc, $23ff
    rlca
    ld [$fd14], sp
    inc hl
    inc bc
    dec l
    ld l, $fe
    inc h
    ld bc, $24fd
    ld [de], a
    inc de
    dec c
    cp $25
    ld b, $1a
    rst $38
    ld h, $01
    ld b, $fd
    ld h, $15
    inc de
    ld [de], a
    cp $27
    jr jr_01d_429a

    db $fd
    daa
    ld a, [de]
    dec de
    cp $28
    ld c, $0f
    db $fd
    jr z, @+$12

    ld de, $28fc
    ld d, $17
    cpl
    cp $29
    add hl, bc
    db $fd
    add hl, hl
    ld a, [bc]
    db $fc
    add hl, hl

jr_01d_429a:
    dec bc
    cp $30
    db $fd
    ld sp, $fd32
    ld sp, $3433
    db $fc
    ld sp, $3635
    db $fc

jr_01d_42a9:
    scf
    jr c, jr_01d_42a9

    ld e, $3c
    dec a
    db $fd
    jr z, jr_01d_42eb

    db $fd
    jr z, @+$3d

    db $fc
    daa
    ccf
    ld a, $fd
    ld a, [hl+]
    ld a, [hl-]
    db $fd
    dec hl
    inc c
    rst $38
    ei
    rst $38
    ld a, [$4343]
    ld d, [hl]
    ld b, e
    ld h, [hl]
    ld b, e
    ld [hl], l
    ld b, e
    add a
    ld b, e
    sbc c
    ld b, e
    xor c
    ld b, e
    or a
    ld b, e
    push bc
    ld b, e
    push de
    ld b, e
    rst $20
    ld b, e
    ld a, [$0e43]
    ld b, h
    jr nz, jr_01d_4323

    ld sp, $4244
    ld b, h
    ld d, d
    ld b, h
    ld h, h
    ld b, h
    ld [hl], a
    ld b, h
    adc e
    ld b, h

jr_01d_42eb:
    sbc [hl]
    ld b, h
    or c
    ld b, h
    jp nz, $d444

    ld b, h
    and $44
    or $44
    rlca
    ld b, l
    rla
    ld b, l
    daa
    ld b, l
    dec l
    ld b, l
    scf
    ld b, l
    ld b, h
    ld b, l
    ld d, [hl]
    ld b, l
    ld e, l
    ld b, l
    ld l, h
    ld b, l
    ld a, c
    ld b, l
    adc c
    ld b, l
    sbc b
    ld b, l
    xor e
    ld b, l
    or a
    ld b, l
    ret z

    ld b, l
    ret c

    ld b, l
    db $e3
    ld b, l
    db $ed
    ld b, l
    ld bc, $1146
    ld b, [hl]
    rra
    ld b, [hl]
    cpl
    ld b, [hl]

jr_01d_4323:
    ccf
    ld b, [hl]
    ld d, c
    ld b, [hl]
    ld h, d
    ld b, [hl]
    ld l, a
    ld b, [hl]
    ld a, a
    ld b, [hl]
    adc [hl]
    ld b, [hl]
    sbc l
    ld b, [hl]
    xor e
    ld b, [hl]
    cp l
    ld b, [hl]
    call z, $da46
    ld b, [hl]
    db $eb
    ld b, [hl]
    db $fc
    ld b, [hl]
    dec c
    ld b, a
    ld a, [de]
    ld b, a
    jr nc, jr_01d_438a

    ld hl, sp-$6f
    add h
    add e
    ld a, a
    sub l
    add h
    sub c
    sub d
    adc b
    adc [hl]
    adc l
    ld a, a
    sub d
    sub e
    add b
    add l
    add l
    ld d, b
    ld a, [$8092]
    sub e
    adc [hl]
    sub d
    add a
    adc b
    ld a, a
    sub e
    add b
    adc c
    adc b
    sub c
    adc b
    ld d, b
    ld a, [$8093]
    adc d
    add h
    adc l
    adc [hl]
    sub c
    adc b
    ld a, a
    adc [hl]
    adc [hl]
    sub e
    add b
    ld d, b
    ld sp, hl
    sub d
    add a
    adc b
    add [hl]
    add h
    adc d
    adc b
    ld a, a
    adc h
    adc [hl]
    sub c
    adc b
    adc h
    adc [hl]
    sub e
    adc [hl]
    ld d, b
    ld sp, hl
    sub e
    add h

jr_01d_438a:
    sub e
    sub d
    sub h
    sbc b
    add b
    ld a, a
    sub [hl]
    add b
    sub e
    add b
    adc l
    add b
    add c
    add h
    ld d, b
    ld a, [$9489]
    adc l
    adc b
    add d
    add a
    adc b
    ld a, a
    adc h
    add b
    sub d
    sub h
    add e
    add b
    ld d, b
    ei
    adc d
    adc [hl]
    add a
    adc c
    adc b
    ld a, a
    adc l
    adc b
    sub d
    adc b
    adc l
    adc [hl]
    ld d, b
    ei
    adc d
    add h
    adc l
    ld a, a
    sub d
    sub h
    add [hl]
    adc b
    adc h
    adc [hl]
    sub c
    adc b
    ld d, b
    ld a, [$9380]
    sub d
    sub h
    adc d
    adc [hl]
    ld a, a
    adc l
    adc b
    sub d
    add a
    adc b
    add e
    add b
    ld d, b
    ld sp, hl
    sub d
    add a
    adc b
    add [hl]
    add h
    sub c
    sub h
    ld a, a
    adc h
    adc b
    sbc b
    add b
    adc h
    adc [hl]
    sub e
    adc [hl]
    ld d, b
    ld hl, sp-$6d
    add b
    adc d
    add b
    sub d
    add a
    adc b
    ld a, a
    adc d
    add b
    sub [hl]
    add b
    add [hl]
    sub h
    add d
    add a
    adc b
    ld d, b
    ld hl, sp-$6d
    sub d
    sub h
    adc l
    add h
    adc d
    add b
    sbc c
    sub h
    ld a, a
    adc b
    sub d
    add a
    adc b
    add a
    add b
    sub c
    add b
    ld d, b
    ld sp, hl
    add a
    adc b
    sub c
    adc [hl]
    sub d
    add a
    adc b
    ld a, a
    sbc b
    add b
    adc h
    add b
    sub h
    add d
    add a
    adc b
    ld d, b
    ld sp, hl
    add a
    adc b
    sub c
    adc [hl]
    sbc b
    sub h
    adc d
    adc b
    ld a, a
    sbc c
    adc b
    adc l
    adc l
    add b
    adc b
    ld d, b
    ld sp, hl
    sub e
    add b
    sub e
    sub d
    sub h
    sbc b
    add b
    ld a, a
    add a
    adc b
    sub d
    add a
    adc b
    add e
    add b
    ld d, b
    ld a, [$8098]
    sub d
    sub h
    add a
    adc b
    sub c
    adc [hl]
    ld a, a
    sub d
    add b
    adc d
    add b
    adc b
    ld d, b
    ld sp, hl
    sub [hl]
    add b
    sub e
    add b
    sub c
    sub h
    ld a, a
    sbc b
    add b
    adc h
    add b
    add [hl]
    sub h
    add d
    add a
    adc b
    ld d, b
    ld hl, sp-$76
    add b
    sbc c
    sub h
    sbc b
    sub h
    adc d
    adc b
    ld a, a
    sbc b
    add b
    adc h
    add b
    adc h
    adc [hl]
    sub e
    adc [hl]
    ld d, b
    ld hl, sp-$6f
    sbc b
    adc [hl]
    add a
    sub d
    sub h
    adc d
    add h
    ld a, a
    sub e
    add b
    adc l
    adc b
    add [hl]
    sub h
    add d
    add a
    adc b
    ld d, b
    ld hl, sp-$7b
    sub h
    adc h
    adc b
    add a
    adc b
    sub c
    adc [hl]
    ld a, a
    adc l
    adc [hl]
    adc l
    adc [hl]
    adc h
    sub h
    sub c
    add b
    ld d, b
    ld sp, hl
    adc h
    adc [hl]
    sub e
    adc [hl]
    add l
    sub h
    adc h
    adc b
    ld a, a
    add l
    sub h
    sbc c
    adc b
    sub [hl]
    add b
    sub c
    add b
    ld d, b
    ld sp, hl
    adc d
    add h
    adc l
    adc c
    adc b
    ld a, a
    adc h
    add b
    sub e
    sub d
    sub h
    sub d
    adc b
    adc h
    add b
    ld d, b
    ld sp, hl
    add b
    adc d
    adc b
    add a
    adc b
    sub e
    adc [hl]
    ld a, a
    sub e
    adc [hl]
    adc h
    adc b
    sub d
    add b
    sub [hl]
    add b
    ld d, b
    ld sp, hl
    add a
    adc b
    sub c
    adc [hl]
    sub d
    add a
    adc b
    ld a, a
    adc d
    add b
    sub [hl]
    add b
    adc h
    adc [hl]
    sub e
    adc [hl]
    ld d, b
    ld a, [$8a80]
    adc b
    sbc b
    adc [hl]
    sub d
    add a
    adc b
    ld a, a
    adc d
    add b
    adc d
    add h
    adc b
    ld d, b
    ld sp, hl
    adc d
    add b
    sbc c
    sub h
    adc d
    adc b
    ld a, a
    sub e
    sub d
    sub h
    add d
    add a
    adc b
    sbc b
    add b
    ld d, b
    ld a, [$8093]
    adc d
    add h
    adc [hl]
    ld a, a
    adc l
    add b
    adc d
    add b
    adc h
    sub h
    sub c
    add b
    ld d, b
    ld a, [$808c]
    sub d
    add b
    adc h
    adc b
    sub e
    sub d
    sub h
    ld a, a
    sbc b
    sub h
    add e
    add b
    ld d, b
    db $fd
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, b
    db $fd
    add e
    adc b
    sub c
    add h
    add d
    sub e
    adc [hl]
    sub c
    ld d, b
    ei
    adc a
    sub c
    adc [hl]
    add [hl]
    sub c
    add b
    adc h
    adc h
    add h
    sub c
    sub d
    ld d, b
    ld sp, hl
    add d
    add a
    add b
    sub c
    add b
    add d
    sub e
    add h
    sub c
    ld a, a
    add e
    add h
    sub d
    adc b
    add [hl]
    adc l
    ld d, b
    cp $8c
    sub h
    sub d
    adc b
    add d
    ld d, b
    ld a, [$8e92]
    sub h
    adc l
    add e
    ld a, a
    add h
    add l
    add l
    add h
    add d
    sub e
    sub d
    ld d, b
    ei
    add [hl]
    add b
    adc h
    add h
    ld a, a
    add e
    add h
    sub d
    adc b
    add [hl]
    adc l
    ld d, b
    ld a, [$8e8c]
    adc l
    sub d
    sub e
    add h
    sub c
    ld a, a
    add e
    add h
    sub d
    adc b
    add [hl]
    adc l
    ld d, b
    ld a, [$8086]
    adc h
    add h
    ld a, a
    sub d
    add d
    add h
    adc l
    add b
    sub c
    adc b
    adc [hl]
    ld d, b
    ld hl, sp-$71
    add b
    sub c
    add b
    adc h
    add h
    sub e
    sub c
    adc b
    add d
    ld a, a
    add e
    add h
    sub d
    adc b
    add [hl]
    adc l
    ld d, b
    db $fc
    adc h
    add b
    adc a
    ld a, a
    add e
    add h
    sub d
    adc b
    add [hl]
    adc l
    ld d, b
    ld sp, hl
    adc a
    sub c
    adc [hl]
    add e
    sub h
    add d
    sub e
    ld a, a
    sub e
    add h
    sub d
    sub e
    adc b
    adc l
    add [hl]
    ld d, b
    ld a, [$8f92]
    add h
    add d
    adc b
    add b
    adc e
    ld a, a
    sub e
    add a
    add b
    adc l
    adc d
    sub d
    ld d, b
    db $fc
    adc a
    sub c
    adc [hl]
    add e
    sub h
    add d
    add h
    sub c
    sub d
    ld d, b
    db $fc
    adc a
    sub c
    adc [hl]
    add e
    sub h
    add d
    add h
    sub c
    ld d, b
    ld hl, sp-$7c
    sub a
    add h
    add d
    sub h
    sub e
    adc b
    sub l
    add h
    ld a, a
    adc a
    sub c
    adc [hl]
    add e
    sub h
    add d
    add h
    sub c
    ld d, b
    ld a, [$8e92]
    sub h
    sub d
    sub h
    adc d
    add h
    ld a, a
    sub e
    add b
    adc h
    add b
    add e
    add b
    ld d, b
    ei
    sub d
    add b
    sub e
    adc [hl]
    sub d
    add a
    adc b
    ld a, a
    adc [hl]
    adc [hl]
    sub e
    add b
    ld d, b
    ld a, [$8491]
    adc l
    add b
    ld a, a
    sbc b
    adc [hl]
    sub d
    add a
    adc b
    adc d
    add b
    sub [hl]
    add b
    ld d, b
    ld a, [$8e93]
    adc h
    adc [hl]
    adc h
    adc b
    add d
    add a
    adc b
    ld a, a
    adc [hl]
    adc [hl]
    sub e
    add b
    ld d, b
    ld sp, hl
    sub h
    sub d
    ld a, a
    sub l
    add h
    sub c
    sub d
    adc b
    adc [hl]
    adc l
    ld a, a
    sub d
    sub e
    add b
    add l
    add l
    ld d, b
    ld sp, hl
    sub h
    sub d
    ld a, a
    add d
    adc [hl]
    adc [hl]
    sub c
    add e
    adc b
    adc l
    add b
    sub e
    adc b
    adc [hl]
    adc l
    ld d, b
    ei
    add [hl]
    add b
    adc b
    adc e
    ld a, a
    sub e
    adc b
    adc e
    add e
    add h
    adc l
    ld d, b
    ld a, [$808d]
    adc [hl]
    adc d
    adc [hl]
    ld a, a
    adc d
    add b
    sub [hl]
    add b
    adc d
    add b
    adc h
    adc b
    ld d, b
    ld a, [$8887]
    sub c
    adc [hl]
    ld a, a
    adc l
    add b
    adc d
    add b
    adc h
    sub h
    sub c
    add b
    ld d, b
    ld a, [$8896]
    adc e
    adc e
    adc b
    add b
    adc h
    ld a, a
    add [hl]
    adc b
    add h
    sub d
    add h
    ld d, b
    ei
    sub d
    add b
    sub c
    add b
    ld a, a
    adc [hl]
    sub d
    add c
    adc [hl]
    sub c
    adc l
    add h
    ld d, b
    ld sp, hl
    sub e
    add h
    sub a
    sub e
    ld a, a
    sub e
    sub c
    add b
    adc l
    sub d
    adc e
    add b
    sub e
    adc b
    adc [hl]
    adc l
    ld d, b
    ld a, [$8e8d]
    add c
    ld a, a
    adc [hl]
    add [hl]
    add b
    sub d
    add b
    sub [hl]
    add b
    sub c
    add b
    ld d, b
    ei
    sub d
    add b
    sub e
    adc [hl]
    sub c
    sub h
    ld a, a
    adc b
    sub [hl]
    add b
    sub e
    add b
    ld d, b
    ld sp, hl
    sub e
    add b
    adc d
    add h
    add a
    adc b
    sub c
    adc [hl]
    ld a, a
    adc b
    sbc c
    sub h
    sub d
    add a
    adc b
    ld d, b
    ld sp, hl
    sub e
    add b
    adc d
    add b
    add a
    adc b
    sub c
    adc [hl]
    ld a, a
    add a
    add b
    sub c
    add b
    add e
    add b
    ld d, b
    ld sp, hl
    sub e
    add h
    sub c
    sub h
    adc d
    adc b
    ld a, a
    adc h
    sub h
    sub c
    add b
    adc d
    add b
    sub [hl]
    add b
    ld d, b
    ei
    adc d
    adc [hl]
    add a
    sub e
    add b
    ld a, a
    add l
    sub h
    adc d
    sub h
    adc b
    ld d, b
    rst $30
    adc l
    add d
    adc e
    ld a, a
    sub d
    sub h
    adc a
    add h
    sub c
    ld a, a
    adc h
    add b
    sub c
    adc b
    adc [hl]
    ld a, a
    add d
    adc e
    sub h
    add c
    ld d, b
    ei
    adc a
    add b
    add b
    add e
    ld a, a
    sub e
    add h
    sub d
    sub e
    adc b
    adc l
    add [hl]
    ld d, b
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    jr z, jr_01d_4786

    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    and l
    and l
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    ldh [$e0], a

jr_01d_4786:
    ldh [$e0], a
    ldh [$e0], a
    cp $fe
    db $fc
    db $fc
    cp $fe
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    pop bc
    pop bc
    push bc
    push bc
    rst $20
    rst $20
    rst $20
    rst $20
    rst $30
    rst $30
    rst $30
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    rst $28
    rst $28
    rst $20
    rst $20
    rst $20
    rst $20
    db $e3
    db $e3
    and e
    and e
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    xor $ee
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    xor $ee
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
    ld a, [de]
    bit 3, a
    jr nz, jr_01d_47fb

    bit 4, a
    jr nz, jr_01d_4804

    bit 5, a
    jr nz, jr_01d_480d

    bit 6, a
    jr nz, jr_01d_4816

    and $07
    ret z

    ld a, $92
    ld [hl+], a
    ld a, $8b
    ld [hl+], a
    ld [hl], $8f
    ret


jr_01d_47fb:
    ld a, $8f
    ld [hl+], a
    ld a, $92
    ld [hl+], a
    ld [hl], $8d
    ret


jr_01d_4804:
    ld a, $81
    ld [hl+], a
    ld a, $91
    ld [hl+], a
    ld [hl], $8d
    ret


jr_01d_480d:
    ld a, $85
    ld [hl+], a
    ld a, $91
    ld [hl+], a
    ld [hl], $99
    ret


jr_01d_4816:
    ld a, $8f
    ld [hl+], a
    ld a, $80
    ld [hl+], a
    ld [hl], $91
    ret


    ld hl, $66b8
    ld b, $00

jr_01d_4824:
    ld de, $0003
    ld a, [$d35e]
    call Call_000_3dad
    ret nc

    push bc
    push hl
    ld hl, $d6f0
    ld c, b
    ld b, $02
    ld a, $10
    call Call_000_3e6d
    ld a, c
    pop hl
    pop bc
    inc b
    and a
    inc hl
    ld d, [hl]
    inc hl
    ld e, [hl]
    inc hl
    jr nz, jr_01d_4824

    ld a, [$d361]
    call Call_01d_486b
    cp d
    jr nc, jr_01d_4824

    ld a, [$d361]
    add $04
    cp d
    jr c, jr_01d_4824

    ld a, [$d362]
    call Call_01d_486b
    cp e
    jr nc, jr_01d_4824

    ld a, [$d362]
    add $05
    cp e
    jr c, jr_01d_4824

    scf
    ret


Call_01d_486b:
    sub $05
    cp $f0
    ret c

    xor a
    ret


    call Call_000_20ef
    ld a, $07
    ld [$cc4d], a
    ld a, $15
    call Call_000_3e6d
    ld a, $09
    ld [$cc4d], a
    ld a, $11
    call Call_000_3e6d
    ld a, $06
    ld [$cc4d], a
    ld a, $11
    call Call_000_3e6d
    call Call_000_20d1
    ret


    rlca
    add hl, bc
    ld a, [bc]
    ld b, a
    ld c, h
    db $ec
    ld c, c
    and e
    ld c, b
    nop
    sbc $4b
    ld hl, $48bf
    ld de, $48cd
    call Call_000_317f
    call Call_000_3c3c
    ld hl, $4a08
    ld de, $48e1
    ld a, [$d5fb]
    call Call_000_3160
    ld [$d5fb], a
    ret


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
    add [hl]
    adc b
    adc [hl]
    sub l
    add b
    adc l
    adc l
    adc b
    ld d, b

Jump_01d_48d6:
    xor a
    ld [$cd6b], a
    ld [$d5fb], a
    ld [$da39], a
    ret


    db $eb
    ld c, b
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    adc b
    ld c, c
    ld l, e
    ld c, c
    ld a, [$d361]
    ld b, a
    ld a, [$d362]
    ld c, a
    ld hl, $4916
    call Call_000_3442
    cp $ff
    jp z, Jump_000_3219

    call Call_000_3486
    ld hl, $d736
    set 7, [hl]
    ld a, $a7
    call Call_000_23b1
    ld a, $ff
    ld [$cd6b], a
    ld a, $04
    ld [$da39], a
    ret


    dec bc
    inc de
    ld b, a
    ld c, c
    ld bc, $4a13
    ld c, c
    ld [bc], a
    ld [de], a
    ld c, l
    ld c, c
    ld [bc], a
    dec bc
    ld d, b
    ld c, c
    ld a, [bc]
    db $10
    ld d, e
    ld c, c
    ld b, $04
    ld d, [hl]
    ld c, c
    dec c
    dec b
    ld e, c
    ld c, c
    ld c, $04
    ld e, h
    ld c, c
    rrca
    nop
    ld e, a
    ld c, c
    rrca
    ld bc, $4962
    db $10
    dec c
    ld h, l
    ld c, c
    ld de, $680d
    ld c, c
    rst $38
    ld b, b
    add hl, bc
    rst $38
    jr nz, jr_01d_4954

    rst $38
    add b
    add hl, bc
    rst $38
    db $10
    ld b, $ff
    add b

jr_01d_4954:
    ld [bc], a
    rst $38
    add b
    rlca
    rst $38
    db $10
    ld [$10ff], sp
    add hl, bc
    rst $38
    ld b, b
    ld [$40ff], sp
    ld b, $ff
    jr nz, @+$08

    rst $38
    jr nz, @+$0e

    rst $38
    ld a, [$cd38]
    and a
    jr nz, jr_01d_4980

    xor a
    ld [$cd6b], a
    ld hl, $d736
    res 7, [hl]
    ld a, $00
    ld [$da39], a
    ret


jr_01d_4980:
    ld b, $11
    ld hl, $4fd7
    jp Jump_000_35d6


    ld a, [$d057]
    cp $ff
    jp z, Jump_01d_48d6

    ld a, $f0
    ld [$cd6b], a

Call_01d_4995:
    ld a, $0c
    ldh [$8c], a
    call Call_000_2920
    ld hl, $d751
    set 1, [hl]
    ld bc, $e301
    call Call_000_3e2e
    jr nc, jr_01d_49b7

    ld a, $0d
    ldh [$8c], a
    call Call_000_2920
    ld hl, $d751
    set 0, [hl]
    jr jr_01d_49be

jr_01d_49b7:
    ld a, $0e
    ldh [$8c], a
    call Call_000_2920

jr_01d_49be:
    ld hl, $d356
    set 7, [hl]
    ld hl, $d72a
    set 7, [hl]
    ld a, [$d751]
    or $fc
    ld [$d751], a
    ld a, [$d752]
    or $03
    ld [$d752], a
    ld a, $23
    ld [$cc4d], a
    ld a, $15
    call Call_000_3e6d
    ld hl, $d7eb
    set 1, [hl]
    set 7, [hl]
    jp Jump_01d_48d6


    ld l, c
    ld c, d
    di
    ld c, d
    inc c
    ld c, e
    dec h
    ld c, e
    ld a, $4b
    ld d, a
    ld c, e
    ld [hl], b
    ld c, e
    adc c
    ld c, e
    and d
    ld c, e
    cp e
    ld c, e
    db $f4
    inc h
    rst $18
    ld c, d
    db $e4
    ld c, d
    xor $4a
    ld [bc], a
    ld b, b
    ld d, c
    rst $10
    db $fd
    ld c, d
    rlca
    ld c, e
    ld [bc], a
    ld c, e
    ld [bc], a
    ld c, e
    inc bc
    ld b, b
    ld d, c
    rst $10
    ld d, $4b
    jr nz, jr_01d_4a67

    dec de
    ld c, e
    dec de
    ld c, e
    inc b
    ld b, b
    ld d, c
    rst $10
    cpl
    ld c, e
    add hl, sp
    ld c, e
    inc [hl]
    ld c, e
    inc [hl]
    ld c, e
    dec b
    jr nz, @+$53

    rst $10
    ld c, b
    ld c, e
    ld d, d
    ld c, e
    ld c, l
    ld c, e
    ld c, l
    ld c, e
    ld b, $30
    ld d, c
    rst $10
    ld h, c
    ld c, e
    ld l, e
    ld c, e
    ld h, [hl]
    ld c, e
    ld h, [hl]
    ld c, e
    rlca
    ld b, b
    ld d, c
    rst $10
    ld a, d
    ld c, e
    add h
    ld c, e
    ld a, a
    ld c, e
    ld a, a
    ld c, e
    ld [$5130], sp
    rst $10
    sub e
    ld c, e
    sbc l
    ld c, e
    sbc b
    ld c, e
    sbc b
    ld c, e
    add hl, bc
    ld b, b
    ld d, c
    rst $10
    xor h
    ld c, e
    or [hl]
    ld c, e
    or c
    ld c, e
    or c

jr_01d_4a67:
    ld c, e
    rst $38
    ld [$51fa], sp
    rst $10
    bit 1, a
    jr z, jr_01d_4aa0

    bit 0, a
    jr nz, jr_01d_4a7d

    call z, Call_01d_4995
    call Call_000_30b6
    jr jr_01d_4acb

jr_01d_4a7d:
    ld a, $01
    ld [$cc3c], a
    ld hl, $4ad9
    call Call_000_3c49
    call Call_000_20ef
    ld a, $32
    ld [$cc4d], a
    ld a, $11
    call Call_000_3e6d
    call Call_000_2429
    call Call_000_3dd7
    call Call_000_20d1
    jr jr_01d_4acb

jr_01d_4aa0:
    ld hl, $4ace
    call Call_000_3c49
    ld hl, $d72d
    set 6, [hl]
    set 7, [hl]
    ld hl, $4ad3
    ld de, $4ad3
    call Call_000_3354
    ldh a, [$8c]
    ld [$cf13], a
    call Call_000_336a
    call Call_000_32d7
    ld a, $08
    ld [$d05c], a
    ld a, $03
    ld [$d5fb], a

jr_01d_4acb:
    jp Jump_000_24d7


    rla
    add hl, bc
    ld e, [hl]
    dec h
    ld d, b
    rla
    push de
    ld e, [hl]
    dec h
    dec bc
    ld d, b
    rla
    dec hl
    ld e, a
    dec h
    dec c
    ld d, b
    rla
    call z, $255f
    ld d, b
    rla
    add d
    ld h, b
    dec h
    dec bc
    rla
    sub l
    ld h, b
    dec h
    ld d, b
    rla
    inc b
    ld h, c
    dec h
    ld d, b
    ld [$0821], sp
    ld c, d
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    dec h
    ld h, c
    dec h
    ld d, b
    rla
    ld d, h
    ld h, c
    dec h
    ld d, b
    rla
    ld h, a
    ld h, c
    dec h
    ld d, b
    ld [$1421], sp
    ld c, d
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    sub a
    ld h, c
    dec h
    ld d, b
    rla
    ret nz

    ld h, c
    dec h
    ld d, b
    rla
    ret z

    ld h, c
    dec h
    ld d, b
    ld [$2021], sp
    ld c, d
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    sbc $61
    dec h
    ld d, b
    rla
    dec c
    ld h, d
    dec h
    ld d, b
    rla
    ld a, [hl+]
    ld h, d
    dec h
    ld d, b
    ld [$2c21], sp
    ld c, d
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ld d, a
    ld h, d
    dec h
    ld d, b
    rla
    add l
    ld h, d
    dec h
    ld d, b
    rla
    adc l
    ld h, d
    dec h
    ld d, b
    ld [$3821], sp
    ld c, d
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    cp b
    ld h, d
    dec h
    ld d, b
    rla
    call c, $2562
    ld d, b
    rla
    db $ed
    ld h, d
    dec h
    ld d, b
    ld [$4421], sp
    ld c, d
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ld [$2563], sp
    ld d, b
    rla
    ld [hl], $63
    dec h
    ld d, b
    rla
    dec a
    ld h, e
    dec h
    ld d, b
    ld [$5021], sp
    ld c, d
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ld h, b
    ld h, e
    dec h
    ld d, b
    rla
    adc a
    ld h, e
    dec h
    ld d, b
    rla
    and c
    ld h, e
    dec h
    ld d, b
    ld [$5c21], sp
    ld c, d
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    cp l
    ld h, e
    dec h
    ld d, b
    rla
    inc bc
    ld h, h
    dec h
    ld d, b
    rla
    ld [de], a
    ld h, h
    dec h
    ld d, b
    ld [$51fa], sp
    rst $10
    bit 1, a
    jr nz, jr_01d_4bcb

    ld hl, $4bd4
    call Call_000_3c49
    jr jr_01d_4bd1

jr_01d_4bcb:
    ld hl, $4bd9
    call Call_000_3c49

jr_01d_4bd1:
    jp Jump_000_24d7


    rla
    ld d, c
    ld h, h
    dec h
    ld d, b
    rla
    ei
    ld h, h
    dec h
    ld d, b
    inc bc
    ld [bc], a
    ld de, $0410
    rst $38
    ld de, $0411
    rst $38
    nop
    dec bc
    rla
    dec b
    ld b, $ff
    ret nc

    ld b, c
    push hl
    inc bc
    rlca
    dec bc
    db $10
    rst $38
    ret nc

    ld b, d
    rst $20
    add hl, bc
    ld c, $0f
    rrca
    rst $38
    pop de
    ld b, e
    ldh [rTMA], a
    ld hl, $0e0b
    rst $38
    ret nc

    ld b, h
    sbc $03
    ld c, $0b
    rlca
    rst $38
    jp nc, $e045

    rlca
    rlca
    add hl, bc
    ld de, $d3ff
    ld b, [hl]
    rst $20
    ld a, [bc]
    ld c, $05
    ld c, $ff
    ret nc

    ld b, a
    ldh [$08], a
    ld hl, $0614
    rst $38
    db $d3
    ld c, b
    sbc $04
    rlca
    add hl, bc
    ld a, [bc]
    rst $38
    ret nc

    ld c, c
    rst $20
    ld bc, $1324
    inc d
    rst $38
    ret nc

    ld a, [bc]
    dec a
    dec c
    inc d
    rst $38
    rst $38
    adc e
    dec [hl]
    add c
    rst $00
    ld de, $8110
    rst $00
    ld de, $4911
    ld bc, HeaderDestinationCode
    ld bc, $015f
    ld bc, $5d01
    ld c, e
    dec b
    ld d, c
    ld h, h
    ld d, [hl]
    ld h, e
    ld b, [hl]
    ld b, [hl]
    ld e, [hl]
    ld e, h
    ld d, d
    ld b, [hl]
    ld c, [hl]
    ld d, e
    ld d, h
    ld d, l
    dec b
    dec b
    ld c, h
    dec b
    ld h, c
    dec b
    ld h, b
    ld c, h
    ld d, l
    ld c, b
    ld c, b
    ld e, e
    ld c, h
    dec b
    ld b, b
    ld b, h
    ld c, h
    ld c, h
    dec b
    dec b
    dec b
    ld c, l
    ld c, h
    dec b
    dec b
    inc l
    ld d, l
    ld c, h
    dec b
    dec b
    dec b
    ld d, c
    ld h, b
    ld b, a
    dec b
    inc l
    ld e, b
    ld c, b
    ld c, b
    ld c, b
    ld e, d
    dec b
    ld h, d
    dec b
    ld b, e
    ld b, l
    ld d, a
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld e, c
    ld [hl-], a
    dec b
    ld sp, $0540
    dec b
    ld b, c
    dec b
    dec b
    ld b, d
    dec b
    inc b
    dec b
    ld [bc], a
    inc b
    inc b
    db $10
    ld b, b
    or [hl]
    ld c, h
    xor l
    ld c, h
    nop
    jp c, $cd4c

    inc a
    inc a
    ld a, $01
    ld [$cf0c], a
    ret


    ld c, c
    inc h
    cp h
    ld c, h
    bit 1, h
    ld [$c621], sp
    ld c, h
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    xor h
    ld b, l
    ld h, $50
    ld [$d521], sp
    ld c, h
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    inc c
    ld b, [hl]
    ld h, $50
    nop
    ld [bc], a
    rlca
    inc bc
    inc b
    rst $38
    rlca
    inc b
    inc b
    rst $38
    nop
    inc bc
    ld h, $09
    inc b
    rst $38
    db $d3
    ld bc, $0704
    rlca
    cp $01
    ld [bc], a
    inc c
    add hl, bc
    add hl, bc
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
    ld de, $0f09
    db $76
    ld c, l
    rrca
    ld c, l
    inc c
    ld c, l
    nop
    dec d
    ld c, l
    jp Jump_000_3c3c


    db $f4
    inc h
    db $f4
    inc h
    db $f4
    inc h
    ld a, l
    add hl, bc
    ld de, $0618
    rst $38
    ld de, $0619
    rst $38
    ld bc, $001b
    ld [c], a
    rlca
    rla
    ld bc, $09e2
    ld [de], a
    ld [bc], a
    ld [c], a
    ld bc, $0307
    ld [c], a
    inc bc
    ld bc, $e204
    dec bc
    inc bc
    dec b
    ld [c], a
    ld b, $00
    nop
    db $e3
    nop
    inc bc
    dec a
    ld de, $ff0b
    rst $38
    add c
    db $10
    dec a
    rlca
    rla
    rst $38
    rst $38
    add d
    ld d, e
    dec a
    inc b
    add hl, bc
    rst $38
    rst $38
    add e
    ld sp, $c7b2
    ld de, $b218
    rst $00
    ld de, $0b19
    rst $00
    ld bc, $481b
    rst $00
    rlca
    rla
    ld e, e
    rst $00
    add hl, bc
    ld [de], a
    ld bc, $01c7
    rlca
    inc de
    rst $00
    inc bc
    ld bc, $c768
    dec bc
    inc bc
    dec a
    rst $00
    ld b, $00
    jr nz, jr_01d_4d9a

    inc d
    ld a, h
    dec d
    dec d
    dec d
    dec d
    ld d, $02
    ld [bc], a
    inc d
    dec d
    ld a, h
    ld d, $62
    add hl, bc
    inc e
    dec e
    dec e
    dec e
    dec e
    dec l
    ld e, $08
    ld a, l
    ld h, [hl]
    dec e
    dec e
    ld e, $02
    inc b
    inc c
    rla
    ld [bc], a
    ld c, [hl]

jr_01d_4d9a:
    ld e, a
    db $76
    db $76
    db $76
    db $76
    db $76
    db $76
    db $76
    db $76
    inc hl
    db $10
    inc b
    rra
    db $76
    db $76
    db $76
    db $76
    ld [hl], d
    ld a, l
    inc d
    ld a, h
    dec d
    ld [hl], c
    db $76
    inc d
    dec d
    dec d
    ld d, $76
    inc d
    dec d
    dec d
    dec d
    ld a, a
    jr jr_01d_4dea

    dec l
    ld e, b
    db $76
    jr jr_01d_4e00

    inc l
    ld e, $76
    jr jr_01d_4de1

    ld [hl], h
    add hl, de
    ld a, [de]
    ld h, [hl]
    ld e, $76
    db $76
    db $76
    ld h, [hl]
    dec e
    ld e, $08
    db $76
    ld h, [hl]
    dec e
    dec hl
    ld a, l
    ld a, [de]
    ld b, $0f
    ld e, a
    inc d
    ld d, $01
    rrca

jr_01d_4de1:
    jr nz, jr_01d_4e05

    db $76
    db $76
    ld [bc], a
    inc e
    dec l
    ld e, $01

jr_01d_4dea:
    ld bc, $1801
    ld a, [de]
    ld a, [bc]
    ld bc, $0f01
    dec b
    dec b
    dec b
    ld c, $0d
    ld a, l
    jr nz, jr_01d_4e1c

    inc h
    inc e
    ld e, $0d
    inc b
    inc b

jr_01d_4e00:
    ld c, h
    ld b, b
    inc de
    ld c, [hl]
    add hl, bc

jr_01d_4e05:
    ld c, [hl]
    nop
    cp [hl]
    ld c, [hl]
    ld a, $01
    ld [$cf0c], a
    dec a
    ld [$cc3c], a
    ret


    dec d
    ld c, [hl]
    ld [$7721], sp
    ld c, [hl]
    call Call_000_3c49

jr_01d_4e1c:
    xor a
    ld [$cc26], a
    ld [$cc36], a

jr_01d_4e23:
    ld hl, $4e7c
    call Call_000_3c49
    ld hl, $4e6d
    call Call_000_2a5a
    ld hl, $cf7b
    ld a, l
    ld [$cf8b], a
    ld a, h
    ld [$cf8c], a
    xor a
    ld [$cf93], a
    ld [$cc35], a
    ld a, $04
    ld [$cf94], a
    call Call_000_2be6
    jr c, jr_01d_4e60

    ld hl, $4e86
    ld a, [$cf91]
    sub $15
    add a
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_3c49
    jr jr_01d_4e23

jr_01d_4e60:
    xor a
    ld [$cc36], a
    ld hl, $4e81
    call Call_000_3c49
    jp Jump_000_24d7


    ld [$1615], sp
    rla
    jr jr_01d_4e8c

    ld a, [de]
    dec de
    inc e
    rst $38
    rla
    ret


    ld d, b
    ld h, $50
    rla
    ld a, [hl-]
    ld d, c
    ld h, $50
    rla
    ld [hl], b
    ld d, c
    ld h, $50
    sub [hl]
    ld c, [hl]
    sbc e
    ld c, [hl]
    and b
    ld c, [hl]

jr_01d_4e8c:
    and l
    ld c, [hl]
    xor d
    ld c, [hl]
    xor a
    ld c, [hl]
    or h
    ld c, [hl]
    cp c
    ld c, [hl]
    rla
    sub d
    ld d, c
    ld h, $50
    rla
    ld a, [c]
    ld d, c
    ld h, $50
    rla
    ld e, l
    ld d, d
    ld h, $50
    rla
    cp b
    ld d, d
    ld h, $50
    rla
    ld a, [hl+]
    ld d, e
    ld h, $50
    rla
    adc b
    ld d, e
    ld h, $50
    rla
    rst $00
    ld d, e
    ld h, $50
    rla
    push af
    ld d, e
    ld h, $50
    inc c
    inc bc
    nop
    ld [bc], a
    add hl, bc
    rst $38
    rlca
    ld [bc], a
    ld [$07ff], sp
    inc bc
    ld [$00ff], sp
    ld bc, $070a
    add hl, bc
    rst $38
    db $d3
    ld bc, $c6f4
    nop
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    ld hl, $4f99
    call Call_000_3c49
    ld a, $13
    ld [$d125], a
    call Call_000_30e8
    xor a
    ld [$cc26], a
    ld [$cc2a], a
    ld a, $03
    ld [$cc29], a
    ld a, $03
    ld [$cc28], a
    ld a, $05
    ld [$cc24], a
    ld a, $01
    ld [$cc25], a
    ld hl, $d730
    set 6, [hl]
    ld hl, $c3dc
    ld b, $08
    ld c, $0c
    call Call_000_1922
    call Call_000_2429
    ld hl, $c406
    ld de, $4f9e
    call Call_000_1955
    ld hl, $c421
    ld de, $4fc3
    call Call_000_1955
    ld hl, $d730
    res 6, [hl]
    call Call_000_3abe
    bit 1, a
    jr nz, jr_01d_4f93

    ld a, [$cc26]
    cp $03
    jr z, jr_01d_4f93

    xor a
    ldh [$9f], a
    ldh [$a1], a
    ld a, $02
    ldh [$a0], a
    call Call_000_35a6
    jr nc, jr_01d_4f54

    ld hl, $4fd3
    jp Jump_000_3c49


jr_01d_4f54:
    call Call_01d_4fe7
    ldh a, [$db]
    ld b, a
    ld c, $01
    call Call_000_3e2e
    jr nc, jr_01d_4f8d

    ld b, $3c

jr_01d_4f63:
    ld c, $02
    call Call_000_3739
    push bc
    ld a, $a8
    call Call_000_23b1
    pop bc
    dec b
    jr nz, jr_01d_4f63

    ld hl, $4fd8
    call Call_000_3c49
    ld hl, $ffde
    ld de, $d349
    ld c, $03
    ld a, $0c
    call Call_000_3e6d
    ld a, $13
    ld [$d125], a
    jp Jump_000_30e8


jr_01d_4f8d:
    ld hl, $4fdd
    jp Jump_000_3c49


jr_01d_4f93:
    ld hl, $4fe2
    jp Jump_000_3c49


    rla
    ld [hl], d
    ld c, [hl]
    daa
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
    ld c, [hl]
    sub d
    adc [hl]
    add e
    add b
    ld a, a
    adc a
    adc [hl]
    adc a
    ld c, [hl]
    adc e
    add h
    adc h
    adc [hl]
    adc l
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
    ldh a, [$f8]
    or $f6
    ld c, [hl]
    ldh a, [$f9]
    or $f6
    ld c, [hl]
    ldh a, [$f9]
    ei
    or $4e
    ld d, b
    rla
    sub [hl]
    ld c, [hl]
    daa
    ld d, b
    rla
    xor a
    ld c, [hl]
    daa
    ld d, b
    rla
    ret nz

    ld c, [hl]
    daa
    ld d, b
    rla
    ldh [$4e], a
    daa
    ld d, b

Call_01d_4fe7:
    ld hl, $5000
    ld a, [$cc26]
    add a
    add a
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl+]
    ldh [$db], a
    ld a, [hl+]
    ldh [$dc], a
    ld a, [hl+]
    ldh [$dd], a
    ld a, [hl]
    ldh [$de], a
    ret


    inc a
    nop
    ld [bc], a
    nop
    dec a
    nop
    inc bc
    nop
    ld a, $00
    inc bc
    ld d, b
    ld [$0404], sp
    jr nz, jr_01d_5051

    inc e
    ld d, b
    jr @+$52

    nop
    ld sp, $cd50
    inc a
    inc a
    ret


    ld [hl+], a
    ld d, b
    daa
    ld d, b
    inc l
    ld d, b
    rla
    and e
    ld h, d
    daa
    ld d, b
    rla
    di
    ld h, d
    daa
    ld d, b
    rla
    ld c, l
    ld h, e
    daa
    ld d, b
    ld a, [bc]
    ld [bc], a
    rlca
    ld [bc], a
    ld bc, $07ff
    inc bc
    ld bc, $00ff
    inc bc
    inc e
    rlca
    ld b, $ff
    db $d3
    ld bc, $060b
    dec bc
    rst $38
    pop de
    ld [bc], a
    inc b
    add hl, bc
    add hl, bc
    rst $38
    rst $38
    inc bc
    ld [de], a
    rst $00

jr_01d_5051:
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    ld b, $04
    rlca
    jr nc, jr_01d_509c

    ld l, c
    ld d, b
    ld h, e
    ld d, b
    nop
    ld a, l
    ld d, b
    call Call_000_22fa
    jp Jump_000_3c3c


    ld [hl], c
    ld d, b
    ld [hl], d
    ld d, b
    ld [hl], a
    ld d, b
    ld a, h
    ld d, b
    rst $38
    rla
    add a
    ld h, e
    daa
    ld d, b
    rla
    sbc $63
    daa
    ld d, b
    or $00
    ld [bc], a
    rlca
    inc bc
    ld [bc], a
    rst $38
    rlca
    inc b
    ld [bc], a
    rst $38
    nop
    inc b
    add hl, hl
    dec b
    rlca
    rst $38
    ret nc

    ld bc, $0721
    ld b, $ff
    rst $38
    ld [bc], a
    ld b, $09
    ld a, [bc]
    cp $02
    inc bc
    ld a, [hl+]

jr_01d_509c:
    ld b, $0f
    rst $38
    ret nc

    inc b
    ld e, $c7
    rlca
    inc bc
    rra
    rst $00
    rlca
    inc b
    inc d
    inc b
    dec b
    xor l
    ld d, c
    cp b
    ld d, b
    or l
    ld d, b
    nop
    add b
    ld d, c
    jp Jump_000_3c3c


    jp nz, $f450

    inc h
    push hl
    inc h
    ld h, e
    ld d, c
    ld h, e
    ld d, c
    ld [$8efa], sp
    rst $10
    bit 0, a
    jr nz, jr_01d_5124

    ld b, $40
    call Call_000_3493
    jr nz, jr_01d_50f2

    ld a, [$d78e]
    bit 1, a
    jr nz, jr_01d_5109

    ld hl, $5135
    call Call_000_3c49
    call Call_000_35ec
    ld a, [$cc26]
    and a
    ld hl, $513f
    jr nz, jr_01d_50ed

    ld hl, $513a

jr_01d_50ed:
    call Call_000_3c49
    jr jr_01d_5132

jr_01d_50f2:
    ld hl, $5144
    call Call_000_3c49
    ld a, $40
    ldh [$db], a
    ld b, $05
    ld hl, $7f37
    call Call_000_35d6
    ld hl, $d78e
    set 1, [hl]

jr_01d_5109:
    ld hl, $514e
    call Call_000_3c49
    ld bc, $c701
    call Call_000_3e2e
    jr nc, jr_01d_512c

    ld hl, $5153
    call Call_000_3c49
    ld hl, $d78e
    set 0, [hl]
    jr jr_01d_5132

jr_01d_5124:
    ld hl, $5159
    call Call_000_3c49
    jr jr_01d_5132

jr_01d_512c:
    ld hl, $515e
    call Call_000_3c49

jr_01d_5132:
    jp Jump_000_24d7


    rla
    ld b, h
    ld h, h
    daa
    ld d, b
    rla
    adc e
    ld h, h
    daa
    ld d, b
    rla
    or b
    ld h, h
    daa
    ld d, b
    rla
    jp nc, $2764

    dec bc
    rla
    ld sp, hl
    ld h, h
    daa
    ld d, b
    rla
    dec de
    ld h, l
    daa
    ld d, b
    rla
    and d
    ld h, l
    daa
    dec bc
    ld d, b
    rla
    or [hl]
    ld h, l
    daa
    ld d, b
    rla
    ld a, d
    ld h, [hl]
    daa
    ld d, b
    ld [$8cf0], sp
    cp $04
    ld hl, $517b
    jr nz, jr_01d_5170

    ld hl, $5176

jr_01d_5170:
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    sub [hl]
    ld h, [hl]
    daa
    ld d, b
    rla
    or b
    ld h, [hl]
    daa
    ld d, b
    rla
    ld [bc], a
    rlca
    inc b
    inc bc
    rst $38
    rlca
    dec b
    inc bc
    rst $38
    ld [bc], a
    inc bc
    inc b
    inc b
    inc bc
    dec b
    dec b
    inc bc
    dec l
    rlca
    ld b, $ff
    rst $38
    ld bc, $073d
    inc c
    rst $38
    rst $38
    add d
    jr z, jr_01d_51df

    ld [$ff0c], sp
    db $10
    inc bc
    rla
    rst $00
    rlca
    inc b
    rla
    rst $00
    rlca
    dec b
    ld bc, $0101
    ld bc, $2901
    rlca
    jr nz, jr_01d_51d3

    ld e, $07
    rlca
    rlca
    rlca
    rlca
    dec c
    rlca
    inc c
    rlca
    ld c, $0c
    inc bc
    inc b
    dec h
    ld d, h
    cp c
    ld d, d
    call $0051
    push af
    ld d, e
    call Call_000_3c3c
    ld hl, $51d9

jr_01d_51d3:
    ld a, [$d61f]
    jp Jump_000_3d97


    rst $20
    ld d, c
    ld h, $52
    ld a, [hl+]
    ld d, d

jr_01d_51df:
    ld b, b
    ld d, d
    add a
    ld d, d
    ld c, [hl]
    ld d, d
    sub l
    ld d, d
    ld hl, $5221
    call Call_000_34bf
    ret nc

    ld a, $03
    ldh [$8c], a
    call Call_000_2920
    ld a, $ff
    ld [$cd6b], a
    xor a
    ldh [$b4], a
    ld a, $0c
    ld [$c109], a
    ld a, [$cd3d]
    cp $01
    jr z, jr_01d_520f

    ld a, $02
    ld [$d61f], a
    ret


jr_01d_520f:
    ld a, $10
    ld c, $01
    call Call_01d_52a3
    ld a, $f0
    ld [$cd6b], a
    ld a, $01
    ld [$d61f], a
    ret


    ld [bc], a
    inc bc
    ld [bc], a
    inc b
    rst $38
    call Call_01d_52b4
    ret nz

    xor a
    ldh [$b4], a
    ld [$cd6b], a
    call Call_000_2429
    ld a, $04
    ldh [$8c], a
    call Call_000_2920
    ld a, $ff
    ld [$cd6b], a
    ret


    call Call_01d_52b4
    ret nz

    xor a
    ld [$cd6b], a
    ld a, $05
    ld [$d61f], a
    ret


    ld a, $04
    ld [$d528], a
    ld hl, $d790
    bit 6, [hl]
    res 6, [hl]
    jr z, jr_01d_527f

    res 7, [hl]
    call Call_000_2429
    ld a, $f0
    ld [$cd6b], a
    ld a, $06
    ldh [$8c], a
    call Call_000_2920
    xor a
    ld [$da47], a
    ld a, $80
    ld c, $03
    call Call_01d_52a3
    ld a, $04
    ld [$d61f], a
    jr jr_01d_5286

jr_01d_527f:
    ld a, $05
    ldh [$8c], a
    call Call_000_2920

jr_01d_5286:
    ret


    call Call_01d_52b4
    ret nz

    xor a
    ld [$cd6b], a
    ld a, $00
    ld [$d61f], a
    ret


    call Call_01d_52b4
    ret nz

    call Call_000_3dd7
    ld a, [$cf0d]
    ld [$d61f], a
    ret


Call_01d_52a3:
    push af
    ld b, $00
    ld a, c
    ld [$cd38], a
    ld hl, $ccd3
    pop af
    call Call_000_36e0
    jp Jump_000_3486


Call_01d_52b4:
    ld a, [$cd38]
    and a
    ret


    push bc
    ld d, d
    jp z, $c553

    ld d, d
    jp z, Jump_01d_6f52

    ld d, e
    push bc
    ld d, e
    rla
    rst $00
    ld h, [hl]
    daa
    ld d, b
    rla
    db $e4
    ld h, [hl]
    daa
    ld [$133e], sp
    ld [$d125], a
    call Call_000_30e8
    call Call_000_35ec
    ld a, [$cc26]
    and a
    jp nz, Jump_01d_5346

    xor a
    ldh [$9f], a
    ld a, $05
    ldh [$a0], a
    ld a, $00
    ldh [$a1], a
    call Call_000_35a6
    jr nc, jr_01d_52f9

    ld hl, $536a
    call Call_000_3c49
    jr jr_01d_534c

jr_01d_52f9:
    xor a
    ld [$cd3d], a
    ld a, $05
    ld [$cd3e], a
    ld a, $00
    ld [$cd3f], a
    ld hl, $cd3f
    ld de, $d349
    ld c, $03
    ld a, $0c
    call Call_000_3e6d
    ld a, $13
    ld [$d125], a
    call Call_000_30e8
    ld hl, $535b
    call Call_000_3c49
    ld a, $1e
    ld [$da47], a
    ld a, $01
    ld [$d70d], a
    ld a, $f6
    ld [$d70e], a
    ld a, $40
    ld c, $03
    call Call_01d_52a3
    ld hl, $d790
    set 7, [hl]
    res 6, [hl]
    ld a, $03
    ld [$d61f], a
    jr jr_01d_5358

Jump_01d_5346:
    ld hl, $5365
    call Call_000_3c49

jr_01d_534c:
    ld a, $80
    ld c, $01
    call Call_01d_52a3
    ld a, $04
    ld [$d61f], a

jr_01d_5358:
    jp Jump_000_24d7


    rla
    ld b, a
    ld h, a
    daa
    dec bc
    rla
    sbc a
    ld h, a
    daa
    ld d, b
    rla
    db $e3
    ld h, a
    daa
    ld d, b
    rla
    ei
    ld h, a
    daa
    ld d, b
    rla
    inc d
    ld l, b
    daa
    ld [$eccd], sp
    dec [hl]
    ld a, [$cc26]
    and a
    jr nz, jr_01d_539c

    ld hl, $53bb
    call Call_000_3c49
    xor a
    ld [$c109], a
    ld a, $80
    ld c, $03
    call Call_01d_52a3
    ld hl, $d790
    res 6, [hl]
    res 7, [hl]
    ld a, $00
    ld [$cf0d], a
    jr jr_01d_53b3

jr_01d_539c:
    ld hl, $53c0
    call Call_000_3c49
    ld a, $04
    ld [$c109], a
    ld a, $40
    ld c, $01
    call Call_01d_52a3
    ld a, $05
    ld [$cf0d], a

jr_01d_53b3:
    ld a, $06
    ld [$d61f], a
    jp Jump_000_24d7


    rla
    dec h
    ld l, b
    daa
    ld d, b
    rla
    ld d, h
    ld l, b
    daa
    ld d, b
    rla
    ld h, b
    ld l, b
    daa
    ld d, b
    ld [$e621], sp
    ld d, e
    call Call_000_3c49
    call Call_000_35ec
    ld a, [$cc26]
    and a
    ld hl, $53f0
    jr nz, jr_01d_53e0

    ld hl, $53eb

jr_01d_53e0:
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    add [hl]
    ld l, b
    daa
    ld d, b
    rla
    and a
    ld l, b
    daa
    ld d, b
    rla
    sub e
    ld l, c
    daa
    ld d, b
    ld a, [bc]
    inc b
    dec b
    inc bc
    inc b
    rst $38
    dec b
    inc b
    inc b
    rst $38
    nop
    inc bc
    nop
    call c, $0400
    ld bc, $00dc
    ld [bc], a
    inc hl
    ld b, $0a
    rst $38
    jp nc, Jump_000_2301

    ld [$ff05], sp
    db $d3
    ld [bc], a
    ld [$05c7], sp
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
    rlca
    add hl, bc
    dec b
    xor d
    ld d, [hl]
    push de
    ld d, h
    dec a
    ld d, h
    nop
    ld e, b
    ld d, [hl]
    call Call_01d_5453
    call Call_000_3c3c
    ld hl, $54eb
    ld de, $5482
    ld a, [$d65b]
    call Call_000_3160
    ld [$d65b], a
    ret


Call_01d_5453:
    ld hl, $d126
    bit 6, [hl]
    res 6, [hl]
    ret z

    ld hl, $5465
    ld de, $5472
    call Call_000_317f
    ret


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
    adc d
    adc [hl]
    add [hl]
    add b
    ld d, b

Jump_01d_5477:
    xor a
    ld [$cd6b], a
    ld [$d65b], a
    ld [$da39], a
    ret


    add hl, de
    ld [hl-], a
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    adc d
    ld d, h
    ld a, [$d057]
    cp $ff
    jp z, Jump_01d_5477

    ld a, $f0
    ld [$cd6b], a

Call_01d_5497:
    ld a, $09
    ldh [$8c], a
    call Call_000_2920
    ld hl, $d792
    set 1, [hl]
    ld bc, $ce01
    call Call_000_3e2e
    jr nc, jr_01d_54b9

    ld a, $0a
    ldh [$8c], a
    call Call_000_2920
    ld hl, $d792
    set 0, [hl]
    jr jr_01d_54c0

jr_01d_54b9:
    ld a, $0b
    ldh [$8c], a
    call Call_000_2920

jr_01d_54c0:
    ld hl, $d356
    set 4, [hl]
    ld hl, $d72a
    set 4, [hl]
    ld a, [$d792]
    or $fc
    ld [$d792], a
    jp Jump_01d_5477


    inc [hl]
    ld d, l
    and h
    ld d, l
    cp l
    ld d, l
    sub $55
    rst $28
    ld d, l
    ld [$2156], sp
    ld d, [hl]
    ld a, [hl-]
    ld d, [hl]
    sub b
    ld d, l
    sub l
    ld d, l
    sbc a
    ld d, l
    ld [bc], a
    jr nz, @-$6c

    rst $10
    xor [hl]
    ld d, l
    cp b
    ld d, l
    or e
    ld d, l
    or e
    ld d, l
    inc bc
    jr nz, @-$6c

    rst $10
    rst $00
    ld d, l
    pop de
    ld d, l
    call z, $cc55
    ld d, l
    inc b
    ld b, b
    sub d
    rst $10
    ldh [rHDMA5], a
    ld [$e555], a
    ld d, l
    push hl
    ld d, l
    dec b
    jr nz, @-$6c

    rst $10
    ld sp, hl
    ld d, l
    inc bc
    ld d, [hl]
    cp $55
    cp $55
    ld b, $20
    sub d
    rst $10
    ld [de], a
    ld d, [hl]
    inc e
    ld d, [hl]
    rla
    ld d, [hl]
    rla
    ld d, [hl]
    rlca
    jr nz, @-$6c

    rst $10
    dec hl
    ld d, [hl]
    dec [hl]
    ld d, [hl]
    jr nc, jr_01d_5587

    jr nc, jr_01d_5589

    rst $38
    ld [$92fa], sp
    rst $10
    bit 1, a
    jr z, jr_01d_5550

    bit 0, a
    jr nz, jr_01d_5548

    call z, Call_01d_5497
    call Call_000_30b6
    jr jr_01d_557e

jr_01d_5548:
    ld hl, $558b
    call Call_000_3c49
    jr jr_01d_557e

jr_01d_5550:
    ld hl, $5581
    call Call_000_3c49
    ld hl, $d72d
    set 6, [hl]
    set 7, [hl]
    ld hl, $5586
    ld de, $5586
    call Call_000_3354
    ldh a, [$8c]
    ld [$cf13], a
    call Call_000_336a
    call Call_000_32d7
    ld a, $05
    ld [$d05c], a
    xor a
    ldh [$b4], a
    ld a, $03
    ld [$d65b], a

jr_01d_557e:
    jp Jump_000_24d7


    rla
    or c
    ld l, c
    daa
    ld d, b
    rla

jr_01d_5587:
    ld h, [hl]
    ld l, d

jr_01d_5589:
    daa
    ld d, b
    rla
    nop
    ld b, b
    jr z, jr_01d_55e0

    rla
    ld l, c
    ld b, b
    jr z, jr_01d_55e5

    rla
    db $eb
    ld b, b
    jr z, jr_01d_55ab

    rla
    rst $38
    ld b, b
    jr z, jr_01d_55ef

    rla
    ld b, e
    ld b, c
    jr z, @+$52

    ld [$eb21], sp
    ld d, h
    call Call_000_31cc

jr_01d_55ab:
    jp Jump_000_24d7


    rla
    ld h, b
    ld b, c
    jr z, jr_01d_5603

    rla
    jp nz, Jump_000_2841

    ld d, b
    rla
    ret c

    ld b, c
    jr z, @+$52

    ld [$f721], sp
    ld d, h
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    rlca
    ld b, d
    jr z, jr_01d_561c

    rla
    ld a, [hl-]
    ld b, d
    jr z, jr_01d_5621

    rla
    ld c, b
    ld b, d
    jr z, @+$52

    ld [$0321], sp
    ld d, l
    call Call_000_31cc
    jp Jump_000_24d7


jr_01d_55e0:
    rla
    ld a, [hl]
    ld b, d
    jr z, jr_01d_5635

jr_01d_55e5:
    rla
    xor b
    ld b, d
    jr z, jr_01d_563a

    rla
    cp h
    ld b, d
    jr z, @+$52

jr_01d_55ef:
    ld [$0f21], sp
    ld d, l
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    cp $42
    jr z, jr_01d_564e

    rla
    ld a, [hl-]
    ld b, e
    jr z, jr_01d_5653

jr_01d_5603:
    rla
    ld c, l
    ld b, e
    jr z, jr_01d_5658

    ld [$1b21], sp
    ld d, l
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    and c
    ld b, e
    jr z, @+$52

    rla
    ld [bc], a
    ld b, h
    jr z, jr_01d_566c

jr_01d_561c:
    rla
    add hl, bc
    ld b, h
    jr z, jr_01d_5671

jr_01d_5621:
    ld [$2721], sp
    ld d, l
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ld h, $44
    jr z, jr_01d_5680

    rla
    ld [hl], b
    ld b, h
    jr z, @+$52

jr_01d_5635:
    rla
    add e
    ld b, h
    jr z, jr_01d_568a

jr_01d_563a:
    ld [$92fa], sp
    rst $10
    bit 1, a
    ld hl, $5653
    jr nz, jr_01d_5648

    ld hl, $564e

jr_01d_5648:
    call Call_000_3c49
    jp Jump_000_24d7


jr_01d_564e:
    rla
    jp nc, Jump_000_2844

    ld d, b

jr_01d_5653:
    rla
    ld [hl], h
    ld b, l
    jr z, jr_01d_56a8

jr_01d_5658:
    inc bc
    ld [bc], a
    ld de, $0504
    rst $38
    ld de, $0505
    rst $38
    nop
    ld [$0e30], sp
    ld [$d0ff], sp
    ld b, c
    xor $01

jr_01d_566c:
    ld hl, $0c11
    rst $38
    ret nc

jr_01d_5671:
    ld b, d
    db $dd
    rlca
    ld hl, $0b0c
    rst $38
    db $d3
    ld b, e
    db $dd
    inc bc
    ld hl, $0510
    rst $38

jr_01d_5680:
    ret nc

    ld b, h
    db $dd
    ld [$0921], sp
    rlca
    rst $38
    pop de
    ld b, l

jr_01d_568a:
    sbc $01
    ld hl, $0c06
    rst $38
    ret nc

    ld b, [hl]
    sbc $02
    ld hl, $060b
    rst $38
    jp nc, $dd47

    inc b
    inc h
    inc de
    dec bc
    rst $38
    ret nc

    ld [$c74e], sp
    ld de, $4e04
    rst $00

jr_01d_56a8:
    ld de, $0105
    ld bc, $0101
    ld bc, $2d05
    ld l, $30
    dec b
    dec l
    dec b
    cpl
    jr nc, jr_01d_56be

    cpl
    dec l
    dec b
    cpl
    dec b

jr_01d_56be:
    dec b
    dec l
    dec l
    cpl
    dec b
    ld l, $2f
    dec b
    jr nc, jr_01d_56cd

    dec b
    dec l
    dec l
    dec l
    dec b

jr_01d_56cd:
    dec b
    ld [hl-], a
    dec b
    ld sp, $0505
    dec b
    inc b
    dec b
    dec b
    inc d
    inc b
    rlca
    ld [hl+], a
    ld d, a
    rst $20
    ld d, [hl]
    db $e3
    ld d, [hl]
    nop
    db $fc
    ld d, [hl]
    call Call_000_3c3c
    ret


    db $ed
    ld d, [hl]
    ld a, [c]
    ld d, [hl]
    rst $30
    ld d, [hl]
    rla
    and c
    ld b, l
    jr z, @+$52

    rla
    and $45
    jr z, jr_01d_5747

    rla
    ld b, d
    ld b, [hl]
    jr z, jr_01d_574c

    rla
    ld [bc], a
    rlca
    inc b
    ld b, $ff
    rlca
    dec b
    ld b, $ff
    nop
    inc bc
    inc hl
    dec b
    ld [$d0ff], sp
    ld bc, $0623
    inc b
    rst $38
    pop de
    ld [bc], a
    inc hl
    dec b
    ld c, $ff
    ret nc

    inc bc
    rra
    rst $00
    rlca
    inc b
    rra
    rst $00
    rlca
    dec b
    ld b, $06
    ld bc, $0103
    dec [hl]
    ld bc, $0707
    jr c, @+$3b

    rlca
    rrca
    rlca
    inc [hl]
    rlca
    ld [hl], $37
    scf
    scf
    scf
    dec c
    rlca
    inc c
    rlca
    rlca
    rlca
    ld c, $16
    add hl, bc
    ld a, [bc]
    ld h, $5b
    sbc a
    ld e, b
    ld c, d
    ld d, a

jr_01d_5747:
    nop
    call z, $cd5a
    ld e, c

jr_01d_574c:
    ld d, a
    call Call_000_3c3c
    ld hl, $57a6
    ld a, [$d65e]
    jp Jump_000_3d97


    ld hl, $d126
    bit 6, [hl]
    res 6, [hl]
    push hl
    call nz, Call_01d_5772
    pop hl
    bit 5, [hl]
    res 5, [hl]
    call nz, Call_000_3ead
    ld hl, $d79b
    res 7, [hl]
    ret


Call_01d_5772:
    ld hl, $577b
    ld de, $578b
    jp Jump_000_317f


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
    add c
    adc e
    add b
    adc b
    adc l
    add h
    ld d, b

Jump_01d_5792:
    xor a
    ld [$cd6b], a
    ld [$d65e], a
    ld [$da39], a
    ld [$da38], a
    ret


    ldh a, [$8c]
    ld [$cc55], a
    ret


    xor [hl]
    ld d, a
    call c, $f657
    ld d, a
    ld c, d
    ld e, b
    ld a, [$da38]
    and a
    ret z

    ldh [$8c], a
    cp $04
    jr nz, jr_01d_57c3

    ld a, $04
    ld [$d528], a
    ld de, $57d7
    jr jr_01d_57cb

jr_01d_57c3:
    ld de, $57da
    ld a, $01
    ld [$d528], a

jr_01d_57cb:
    call Call_000_363a
    ld a, $01
    ld [$d65e], a
    ld [$da39], a
    ret


    add b
    ld b, b
    rst $38
    add b
    rst $38
    ld a, [$d730]
    bit 0, a
    ret nz

    xor a
    ld [$cd6b], a
    ld a, [$da38]
    ld [$cc55], a
    ldh [$8c], a
    jp Jump_000_2920


Call_01d_57f1:
    ld a, $10
    jp Jump_000_3e6d


    ld a, [$d057]
    cp $ff
    jp z, Jump_01d_5792

    ld a, [$cc55]
    ldh [$db], a
    ld c, a
    ld b, $02
    ld hl, $d79a
    call Call_01d_57f1
    ld a, c
    and a
    jr nz, jr_01d_581b

    call Call_000_3748
    ld a, $ad
    call Call_000_23b1
    call Call_000_3748

jr_01d_581b:
    ld a, [$cc55]
    ldh [$db], a
    ld c, a
    ld b, $01
    ld hl, $d79a
    call Call_01d_57f1
    ld a, [$cc55]
    sub $02
    ld c, a
    ld b, $01
    ld hl, $d79c
    call Call_01d_57f1
    call Call_000_3ead
    xor a
    ld [$cd6b], a
    ld [$da38], a
    ld a, $00
    ld [$d65e], a
    ld [$da39], a
    ret


    ld a, [$d057]
    cp $ff
    jp z, Jump_01d_5792

    ld a, $f0
    ld [$cd6b], a

Call_01d_5857:
    ld a, $0a
    ldh [$8c], a
    call Call_000_2920
    ld hl, $d79a
    set 1, [hl]
    ld bc, $ee01
    call Call_000_3e2e
    jr nc, jr_01d_5879

    ld a, $0b
    ldh [$8c], a
    call Call_000_2920
    ld hl, $d79a
    set 0, [hl]
    jr jr_01d_5880

jr_01d_5879:
    ld a, $0c
    ldh [$8c], a
    call Call_000_2920

jr_01d_5880:
    ld hl, $d356
    set 6, [hl]
    ld hl, $d72a
    set 6, [hl]
    ld a, [$d79a]
    or $fc
    ld [$d79a], a
    ld hl, $d79b
    set 0, [hl]
    ld hl, $d126
    set 5, [hl]
    jp Jump_01d_5792


    rst $18
    ld e, b
    add hl, sp
    ld e, c
    ld l, [hl]
    ld e, c
    and e
    ld e, c
    ret c

    ld e, c
    dec c
    ld e, d
    ld b, d
    ld e, d
    ld [hl], a
    ld e, d
    xor h
    ld e, d
    dec h
    ld e, c
    ld a, [hl+]
    ld e, c
    inc [hl]
    ld e, c

Jump_01d_58b7:
    ldh a, [$8c]
    ld [$cf13], a
    call Call_000_336a
    call Call_000_32d7
    ld hl, $d72d
    set 6, [hl]
    set 7, [hl]
    ld a, [$cf13]
    cp $01
    jr z, jr_01d_58d4

    ld a, $02
    jr jr_01d_58d6

jr_01d_58d4:
    ld a, $03

jr_01d_58d6:
    ld [$d65e], a
    ld [$da39], a
    jp Jump_000_24d7


    ld [$9afa], sp
    rst $10
    bit 1, a
    jr z, jr_01d_58fd

    bit 0, a
    jr nz, jr_01d_58f4

    call z, Call_01d_5857
    call Call_000_30b6
    jp Jump_000_24d7


jr_01d_58f4:
    ld hl, $5920
    call Call_000_3c49
    jp Jump_000_24d7


jr_01d_58fd:
    ld hl, $5914
    call Call_000_3c49
    ld hl, $5919
    ld de, $5919
    call Call_000_3354
    ld a, $07
    ld [$d05c], a
    jp Jump_01d_58b7


    rla
    ld b, h
    ld c, b
    jr z, jr_01d_5969

    rla
    rst $00
    ld c, b
    jr z, jr_01d_592f

    dec c
    ld d, b
    rla
    db $fd
    ld c, b
    jr z, jr_01d_5975

    rla
    ld b, [hl]
    ld c, c
    jr z, @+$52

    rla
    xor b
    ld c, c
    jr z, @+$0d

jr_01d_592f:
    rla
    cp h
    ld c, c
    jr z, @+$52

    rla
    ld e, $4a
    jr z, @+$52

    ld [$a0cd], sp
    ld d, a
    ld a, [$d79a]
    bit 2, a
    jr nz, jr_01d_5956

    ld hl, $595f
    call Call_000_3c49
    ld hl, $5964
    ld de, $5964
    call Call_000_3354
    jp Jump_01d_58b7


jr_01d_5956:
    ld hl, $5969
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    ld [hl], $4a
    jr z, jr_01d_59b4

    rla
    ld h, l
    ld c, d
    jr z, @+$52

jr_01d_5969:
    rla
    ld a, d
    ld c, d
    jr z, @+$52

    ld [$a0cd], sp
    ld d, a
    ld a, [$d79a]

jr_01d_5975:
    bit 3, a
    jr nz, jr_01d_598b

    ld hl, $5994
    call Call_000_3c49
    ld hl, $5999
    ld de, $5999
    call Call_000_3354
    jp Jump_01d_58b7


jr_01d_598b:
    ld hl, $599e
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    ret nz

    ld c, d
    jr z, jr_01d_59e9

    rla
    db $f4
    ld c, d
    jr z, @+$52

    rla
    ld [bc], a
    ld c, e
    jr z, @+$52

    ld [$a0cd], sp
    ld d, a
    ld a, [$d79a]
    bit 4, a
    jr nz, jr_01d_59c0

    ld hl, $59c9
    call Call_000_3c49

jr_01d_59b4:
    ld hl, $59ce
    ld de, $59ce
    call Call_000_3354
    jp Jump_01d_58b7


jr_01d_59c0:
    ld hl, $59d3
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    inc l
    ld c, e
    jr z, jr_01d_5a1e

    rla
    ld e, b
    ld c, e
    jr z, @+$52

    rla
    ld l, e
    ld c, e
    jr z, @+$52

    ld [$a0cd], sp
    ld d, a
    ld a, [$d79a]
    bit 5, a
    jr nz, jr_01d_59f5

    ld hl, $59fe
    call Call_000_3c49

jr_01d_59e9:
    ld hl, $5a03
    ld de, $5a03
    call Call_000_3354
    jp Jump_01d_58b7


jr_01d_59f5:
    ld hl, $5a08
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    sub l
    ld c, e
    jr z, jr_01d_5a53

    rla
    or e
    ld c, e
    jr z, @+$52

    rla
    rst $00
    ld c, e
    jr z, @+$52

    ld [$a0cd], sp
    ld d, a
    ld a, [$d79a]
    bit 6, a
    jr nz, jr_01d_5a2a

    ld hl, $5a33
    call Call_000_3c49

jr_01d_5a1e:
    ld hl, $5a38
    ld de, $5a38
    call Call_000_3354
    jp Jump_01d_58b7


jr_01d_5a2a:
    ld hl, $5a3d
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    db $f4
    ld c, e
    jr z, jr_01d_5a88

    rla
    add hl, de
    ld c, h
    jr z, @+$52

    rla
    ld e, $4c
    jr z, @+$52

    ld [$a0cd], sp
    ld d, a
    ld a, [$d79a]
    bit 7, a
    jr nz, jr_01d_5a5f

    ld hl, $5a68
    call Call_000_3c49

jr_01d_5a53:
    ld hl, $5a6d
    ld de, $5a6d
    call Call_000_3354
    jp Jump_01d_58b7


jr_01d_5a5f:
    ld hl, $5a72
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    sub b
    ld c, h
    jr z, @+$52

    rla
    pop bc
    ld c, h
    jr z, jr_01d_5ac2

    rla
    jp nc, $284c

    ld d, b
    ld [$a0cd], sp
    ld d, a
    ld a, [$d79b]
    bit 0, a
    jr nz, jr_01d_5a94

    ld hl, $5a9d
    call Call_000_3c49

jr_01d_5a88:
    ld hl, $5aa2
    ld de, $5aa2
    call Call_000_3354
    jp Jump_01d_58b7


jr_01d_5a94:
    ld hl, $5aa7
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    nop
    ld c, l
    jr z, @+$52

    rla
    dec de
    ld c, l
    jr z, jr_01d_5af7

    rla
    dec l
    ld c, l
    jr z, jr_01d_5afc

    ld [$9afa], sp
    rst $10
    bit 1, a
    jr nz, jr_01d_5ab9

    ld hl, $5ac2
    jr jr_01d_5abc

jr_01d_5ab9:
    ld hl, $5ac7

jr_01d_5abc:
    call Call_000_3c49
    jp Jump_000_24d7


jr_01d_5ac2:
    rla
    ld e, d
    ld c, l
    jr z, jr_01d_5b17

    rla
    reti


    ld c, l
    jr z, jr_01d_5b1c

    ld l, $02
    ld de, $0110
    rst $38
    ld de, $0111
    rst $38
    nop
    add hl, bc
    ld a, [bc]
    rlca
    rlca
    rst $38
    ret nc

    ld b, c
    rst $28
    ld bc, $060c
    dec d
    rst $38
    ret nc

    ld b, d
    ret nc

    add hl, bc
    inc c
    inc c
    dec d
    rst $38
    ret nc

    ld b, e
    db $d3
    inc b
    inc c
    ld [$ff0f], sp
    ret nc

    ld b, h
    ret nc

jr_01d_5af7:
    ld a, [bc]
    inc c
    inc c
    rrca
    rst $38

jr_01d_5afc:
    ret nc

    ld b, l
    db $d3
    dec b
    inc c
    ld [de], a
    rrca
    rst $38
    ret nc

    ld b, [hl]
    ret nc

    dec bc
    inc c
    ld [de], a
    rlca
    rst $38
    ret nc

    ld b, a
    db $d3
    ld b, $0c
    inc c
    rlca
    rst $38
    ret nc

    ld c, b
    ret nc

jr_01d_5b17:
    inc c
    inc h
    ld de, $ff14

jr_01d_5b1c:
    ret nc

    add hl, bc
    add c
    rst $00
    ld de, $8110
    rst $00
    ld de, $4011
    ld h, c
    ld h, c
    ld b, b
    ld b, b
    ld h, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, h
    ld c, $0e
    ld b, h
    ld b, h
    ld c, $0e
    ld e, c
    ld c, $0e
    ld b, h
    ld c, $0e
    ld b, h
    ld b, h
    ld c, $0e
    ld b, h
    ld c, $0e
    ld l, e
    ld h, e
    ld c, $44
    ld l, e
    ld h, e
    ld c, $6b
    ld h, e
    ld c, $44
    ld c, $0e
    ld b, h
    ld b, h
    ld c, $0e
    ld b, h
    ld c, $0e
    ld b, h
    ld c, $0e
    ld b, h
    ld b, h
    ld c, $0e
    ld d, b
    ld e, b
    ld c, $6b
    ld h, e
    ld c, $44
    ld l, e
    ld h, e
    ld c, $44
    ld b, l
    ld c, $44
    ld c, $0e
    ld c, b
    ld d, l
    ld c, $0e
    ld b, h
    ld c, $0e
    ld b, h
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld b, h
    inc l
    ld c, $14
    inc b
    add hl, bc
    pop af
    ld e, e
    sub b
    ld e, e
    adc h
    ld e, e
    nop
    or e
    ld e, e
    call Call_000_3c3c
    ret


    sbc d
    ld e, e
    sbc a
    ld e, e
    and h
    ld e, e
    xor c
    ld e, e
    xor [hl]
    ld e, e
    rla
    rst $30
    ld c, l
    jr z, jr_01d_5bef

    rla
    ld c, c
    ld c, [hl]
    jr z, jr_01d_5bf4

    rla
    ld [hl], b
    ld c, [hl]
    jr z, jr_01d_5bf9

    rla
    add a
    ld c, [hl]
    jr z, jr_01d_5bfe

    rla
    sbc [hl]
    ld c, [hl]
    jr z, jr_01d_5c03

    rla
    dec b
    rlca
    ld [bc], a
    ld [bc], a
    rst $38
    rlca
    inc bc
    ld [bc], a
    rst $38
    inc b
    ld [$a800], sp
    inc b
    inc c
    nop
    xor c
    inc b
    stop
    xor d
    inc b
    ld [bc], a
    inc bc
    ld [bc], a
    inc b
    add hl, bc
    inc bc
    inc b
    dec c
    inc b
    inc b
    ld de, $0105
    daa
    rlca
    dec b
    rst $38
    rst $38
    ld bc, $c726
    rlca
    ld [bc], a
    ld h, $c7
    rlca
    inc bc
    ld a, [de]
    rst $00
    inc b
    ld [$c71c], sp
    inc b
    inc c
    ld e, $c7

jr_01d_5bef:
    inc b
    db $10
    rla
    rla
    rla

jr_01d_5bf4:
    rla
    rla
    rla
    rla
    rla

jr_01d_5bf9:
    rla
    add hl, bc
    inc bc
    ld a, [bc]
    rla

jr_01d_5bfe:
    rla
    rla
    rla
    rla
    rla

jr_01d_5c03:
    rlca
    rlca
    rlca
    add hl, de
    jr @+$03

    jr @+$03

    jr jr_01d_5c14

    inc c
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca

jr_01d_5c14:
    rlca
    inc d
    inc b
    inc b
    ld l, e
    ld e, h
    inc h
    ld e, h
    ld hl, $005c
    ld b, l
    ld e, h
    jp Jump_000_3c3c


    ld a, [hl+]
    ld e, h
    cpl
    ld e, h
    scf
    ld e, h
    rla
    or l
    ld c, [hl]
    jr z, jr_01d_5c7f

    ld [$073e], sp
    ld [$cd3d], a
    jr jr_01d_5c3d

    ld [$083e], sp
    ld [$cd3d], a

jr_01d_5c3d:
    ld a, $54
    call Call_000_3e6d
    jp Jump_000_24d7


    rla
    ld [bc], a
    rlca
    ld [bc], a
    ld [bc], a
    and a
    rlca
    inc bc
    ld [bc], a
    and a
    nop
    inc bc
    inc c
    ld b, $07
    rst $38
    ret nc

    ld bc, $0825
    dec b
    rst $38
    rst $38
    ld [bc], a
    rrca
    add hl, bc
    add hl, bc
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
    add hl, bc
    inc bc
    ld bc, $070a
    db $10
    ld de, $0707
    inc d
    dec d
    rlca
    dec c
    inc c
    rlca
    ld c, $14
    inc b
    inc b
    dec d

jr_01d_5c7f:
    ld e, l
    adc d
    ld e, h
    add a
    ld e, h
    nop
    db $ec
    ld e, h
    jp Jump_000_3c3c


    sub h
    ld e, h
    db $dd
    ld e, h
    ld [c], a
    ld e, h
    ld [c], a
    ld e, h
    rst $20
    ld e, h
    ld [$a1fa], sp
    rst $10
    bit 7, a
    jr nz, jr_01d_5cbf

    ld hl, $5cc8
    call Call_000_3c49
    ld bc, $eb01
    call Call_000_3e2e
    jr nc, jr_01d_5cb7

    ld hl, $5ccd
    call Call_000_3c49
    ld hl, $d7a1
    set 7, [hl]
    jr jr_01d_5cc5

jr_01d_5cb7:
    ld hl, $5cd8
    call Call_000_3c49
    jr jr_01d_5cc5

jr_01d_5cbf:
    ld hl, $5cd3
    call Call_000_3c49

jr_01d_5cc5:
    jp Jump_000_24d7


    rla
    add hl, bc
    ld c, a
    jr z, jr_01d_5d1d

    rla
    ld c, b
    ld c, a
    jr z, jr_01d_5cdd

    ld d, b
    rla
    ld e, l
    ld c, a
    jr z, jr_01d_5d28

    rla
    rst $00
    ld c, a
    jr z, @+$52

jr_01d_5cdd:
    rla
    db $e3
    ld c, a
    jr z, @+$52

    rla
    db $10
    ld d, b
    jr z, @+$52

    rla
    ret c

    ld d, b
    jr z, jr_01d_5d3c

    rla
    ld [bc], a
    rlca
    ld [bc], a
    inc bc
    and a
    rlca
    inc bc
    inc bc
    and a
    inc bc
    inc b
    nop
    inc bc
    inc b
    ld bc, HeaderLogo
    ld [bc], a
    dec b
    ld [bc], a
    jr nz, jr_01d_5d09

    dec bc
    rst $38
    ret nc

    ld bc, $0720

jr_01d_5d09:
    ld b, $fe
    ld [bc], a
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    inc b
    inc b
    dec b
    ld b, $07
    rlca
    rlca
    rlca

jr_01d_5d1d:
    ld [$0707], sp
    ld b, $07
    inc c
    rlca
    rlca
    inc d
    inc b
    inc b

jr_01d_5d28:
    db $10
    ld e, [hl]
    inc [hl]
    ld e, l
    ld sp, $005d
    ldh a, [$5d]
    jp Jump_000_3c3c


    ld l, h
    ld e, l
    jp c, $af5d

    ld [$cd37], a

jr_01d_5d3c:
    ld de, $cc5b
    ld hl, $5d68

jr_01d_5d42:
    ld a, [hl+]
    and a
    jr z, jr_01d_5d64

    push hl
    push de
    ld [$d11e], a
    ld b, a
    ld a, $1c
    call Call_000_3e6d
    pop de
    pop hl
    ld a, b
    and a
    jr z, jr_01d_5d42

    ld a, [$d11e]
    ld [de], a
    inc de
    push hl
    ld hl, $cd37
    inc [hl]
    pop hl
    jr jr_01d_5d42

jr_01d_5d64:
    ld a, $ff
    ld [de], a
    ret


    add hl, hl
    ld a, [hl+]
    rra
    nop
    ld [$a3fa], sp
    rst $10
    bit 0, a
    jr nz, jr_01d_5d96

    ld hl, $5dc6
    call Call_000_3c49
    call $5d38
    ld a, [$cd37]
    and a
    jr z, jr_01d_5d8d

    ld b, $18
    ld hl, $5006
    call Call_000_35d6
    jr jr_01d_5d93

jr_01d_5d8d:
    ld hl, $5dcb
    call Call_000_3c49

jr_01d_5d93:
    jp Jump_000_24d7


jr_01d_5d96:
    bit 1, a
    jr z, jr_01d_5da2

    ld hl, $5dd0
    call Call_000_3c49
    jr jr_01d_5d93

jr_01d_5da2:
    call Call_01d_5de8
    ld hl, $5dd5
    call Call_000_3c49
    ld hl, $d7a3
    set 2, [hl]
    ld a, [$d710]
    ld b, a
    ld c, $1e
    call Call_000_3e48
    jr nc, jr_01d_5d93

    ld hl, $d7a3
    res 0, [hl]
    res 1, [hl]
    res 2, [hl]
    jr jr_01d_5d93

    rla
    add sp, $50
    jr z, jr_01d_5e1b

    rla
    ld b, l
    ld d, c
    jr z, jr_01d_5e20

    rla
    ld d, [hl]
    ld d, c
    jr z, jr_01d_5e25

    rla
    adc l
    ld d, c
    jr z, jr_01d_5e2a

    ld [$033e], sp
    ld [$cd3d], a
    ld a, $54
    call Call_000_3e6d
    jp Jump_000_24d7


Call_01d_5de8:
    ld b, $18
    ld hl, $50eb
    jp Jump_000_35d6


    rla
    ld [bc], a
    rlca
    ld [bc], a
    inc b
    and a
    rlca
    inc bc
    inc b
    and a
    nop
    ld [bc], a
    jr nz, jr_01d_5e04

    add hl, bc
    cp $02
    ld bc, $0a20

jr_01d_5e04:
    dec bc
    rst $38
    pop de
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    ld [de], a
    inc de
    ld d, $02
    dec bc
    dec bc
    rlca
    rlca
    ld [$0708], sp

jr_01d_5e1b:
    rrca
    rlca
    inc c
    rlca
    rlca

jr_01d_5e20:
    ld b, $04
    rlca
    jr nc, jr_01d_5e65

jr_01d_5e25:
    ld [hl-], a
    ld e, [hl]
    inc l
    ld e, [hl]
    nop

jr_01d_5e2a:
    ld b, [hl]
    ld e, [hl]
    call Call_000_22fa
    jp Jump_000_3c3c


    ld a, [hl-]
    ld e, [hl]
    dec sp
    ld e, [hl]
    ld b, b
    ld e, [hl]
    ld b, l
    ld e, [hl]
    rst $38
    rla
    sbc $52
    jr z, @+$52

    rla
    ld a, $53
    jr z, jr_01d_5e95

    or $00
    ld [bc], a
    rlca
    inc bc
    inc bc
    rst $38
    rlca
    inc b
    inc bc
    rst $38
    nop
    inc b
    add hl, hl
    dec b
    rlca
    rst $38
    ret nc

    ld bc, $0806
    dec c
    cp $00
    ld [bc], a
    db $10
    ld a, [bc]
    ld b, $ff
    rst $38
    inc bc
    ld a, [hl+]

jr_01d_5e65:
    ld b, $0f
    rst $38
    ret nc

    inc b
    ld e, $c7
    rlca
    inc bc
    rra
    rst $00
    rlca
    inc b
    ld [bc], a
    inc b
    inc b
    db $10
    ld b, b
    add c
    ld e, [hl]
    ld a, [hl]
    ld e, [hl]
    nop
    sub c
    ld e, [hl]
    jp Jump_000_3c3c


    cp c
    inc h
    add a
    ld e, [hl]
    adc h
    ld e, [hl]
    rla
    sbc e
    ld d, e
    jr z, @+$52

    rla
    bit 2, e
    jr z, @+$52

    nop
    ld [bc], a
    rlca
    inc bc

jr_01d_5e95:
    inc b
    rst $38
    rlca
    inc b
    inc b
    rst $38
    nop
    inc bc
    ld h, $09
    inc b
    rst $38
    db $d3
    ld bc, $061b
    ld a, [bc]
    rst $38
    rst $38
    ld [bc], a
    jr nz, jr_01d_5eb3

    rlca
    rst $38
    rst $38
    inc bc
    ld [de], a
    rst $00
    rlca
    inc bc

jr_01d_5eb3:
    inc de
    rst $00
    rlca
    inc b
    ld bc, $0404
    nop
    ld b, b
    add $5e
    jp Jump_000_005e


    db $e3
    ld e, [hl]
    jp Jump_000_3c3c


    call z, $d15e
    ld e, [hl]
    sub $5e
    rla
    rst $30
    ld d, h
    jr z, @+$52

    rla
    dec [hl]
    ld d, l
    jr z, jr_01d_5f26

    rla
    sub [hl]
    ld d, l
    jr z, jr_01d_5ee3

    ld a, $28
    call Call_000_13d0
    jp Jump_000_24d7


jr_01d_5ee3:
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
    ld bc, $0007
    or b
    nop
    inc bc
    inc e
    ld b, $06
    rst $38
    ret nc

    ld bc, $080a
    add hl, bc
    rst $38
    jp nc, Jump_000_3802

    ld [$fe05], sp
    ld bc, $1203
    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    or $c6
    ld bc, $0707
    inc b
    inc b
    ld e, a
    ld h, c
    sub $60
    dec e
    ld e, a
    nop
    cpl
    ld h, c
    call Call_000_3c3c
    ld hl, $5f31
    ld a, [$d64c]

jr_01d_5f26:
    jp Jump_000_3d97


Jump_01d_5f29:
    xor a
    ld [$cd6b], a
    ld [$d64c], a
    ret


    ld b, a
    ld e, a
    ld c, b
    ld e, a
    ld l, d
    ld e, a
    cp e
    ld e, a
    db $e4
    ld e, a
    ld a, [de]
    ld h, b
    ld b, a
    ld h, b
    ld e, a
    ld h, b
    add e
    ld h, b
    sbc c
    ld h, b
    cp c
    ld h, b
    ret


    ld a, $ff
    ld [$cd6b], a
    ld hl, $ccd3
    ld de, $5f63
    call Call_000_350c
    dec a
    ld [$cd38], a
    call Call_000_3486
    ld a, $02
    ld [$d64c], a
    ret


    ld b, b
    ld bc, $0110
    ld b, b
    inc bc
    rst $38
    ld a, [$cd38]
    and a
    ret nz

    call Call_000_3dd7
    xor a
    ld [$cd6b], a
    ld hl, $d355
    res 7, [hl]
    ld a, $01
    ldh [$8c], a
    call Call_000_2920
    call Call_000_3dd7
    ld hl, $d72d
    set 6, [hl]
    set 7, [hl]
    ld hl, $60f9
    ld de, $60fe
    call Call_000_3354
    ld a, $f3
    ld [$d059], a
    ld a, [$d715]
    cp $b1
    jr nz, jr_01d_5fa5

    ld a, $01
    jr jr_01d_5faf

jr_01d_5fa5:
    cp $99
    jr nz, jr_01d_5fad

    ld a, $02
    jr jr_01d_5faf

jr_01d_5fad:
    ld a, $03

jr_01d_5faf:
    ld [$d05d], a
    xor a
    ldh [$b4], a
    ld a, $03
    ld [$d64c], a
    ret


    ld a, [$d057]
    cp $ff
    jp z, Jump_01d_5f29

    call Call_000_2429
    ld hl, $d867
    set 1, [hl]
    ld a, $f0
    ld [$cd6b], a
    ld a, $01
    ldh [$8c], a
    call Call_01d_60c8
    ld a, $01
    ldh [$8c], a
    call Call_000_3541
    ld a, $04
    ld [$d64c], a
    ret


    ld b, $02
    ld hl, $5b81
    call Call_000_35d6
    ld a, $02
    ldh [$8c], a
    call Call_01d_60c8
    ld a, $02
    ldh [$8c], a
    call Call_000_3541
    ld de, $6014
    ld a, $02
    ldh [$8c], a
    call Call_000_363a
    ld a, $d6
    ld [$cc4d], a
    ld a, $15
    call Call_000_3e6d
    ld a, $05
    ld [$d64c], a
    ret


    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    rst $38
    ld a, [$d730]
    bit 0, a
    ret nz

    ld a, $02
    ld [$d528], a
    ld a, $01
    ldh [$8c], a
    ld a, $08
    ldh [$8d], a
    call Call_000_34a6
    ld a, $02
    ldh [$8c], a
    xor a
    ldh [$8d], a
    call Call_000_34a6
    ld a, $03
    ldh [$8c], a
    call Call_01d_60c8
    ld a, $06
    ld [$d64c], a
    ret


    ld a, $02
    ldh [$8c], a
    ld a, $0c
    ldh [$8d], a
    call Call_000_34a6
    ld a, $04
    ldh [$8c], a
    call Call_01d_60c8
    ld a, $07
    ld [$d64c], a
    ret


    ld a, $02
    ldh [$8c], a
    xor a
    ldh [$8d], a
    call Call_000_34a6
    ld a, $05
    ldh [$8c], a
    call Call_01d_60c8
    ld de, $6080
    ld a, $02
    ldh [$8c], a
    call Call_000_363a
    ld a, $08
    ld [$d64c], a
    ret


    ld b, b
    ld b, b
    rst $38
    ld a, [$d730]
    bit 0, a
    ret nz

    ld a, $d6
    ld [$cc4d], a
    ld a, $11
    call Call_000_3e6d
    ld a, $09
    ld [$d64c], a
    ret


    ld a, $ff
    ld [$cd6b], a
    ld hl, $ccd3
    ld de, $60b4
    call Call_000_350c
    dec a
    ld [$cd38], a
    call Call_000_3486
    ld a, $0a
    ld [$d64c], a
    ret


    ld b, b
    inc b
    jr nz, jr_01d_60b9

    rst $38

jr_01d_60b9:
    ld a, [$cd38]
    and a
    ret nz

    xor a
    ld [$cd6b], a
    ld a, $00
    ld [$d64c], a
    ret


Call_01d_60c8:
    ld a, $f0
    ld [$cd6b], a
    call Call_000_2920
    ld a, $ff
    ld [$cd6b], a
    ret


    ldh [$60], a
    ld [$0d61], sp
    ld h, c
    dec h
    ld h, c
    ld a, [hl+]
    ld h, c
    ld [$67fa], sp
    ret c

    bit 1, a
    ld hl, $60f4
    jr z, jr_01d_60ee

    ld hl, $6103

jr_01d_60ee:
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    pop hl
    ld h, b
    ld hl, $1750
    dec sp
    ld h, d
    ld hl, $1750
    or h
    ld h, d
    ld hl, $1750
    cpl
    ld h, e
    ld hl, $1750
    pop bc
    ld h, e
    ld hl, $0850
    ld a, [$d717]
    ld [$d11e], a
    call Call_000_2f9e
    ld hl, $6120
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    jp z, $2163

    ld d, b
    rla
    ld h, e
    ld h, h
    ld hl, $1750
    ld h, a
    ld h, l
    ld hl, $0350
    inc b
    rlca
    inc bc
    ld bc, $0771
    inc b
    ld [bc], a
    ld [hl], c
    nop
    inc bc
    nop
    halt
    inc b
    nop
    halt
    ld [bc], a
    ld [bc], a
    ld b, $08
    rst $38
    ret nc

    ld bc, $0b03
    rlca
    rst $38
    pop de
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    inc de
    rst $00
    rlca
    inc b
    db $f4
    add $00
    inc bc
    push af
    add $00
    inc b
    ld c, c
    ld sp, $4a32
    ld c, e
    dec b
    dec b
    ld c, h
    ld c, e
    dec b
    dec b
    ld c, h
    ld d, d
    ld sp, $6f32
    rlca
    ld b, $05
    xor h
    ld h, d
    ld d, c
    ld h, d
    ld a, e
    ld h, c
    nop
    add b
    ld h, d
    call Call_01d_6191
    call Call_000_3c3c
    ld hl, $6255
    ld de, $61bb
    ld a, [$d64d]
    call Call_000_3160
    ld [$d64d], a
    ret


Call_01d_6191:
    ld hl, $d126
    bit 5, [hl]
    res 5, [hl]
    ret z

    ld hl, $d734
    set 1, [hl]
    ld a, [$d863]
    bit 1, a
    jr z, jr_01d_61a9

    ld a, $05
    jr jr_01d_61ab

jr_01d_61a9:
    ld a, $24

jr_01d_61ab:
    ld [$d09f], a
    ld bc, $0002
    ld a, $17
    jp Jump_000_3e6d


Jump_01d_61b6:
    xor a
    ld [$d64d], a
    ret


    ld [c], a
    ld h, c
    ld c, h
    ld [hl-], a
    ccf
    ld h, d
    inc l
    ld h, d
    push bc
    ld h, c
    ret


jr_01d_61c6:
    ld hl, $ccd3
    ld a, $40
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, $06
    ld [$cd38], a
    call Call_000_3486
    ld a, $03
    ld [$d64d], a
    ld [$da39], a
    ret


    ld hl, $6223
    call Call_000_34bf
    jp nc, Jump_000_3219

    xor a
    ldh [$b3], a
    ldh [$b4], a
    ld [$ccd3], a
    ld [$cd38], a
    ld a, [$cd3d]
    cp $03
    jr c, jr_01d_6206

    ld hl, $d863
    bit 6, [hl]
    set 6, [hl]
    jr z, jr_01d_61c6

jr_01d_6206:
    ld a, $02
    ldh [$8c], a
    call Call_000_2920
    ld a, $40
    ld [$ccd3], a
    ld a, $01
    ld [$cd38], a
    call Call_000_3486
    ld a, $03
    ld [$d64d], a
    ld [$da39], a
    ret


    ld a, [bc]
    inc b
    ld a, [bc]
    dec b
    dec bc
    inc b
    dec bc
    dec b
    rst $38
    ld a, [$cd38]
    and a
    ret nz

    call Call_000_3dd7
    xor a
    ld [$cd6b], a
    ld [$d64d], a
    ld [$da39], a
    ret


    call Call_000_3275
    ld a, [$d057]
    cp $ff
    jp z, Jump_01d_61b6

    ld a, $01
    ldh [$8c], a
    jp Jump_000_2920


    ld h, d
    ld h, d
    ld a, e
    ld h, d
    ld bc, $6300
    ret c

    ld l, h
    ld h, d
    db $76
    ld h, d
    ld [hl], c
    ld h, d
    ld [hl], c
    ld h, d
    rst $38
    ld [$5521], sp
    ld h, d
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    rst $28
    ld h, l
    ld hl, $1750
    call nz, Call_000_2166
    ld d, b
    rla
    db $d3
    ld h, [hl]
    ld hl, $1750
    add hl, hl
    ld h, a
    ld hl, $0350
    inc b
    dec bc
    inc b
    ld [bc], a
    xor [hl]
    dec bc
    dec b
    ld [bc], a
    xor [hl]
    nop
    inc b
    nop
    or $00
    dec b
    ld bc, $00f6
    ld bc, $063b
    add hl, bc
    rst $38
    ret nc

    ld b, c
    db $f4
    ld bc, $c72d
    dec bc
    inc b
    dec l
    rst $00
    dec bc
    dec b
    or $c6
    nop
    inc b
    or $c6
    nop
    dec b
    ld hl, $2421
    ld hl, $0221
    jr @+$1a

    jr @+$04

    ld [bc], a
    jr jr_01d_62d1

    jr @+$04

    ld [bc], a
    jr nz, jr_01d_62c3

    jr nz, jr_01d_62c2

    ld [bc], a
    ld a, [de]

jr_01d_62c2:
    dec b

jr_01d_62c3:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, h
    dec b
    ld b, h
    ld [bc], a
    rlca
    ld b, $05
    inc bc
    ld h, h
    xor b
    ld h, e

jr_01d_62d1:
    sub $62
    nop
    rst $10
    ld h, e
    call Call_01d_62ec
    call Call_000_3c3c
    ld hl, $63ac
    ld de, $6312
    ld a, [$d64e]
    call Call_000_3160
    ld [$d64e], a
    ret


Call_01d_62ec:
    ld hl, $d126
    bit 5, [hl]
    res 5, [hl]
    ret z

    ld a, [$d864]
    bit 1, a
    jr z, jr_01d_6300

    ld a, $05
    jp Jump_01d_6302


jr_01d_6300:
    ld a, $24

Jump_01d_6302:
    ld [$d09f], a
    ld bc, $0002
    ld a, $17
    jp Jump_000_3e6d


Jump_01d_630d:
    xor a
    ld [$d64e], a
    ret


    add hl, sp
    ld h, e
    ld c, h
    ld [hl-], a
    sub [hl]
    ld h, e
    add e
    ld h, e
    inc e
    ld h, e
    ret


jr_01d_631d:
    ld hl, $ccd3
    ld a, $40
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, $06
    ld [$cd38], a
    call Call_000_3486
    ld a, $03
    ld [$d64e], a
    ld [$da39], a
    ret


    ld hl, $637a
    call Call_000_34bf
    jp nc, Jump_000_3219

    xor a
    ldh [$b3], a
    ldh [$b4], a
    ld [$ccd3], a
    ld [$cd38], a
    ld a, [$cd3d]
    cp $03
    jr c, jr_01d_635d

    ld hl, $d864
    bit 6, [hl]
    set 6, [hl]
    jr z, jr_01d_631d

jr_01d_635d:
    ld a, $02
    ldh [$8c], a
    call Call_000_2920
    ld a, $40
    ld [$ccd3], a
    ld a, $01
    ld [$cd38], a
    call Call_000_3486
    ld a, $03
    ld [$d64e], a
    ld [$da39], a
    ret


    ld a, [bc]
    inc b
    ld a, [bc]
    dec b
    dec bc
    inc b
    dec bc
    dec b
    rst $38
    ld a, [$cd38]
    and a
    ret nz

    call Call_000_3dd7
    xor a
    ld [$cd6b], a
    ld [$d64e], a
    ld [$da39], a
    ret


    call Call_000_3275
    ld a, [$d057]
    cp $ff
    jp z, Jump_01d_630d

    ld a, $01
    ldh [$8c], a
    jp Jump_000_2920


    cp c
    ld h, e
    jp nc, Jump_000_0163

    nop
    ld h, h
    ret c

    jp $cd63


    ld h, e
    ret z

    ld h, e
    ret z

    ld h, e
    rst $38
    ld [$ac21], sp
    ld h, e
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ld c, c
    ld h, a
    ld hl, $1750
    dec b
    ld l, b
    ld hl, $1750
    dec e
    ld l, b
    ld hl, $1750
    ld c, e
    ld l, b
    ld hl, $0350
    inc b
    dec bc
    inc b
    ld [bc], a
    push af
    dec bc
    dec b
    inc bc
    push af
    nop
    inc b
    nop
    rst $30
    nop
    dec b
    ld bc, $00f7
    ld bc, $063a
    add hl, bc
    rst $38
    ret nc

    ld b, c
    jp hl


    ld bc, $c72d
    dec bc
    inc b
    dec l
    rst $00
    dec bc
    dec b
    or $c6
    nop
    inc b
    or $c6
    nop
    dec b
    ld bc, $0501
    ld bc, $0801
    dec b
    dec b
    dec b
    ld a, [bc]
    inc c
    ld [de], a
    dec b
    inc de
    dec c
    inc c
    ld a, [bc]
    dec b
    dec bc
    inc c
    ld [$0507], sp
    inc c
    ld [$110d], sp
    dec b
    ld a, [bc]
    dec c
    rrca
    ld b, $05
    ld h, b
    ld h, l
    dec b
    ld h, l
    dec l
    ld h, h
    nop
    inc [hl]
    ld h, l
    call Call_01d_6443
    call Call_000_3c3c
    ld hl, $6509
    ld de, $6469
    ld a, [$d64f]
    call Call_000_3160
    ld [$d64f], a
    ret


Call_01d_6443:
    ld hl, $d126
    bit 5, [hl]
    res 5, [hl]
    ret z

    ld a, [$d865]
    bit 1, a
    jr z, jr_01d_6457

    ld a, $0e
    jp Jump_01d_6459


jr_01d_6457:
    ld a, $3b

Jump_01d_6459:
    ld [$d09f], a
    ld bc, $0002
    ld a, $17
    jp Jump_000_3e6d


Jump_01d_6464:
    xor a
    ld [$d64f], a
    ret


    sub b
    ld h, h
    ld c, h
    ld [hl-], a
    db $ed
    ld h, h
    jp c, Jump_01d_7364

    ld h, h
    ret


jr_01d_6474:
    ld hl, $ccd3
    ld a, $40
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, $06
    ld [$cd38], a
    call Call_000_3486
    ld a, $03
    ld [$d64f], a
    ld [$da39], a
    ret


    ld hl, $64d1
    call Call_000_34bf
    jp nc, Jump_000_3219

    xor a
    ldh [$b3], a
    ldh [$b4], a
    ld [$ccd3], a
    ld [$cd38], a
    ld a, [$cd3d]
    cp $03
    jr c, jr_01d_64b4

    ld hl, $d865
    bit 6, [hl]
    set 6, [hl]
    jr z, jr_01d_6474

jr_01d_64b4:
    ld a, $02
    ldh [$8c], a
    call Call_000_2920
    ld a, $40
    ld [$ccd3], a
    ld a, $01
    ld [$cd38], a
    call Call_000_3486
    ld a, $03
    ld [$d64f], a
    ld [$da39], a
    ret


    ld a, [bc]
    inc b
    ld a, [bc]
    dec b
    dec bc
    inc b
    dec bc
    dec b
    rst $38
    ld a, [$cd38]
    and a
    ret nz

    call Call_000_3dd7
    xor a
    ld [$cd6b], a
    ld [$d64f], a
    ld [$da39], a
    ret


    call Call_000_3275
    ld a, [$d057]
    cp $ff
    jp z, Jump_01d_6464

    ld a, $01
    ldh [$8c], a
    call Call_000_2920
    ld a, $01
    ld [$d64c], a
    ret


    ld d, $65
    cpl
    ld h, l
    ld bc, $6500
    ret c

    jr nz, jr_01d_6574

    ld a, [hl+]
    ld h, l
    dec h
    ld h, l
    dec h
    ld h, l
    rst $38
    ld [$0921], sp
    ld h, l
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ld l, e
    ld l, b
    ld hl, $1750
    ld [hl], b
    ld l, c
    ld hl, $1750
    sbc b
    ld l, c
    ld hl, $1750
    db $fd
    ld l, c
    ld hl, $0050
    inc b
    dec bc
    inc b
    ld [bc], a
    or $0b
    dec b
    inc bc
    or $00
    inc b
    nop
    ld [hl], c
    nop
    dec b
    nop
    ld [hl], c
    nop
    ld bc, $0639
    add hl, bc
    rst $38
    ret nc

    ld b, c
    or $01
    dec l
    rst $00
    dec bc
    inc b
    dec l
    rst $00
    dec bc
    dec b
    or $c6
    nop
    inc b
    or $c6
    nop
    dec b
    ld b, a
    ld b, a
    ld [hl], $47
    ld b, a
    ld h, a
    ld [hl], $36
    ld c, [hl]
    ld h, l
    ld d, d
    ld c, [hl]
    ld [hl], $65
    ld d, d
    ld h, l
    ld h, a
    ld [hl], $65
    ld h, l

jr_01d_6574:
    ld d, d
    ld c, e
    ld [hl], $65
    ld d, d
    ld h, a
    ld d, d
    ld [hl], $68
    ld l, b
    ld hl, $6683
    call Call_000_3c49
    ld hl, $d730
    set 6, [hl]
    push hl
    ld a, [$cfcb]
    push af
    ldh a, [$d7]
    push af
    xor a
    ldh [$d7], a
    ld [$d0aa], a
    ld [$cfcb], a
    ld [$cd41], a
    ld [$cd42], a
    ld a, [$d5a2]
    ld b, a
    cp $33
    jr c, jr_01d_65ae

    ld b, $32
    sub b
    ld [$cd42], a

jr_01d_65ae:
    ld hl, $cd42
    inc [hl]
    push bc
    ld a, [$cd41]
    ld [$cd3d], a
    ld b, $1c
    ld hl, $7b3f
    call Call_000_35d6
    call Call_01d_65e5
    pop bc
    jr c, jr_01d_65cf

    ld hl, $cd41
    inc [hl]
    ld a, [hl]
    cp b
    jr nz, jr_01d_65ae

jr_01d_65cf:
    pop af
    ldh [$d7], a
    pop af
    ld [$cfcb], a
    pop hl
    res 6, [hl]
    call Call_000_3dd4
    call Call_000_190f
    call Call_000_3ded
    jp Jump_000_3ddc


Call_01d_65e5:
    ld c, $06

jr_01d_65e7:
    push bc
    call Call_01d_6610
    call Call_000_3865
    ldh a, [$b4]
    bit 1, a
    jr nz, jr_01d_660d

    ld hl, $cc6b
    ld de, $cc5b
    ld bc, $0050
    call Call_000_00b5
    pop bc
    ld a, [$cc5b]
    cp $ff
    jr z, jr_01d_660b

    dec c
    jr nz, jr_01d_65e7

jr_01d_660b:
    and a
    ret


jr_01d_660d:
    pop bc
    scf
    ret


Call_01d_6610:
    call Call_000_3dd4
    call Call_000_190f
    ld hl, $cc5b
    ld a, [hl+]
    ld [$cd3d], a
    ld [$cf91], a
    ld [$d0b5], a
    ld [$cfd9], a
    ld [$cf1d], a
    ld a, [hl+]
    ld [$cd3f], a
    ld de, $cd6d
    ld bc, $000b
    call Call_000_00b5
    ld b, $0b
    ld c, $00
    call Call_000_3def
    ld hl, $c410
    call Call_000_1537
    call Call_000_1389
    call Call_000_3ddc
    ld hl, $c4a4
    ld b, $02
    ld c, $12
    call Call_000_1922
    ld hl, $c4cd
    ld de, $6670
    call Call_000_1955
    ld hl, $c4dc
    ld de, $cd42
    ld bc, $0103
    call Call_000_3c5f
    ld b, $1c
    ld hl, $42f0
    jp Jump_000_35d6


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
    ld a, a
    adc l
    xor [hl]
    ld a, a
    ld a, a
    ld a, a
    ld d, b
    rla
    db $f4
    ld h, b
    ld [hl+], a
    ld d, b
    ld hl, $66b8
    call Call_01d_6857
    ld [$cd41], a
    ld hl, $d6f0
    ld a, [$cd41]
    ld c, a
    ld b, $02
    ld a, $10
    call Call_000_3e6d
    ld a, c
    and a
    ret nz

    call Call_000_3c3c
    ld a, $01
    ld [$cc3c], a
    ld a, [$cd3d]
    ld [$d11e], a
    call Call_000_2fcf
    ld a, $24
    jp Jump_000_3ef5


    inc sp
    ld [de], a
    ld bc, $2a33
    db $10
    dec a
    inc c
    ld [de], a
    inc h
    inc bc
    ld h, $14
    rlca
    ld c, $64
    add hl, bc
    dec c
    ld l, b
    ld bc, $1503
    ld de, $1509
    dec [hl]
    db $10
    rst $00
    rrca
    dec d
    ret


    ld de, $ca1b
    ld bc, $9219
    inc c
    inc b
    jr jr_01d_66ef

    ld bc, $0d18
    db $10
    ret c

    add hl, bc
    ld bc, $019c
    ld a, [bc]
    db $db
    dec b
    ld b, $d2

jr_01d_66ef:
    inc bc
    inc c
    jp hl


    rrca
    ld [bc], a
    or b
    ld bc, $e401
    dec bc
    ld c, $e3
    inc bc
    dec de
    ld d, e
    db $10
    ld de, $0153
    inc c
    and b
    rrca
    rrca
    and d
    ld de, $a519
    db $10
    ld [$09d7], sp
    ld bc, $2c22
    add hl, bc
    ld [hl+], a
    ld b, [hl]
    inc de
    ld [hl+], a
    ld e, d
    ld [$02c2], sp
    dec b
    jp nz, $1a07

    ld l, a
    dec bc
    ld c, $01
    inc b
    ld c, $16
    dec b
    jr nc, jr_01d_673f

    ccf
    ld [bc], a
    inc e
    ld c, $0f
    inc e
    dec l
    ld [$481c], sp
    ld de, $5b1c
    inc b
    inc e
    ld a, c
    ld [$0477], sp
    inc bc
    ld [hl], a
    ld [hl+], a
    inc b

jr_01d_673f:
    ld a, c
    ld [bc], a
    inc c
    ld a, c
    dec b
    dec d
    ld b, $0f
    jr nc, @+$26

    ld bc, $3d0a
    add hl, bc
    ld hl, $10a1
    add hl, bc
    dec b
    dec bc
    ld c, $03
    ld [$0f0f], sp
    inc bc
    jr z, @+$01

    rla
    ret nc

    ld d, h
    ld [hl+], a
    ld [$3dfa], sp
    call Call_000_0e47
    ld bc, $2ecd
    ld a, $30
    add hl, de
    ld hl, $d6f0
    ld a, [$cd41]
    ld c, a
    ld b, $01
    ld a, $10
    call Call_000_3e6d
    ld a, $89
    call Call_000_3740
    call Call_000_3748
    jp Jump_000_24d7


    call Call_000_3865
    xor a
    ld [$cc3c], a
    ld hl, $6794
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    pop hl
    ld d, h
    ld [hl+], a
    ld d, b
    ld b, $45
    ld a, $1c
    call Call_000_3e6d
    ld a, b
    and a
    ret z

    ld hl, $6822
    call Call_01d_6857
    ld [$cd41], a
    ld hl, $d6fe
    ld a, [$cd41]
    ld c, a
    ld b, $02
    ld a, $10
    call Call_000_3e6d
    ld a, c
    and a
    ret nz

    xor a
    ldh [$9f], a
    ldh [$a0], a
    ldh [$a1], a
    ld a, [$cd3d]
    sub $3b
    cp $0a
    jr z, jr_01d_67d7

    cp $14
    jr z, jr_01d_67dd

    cp $28
    jr z, jr_01d_67dd

    jr jr_01d_67e9

jr_01d_67d7:
    ld a, $10
    ldh [$a1], a
    jr jr_01d_67ed

jr_01d_67dd:
    ld a, $20
    ldh [$a1], a
    jr jr_01d_67ed

    ld a, $40
    ldh [$a1], a
    jr jr_01d_67ed

jr_01d_67e9:
    ld a, $01
    ldh [$a0], a

jr_01d_67ed:
    ld de, $d5a5
    ld hl, $ffa1
    ld c, $02
    ld a, $0b
    call Call_000_3e6d
    ld hl, $d6fe
    ld a, [$cd41]
    ld c, a
    ld b, $01
    ld a, $10
    call Call_000_3e6d
    call Call_000_3c3c
    ld a, [$d5a4]
    cp $99
    jr nz, jr_01d_681d

    ld a, [$d5a5]
    cp $99
    jr nz, jr_01d_681d

    ld a, $2c
    jr jr_01d_681f

jr_01d_681d:
    ld a, $2b

jr_01d_681f:
    jp Jump_000_3ef5


    add a
    ld [$8700], sp
    db $10
    ld bc, $0b87
    inc bc
    add a
    ld c, $03
    add a
    inc c
    inc b
    add a
    inc c
    add hl, bc
    add a
    rrca
    add hl, bc
    add a
    ld c, $10
    add a
    db $10
    ld a, [bc]
    add a
    rlca
    dec bc
    add a
    ld [$870f], sp
    rrca
    inc c
    rst $38
    rla
    dec bc
    ld d, l
    ld [hl+], a
    db $10
    ld d, b
    rla
    inc hl
    ld d, l
    ld [hl+], a
    db $10
    rla
    dec sp
    ld d, l
    ld [hl+], a
    ld d, b

Call_01d_6857:
    ld a, [$cd40]
    ld d, a
    ld a, [$cd41]
    ld e, a
    ld a, [$d35e]
    ld b, a
    ld c, $ff

jr_01d_6865:
    inc c
    ld a, [hl+]
    cp $ff
    ret z

    cp b
    jr nz, jr_01d_6877

    ld a, [hl+]
    cp d
    jr nz, jr_01d_6878

    ld a, [hl+]
    cp e
    jr nz, jr_01d_6865

    ld a, c
    ret


jr_01d_6877:
    inc hl

jr_01d_6878:
    inc hl
    jr jr_01d_6865

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_01d_6f52:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_01d_7364:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
