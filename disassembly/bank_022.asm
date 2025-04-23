; Disassembly of "Pokemon Red (UE) [S][!].gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $022", ROMX[$4000], BANK[$22]

    nop
    adc b
    cp h
    xor e
    ld a, a
    or c
    and b
    xor b
    or d
    and h
    ld a, a
    xor h
    cp b
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    and b
    or e
    ld d, l
    cp b
    xor [hl]
    or h
    or c
    or d
    db $f4
    ld a, a
    xor d
    xor b
    and e
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    and e
    or c
    and b
    or [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    or [hl]
    and a
    and h
    xor l
    ld a, a
    adc b
    push hl
    ld a, a
    and a
    xor [hl]
    xor h
    and h
    add sp, $57
    nop
    sub [hl]
    and a
    and h
    or [hl]
    rst $20
    ld c, a
    adc b
    push hl
    ld a, a
    and h
    or a
    and a
    and b
    or h
    or d
    or e
    and h
    and e
    rst $20
    ld e, b
    nop
    adc b
    push hl
    ld a, a
    and b
    xor l
    ld a, a
    and b
    or c
    or e
    xor b
    or d
    or e
    db $f4
    ld c, a
    xor l
    xor [hl]
    or e
    ld a, a
    and b
    ld a, a
    and l
    xor b
    and [hl]
    and a
    or e
    and h
    or c
    add sp, $57
    nop
    add [hl]
    cp b
    and b
    xor [hl]
    xor [hl]
    rst $20
    ld d, b
    ld d, b
    nop
    add c
    xor [hl]
    or h
    xor e
    and e
    and h
    or c
    or d
    ld a, a
    xor h
    xor b
    and [hl]
    and a
    or e
    ld c, a
    and d
    and a
    and b
    xor l
    and [hl]
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    xor e
    xor [hl]
    or [hl]
    ld d, l
    xor [hl]
    and l
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    rst $20
    ld d, a
    nop
    add e
    add b
    adc l
    add [hl]
    add h
    sub c
    ld c, a
    add l
    and b
    or d
    or e
    ld a, a
    and d
    or h
    or c
    or c
    and h
    xor l
    or e
    rst $20
    ld d, a
    ld bc, $d04a
    nop
    ld a, a
    or [hl]
    xor b
    or e
    and a
    db $e3
    ld c, a
    and e
    or c
    and h
    or [hl]
    ld a, a
    ld d, b
    ld bc, $cfda
    nop
    rst $20
    ld e, b
    ld bc, $d04a
    nop
    ld c, a
    or h
    or d
    and h
    and e
    ld a, a
    ld d, b
    ld bc, $cd6d
    nop
    ld d, l
    xor [hl]
    xor l
    ld a, a
    ld d, b
    ld bc, $cfda
    nop
    rst $20
    ld e, b
    ld bc, $cf4b
    nop
    ld a, a
    or [hl]
    and h
    xor l
    or e
    ld c, a
    or e
    xor [hl]
    ld a, a
    ld d, b
    ld bc, $d887
    nop
    add sp, $57
    nop
    add l
    xor [hl]
    or c
    ld a, a
    ld d, d
    cp l
    ld c, a
    ld d, b
    ld bc, $cf4b
    nop
    db $f4
    ld d, a
    ld bc, $d887
    nop
    ld a, a
    or d
    and h
    xor l
    and e
    or d
    ld c, a
    ld d, b
    ld bc, $cd6d
    nop
    add sp, $57
    ld bc, $d887
    nop
    ld a, a
    or [hl]
    and b
    or l
    and h
    or d
    ld c, a
    and l
    and b
    or c
    and h
    or [hl]
    and h
    xor e
    xor e
    ld a, a
    and b
    or d
    ld d, a
    ld bc, $cd6d
    nop
    ld a, a
    xor b
    or d
    ld c, a
    or e
    or c
    and b
    xor l
    or d
    and l
    and h
    or c
    or c
    and h
    and e
    add sp, $57
    nop
    sub e
    and b
    xor d
    and h
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and d
    and b
    or c
    and h
    ld a, a
    xor [hl]
    and l
    ld c, a
    ld d, b
    ld bc, $cd6d
    nop
    add sp, $57
    ld bc, $d887
    nop
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld c, a
    or e
    or c
    and b
    and e
    and h
    ld a, a
    ld d, b
    ld bc, $cd6d
    nop
    ld d, a
    nop
    and l
    xor [hl]
    or c
    ld a, a
    ld d, d
    cp l
    ld c, a
    ld d, b
    ld bc, $cf4b
    nop
    add sp, $57
    nop
    add b
    ld a, a
    or d
    xor e
    xor [hl]
    or e
    ld a, a
    xor h
    and b
    and d
    and a
    xor b
    xor l
    and h
    rst $20
    ld c, a
    sub [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor a
    xor e
    and b
    cp b
    and $57
    nop
    add e
    and b
    or c
    xor l
    rst $20
    ld c, a
    sub c
    and b
    xor l
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    and d
    xor [hl]
    xor b
    xor l
    or d
    rst $20
    ld d, a
    nop
    add c
    and h
    or e
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld a, a
    xor h
    and b
    xor l
    cp b
    ld c, a
    and d
    xor [hl]
    xor b
    xor l
    or d
    and $57
    nop
    sub d
    or e
    and b
    or c
    or e
    rst $20
    ld d, a
    nop
    adc l
    xor [hl]
    or e
    ld a, a
    and h
    xor l
    xor [hl]
    or h
    and [hl]
    and a
    ld c, a
    and d
    xor [hl]
    xor b
    xor l
    or d
    rst $20
    ld e, b
    nop
    adc [hl]
    xor l
    and h
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    ld c, a
    and [hl]
    xor [hl]
    and $57
    nop
    ld a, a
    xor e
    xor b
    xor l
    and h
    and e
    ld a, a
    or h
    xor a
    rst $20
    ld c, a
    sub d
    and d
    xor [hl]
    or c
    and h
    and e
    ld a, a
    ld d, b
    ld bc, $cf4b
    nop
    ld a, a
    and d
    xor [hl]
    xor b
    xor l
    or d
    rst $20
    ld d, a
    nop
    adc l
    xor [hl]
    or e
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    or e
    xor b
    xor h
    and h
    rst $20
    ld e, b
    nop
    sbc b
    and h
    and b
    and a
    rst $20
    ld d, b
    ld d, b
    nop
    ld d, h
    add e
    add h
    sub a
    ld a, a
    ld a, a
    ld a, a
    sub d
    and h
    and h
    xor l
    sbc h
    ld d, b
    add hl, bc
    ld e, e
    call z, Call_000_0013
    ld c, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    adc [hl]
    or [hl]
    xor l
    and h
    and e
    sbc h
    ld d, b
    add hl, bc
    ld e, h
    call z, Call_022_5013
    nop
    ld d, h
    add e
    add h
    sub a
    ld a, a
    sub c
    and b
    or e
    xor b
    xor l
    and [hl]
    ld l, l
    ld d, a
    ld bc, $cf5f
    nop
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add [hl]
    sbc b
    adc h
    ld d, l
    adc e
    add h
    add b
    add e
    add h
    sub c
    sbc h
    ld a, a
    ld d, b
    ld bc, $cf70
    nop
    ld d, c
    sub [hl]
    adc b
    adc l
    adc l
    adc b
    adc l
    add [hl]
    ld a, a
    sub e
    sub c
    add b
    adc b
    adc l
    add h
    sub c
    sub d
    sbc h
    ld c, a
    ld d, e
    ld d, a
    ld bc, $cf5f
    nop
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add [hl]
    sbc b
    adc h
    ld d, l
    adc e
    add h
    add b
    add e
    add h
    sub c
    sbc h
    ld a, a
    ld d, b
    ld bc, $cf70
    nop
    ld d, c
    sub [hl]
    adc b
    adc l
    adc l
    adc b
    adc l
    add [hl]
    ld a, a
    sub e
    sub c
    add b
    adc b
    adc l
    add h
    sub c
    sub d
    sbc h
    ld c, a
    ld d, e
    ld d, l
    ld d, d
    ld d, a
    nop
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add d
    add h
    adc l
    sub e
    add h
    sub c
    or d
    ld c, a
    and a
    and h
    and b
    xor e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    or e
    xor b
    or c
    and h
    and e
    db $f4
    ld d, l
    and a
    or h
    or c
    or e
    ld a, a
    xor [hl]
    or c
    ld a, a
    and l
    and b
    xor b
    xor l
    or e
    and h
    and e
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, a
    nop
    sbc b
    and b
    or [hl]
    xor l
    rst $20
    ld d, c
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    adc c
    adc b
    add [hl]
    add [hl]
    adc e
    sbc b
    adc a
    sub h
    add l
    add l
    ld c, a
    or d
    xor b
    xor l
    and [hl]
    or d
    db $f4
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    and [hl]
    and h
    or e
    ld a, a
    and e
    or c
    xor [hl]
    or [hl]
    or d
    cp b
    add sp, -$18
    add sp, $51
    add sp, -$18
    add sp, -$74
    and h
    ld a, a
    or e
    xor [hl]
    xor [hl]
    add sp, -$18
    add sp, $4f
    sub d
    xor l
    xor [hl]
    or c
    and h
    add sp, -$18
    add sp, $57
    nop
    add c
    adc b
    adc e
    adc e
    ld a, a
    and a
    and b
    or d
    ld a, a
    xor e
    xor [hl]
    or e
    or d
    ld a, a
    xor [hl]
    and l
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, c
    add a
    and h
    ld a, a
    and d
    xor [hl]
    xor e
    xor e
    and h
    and d
    or e
    or d
    ld a, a
    or c
    and b
    or c
    and h
    ld c, a
    xor [hl]
    xor l
    and h
    or d
    ld a, a
    or e
    xor [hl]
    xor [hl]
    rst $20
    ld d, a
    nop
    add d
    sub h
    add c
    adc [hl]
    adc l
    add h
    or d
    ld a, a
    or [hl]
    and h
    and b
    or c
    ld c, a
    or d
    xor d
    or h
    xor e
    xor e
    or d
    db $f4
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    and $51
    adc a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    xor a
    and b
    cp b
    ld a, a
    and b
    ld c, a
    xor e
    xor [hl]
    or e
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor [hl]
    xor l
    and h
    rst $20
    ld d, a
    nop
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    or e
    xor [hl]
    xor [hl]
    ld c, a
    xor h
    and b
    xor l
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, l
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    or d
    or e
    xor [hl]
    or c
    and h
    ld a, a
    or e
    and a
    and h
    xor h
    ld d, l
    or l
    xor b
    and b
    ld a, a
    adc a
    add d
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    and a
    and h
    and b
    or c
    and e
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    add [hl]
    add a
    adc [hl]
    sub d
    sub e
    or d
    ld a, a
    and a
    and b
    or h
    xor l
    or e
    ld d, l
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
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    or [hl]
    xor b
    or d
    and a
    ld a, a
    adc b
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld c, a
    and d
    and b
    or e
    and d
    and a
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    adc b
    push hl
    ld a, a
    or e
    xor b
    or c
    and h
    and e
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld c, a
    and b
    xor e
    xor e
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    or h
    xor l
    add sp, -$18
    add sp, $57
    nop
    sub d
    adc b
    adc e
    adc a
    add a
    cp l
    ld a, a
    xor h
    and b
    xor l
    and b
    and [hl]
    and h
    or c
    ld c, a
    xor b
    or d
    ld a, a
    and a
    xor b
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld d, l
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
    add sp, $57
    nop
    adc b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    or e
    or c
    or h
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    and b
    ld c, a
    and a
    xor b
    and [hl]
    and a
    and h
    or c
    ld a, a
    xor e
    and h
    or l
    and h
    xor e
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and c
    and h
    ld d, l
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    and l
    or h
    xor e
    add sp, -$18
    add sp, $51
    add c
    or h
    or e
    db $f4
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    or [hl]
    and h
    and b
    xor d
    ld d, l
    xor a
    xor [hl]
    xor b
    xor l
    or e
    or d
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    or d
    or e
    ld d, l
    or d
    xor a
    and h
    and d
    xor b
    and l
    xor b
    and d
    ld a, a
    or e
    cp b
    xor a
    and h
    or d
    add sp, $51
    sub d
    xor [hl]
    db $f4
    ld a, a
    or e
    and a
    and h
    or c
    and h
    ld a, a
    xor b
    or d
    ld a, a
    xor l
    xor [hl]
    ld c, a
    or h
    xor l
    xor b
    or l
    and h
    or c
    or d
    and b
    xor e
    xor e
    cp b
    ld d, l
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    adc b
    and l
    ld a, a
    adc b
    ld a, a
    and a
    and b
    and e
    ld a, a
    and b
    ld a, a
    add c
    adc b
    adc d
    add h
    db $f4
    ld c, a
    adc b
    ld a, a
    or [hl]
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    or e
    xor [hl]
    ld d, l
    add d
    sbc b
    add d
    adc e
    adc b
    adc l
    add [hl]
    ld a, a
    sub c
    adc [hl]
    add b
    add e
    rst $20
    ld d, a
    nop
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    db $e4
    and h
    ld a, a
    or d
    or e
    or h
    and e
    cp b
    xor b
    xor l
    and [hl]
    ld a, a
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    db $f4
    ld a, a
    or l
    xor b
    or d
    xor b
    or e
    ld d, l
    or e
    and a
    and h
    ld a, a
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
    add sp, $51
    adc b
    or e
    ld a, a
    and a
    and b
    or d
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    or d
    xor [hl]
    or c
    or e
    or d
    ld c, a
    xor [hl]
    and l
    ld a, a
    or c
    and b
    or c
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and d
    and b
    xor l
    ld a, a
    or d
    or e
    xor b
    xor e
    xor e
    ld c, a
    xor e
    and h
    and b
    or c
    xor l
    ld a, a
    or e
    and h
    and d
    and a
    xor l
    xor b
    or b
    or h
    and h
    or d
    ld d, l
    and b
    and l
    or e
    and h
    or c
    ld a, a
    and d
    and b
    xor l
    and d
    and h
    xor e
    xor b
    xor l
    and [hl]
    ld d, l
    and h
    or l
    xor [hl]
    xor e
    or h
    or e
    xor b
    xor [hl]
    xor l
    add sp, $51
    add h
    or l
    xor [hl]
    xor e
    or h
    or e
    xor b
    xor [hl]
    xor l
    ld a, a
    and d
    and b
    xor l
    ld a, a
    or [hl]
    and b
    xor b
    or e
    ld c, a
    or h
    xor l
    or e
    xor b
    xor e
    ld a, a
    xor l
    and h
    or [hl]
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    or d
    ld d, l
    and a
    and b
    or l
    and h
    ld a, a
    and c
    and h
    and h
    xor l
    ld a, a
    xor e
    and h
    and b
    or c
    xor l
    and h
    and e
    add sp, $57
    nop
    adc b
    or e
    ld a, a
    or [hl]
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and c
    and h
    ld a, a
    and [hl]
    or c
    and h
    and b
    or e
    ld c, a
    xor b
    and l
    ld a, a
    or e
    and a
    and h
    ld a, a
    add h
    adc e
    adc b
    sub e
    add h
    ld a, a
    add l
    adc [hl]
    sub h
    sub c
    ld d, l
    and d
    and b
    xor h
    and h
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or d
    or e
    xor [hl]
    xor h
    xor a
    and h
    and e
    ld d, l
    sub e
    add h
    add b
    adc h
    ld a, a
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub e
    rst $20
    ld d, a
    nop
    sub e
    add h
    add b
    adc h
    ld a, a
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub e
    ld a, a
    or e
    xor [hl]
    xor [hl]
    xor d
    ld c, a
    xor [hl]
    and l
    and l
    rst $20
    ld a, a
    sub [hl]
    and h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and [hl]
    xor [hl]
    ld d, l
    xor [hl]
    or h
    or e
    ld a, a
    or d
    and b
    and l
    and h
    xor e
    cp b
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    rst $20
    ld d, l
    sub e
    and a
    and b
    or e
    cp l
    ld a, a
    and [hl]
    or c
    and h
    and b
    or e
    rst $20
    ld d, a
    nop
    adc h
    cp b
    ld a, a
    or d
    xor b
    or d
    ld a, a
    and c
    or c
    xor [hl]
    or h
    and [hl]
    and a
    or e
    ld a, a
    xor h
    and h
    ld c, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    or l
    and b
    and d
    and b
    or e
    xor b
    xor [hl]
    xor l
    rst $20
    ld d, a
    nop
    add d
    or c
    and b
    xor h
    xor h
    and h
    and e
    ld a, a
    and l
    or h
    xor e
    xor e
    ld a, a
    xor [hl]
    and l
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and c
    xor [hl]
    xor [hl]
    xor d
    or d
    rst $20
    ld d, a
    nop
    add b
    ld a, a
    or d
    and a
    xor b
    xor l
    cp b
    ld a, a
    xor l
    and h
    or [hl]
    ld c, a
    add c
    adc b
    add d
    sbc b
    add d
    adc e
    add h
    rst $20
    ld d, a
    nop
    adc a
    or h
    or d
    and a
    ld a, a
    sub d
    sub e
    add b
    sub c
    sub e
    ld a, a
    or e
    xor [hl]
    ld c, a
    xor [hl]
    xor a
    and h
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc h
    add h
    adc l
    sub h
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    sub d
    add b
    sub l
    add h
    ld a, a
    xor [hl]
    xor a
    or e
    xor b
    xor [hl]
    xor l
    ld a, a
    xor b
    or d
    ld c, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc h
    add h
    adc l
    sub h
    ld d, l
    or d
    and d
    or c
    and h
    and h
    xor l
    add sp, $57
    nop
    add b
    xor e
    xor e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or e
    cp b
    xor a
    and h
    or d
    ld c, a
    and a
    and b
    or l
    and h
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    ld a, a
    and b
    xor l
    and e
    ld d, l
    or [hl]
    and h
    and b
    xor d
    ld a, a
    xor a
    xor [hl]
    xor b
    xor l
    or e
    or d
    ld d, l
    and b
    and [hl]
    and b
    xor b
    xor l
    or d
    or e
    ld a, a
    xor [hl]
    or e
    and a
    and h
    or c
    or d
    add sp, $57
    nop
    adc a
    add b
    sbc h
    ld a, a
    add e
    xor b
    xor l
    and [hl]
    db $e3
    and e
    xor [hl]
    xor l
    and [hl]
    rst $20
    ld d, c
    sub e
    xor b
    xor h
    and h
    cp l
    ld a, a
    or h
    xor a
    rst $20
    ld e, b
    nop
    adc a
    add b
    sbc h
    ld a, a
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    sub d
    add b
    add l
    add b
    sub c
    adc b
    ld c, a
    add [hl]
    add b
    adc h
    add h
    ld a, a
    xor b
    or d
    ld a, a
    xor [hl]
    or l
    and h
    or c
    rst $20
    ld d, a
    nop
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    sub b
    or h
    xor b
    cp c
    rst $20
    ld d, c
    add [hl]
    and h
    or e
    ld a, a
    xor b
    or e
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    ld a, a
    and b
    xor l
    and e
    ld c, a
    or e
    and a
    and h
    ld a, a
    and e
    xor [hl]
    xor [hl]
    or c
    ld a, a
    xor [hl]
    xor a
    and h
    xor l
    or d
    ld a, a
    or e
    xor [hl]
    ld d, l
    or e
    and a
    and h
    ld a, a
    xor l
    and h
    or a
    or e
    ld a, a
    or c
    xor [hl]
    xor [hl]
    xor h
    rst $20
    ld d, c
    add [hl]
    and h
    or e
    ld a, a
    xor b
    or e
    ld a, a
    or [hl]
    or c
    xor [hl]
    xor l
    and [hl]
    ld a, a
    and b
    xor l
    and e
    ld c, a
    and l
    and b
    and d
    and h
    ld a, a
    and b
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    rst $20
    ld d, c
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld c, a
    and d
    xor [hl]
    xor l
    or d
    and h
    or c
    or l
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    or e
    and a
    and h
    ld d, l
    add [hl]
    sbc b
    adc h
    ld a, a
    adc e
    add h
    add b
    add e
    add h
    sub c
    add sp, -$18
    add sp, $51
    sub e
    and a
    and h
    xor l
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    xor b
    or e
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    rst $20
    ld c, a
    add a
    and h
    or c
    and h
    ld a, a
    or [hl]
    and h
    ld a, a
    and [hl]
    xor [hl]
    rst $20
    ld e, b
    nop
    add d
    add b
    sub e
    add h
    sub c
    adc a
    adc b
    add h
    ld a, a
    and h
    or l
    xor [hl]
    xor e
    or l
    and h
    or d
    ld c, a
    xor b
    xor l
    or e
    xor [hl]
    ld a, a
    add c
    sub h
    sub e
    sub e
    add h
    sub c
    add l
    sub c
    add h
    add h
    and $57
    nop
    sub e
    and a
    and h
    or c
    and h
    ld a, a
    and b
    or c
    and h
    ld a, a
    rst $38
    ld c, a
    and d
    and h
    or c
    or e
    xor b
    and l
    xor b
    and h
    and e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    adc e
    add h
    add b
    add [hl]
    sub h
    add h
    ld a, a
    add c
    add b
    add e
    add [hl]
    add h
    or d
    and $57
    nop
    adc a
    adc [hl]
    adc e
    adc b
    sub [hl]
    add b
    add [hl]
    ld a, a
    and h
    or l
    xor [hl]
    xor e
    or l
    and h
    or d
    ld a, a
    ld sp, hl
    ld c, a
    or e
    xor b
    xor h
    and h
    or d
    and $57
    nop
    add b
    or c
    and h
    ld a, a
    or e
    and a
    or h
    xor l
    and e
    and h
    or c
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    or d
    ld c, a
    and h
    and l
    and l
    and h
    and d
    or e
    xor b
    or l
    and h
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    or d
    or e
    ld d, l
    and [hl]
    or c
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    and h
    xor e
    and h
    xor h
    and h
    xor l
    or e
    db $e3
    ld d, l
    or e
    cp b
    xor a
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    and $57
    nop
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld c, a
    or d
    and b
    xor h
    and h
    ld a, a
    xor d
    xor b
    xor l
    and e
    ld a, a
    and b
    xor l
    and e
    ld d, l
    xor e
    and h
    or l
    and h
    xor e
    ld a, a
    and b
    or c
    and h
    ld a, a
    xor l
    xor [hl]
    or e
    ld d, l
    xor b
    and e
    and h
    xor l
    or e
    xor b
    and d
    and b
    xor e
    and $57
    nop
    sub e
    adc h
    ld hl, sp-$02
    ld a, a
    and d
    xor [hl]
    xor l
    or e
    and b
    xor b
    xor l
    or d
    ld c, a
    sub e
    adc [hl]
    adc h
    add c
    sub d
    sub e
    adc [hl]
    adc l
    add h
    sub c
    and $57
    nop
    sbc b
    xor [hl]
    or h
    db $e4
    and h
    ld a, a
    and b
    and c
    or d
    xor [hl]
    xor e
    or h
    or e
    and h
    xor e
    cp b
    ld c, a
    and d
    xor [hl]
    or c
    or c
    and h
    and d
    or e
    rst $20
    ld d, c
    add [hl]
    xor [hl]
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    or c
    xor [hl]
    or h
    and [hl]
    and a
    rst $20
    ld d, b
    ld d, b
    nop
    sub d
    xor [hl]
    or c
    or c
    cp b
    rst $20
    ld a, a
    add c
    and b
    and e
    ld a, a
    and d
    and b
    xor e
    xor e
    rst $20
    ld e, b
    nop
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor h
    and b
    and [hl]
    and b
    cp c
    xor b
    xor l
    and h
    or d
    rst $20
    ld d, c
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor l
    xor [hl]
    or e
    and h
    and c
    xor [hl]
    xor [hl]
    xor d
    or d
    rst $20
    ld d, c
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and [hl]
    or c
    and b
    xor a
    and a
    or d
    rst $20
    ld d, a
    nop
    sub e
    add h
    adc e
    add h
    adc a
    adc [hl]
    sub c
    sub e
    add h
    sub c
    ld a, a
    xor b
    or d
    ld c, a
    and e
    xor b
    or d
    xor a
    xor e
    and b
    cp b
    and h
    and e
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld d, l
    adc a
    add d
    ld a, a
    xor h
    xor [hl]
    xor l
    xor b
    or e
    xor [hl]
    or c
    add sp, $57
    nop
    ld d, d
    ld a, a
    xor b
    xor l
    xor b
    or e
    xor b
    and b
    or e
    and h
    and e
    ld c, a
    sub e
    add h
    adc e
    add h
    adc a
    adc [hl]
    sub c
    sub e
    add h
    sub c
    cp l
    ld a, a
    add d
    and h
    xor e
    xor e
    ld d, l
    sub d
    and h
    xor a
    and b
    or c
    and b
    or e
    xor [hl]
    or c
    rst $20
    ld d, b
    ld d, b
    nop
    add c
    adc b
    adc e
    adc e
    cp l
    ld a, a
    and l
    and b
    or l
    xor [hl]
    or c
    xor b
    or e
    and h
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor e
    xor b
    or d
    or e
    rst $20
    ld e, b
    nop
    sub [hl]
    and a
    xor b
    and d
    and a
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and e
    xor [hl]
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    and h
    and h
    and $57
    nop
    sub e
    and a
    and h
    or c
    and h
    cp l
    ld a, a
    and b
    xor l
    ld a, a
    and h
    db $e3
    xor h
    and b
    xor b
    xor e
    ld c, a
    xor h
    and h
    or d
    or d
    and b
    and [hl]
    and h
    ld a, a
    and a
    and h
    or c
    and h
    rst $20
    ld d, c
    add sp, -$18
    add sp, $51
    add d
    and b
    xor e
    xor e
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    xor e
    xor e
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    or d
    rst $20
    ld d, c
    sub e
    and a
    and h
    ld a, a
    and h
    xor e
    xor b
    or e
    and h
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    or d
    ld c, a
    xor [hl]
    and l
    ld a, a
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
    ld d, l
    and b
    or c
    and h
    ld a, a
    or c
    and h
    and b
    and e
    cp b
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and b
    xor d
    and h
    ld d, l
    xor [hl]
    xor l
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    or c
    or d
    rst $20
    ld d, c
    add c
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    and c
    and h
    or d
    or e
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or d
    and h
    and h
    ld d, l
    and a
    xor [hl]
    or [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or c
    and b
    or e
    and h
    ld a, a
    and b
    or d
    ld a, a
    and b
    ld d, l
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    rst $20
    ld d, c
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
    ld a, a
    add a
    sub b
    ld c, a
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
    ld d, c
    adc a
    sub d
    sbc h
    ld a, a
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$72
    add b
    adc d
    db $f4
    ld c, a
    xor a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    or l
    xor b
    or d
    xor b
    or e
    ld a, a
    or h
    or d
    rst $20
    ld d, l
    add sp, -$18
    add sp, $57
    nop
    add b
    ld a, a
    add d
    adc [hl]
    adc b
    adc l
    ld a, a
    add d
    add b
    sub d
    add h
    ld a, a
    xor b
    or d
    ld c, a
    or c
    and h
    or b
    or h
    xor b
    or c
    and h
    and e
    rst $20
    ld d, a
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
    and d
    xor [hl]
    xor b
    xor l
    or d
    rst $20
    ld d, a
    nop
    adc [hl]
    sub h
    sub e
    ld a, a
    adc [hl]
    add l
    ld a, a
    adc [hl]
    sub c
    add e
    add h
    sub c
    ld c, a
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    and c
    or c
    xor [hl]
    xor d
    and h
    xor l
    add sp, $57
    nop
    adc [hl]
    sub h
    sub e
    ld a, a
    sub e
    adc [hl]
    ld a, a
    adc e
    sub h
    adc l
    add d
    add a
    ld c, a
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    or c
    and h
    or d
    and h
    or c
    or l
    and h
    and e
    add sp, $57
    nop
    sub d
    xor [hl]
    xor h
    and h
    xor [hl]
    xor l
    and h
    cp l
    ld a, a
    xor d
    and h
    cp b
    or d
    rst $20
    ld c, a
    sub e
    and a
    and h
    cp b
    cp h
    xor e
    ld a, a
    and c
    and h
    ld a, a
    and c
    and b
    and d
    xor d
    add sp, $57
    nop
    adc c
    or h
    or d
    or e
    ld a, a
    and b
    ld a, a
    xor h
    xor [hl]
    xor h
    and h
    xor l
    or e
    add sp, $57
    nop
    adc b
    or e
    cp l
    ld a, a
    and b
    ld a, a
    xor a
    and b
    xor h
    xor a
    and a
    xor e
    and h
    or e
    ld c, a
    xor [hl]
    xor l
    ld a, a
    sub e
    adc h
    or d
    add sp, $51
    add sp, -$18
    add sp, $51
    sub e
    and a
    and h
    or c
    and h
    ld a, a
    and b
    or c
    and h
    ld a, a
    ei
    or $7f
    sub e
    adc h
    or d
    ld c, a
    xor b
    xor l
    ld a, a
    and b
    xor e
    xor e
    add sp, $51
    sub e
    and a
    and h
    or c
    and h
    ld a, a
    and b
    or c
    and h
    ld a, a
    and b
    xor e
    or d
    xor [hl]
    ld a, a
    ei
    ld c, a
    add a
    adc h
    or d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and c
    and h
    ld d, l
    or h
    or d
    and h
    and e
    ld a, a
    or c
    and h
    xor a
    and h
    and b
    or e
    and h
    and e
    xor e
    cp b
    add sp, $51
    sub d
    adc b
    adc e
    adc a
    add a
    ld a, a
    add d
    adc [hl]
    add sp, $50
    ld d, b
    nop
    sub e
    or h
    or c
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor a
    and b
    and [hl]
    and h
    and $57
    nop
    add [hl]
    adc b
    sub c
    adc e
    sbc h
    ld a, a
    add a
    and h
    cp b
    rst $20
    ld a, a
    add e
    xor [hl]
    xor l
    cp [hl]
    ld c, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    and b
    or e
    ld a, a
    xor h
    cp b
    ld a, a
    xor l
    xor [hl]
    or e
    and h
    or d
    rst $20
    ld d, b
    ld d, b
    nop
    adc e
    xor [hl]
    xor [hl]
    xor d
    and h
    and e
    ld a, a
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld c, a
    xor l
    xor [hl]
    or e
    and h
    and c
    xor [hl]
    xor [hl]
    xor d
    rst $20
    ld d, c
    add l
    xor b
    or c
    or d
    or e
    ld a, a
    xor a
    and b
    and [hl]
    and h
    add sp, -$18
    add sp, $51
    ld d, h
    ld a, a
    add c
    add b
    adc e
    adc e
    or d
    ld a, a
    and b
    or c
    and h
    ld c, a
    or h
    or d
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and d
    and b
    or e
    and d
    and a
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    sub h
    xor a
    ld a, a
    or e
    xor [hl]
    ld a, a
    db $fc
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    and d
    and b
    xor l
    ld a, a
    and c
    and h
    ld a, a
    and d
    and b
    or c
    or c
    xor b
    and h
    and e
    add sp, $51
    adc a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld a, a
    or [hl]
    and a
    xor [hl]
    ld a, a
    or c
    and b
    xor b
    or d
    and h
    ld c, a
    and b
    xor l
    and e
    ld a, a
    xor h
    and b
    xor d
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    and l
    xor b
    and [hl]
    and a
    or e
    ld a, a
    and b
    or c
    and h
    ld a, a
    and d
    and b
    xor e
    xor e
    and h
    and e
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    or d
    add sp, $58
    nop
    sub d
    and h
    and d
    xor [hl]
    xor l
    and e
    ld a, a
    xor a
    and b
    and [hl]
    and h
    add sp, -$18
    add sp, $51
    add b
    ld a, a
    and a
    and h
    and b
    xor e
    or e
    and a
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    xor h
    and b
    cp b
    ld a, a
    and c
    and h
    ld a, a
    and a
    and b
    or c
    and e
    ld a, a
    or e
    xor [hl]
    ld d, l
    and d
    and b
    or e
    and d
    and a
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    or [hl]
    and h
    and b
    xor d
    and h
    xor l
    ld d, l
    xor b
    or e
    ld a, a
    and l
    xor b
    or c
    or d
    or e
    rst $20
    ld d, c
    adc a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    db $f4
    ld a, a
    and c
    or h
    or c
    xor l
    or d
    ld a, a
    and b
    xor l
    and e
    ld c, a
    xor [hl]
    or e
    and a
    and h
    or c
    ld a, a
    and e
    and b
    xor h
    and b
    and [hl]
    and h
    ld a, a
    and b
    or c
    and h
    ld d, l
    and h
    and l
    and l
    and h
    and d
    or e
    xor b
    or l
    and h
    rst $20
    ld e, b
    nop
    sub e
    and a
    xor b
    or c
    and e
    ld a, a
    xor a
    and b
    and [hl]
    and h
    add sp, -$18
    add sp, $51
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    or d
    ld c, a
    or d
    and h
    and h
    xor d
    ld a, a
    xor [hl]
    or e
    and a
    and h
    or c
    or d
    ld a, a
    or e
    xor [hl]
    ld d, l
    and h
    xor l
    and [hl]
    and b
    and [hl]
    and h
    ld a, a
    xor b
    xor l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    and l
    xor b
    and [hl]
    and a
    or e
    or d
    add sp, $51
    add c
    and b
    or e
    or e
    xor e
    and h
    or d
    ld a, a
    and b
    or c
    and h
    ld c, a
    and d
    xor [hl]
    xor l
    or d
    or e
    and b
    xor l
    or e
    xor e
    cp b
    ld a, a
    and l
    xor [hl]
    or h
    and [hl]
    and a
    or e
    ld d, l
    and b
    or e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add [hl]
    sbc b
    adc h
    or d
    add sp, $58
    nop
    add l
    xor [hl]
    or h
    or c
    or e
    and a
    ld a, a
    xor a
    and b
    and [hl]
    and h
    add sp, -$18
    add sp, $51
    sub e
    and a
    and h
    ld a, a
    and [hl]
    xor [hl]
    and b
    xor e
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    or d
    ld d, l
    xor b
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    ld d, l
    or e
    xor [hl]
    xor a
    ld a, a
    cp $7f
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    add [hl]
    sbc b
    adc h
    ld a, a
    adc e
    add h
    add b
    add e
    add h
    sub c
    or d
    add sp, $51
    add e
    xor [hl]
    ld a, a
    or d
    xor [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    and h
    and b
    or c
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, a
    or c
    xor b
    and [hl]
    and a
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and l
    and b
    and d
    and h
    add sp, -$18
    add sp, $51
    sub e
    and a
    and h
    ld a, a
    add h
    adc e
    adc b
    sub e
    add h
    ld a, a
    add l
    adc [hl]
    sub h
    sub c
    ld a, a
    xor [hl]
    and l
    ld c, a
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
    rst $20
    ld e, b
    nop
    add h
    xor l
    and h
    xor h
    xor b
    and h
    or d
    ld a, a
    xor [hl]
    xor l
    ld a, a
    and h
    or l
    and h
    or c
    cp b
    ld c, a
    or d
    xor b
    and e
    and h
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    and b
    or e
    ld a, a
    and [hl]
    xor [hl]
    and h
    or d
    ld a, a
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
    ld c, a
    and d
    xor [hl]
    xor h
    and h
    or d
    ld a, a
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
    rst $20
    ld d, a
    nop
    add l
    adc b
    add [hl]
    add a
    sub e
    adc b

Jump_022_4f00:
    adc l
    add [hl]
    ld a, a
    add e
    adc [hl]
    adc c
    adc [hl]
    ld d, a
    nop
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
    ld c, a
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
    ld a, a
    add a
    sub b
    ld d, a
    nop
    ld d, d
    ld a, a
    xor b
    or d
    ld c, a
    xor a
    xor e
    and b
    cp b
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    sub d
    adc l
    add h
    sub d
    rst $20
    ld d, l
    add sp, -$18
    add sp, -$72
    xor d
    and b
    cp b
    rst $20
    ld d, l
    adc b
    or e
    cp l
    ld a, a
    or e
    xor b
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    xor [hl]
    rst $20
    ld d, a
    nop
    adc e
    xor [hl]
    xor [hl]
    xor d
    and h
    and e
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld c, a
    and c
    xor b
    xor l
    xor [hl]
    and d
    or h
    xor e
    and b
    or c
    or d
    add sp, -$18
    add sp, $51
    add b
    ld a, a
    xor e
    and b
    or c
    and [hl]
    and h
    db $f4
    ld a, a
    or d
    and a
    xor b
    xor l
    xor b
    xor l
    and [hl]
    ld c, a
    and c
    xor b
    or c
    and e
    ld a, a
    xor b
    or d
    ld a, a
    and l
    xor e
    cp b
    xor b
    xor l
    and [hl]
    ld d, l
    or e
    xor [hl]
    or [hl]
    and b
    or c
    and e
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    and h
    and b
    add sp, $57
    nop
    add b
    add h
    sub c
    adc [hl]
    add e
    add b
    add d
    sub e
    sbc b
    adc e
    ld a, a
    add l
    xor [hl]
    or d
    or d
    xor b
    xor e
    ld c, a
    add b
    ld a, a
    xor a
    or c
    xor b
    xor h
    xor b
    or e
    xor b
    or l
    and h
    ld a, a
    and b
    xor l
    and e
    ld d, l
    or c
    and b
    or c
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    adc d
    add b
    add c
    sub h
    sub e
    adc [hl]
    adc a
    sub d
    ld a, a
    add l
    xor [hl]
    or d
    or d
    xor b
    xor e
    ld c, a
    add b
    ld a, a
    xor a
    or c
    xor b
    xor h
    xor b
    or e
    xor b
    or l
    and h
    ld a, a
    and b
    xor l
    and e
    ld d, l
    or c
    and b
    or c
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    sub e
    sub c
    add b
    adc b
    adc l
    add h
    sub c
    ld a, a
    sub e
    adc b
    adc a
    sub d
    ld d, c
    sub h
    or d
    xor b
    xor l

Call_022_5013:
    and [hl]
    ld a, a
    and b
    ld a, a
    add [hl]
    and b
    xor h
    and h
    ld a, a
    adc e
    xor b
    xor l
    xor d
    ld c, a
    add d
    and b
    and c
    xor e
    and h
    ld e, b
    nop
    sub [hl]
    and a
    xor b
    and d
    and a
    ld a, a
    and a
    and h
    and b
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    and e
    xor [hl]
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or c
    and h
    and b
    and e
    and $57
    nop
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and a
    and b
    or l
    and h
    ld c, a
    xor e
    xor b
    xor l
    xor d
    and h
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    add [hl]
    add b
    adc h
    add h
    ld d, l
    add c
    adc [hl]
    sbc b
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and b
    xor l
    xor [hl]
    or e
    and a
    and h
    or c
    ld d, l
    add [hl]
    add b
    adc h
    add h
    ld a, a
    add c
    adc [hl]
    sbc b
    db $f4
    ld a, a
    or e
    and b
    xor e
    xor d
    ld a, a
    or e
    xor [hl]
    ld d, l
    or e
    and a
    and h
    ld a, a
    and b
    or e
    or e
    and h
    xor l
    and e
    and b
    xor l
    or e
    ld a, a
    xor [hl]
    xor l
    ld d, l
    or e
    and a
    and h
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    ld a, a
    xor b
    xor l
    ld a, a
    and b
    xor l
    cp b
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add d
    add h
    adc l
    sub e
    add h
    sub c
    add sp, $58
    nop
    add d
    adc [hl]
    adc e
    adc [hl]
    sub d
    sub d
    add h
    sub h
    adc h
    ld a, a
    xor e
    and h
    or e
    or d
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor a
    xor e
    and b
    cp b
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    or d
    or e
    ld d, l
    and b
    ld a, a
    and l
    or c
    xor b
    and h
    xor l
    and e
    add sp, $58
    nop
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
    ld a, a
    xor b
    or d
    ld c, a
    or h
    or d
    and h
    and e
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    or e
    or c
    and b
    and e
    xor b
    xor l
    and [hl]
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $58
    nop
    sub e
    and a
    and h
    ld a, a
    and c
    xor e
    and b
    and d
    xor d
    and c
    xor [hl]
    and b
    or c
    and e
    ld c, a
    and e
    and h
    or d
    and d
    or c
    xor b
    and c
    and h
    or d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    sub d
    sub e
    add b
    sub e
    sub h
    sub d
    ld a, a
    and d
    and a
    and b
    xor l
    and [hl]
    and h
    or d
    ld d, l
    and e
    or h
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    or d
    add sp, $58
    nop
    sub [hl]
    and a
    xor b
    and d
    and a
    ld a, a
    and a
    and h
    and b
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    and e
    xor [hl]
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or c
    and h
    and b
    and e
    and $57
    nop
    add b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and d
    and b
    xor l
    cp [hl]
    ld c, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    xor b
    and l
    ld a, a
    xor b
    or e
    cp l
    ld d, l
    and b
    or d
    xor e
    and h
    and h
    xor a
    rst $20
    ld d, c
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    or d
    or e
    and b
    cp b
    ld c, a
    and b
    or d
    xor e
    and h
    and h
    xor a
    ld a, a
    and h
    or l
    and h
    xor l
    ld a, a
    and b
    and l
    or e
    and h
    or c
    ld d, l
    and c
    and b
    or e
    or e
    xor e
    and h
    or d
    add sp, $51
    sub h
    or d
    and h
    ld a, a
    add b
    sub [hl]
    add b
    adc d
    add h
    adc l
    adc b
    adc l
    add [hl]
    ld a, a
    or e
    xor [hl]
    ld c, a
    or [hl]
    and b
    xor d
    and h
    ld a, a
    or e
    and a
    and h
    xor h
    ld a, a
    or h
    xor a
    rst $20
    ld e, b
    nop
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    xor a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    and h
    and e
    db $f4
    ld a, a
    and b
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    cp l
    ld a, a
    and a
    and h
    and b
    xor e
    or e
    and a
    ld d, l
    or d
    or e
    and h
    and b
    and e
    xor b
    xor e
    cp b
    ld a, a
    and e
    or c
    xor [hl]
    xor a
    or d
    add sp, $51
    adc a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    ld a, a
    xor e
    xor b
    xor l
    and [hl]
    and h
    or c
    or d
    ld c, a
    and b
    and l
    or e
    and h
    or c
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    or d
    add sp, $51
    sub h
    or d
    and h
    ld a, a
    and b
    xor l
    ld a, a
    add b
    adc l
    sub e
    adc b
    add e
    adc [hl]
    sub e
    add h
    ld c, a
    or e
    xor [hl]
    ld a, a
    and d
    or h
    or c
    and h
    ld a, a
    xor a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    rst $20
    ld e, b
    nop
    adc a
    and b
    or c
    and b
    xor e
    cp b
    or d
    xor b
    or d
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld c, a
    xor h
    and b
    xor d
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    xor h
    xor [hl]
    or l
    and h
    or d
    ld a, a
    xor h
    xor b
    or d
    and l
    xor b
    or c
    and h
    rst $20
    ld d, c
    adc a
    and b
    or c
    and b
    xor e
    cp b
    or d
    xor b
    or d
    ld a, a
    or c
    and h
    xor h
    and b
    xor b
    xor l
    or d
    ld c, a
    and b
    and l
    or e
    and h
    or c
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    or d
    add sp, $51
    sub h
    or d
    and h
    ld a, a
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
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    or e
    or c
    and h
    and b
    or e
    xor h
    and h
    xor l
    or e
    rst $20
    ld e, b
    nop
    add b
    ld a, a
    and c
    or h
    or c
    xor l
    ld a, a
    or c
    and h
    and e
    or h
    and d
    and h
    or d
    ld c, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or d
    xor a
    and h
    and h
    and e
    add sp, $55
    adc b
    or e
    ld a, a
    and b
    xor e
    or d
    xor [hl]
    ld a, a
    and d
    and b
    or h
    or d
    and h
    or d
    ld d, l
    xor [hl]
    xor l
    and [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    and e
    and b
    xor h
    and b
    and [hl]
    and h
    add sp, $51
    add c
    or h
    or c
    xor l
    or d
    ld a, a
    or c
    and h
    xor h
    and b
    xor b
    xor l
    ld c, a
    and b
    and l
    or e
    and h
    or c
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    or d
    add sp, $51
    sub h
    or d
    and h
    ld a, a
    add c
    sub h
    sub c
    adc l
    ld a, a
    add a
    add h
    add b
    adc e
    ld a, a
    or e
    xor [hl]
    ld c, a
    and d
    or h
    or c
    and h
    ld a, a
    and b
    ld a, a
    and c
    or h
    or c
    xor l
    rst $20
    ld e, b
    nop
    adc b
    and l
    ld a, a
    and l
    or c
    xor [hl]
    cp c
    and h
    xor l
    db $f4
    ld a, a
    and b
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    or d
    ld d, l
    or e
    xor [hl]
    or e
    and b
    xor e
    xor e
    cp b
    ld a, a
    xor b
    xor h
    xor h
    xor [hl]
    and c
    xor b
    xor e
    and h
    rst $20
    ld d, c
    adc b
    or e
    ld a, a
    or d
    or e
    and b
    cp b
    or d
    ld a, a
    and l
    or c
    xor [hl]
    cp c
    and h
    xor l
    ld c, a
    and h
    or l
    and h
    xor l
    ld a, a
    and b
    and l
    or e
    and h
    or c
    ld a, a
    or e
    and a
    and h
    ld d, l
    and c
    and b
    or e
    or e
    xor e
    and h
    ld a, a
    and h
    xor l
    and e
    or d
    add sp, $51
    sub h
    or d
    and h
    ld a, a
    adc b
    add d
    add h
    ld a, a
    add a
    add h
    add b
    adc e
    ld a, a
    or e
    xor [hl]
    ld c, a
    or e
    and a
    and b
    or [hl]
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld e, b
    nop
    adc l
    xor [hl]
    xor a
    and h
    db $f4
    ld a, a
    or e
    and a
    and h
    or c
    and h
    cp l
    ld c, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    or e
    or c
    and b
    or d
    and a
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $57
    nop
    add a
    and h
    cp b
    rst $20
    ld a, a
    sub e
    and a
    and h
    or c
    and h
    cp l
    ld a, a
    and b
    ld c, a
    or d
    or [hl]
    xor b
    or e
    and d
    and a
    ld a, a
    or h
    xor l
    and e
    and h
    or c
    ld a, a
    or e
    and a
    and h
    ld d, l
    or e
    or c
    and b
    or d
    and a
    rst $20
    ld d, l
    sub e
    or h
    or c
    xor l
    ld a, a
    xor b
    or e
    ld a, a
    xor [hl]
    xor l
    rst $20
    ld d, c
    sub e
    and a
    and h
    ld a, a
    rst $30
    or d
    or e
    ld a, a
    and h
    xor e
    and h
    and d
    or e
    or c
    xor b
    and d
    ld c, a
    xor e
    xor [hl]
    and d
    xor d
    ld a, a
    xor [hl]
    xor a
    and h
    xor l
    and h
    and e
    rst $20
    ld d, b
    ld d, b
    nop
    add a
    and h
    cp b
    rst $20
    ld a, a
    sub e
    and a
    and h
    or c
    and h
    cp l
    ld c, a
    and b
    xor l
    xor [hl]
    or e
    and a
    and h
    or c
    ld a, a
    or d
    or [hl]
    xor b
    or e
    and d
    and a
    ld d, l
    or h
    xor l
    and e
    and h
    or c
    ld a, a
    or e
    and a
    and h
    ld a, a
    or e
    or c
    and b
    or d
    and a
    rst $20
    ld d, l
    sub e
    or h
    or c
    xor l
    ld a, a
    xor b
    or e
    ld a, a
    xor [hl]
    xor l
    rst $20
    ld e, b
    nop
    sub e
    and a
    and h
    ld a, a
    ld hl, sp-$53
    and e
    ld a, a
    and h
    xor e
    and h
    and d
    or e
    or c
    xor b
    and d
    ld c, a
    xor e
    xor [hl]
    and d
    xor d
    ld a, a
    xor [hl]
    xor a
    and h
    xor l
    and h
    and e
    rst $20
    ld d, c
    sub e
    and a
    and h
    ld a, a
    xor h
    xor [hl]
    or e
    xor [hl]
    or c
    xor b
    cp c
    and h
    and e
    ld a, a
    and e
    xor [hl]
    xor [hl]
    or c
    ld c, a
    xor [hl]
    xor a
    and h
    xor l
    and h
    and e
    rst $20
    ld d, b
    ld d, b
    nop
    adc l
    xor [hl]
    xor a
    and h
    rst $20
    ld a, a
    sub e
    and a
    and h
    or c
    and h
    cp l
    ld c, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    or e
    or c
    and b
    or d
    and a
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $55
    add a
    and h
    cp b
    rst $20
    ld a, a
    sub e
    and a
    and h
    ld a, a
    and h
    xor e
    and h
    and d
    or e
    or c
    xor b
    and d
    ld d, l
    xor e
    xor [hl]
    and d
    xor d
    or d
    ld a, a
    or [hl]
    and h
    or c
    and h
    ld a, a
    or c
    and h
    or d
    and h
    or e
    rst $20
    ld d, b
    ld d, b
    nop
    ld d, d
    ld a, a
    and l
    xor [hl]
    or h
    xor l
    and e
    ld c, a
    ld d, b
    ld bc, $cd6d
    nop
    rst $20
    ld d, b
    ld d, b
    nop
    add c
    or h
    or e
    db $f4
    ld a, a
    ld d, d
    ld a, a
    and a
    and b
    or d
    ld c, a
    xor l
    xor [hl]
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    or c
    xor [hl]
    xor [hl]
    xor h
    ld a, a
    and l
    xor [hl]
    or c
    ld d, l
    xor [hl]
    or e
    and a
    and h
    or c
    ld a, a
    xor b
    or e
    and h
    xor h
    or d
    rst $20
    ld d, a
    nop
    ld d, d
    ld a, a
    and l
    xor [hl]
    or h
    xor l
    and e
    ld c, a
    ld d, b
    ld [bc], a
    and b
    rst $38
    jp nz, Jump_022_7f00

    and d
    xor [hl]
    xor b
    xor l
    or d
    rst $20
    ld d, b
    ld d, b
    nop
    ld d, d
    ld a, a
    and l
    xor [hl]
    or h
    xor l
    and e
    ld c, a
    ld d, b
    ld [bc], a
    and b
    rst $38
    jp nz, Jump_022_7f00

    and d
    xor [hl]
    xor b
    xor l
    or d
    rst $20
    ld d, b
    ld d, b
    nop
    ld d, c
    adc [hl]
    xor [hl]
    xor a
    or d
    rst $20
    ld a, a
    add e
    or c
    xor [hl]
    xor a
    xor a
    and h
    and e
    ld c, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    and d
    xor [hl]
    xor b
    xor l
    or d
    rst $20
    ld d, a
    nop
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
    ld e, b
    nop
    sub e
    and a
    and h
    ld a, a
    or h
    xor e
    or e
    xor b
    xor h
    and b
    or e
    and h
    ld a, a
    and [hl]
    xor [hl]
    and b
    xor e
    ld c, a
    xor [hl]
    and l
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    or d
    rst $20
    ld d, l
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
    ld a, a
    add a
    sub b
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    and a
    xor b
    and [hl]
    and a
    and h
    or d
    or e
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    or h
    or e
    and a
    xor [hl]
    or c
    xor b
    or e
    cp b
    ld d, l
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
    ld a, a
    add a
    sub b
    ld d, a
    nop
    add d
    or c
    and b
    xor h
    xor h
    and h
    and e
    ld a, a
    and l
    or h
    xor e
    xor e
    ld a, a
    xor [hl]
    and l
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and c
    xor [hl]
    xor [hl]
    xor d
    or d
    rst $20
    ld d, a
    nop
    adc b
    or e
    cp l
    ld a, a
    and b
    ld a, a
    or d
    and d
    or h
    xor e
    xor a
    or e
    or h
    or c
    and h
    ld c, a
    xor [hl]
    and l
    ld a, a
    add e
    adc b
    add [hl]
    adc e
    add h
    sub e
    sub e
    add sp, $57
    nop
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    and b
    xor l
    ld c, a
    and h
    xor e
    and h
    or l
    and b
    or e
    xor [hl]
    or c
    add sp, $57
    nop
    add b
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    adc l
    ld a, a
    adc h
    add b
    adc a
    add sp, $50
    ld d, b
    nop
    sub [hl]
    xor [hl]
    or [hl]
    rst $20
    ld a, a
    sub e
    xor [hl]
    xor l
    or d
    ld a, a
    xor [hl]
    and l
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or d
    or e
    or h
    and l
    and l
    rst $20
    ld d, a
    nop
    adc a
    add b
    sbc h
    ld a, a
    add e
    xor b
    xor l
    and [hl]
    db $e3
    and e
    xor [hl]
    xor l
    and [hl]
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    and b
    or c
    and h
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    and l
    ld c, a
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
    or d
    rst $20
    ld e, b
    nop
    sub [hl]
    xor b
    xor e
    and e
    ld a, a
    ld d, b
    ld bc, $cfda
    nop
    ld c, a
    or c
    and b
    xor l
    rst $20
    ld e, b
    nop
    add h
    xor l
    and h
    xor h
    cp b
    ld a, a
    ld d, b
    ld bc, $cfda
    nop
    ld c, a
    or c
    and b
    xor l
    rst $20
    ld e, b
    nop
    ld e, d
    cp l
    ld c, a
    and a
    or h
    or c
    or e
    ld a, a
    and c
    cp b
    ld a, a
    xor a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    rst $20
    ld e, b
    nop
    ld e, d
    cp l
    ld c, a
    and a
    or h
    or c
    or e
    ld a, a
    and c
    cp b
    ld a, a
    or e
    and a
    and h
    ld a, a
    and c
    or h
    or c
    xor l
    rst $20
    ld e, b
    nop
    adc e
    add h
    add h
    add d
    add a
    ld a, a
    sub d
    add h
    add h
    add e
    ld a, a
    or d
    and b
    xor a
    or d
    ld c, a
    ld e, d
    rst $20
    ld e, b
    nop
    add h
    xor l
    and h
    xor h
    cp b
    ld a, a
    ld d, b
    ld bc, $cfda
    nop
    ld c, a
    and l
    and b
    xor b
    xor l
    or e
    and h
    and e
    rst $20
    ld e, b
    nop
    ld d, d
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    ldh a, [$50]
    ld [bc], a
    ld a, c
    ret nc

    jp Jump_022_4f00


    and l
    xor [hl]
    or c
    ld a, a
    or [hl]
    xor b
    xor l
    xor l
    xor b
    xor l
    and [hl]
    rst $20
    ld e, b
    nop
    ld d, d
    ld a, a
    and e
    and h
    and l
    and h
    and b
    or e
    and h
    and e
    ld c, a
    ld d, b
    ld bc, $d04a
    nop
    rst $20
    ld e, b
    ld bc, $d009
    nop
    ld c, a
    and l
    and b
    xor b
    xor l
    or e
    and h
    and e
    rst $20
    ld e, b
    nop
    sub h
    or d
    and h
    ld a, a
    xor l
    and h
    or a
    or e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    and $57
    nop
    ld d, e
    sbc h
    ld a, a
    sbc b
    and h
    and b
    and a
    rst $20
    ld a, a
    add b
    xor h
    ld c, a
    adc b
    ld a, a
    and [hl]
    or c
    and h
    and b
    or e
    ld a, a
    xor [hl]
    or c
    ld a, a
    or [hl]
    and a
    and b
    or e
    and $58
    nop
    ld d, d
    ld a, a
    xor b
    or d
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    and l
    ld c, a
    or h
    or d
    and h
    and b
    and c
    xor e
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, c
    ld d, d
    ld a, a
    and c
    xor e
    and b
    and d
    xor d
    and h
    and e
    ld c, a
    xor [hl]
    or h
    or e
    rst $20
    ld e, b
    nop
    ld d, d
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    ld a, a
    or e
    xor [hl]
    ld c, a
    ld d, b
    ld bc, $d04a
    nop
    rst $20
    ld e, b
    ld bc, $d04a
    nop
    ld a, a
    xor b
    or d
    ld c, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or h
    or d
    and h
    ld d, l
    ld d, b
    ld bc, $cfda
    nop
    rst $20
    ld d, c
    sub [hl]
    xor b
    xor e
    xor e
    ld a, a
    ld d, d
    ld c, a
    and d
    and a
    and b
    xor l
    and [hl]
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    and $57
    ld bc, $d04a
    nop
    ld a, a
    or d
    and h
    xor l
    or e
    ld c, a
    xor [hl]
    or h
    or e
    ld a, a
    ld d, b
    ld bc, $cfda
    nop
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    or c
    and h
    cp l
    ld a, a
    xor l
    xor [hl]
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld c, a
    or e
    xor [hl]
    ld a, a
    and l
    xor b
    and [hl]
    and a
    or e
    rst $20
    ld e, b
    nop
    add d
    and b
    xor l
    cp [hl]
    ld a, a
    and h
    or d
    and d
    and b
    xor a
    and h
    rst $20
    ld e, b
    nop
    adc l
    xor [hl]
    rst $20
    ld a, a
    sub e
    and a
    and h
    or c
    and h
    cp l
    ld a, a
    xor l
    xor [hl]
    ld c, a
    or c
    or h
    xor l
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    and b
    ld d, l
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    rst $20
    ld e, b
    nop
    add [hl]
    xor [hl]
    or e
    ld a, a
    and b
    or [hl]
    and b
    cp b
    ld a, a
    or d
    and b
    and l
    and h
    xor e
    cp b
    rst $20
    ld e, b
    nop
    adc b
    or e
    and h
    xor h
    or d
    ld a, a
    and d
    and b
    xor l
    cp [hl]
    ld a, a
    and c
    and h
    ld c, a
    or h
    or d
    and h
    and e
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $58
    ld bc, $d009
    nop
    ld a, a
    xor b
    or d
    ld c, a
    and b
    xor e
    or c
    and h
    and b
    and e
    cp b
    ld a, a
    xor [hl]
    or h
    or e
    rst $20
    ld e, b
    nop
    adc l
    xor [hl]
    ld a, a
    adc a
    adc a
    ld a, a
    xor e
    and h
    and l
    or e
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    or e
    and a
    xor b
    or d
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    rst $20
    ld e, b
    nop
    sub e
    and a
    and h
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    ld a, a
    xor b
    or d
    ld c, a
    and e
    xor b
    or d
    and b
    and c
    xor e
    and h
    and e
    rst $20
    ld e, b
    ld bc, $d009
    nop
    ld a, a
    and a
    and b
    or d
    ld a, a
    xor l
    xor [hl]
    ld c, a
    xor h
    xor [hl]
    or l
    and h
    or d
    ld a, a
    xor e
    and h
    and l
    or e
    rst $20
    ld d, a
    nop
    add a
    xor b
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    and h
    xor l
    and h
    xor h
    cp b
    ld c, a
    ld d, b
    add hl, bc
    ld [hl], h
    ret nc

    ld de, $7f00
    or e
    xor b
    xor h
    and h
    or d
    rst $20
    ld e, b
    ld bc, $d009
    nop
    ld a, a
    xor b
    or d
    ld a, a
    or e
    xor [hl]
    xor [hl]
    ld c, a
    or d
    and d
    and b
    or c
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    rst $20
    ld e, b
    nop
    add [hl]
    add a
    adc [hl]
    sub d
    sub e
    sbc h
    ld a, a
    add [hl]
    and h
    or e
    ld a, a
    xor [hl]
    or h
    or e
    add sp, -$18
    add sp, $4f
    add [hl]
    and h
    or e
    ld a, a
    xor [hl]
    or h
    or e
    add sp, -$18
    add sp, $58
    nop
    ld e, d
    ld c, a
    xor b
    or d
    ld a, a
    and l
    and b
    or d
    or e
    ld a, a
    and b
    or d
    xor e
    and h
    and h
    xor a
    rst $20
    ld e, b
    nop
    ld e, d
    ld c, a
    or [hl]
    xor [hl]
    xor d
    and h
    ld a, a
    or h
    xor a
    rst $20
    ld e, b
    nop
    ld e, d
    ld c, a
    xor b
    or d
    ld a, a
    and l
    or c
    xor [hl]
    cp c
    and h
    xor l
    ld a, a
    or d
    xor [hl]
    xor e
    xor b
    and e
    rst $20
    ld e, b
    nop
    ld e, d
    cp l
    ld c, a
    and l
    or h
    xor e
    xor e
    cp b
    ld a, a
    xor a
    and b
    or c
    and b
    xor e
    cp b
    cp c
    and h
    and e
    rst $20
    ld e, b
    nop
    ld e, d
    ld c, a
    and l
    xor e
    xor b
    xor l
    and d
    and a
    and h
    and e
    rst $20
    ld e, b
    nop
    ld e, d
    ld c, a
    xor h
    or h
    or d
    or e
    ld a, a
    or c
    and h
    and d
    and a
    and b
    or c
    and [hl]
    and h
    rst $20
    ld e, b
    nop
    ld e, d
    cp l
    ld c, a
    and e
    xor b
    or d
    and b
    and c
    xor e
    and h
    and e
    ld a, a
    xor l
    xor [hl]
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    rst $20
    ld e, b
    nop
    ld e, d
    ld c, a
    xor b
    or d
    ld a, a
    and d
    xor [hl]
    xor l
    and l
    or h
    or d
    and h
    and e
    rst $20
    ld e, b
    nop
    adc b
    or e
    ld a, a
    and a
    or h
    or c
    or e
    ld a, a
    xor b
    or e
    or d
    and h
    xor e
    and l
    ld a, a
    xor b
    xor l
    ld c, a
    xor b
    or e
    or d
    ld a, a
    and d
    xor [hl]
    xor l
    and l
    or h
    or d
    xor b
    xor [hl]
    xor l
    rst $20
    ld e, b
    nop
    ld e, d
    cp l
    ld c, a
    and d
    xor [hl]
    xor l
    and l
    or h
    or d
    and h
    and e
    ld a, a
    xor l
    xor [hl]
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    rst $20
    ld e, b
    nop
    ld e, d
    ld c, a
    xor b
    or d
    ld a, a
    or d
    and b
    or l
    xor b
    xor l
    and [hl]
    ld a, a
    and h
    xor l
    and h
    or c
    and [hl]
    cp b
    rst $20
    ld e, b
    nop
    ld e, d
    ld c, a
    or h
    xor l
    xor e
    and h
    and b
    or d
    and a
    and h
    and e
    ld a, a
    and h
    xor l
    and h
    or c
    and [hl]
    cp b
    rst $20
    ld e, b
    nop
    ld e, d
    cp l
    ld c, a
    or e
    and a
    or c
    and b
    or d
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    rst $20
    ld d, a
    nop
    ld e, d
    cp l
    ld c, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    and d
    xor [hl]
    xor l
    or e
    xor b
    xor l
    or h
    and h
    or d
    rst $20
    ld d, a
    nop
    ld e, d
    ld c, a
    and d
    and b
    xor l
    cp [hl]
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    rst $20
    ld e, b
    nop
    ld e, d
    cp l
    ld c, a
    ld d, b
    ld bc, $cd6d
    nop
    ld a, a
    xor b
    or d
    ld d, l
    and e
    xor b
    or d
    and b
    and c
    xor e
    and h
    and e
    rst $20
    ld e, b
    nop
    ld e, d
    ld d, b
    ld d, b
    nop
    ld c, a
    or h
    or d
    and h
    and e
    ld a, a
    ld d, b
    ld d, b
    nop
    ld c, a
    or h
    or d
    and h
    and e
    ld a, a
    ld d, b
    ld d, b
    nop
    xor b
    xor l
    or d
    or e
    and h
    and b
    and e
    db $f4
    ld d, l
    ld d, b
    ld d, b
    ld bc, $cf4b
    nop
    ld d, b
    nop
    rst $20
    ld d, a
    nop
    rst $20
    ld d, a
    nop
    rst $20
    ld d, a
    nop
    rst $20
    ld d, a
    nop
    rst $20
    ld d, a
    nop
    ld e, d
    cp l
    ld c, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    xor h
    xor b
    or d
    or d
    and h
    and e
    rst $20
    ld e, b
    nop
    ld e, d
    ld c, a
    xor d
    and h
    xor a
    or e
    ld a, a
    and [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    xor l
    and e
    ld d, l
    and d
    or c
    and b
    or d
    and a
    and h
    and e
    rst $20
    ld e, b
    nop
    ld e, c
    cp l
    ld c, a
    or h
    xor l
    and b
    and l
    and l
    and h
    and d
    or e
    and h
    and e
    rst $20
    ld e, b
    nop
    adc b
    or e
    ld a, a
    and e
    xor [hl]
    and h
    or d
    xor l
    cp [hl]
    ld a, a
    and b
    and l
    and l
    and h
    and d
    or e
    ld c, a
    ld e, c
    rst $20
    ld e, b
    nop
    add d
    or c
    xor b
    or e
    xor b
    and d
    and b
    xor e
    ld a, a
    and a
    xor b
    or e
    rst $20
    ld e, b
    nop
    adc [hl]
    xor l
    and h
    db $e3
    and a
    xor b
    or e
    ld a, a
    adc d
    adc [hl]
    rst $20
    ld e, b
    ld bc, $d009
    nop
    ld a, a
    xor b
    or d
    ld c, a
    xor e
    xor [hl]
    and b
    and l
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
    add sp, $58
    ld bc, $d009
    nop
    ld a, a
    and c
    and h
    and [hl]
    and b
    xor l
    ld c, a
    or e
    xor [hl]
    ld a, a
    xor l
    and b
    xor a
    rst $20
    ld e, b
    ld bc, $d009
    nop
    ld a, a
    or [hl]
    xor [hl]
    xor l
    cp [hl]
    ld c, a
    xor [hl]
    and c
    and h
    cp b
    rst $20
    ld e, b
    ld bc, $d009
    nop
    ld a, a
    or e
    or h
    or c
    xor l
    and h
    and e
    ld c, a
    and b
    or [hl]
    and b
    cp b
    rst $20
    ld e, b
    ld bc, $d009
    nop
    ld c, a
    xor b
    and [hl]
    xor l
    xor [hl]
    or c
    and h
    and e
    ld a, a
    xor [hl]
    or c
    and e
    and h
    or c
    or d
    rst $20
    ld e, b
    nop
    sub e
    and a
    and h
    ld a, a
    sub d
    sub h
    add c
    sub d
    sub e
    adc b
    sub e
    sub h
    sub e
    add h
    ld c, a
    or e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    and e
    and b
    xor h
    and b
    and [hl]
    and h
    ld a, a
    and l
    xor [hl]
    or c
    ld d, l
    ld e, c
    rst $20
    ld e, b
    nop
    ld e, c
    cp l
    ld c, a
    sub d
    sub h
    add c
    sub d
    sub e
    adc b
    sub e
    sub h
    sub e
    add h
    ld a, a
    and c
    or c
    xor [hl]
    xor d
    and h
    rst $20
    ld e, b
    nop
    ld e, d
    cp l
    ld c, a
    sub c
    add b
    add [hl]
    add h
    ld a, a
    xor b
    or d
    ld a, a
    and c
    or h
    xor b
    xor e
    and e
    xor b
    xor l
    and [hl]
    rst $20
    ld e, b
    nop
    sub e
    and a
    and h
    ld a, a
    adc h
    adc b
    sub c
    sub c
    adc [hl]
    sub c
    ld a, a
    adc h
    adc [hl]
    sub l
    add h
    ld c, [hl]
    and l
    and b
    xor b
    xor e
    and h
    and e
    rst $20
    ld e, b
    nop
    add a
    xor b
    or e
    ld a, a
    ld d, b
    add hl, bc
    dec b
    call Call_000_0011
    ld a, a
    or e
    xor b
    xor h
    and h
    or d
    rst $20
    ld e, b
    ld bc, $cd6d
    nop
    ld a, a
    and [hl]
    and b
    xor b
    xor l
    and h
    and e
    ld c, a
    ld d, b
    ld d, b
    nop
    or [hl]
    xor b
    or e
    and a
    ld a, a
    add h
    sub a
    adc a
    add sp, -$80
    adc e
    adc e
    db $f4
    ld d, l
    ld d, b
    ld d, b
    nop
    and b
    ld a, a
    and c
    xor [hl]
    xor [hl]
    or d
    or e
    and h
    and e
    ld d, l
    ld d, b
    ld d, b
    add hl, bc
    ld c, e
    rst $08
    inc h
    nop
    ld a, a
    add h
    sub a
    adc a
    add sp, $7f
    adc a
    xor [hl]
    xor b
    xor l
    or e
    or d
    rst $20
    ld e, b
    ld bc, $cd6d
    nop
    ld a, a
    and [hl]
    or c
    and h
    or [hl]
    ld c, a
    or e
    xor [hl]
    ld a, a
    xor e
    and h
    or l
    and h
    xor e
    ld a, a
    ld d, b
    add hl, bc
    daa
    pop de
    inc de
    nop
    rst $20
    ld d, b
    ld d, b
    nop
    sub [hl]
    xor b
    xor e
    and e
    ld a, a
    ld d, b
    ld bc, $cfda
    nop
    ld c, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    and h
    and e
    rst $20
    ld e, b
    nop
    sub e
    and a
    and h
    ld a, a
    and a
    xor [hl]
    xor [hl]
    xor d
    and h
    and e
    ld c, a
    ld d, b
    ld bc, $cfda
    nop
    ld d, l
    and b
    or e
    or e
    and b
    and d
    xor d
    and h
    and e
    rst $20
    ld e, b
    ld bc, $cfda
    nop
    ld c, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    and h
    and e
    rst $20
    ld e, b
    ld bc, $d04a
    nop
    ld a, a
    or [hl]
    and b
    xor l
    or e
    or d
    ld c, a
    or e
    xor [hl]
    ld a, a
    and l
    xor b
    and [hl]
    and a
    or e
    rst $20
    ld e, b
    nop
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
    ld c, a
    or h
    xor l
    or l
    and h
    xor b
    xor e
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld d, l
    add [hl]
    add a
    adc [hl]
    sub d
    sub e
    cp l
    ld a, a
    xor b
    and e
    and h
    xor l
    or e
    xor b
    or e
    cp b
    rst $20
    ld e, b
    nop
    add e
    and b
    or c
    xor l
    rst $20
    ld a, a
    sub e
    and a
    and h
    ld a, a
    add [hl]
    add a
    adc [hl]
    sub d
    sub e
    ld c, a
    and d
    and b
    xor l
    cp [hl]
    ld a, a
    and c
    and h
    ld a, a
    adc b
    add e
    cp e
    rst $20
    ld e, b
    nop
    add [hl]
    xor [hl]
    rst $20
    ld a, a
    ld d, b
    ld d, b
    nop
    add e
    xor [hl]
    ld a, a
    xor b
    or e
    rst $20
    ld a, a
    ld d, b
    ld d, b
    nop
    add [hl]
    and h
    or e
    push hl
    rst $20
    ld a, a
    ld d, b
    ld d, b
    nop
    sub e
    and a
    and h
    ld a, a
    and h
    xor l
    and h
    xor h
    cp b
    cp l
    ld a, a
    or [hl]
    and h
    and b
    xor d
    rst $20
    ld c, a
    add [hl]
    and h
    or e
    push hl
    rst $20
    ld a, a
    ld d, b
    ld d, b
    ld bc, $d009
    nop
    rst $20
    ld d, a
    ld bc, $d009
    nop
    ld a, a
    ld d, b
    ld d, b
    nop
    and h
    xor l
    xor [hl]
    or h
    and [hl]
    and a
    rst $20
    ld d, b
    ld d, b
    nop
    adc [hl]
    adc d
    rst $20
    ld d, b
    ld d, b
    nop
    and [hl]
    xor [hl]
    xor [hl]
    and e
    rst $20
    ld d, b
    ld d, b
    nop
    ld c, a
    add d
    xor [hl]
    xor h
    and h
    ld a, a
    and c
    and b
    and d
    xor d
    rst $20
    ld d, a
    nop
    adc b
    or e
    cp l
    ld a, a
    or d
    or h
    xor a
    and h
    or c
    ld c, a
    and h
    and l
    and l
    and h
    and d
    or e
    xor b
    or l
    and h
    rst $20
    ld e, b
    nop
    adc b
    or e
    cp l
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    or l
    and h
    or c
    cp b
    ld c, a
    and h
    and l
    and l
    and h
    and d
    or e
    xor b
    or l
    and h
    add sp, -$18
    add sp, $58
    nop
    sub [hl]
    xor b
    xor e
    and e
    ld a, a
    ld d, b
    ld bc, $cfda
    nop
    ld c, a
    xor b
    or d
    ld a, a
    and h
    and b
    or e
    xor b
    xor l
    and [hl]
    rst $20
    ld e, b
    nop
    sub [hl]
    xor b
    xor e
    and e
    ld a, a
    ld d, b
    ld bc, $cfda
    nop
    ld c, a
    xor b
    or d
    ld a, a
    and b
    xor l
    and [hl]
    or c
    cp b
    rst $20
    ld e, b
    nop
    ld d, d
    ld a, a
    xor a
    xor b
    and d
    xor d
    and h
    and e
    ld a, a
    or h
    xor a
    ld c, a
    ldh a, [$50]
    ld [bc], a
    push hl
    call z, Call_000_00c3
    rst $20
    ld e, b
    nop
    add d
    xor e
    and h
    and b
    or c
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    or d
    and b
    or l
    and h
    and e
    ld c, a
    and e
    and b
    or e
    and b
    and $57
    nop
    sub [hl]
    and a
    xor b
    and d
    and a
    ld a, a
    and l
    xor e
    xor [hl]
    xor [hl]
    or c
    ld a, a
    and e
    xor [hl]
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and b
    xor l
    or e
    and $7f
    ld d, a
    nop
    add d
    and a
    xor [hl]
    xor [hl]
    or d
    and h
    ld a, a
    and b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    sub h
    or d
    and h
    ld a, a
    xor b
    or e
    and h
    xor h
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or [hl]
    and a
    xor b
    and d
    and a
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    and $57
    nop
    add c
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    or [hl]
    and a
    xor b
    and d
    and a
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    and $57
    nop
    sub h
    or d
    and h
    ld a, a
    sub e
    adc h
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or [hl]
    and a
    xor b
    and d
    and a
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    and $57
    nop
    adc h
    xor [hl]
    or l
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    or [hl]
    and a
    and h
    or c
    and h
    and $57
    ld bc, $cd6d
    nop
    ld c, a
    or c
    and h
    and d
    xor [hl]
    or l
    and h
    or c
    and h
    and e
    ld a, a
    and c
    cp b
    ld a, a
    ld d, b
    add hl, bc
    db $fd
    adc $23
    nop
    rst $20
    ld d, a
    ld bc, $cd6d
    nop
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    and d
    or h
    or c
    and h
    and e
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    rst $20
    ld d, a
    ld bc, $cd6d
    nop
    cp l
    ld c, a
    or c
    xor b
    and e
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor a
    and b
    or c
    and b
    xor e
    cp b
    or d
    xor b
    or d
    rst $20
    ld d, a
    ld bc, $cd6d
    nop
    cp l
    ld c, a
    and c
    or h
    or c
    xor l
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and a
    and h
    and b
    xor e
    and h
    and e
    rst $20
    ld d, a
    ld bc, $cd6d
    nop
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    and e
    and h
    and l
    or c
    xor [hl]
    or d
    or e
    and h
    and e
    rst $20
    ld d, a
    ld bc, $cd6d
    nop
    ld c, a
    or [hl]
    xor [hl]
    xor d
    and h
    ld a, a
    or h
    xor a
    rst $20
    ld d, a
    ld bc, $cd6d
    nop
    cp l
    ld c, a
    and a
    and h
    and b
    xor e
    or e
    and a
    ld a, a
    or c
    and h
    or e
    or h
    or c
    xor l
    and h
    and e
    rst $20
    ld d, a
    ld bc, $cd6d
    nop
    ld c, a
    xor b
    or d
    ld a, a
    or c
    and h
    or l
    xor b
    or e
    and b
    xor e
    xor b
    cp c
    and h
    and e
    rst $20
    ld d, a
    ld bc, $cd6d
    nop
    ld a, a
    and [hl]
    or c
    and h
    or [hl]
    ld c, a
    or e
    xor [hl]
    ld a, a
    xor e
    and h
    or l
    and h
    xor e
    ld a, a
    ld d, b
    add hl, bc
    daa
    pop de
    inc de
    nop
    rst $20
    ld d, b
    ld d, b
    nop
    ld d, d
    ld a, a
    or e
    or h
    or c
    xor l
    and h
    and e
    ld a, a
    xor [hl]
    xor l
    ld c, a
    or e
    and a
    and h
    ld a, a
    adc a
    add d
    add sp, $58
    nop
    add b
    and d
    and d
    and h
    or d
    or d
    and h
    and e
    ld a, a
    add c
    adc b
    adc e
    adc e
    cp l
    ld c, a
    adc a
    add d
    add sp, $51
    add b
    and d
    and d
    and h
    or d
    or d
    and h
    and e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    sub d
    or e
    xor [hl]
    or c
    and b
    and [hl]
    and h
    ld a, a
    sub d
    cp b
    or d
    or e
    and h
    xor h
    add sp, $58
    nop
    add b
    and d
    and d
    and h
    or d
    or d
    and h
    and e
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    xor [hl]
    xor l
    and h
    cp l
    ld c, a
    adc a
    add d
    add sp, $51
    add b
    and d
    and d
    and h
    or d
    or d
    and h
    and e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    sub d
    or e
    xor [hl]
    or c
    and b
    and [hl]
    and h
    ld a, a
    sub d
    cp b
    or d
    or e
    and h
    xor h
    add sp, $58
    nop
    add b
    and d
    and d
    and h
    or d
    or d
    and h
    and e
    ld a, a
    xor h
    cp b
    ld a, a
    adc a
    add d
    add sp, $51
    add b
    and d
    and d
    and h
    or d
    or d
    and h
    and e
    ld a, a
    adc b
    or e
    and h
    xor h
    ld c, a
    sub d
    or e
    xor [hl]
    or c
    and b
    and [hl]
    and h
    ld a, a
    sub d
    cp b
    or d
    or e
    and h
    xor h
    add sp, $58
    nop
    ld d, d
    ld a, a
    or e
    or h
    or c
    xor l
    and h
    and e
    ld a, a
    xor [hl]
    xor l
    ld c, a
    or e
    and a
    and h
    ld a, a
    adc a
    add d
    add sp, $58
    nop
    sub [hl]
    and a
    and b
    or e
    ld a, a
    and e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld c, a
    or e
    xor [hl]
    ld a, a
    and e
    xor [hl]
    and $57
    nop
    sub [hl]
    and a
    and b
    or e
    ld a, a
    and e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld c, a
    or e
    xor [hl]
    ld a, a
    and e
    and h
    xor a
    xor [hl]
    or d
    xor b
    or e
    and $57
    nop
    add a
    xor [hl]
    or [hl]
    ld a, a
    xor h
    and b
    xor l
    cp b
    and $57
    ld bc, $cd6d
    nop
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    or d
    or e
    xor [hl]
    or c
    and h
    and e
    ld a, a
    or l
    xor b
    and b
    ld a, a
    adc a
    add d
    add sp, $58
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    xor l
    xor [hl]
    or e
    and a
    xor b
    xor l
    and [hl]
    ld c, a
    or e
    xor [hl]
    ld a, a
    and e
    and h
    xor a
    xor [hl]
    or d
    xor b
    or e
    add sp, $58
    nop
    adc l
    xor [hl]
    ld a, a
    or c
    xor [hl]
    xor [hl]
    xor h
    ld a, a
    xor e
    and h
    and l
    or e
    ld a, a
    or e
    xor [hl]
    ld c, a
    or d
    or e
    xor [hl]
    or c
    and h
    ld a, a
    xor b
    or e
    and h
    xor h
    or d
    add sp, $58
    nop
    sub [hl]
    and a
    and b
    or e
    ld a, a
    and e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld c, a
    or e
    xor [hl]
    ld a, a
    or [hl]
    xor b
    or e
    and a
    and e
    or c
    and b
    or [hl]
    and $57
    nop
    add a
    xor [hl]
    or [hl]
    ld a, a
    xor h
    and b
    xor l
    cp b
    and $57
    nop
    sub [hl]
    xor b
    or e
    and a
    and e
    or c
    and h
    or [hl]
    ld c, a
    ld d, b
    ld bc, $cd6d
    nop
    add sp, $58
    nop
    sub e
    and a
    and h
    or c
    and h
    ld a, a
    xor b
    or d
    ld a, a
    xor l
    xor [hl]
    or e
    and a
    xor b
    xor l
    and [hl]
    ld c, a
    or d
    or e
    xor [hl]
    or c
    and h
    and e
    add sp, $58
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    cp [hl]
    ld a, a
    and d
    and b
    or c
    or c
    cp b
    ld c, a
    and b
    xor l
    cp b
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    xor b
    or e
    and h
    xor h
    or d
    add sp, $58
    nop
    sub [hl]
    and a
    and b
    or e
    ld a, a
    and e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld c, a
    or e
    xor [hl]
    ld a, a
    or e
    xor [hl]
    or d
    or d
    ld a, a
    and b
    or [hl]
    and b
    cp b
    and $57
    nop
    add a
    xor [hl]
    or [hl]
    ld a, a
    xor h
    and b
    xor l
    cp b
    and $57
    nop
    add b
    and d
    and d
    and h
    or d
    or d
    and h
    and e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    adc e
    add h
    add b
    add [hl]
    sub h
    add h
    cp l
    ld a, a
    or d
    xor b
    or e
    and h
    add sp, $51
    add b
    and d
    and d
    and h
    or d
    or d
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld a, a
    add a
    add b
    adc e
    adc e
    ld c, a
    adc [hl]
    add l
    ld a, a
    add l
    add b
    adc h
    add h
    ld a, a
    adc e
    xor b
    or d
    or e
    add sp, $58
    nop
    sub d
    or [hl]
    xor b
    or e
    and d
    and a
    ld a, a
    xor [hl]
    xor l
    rst $20
    ld e, b
    nop
    sub [hl]
    and a
    and b
    or e
    and $57
    nop
    add e
    and h
    xor a
    xor [hl]
    or d
    xor b
    or e
    ld a, a
    or [hl]
    and a
    xor b
    and d
    and a
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    and $57
    ld bc, $cf4b
    nop
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    or d
    or e
    xor [hl]
    or c
    and h
    and e
    ld a, a
    xor b
    xor l
    ld a, a
    add c
    xor [hl]
    or a
    ld a, a
    ld d, b
    ld bc, $cd3d
    nop
    add sp, $58
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    cp [hl]
    ld a, a
    and e
    and h
    xor a
    xor [hl]
    or d
    xor b
    or e
    ld c, a
    or e
    and a
    and h
    ld a, a
    xor e
    and b
    or d
    or e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld e, b
    nop
    adc [hl]
    xor [hl]
    xor a
    or d
    rst $20
    ld a, a
    sub e
    and a
    xor b
    or d
    ld a, a
    add c
    xor [hl]
    or a
    ld a, a
    xor b
    or d
    ld c, a
    and l
    or h
    xor e
    xor e
    ld a, a
    xor [hl]
    and l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $58
    ld bc, $cf4b
    nop
    ld a, a
    xor b
    or d
    ld c, a
    or e
    and b
    xor d
    and h
    xor l
    ld a, a
    xor [hl]
    or h
    or e
    add sp, $55
    add [hl]
    xor [hl]
    or e
    ld a, a
    ld d, b
    ld bc, $cf4b
    nop
    add sp, $58
    nop
    sub [hl]
    and a
    and b
    or e
    and $7f
    sub e
    and a
    and h
    or c
    and h
    ld a, a
    and b
    or c
    and h
    ld c, a
    xor l
    xor [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and a
    and h
    or c
    and h
    rst $20
    ld e, b
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    cp [hl]
    ld a, a
    or e
    and b
    xor d
    and h
    ld c, a
    and b
    xor l
    cp b
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    add e
    and h
    xor a
    xor [hl]
    or d
    xor b
    or e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    and l
    xor b
    or c
    or d
    or e
    add sp, $58
    nop
    sub c
    and h
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    or [hl]
    and a
    xor b
    and d
    and a
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    and $57
    nop
    adc [hl]
    xor l
    and d
    and h
    ld a, a
    or c
    and h
    xor e
    and h
    and b
    or d
    and h
    and e
    db $f4
    ld c, a
    ld d, b
    ld bc, $cf4b
    nop
    ld a, a
    xor b
    or d
    ld d, l
    and [hl]
    xor [hl]
    xor l
    and h
    ld a, a
    and l
    xor [hl]
    or c
    and h
    or l
    and h
    or c
    add sp, $7f
    adc [hl]
    adc d
    and $57
    ld bc, $cf4b
    nop
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    or c
    and h
    xor e
    and h
    and b
    or d
    and h
    and e
    ld a, a
    xor [hl]
    or h
    or e
    or d
    xor b
    and e
    and h
    add sp, $55
    add c
    cp b
    and h
    ld a, a
    ld d, b
    ld bc, $cf4b
    nop
    rst $20
    ld e, b
    nop
    add b
    ld a, a
    add d
    adc [hl]
    adc b
    adc l
    ld a, a
    add d
    add b
    sub d
    add h
    ld a, a
    xor b
    or d
    ld c, a
    or c
    and h
    or b
    or h
    xor b
    or c
    and h
    and e
    rst $20
    ld d, b
    ld d, b
    nop
    sub [hl]
    and h
    ld a, a
    and h
    or a
    and d
    and a
    and b
    xor l
    and [hl]
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld c, a
    and d
    xor [hl]
    xor b
    xor l
    or d
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor a
    or c
    xor b
    cp c
    and h
    or d
    add sp, $58
    nop
    sub [hl]
    and a
    xor b
    and d
    and a
    ld a, a
    xor a
    or c
    xor b
    cp c
    and h
    ld a, a
    and e
    xor [hl]
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and b
    xor l
    or e
    and $57
    nop
    add a
    and h
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and [hl]
    xor [hl]
    rst $20
    ld d, b
    ld d, b
    nop
    sub d
    xor [hl]
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld c, a
    ld d, b
    ld bc, $cd6d
    nop
    and $57
    nop
    sub d
    xor [hl]
    or c
    or c
    cp b
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor l
    and h
    and h
    and e
    ld c, a
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    and d
    xor [hl]
    xor b
    xor l
    or d
    add sp, $50
    ld d, b
    nop
    adc [hl]
    xor [hl]
    xor a
    or d
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    ld a, a
    and e
    xor [hl]
    xor l
    cp [hl]
    ld c, a
    and a
    and b
    or l
    and h
    ld a, a
    and h
    xor l
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    or c
    xor [hl]
    xor [hl]
    xor h
    add sp, $50
    ld d, b
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    and l
    xor b
    xor l
    and h
    ld a, a
    or e
    and a
    and h
    xor l
    add sp, $50
    ld d, b
    nop
    sub [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld c, a
    ld d, h
    add e
    add h
    sub a
    ld a, a
    or c
    and b
    or e
    and h
    and e
    and $57
    nop
    add d
    xor e
    xor [hl]
    or d
    and h
    and e
    ld a, a
    xor e
    xor b
    xor l
    xor d
    ld a, a
    or e
    xor [hl]
    ld c, a
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
    add sp, $50
    ld d, b
    nop
    add b
    and d
    and d
    and h
    or d
    or d
    and h
    and e
    ld a, a
    adc a
    sub c
    adc [hl]
    add l
    add sp, $4f
    adc [hl]
    add b
    adc d
    cp l
    ld a, a
    adc a
    add d
    add sp, $51
    add b
    and d
    and d
    and h
    or d
    or d
    and h
    and e
    ld a, a
    ld d, h
    add e
    add h
    sub a
    ld c, a
    sub c
    and b
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    sub d
    cp b
    or d
    or e
    and h
    xor h
    add sp, $58
    nop
    sub [hl]
    and a
    and h
    or c
    and h
    ld a, a
    or [hl]
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    xor [hl]
    and $57
    nop
    adc [hl]
    adc d
    db $f4
    ld a, a
    xor a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    or [hl]
    and b
    xor b
    or e
    ld c, a
    xor c
    or h
    or d
    or e
    ld a, a
    and b
    ld a, a
    xor h
    xor [hl]
    xor h
    and h
    xor l
    or e
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    xor e
    xor b
    xor l
    xor d
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    and d
    and b
    xor l
    and d
    and h
    xor e
    and h
    and e
    add sp, $57
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    or c
    and h
    rst $20
    ld c, a
    sub [hl]
    and h
    xor e
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld d, l
    or [hl]
    xor [hl]
    or c
    xor e
    and e
    ld a, a
    xor [hl]
    and l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, c
    adc h
    cp b
    ld a, a
    xor l
    and b
    xor h
    and h
    ld a, a
    xor b
    or d
    ld a, a
    adc [hl]
    add b
    adc d
    rst $20
    ld c, a
    adc a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld a, a
    and d
    and b
    xor e
    xor e
    ld a, a
    xor h
    and h
    ld d, l
    or e
    and a
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    adc a
    sub c
    adc [hl]
    add l
    rst $20
    ld e, b
    nop
    sub e
    and a
    xor b
    or d
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor e
    and e
    ld a, a
    xor b
    or d
    ld c, a
    xor b
    xor l
    and a
    and b
    and c
    xor b
    or e
    and h
    and e
    ld a, a
    and c
    cp b
    ld d, l
    and d
    or c
    and h
    and b
    or e
    or h
    or c
    and h
    or d
    ld a, a
    and d
    and b
    xor e
    xor e
    and h
    and e
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, b
    ld d, b
    nop
    ld d, c
    add l
    xor [hl]
    or c
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    db $f4
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    or c
    and h
    ld d, l
    xor a
    and h
    or e
    or d
    add sp, $7f
    adc [hl]
    or e
    and a
    and h
    or c
    or d
    ld a, a
    or h
    or d
    and h
    ld d, l
    or e
    and a
    and h
    xor h
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and l
    xor b
    and [hl]
    and a
    or e
    or d
    add sp, $51
    adc h
    cp b
    or d
    and h
    xor e
    and l
    add sp, -$18
    add sp, $51
    adc b
    ld a, a
    or d
    or e
    or h
    and e
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    and b
    or d
    ld a, a
    and b
    ld a, a
    xor a
    or c
    xor [hl]
    and l
    and h
    or d
    or d
    xor b
    xor [hl]
    xor l
    add sp, $58
    nop
    add l
    xor b
    or c
    or d
    or e
    db $f4
    ld a, a
    or [hl]
    and a
    and b
    or e
    ld a, a
    xor b
    or d
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor l
    and b
    xor h
    and h
    and $58
    nop
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    xor h
    cp b
    ld a, a
    and [hl]
    or c
    and b
    xor l
    and e
    db $e3
    ld c, a
    or d
    xor [hl]
    xor l
    add sp, $7f
    add a
    and h
    cp l
    ld a, a
    and c
    and h
    and h
    xor l
    ld d, l
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    or c
    xor b
    or l
    and b
    xor e
    ld a, a
    or d
    xor b
    xor l
    and d
    and h
    ld d, l
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and h
    or c
    and h
    ld a, a
    and b
    ld a, a
    and c
    and b
    and c
    cp b
    add sp, $51
    add sp, -$18
    add sp, -$7c
    or c
    xor h
    db $f4
    ld a, a
    or [hl]
    and a
    and b
    or e
    ld a, a
    xor b
    or d
    ld c, a
    and a
    xor b
    or d
    ld a, a
    xor l
    and b
    xor h
    and h
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    and $58
    nop
    ld d, d
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    or l
    and h
    or c
    cp b
    ld a, a
    xor [hl]
    or [hl]
    xor l
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor e
    and h
    and [hl]
    and h
    xor l
    and e
    ld a, a
    xor b
    or d
    ld d, l
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or h
    xor l
    and l
    xor [hl]
    xor e
    and e
    rst $20
    ld d, c
    add b
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor e
    and e
    ld a, a
    xor [hl]
    and l
    ld a, a
    and e
    or c
    and h
    and b
    xor h
    or d
    ld c, a
    and b
    xor l
    and e
    ld a, a
    and b
    and e
    or l
    and h
    xor l
    or e
    or h
    or c
    and h
    or d
    ld d, l
    or [hl]
    xor b
    or e
    and a
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    and b
    or [hl]
    and b
    xor b
    or e
    or d
    rst $20
    ld a, a
    adc e
    and h
    or e
    cp l
    ld a, a
    and [hl]
    xor [hl]
    rst $20
    ld d, a
    nop
    add e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld c, a
    and [hl]
    xor b
    or l
    and h
    ld a, a
    and b
    ld a, a
    xor l
    xor b
    and d
    xor d
    xor l
    and b
    xor h
    and h
    ld d, l
    or e
    xor [hl]
    ld a, a
    ld d, b
    ld bc, $cd6d
    nop
    and $57
    nop
    sub c
    xor b
    and [hl]
    and a
    or e
    rst $20
    ld a, a
    sub d
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld c, a
    xor l
    and b
    xor h
    and h
    ld a, a
    xor b
    or d
    ld a, a
    ld d, d
    rst $20
    ld e, b
    nop
    sub e
    and a
    and b
    or e
    cp l
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    rst $20
    ld a, a
    adc b
    ld c, a
    or c
    and h
    xor h
    and h
    xor h
    and c
    and h
    or c
    ld a, a
    xor l
    xor [hl]
    or [hl]
    rst $20
    ld a, a
    add a
    xor b
    or d
    ld d, l
    xor l
    and b
    xor h
    and h
    ld a, a
    xor b
    or d
    ld a, a
    ld d, e
    rst $20
    ld e, b
    ld bc, $cd3f
    nop
    ld a, a
    and b
    xor l
    and e
    ld c, a
    ld d, b
    ld bc, $cd6d
    nop
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld d, l
    and c
    and h
    ld a, a
    or e
    or c
    and b
    and e
    and h
    and e
    add sp, $57
    add hl, bc
    adc h
    rst $38
    ld [de], a
    nop
    ld a, a
    add h
    sub c
    sub c
    adc [hl]
    sub c
    add sp, $57
    nop
    ld c, e
    ld d, b
    ld d, b
    nop
    adc b
    ld a, a
    or [hl]
    and h
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    sub c
    adc [hl]
    add d
    adc d
    ld c, a
    sub e
    sub h
    adc l
    adc l
    add h
    adc e
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    xor b
    or e
    cp l
    ld d, l
    and e
    and b
    or c
    xor d
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or d
    and d
    and b
    or c
    cp b
    add sp, $51
    adc b
    and l
    ld a, a
    and b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    cp l
    ld c, a
    add l
    adc e
    add b
    sub d
    add a
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    xor e
    xor b
    and [hl]
    and a
    or e
    ld d, l
    xor b
    or e
    ld a, a
    or h
    xor a
    add sp, -$18
    add sp, $57
    nop
    adc h
    and b
    xor l
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor e
    xor b
    or l
    and h
    ld c, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    xor b
    xor l
    ld a, a
    and l
    xor [hl]
    or c
    and h
    or d
    or e
    or d
    ld a, a
    ld d, l
    and b
    xor l
    and e
    ld a, a
    and d
    and b
    or l
    and h
    or d
    add sp, $51
    sbc b
    xor [hl]
    or h
    ld a, a
    xor l
    and h
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld c, a
    and h
    or l
    and h
    or c
    cp b
    or [hl]
    and a
    and h
    or c
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    and h
    or e
    ld d, l
    and e
    xor b
    and l
    and l
    and h
    or c
    and h
    xor l
    or e
    ld a, a
    xor d
    xor b
    xor l
    and e
    or d
    rst $20
    ld d, a
    nop
    add a
    and b
    or l
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor l
    xor [hl]
    or e
    xor b
    and d
    and h
    and e
    ld c, a
    or e
    and a
    and h
    ld a, a
    and c
    or h
    or d
    and a
    and h
    or d
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld d, l
    or c
    xor [hl]
    and b
    and e
    or d
    xor b
    and e
    and h
    and $51
    sub e
    and a
    and h
    cp b
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and c
    and h
    ld a, a
    and d
    or h
    or e
    ld c, a
    and e
    xor [hl]
    or [hl]
    xor l
    ld a, a
    and c
    cp b
    ld a, a
    and b
    ld a, a
    or d
    xor a
    and h
    and d
    xor b
    and b
    xor e
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    add sp, $57
    nop
    add b
    ld a, a
    and l
    and b
    xor b
    xor l
    or e
    and h
    and e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    and d
    and b
    xor l
    cp [hl]
    ld a, a
    and l
    xor b
    and [hl]
    and a
    or e
    add sp, $7f
    add c
    or h
    or e
    db $f4
    ld a, a
    ld d, l
    xor b
    or e
    ld a, a
    and d
    and b
    xor l
    ld a, a
    or d
    or e
    xor b
    xor e
    xor e
    ld a, a
    or h
    or d
    and h
    ld a, a
    ld d, l
    xor h
    xor [hl]
    or l
    and h
    or d
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    add d
    sub h
    sub e
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    add a
    adc h
    ld a, a
    add l
    adc e
    add b
    sub d
    add a
    ld c, a
    xor e
    xor b
    and [hl]
    and a
    or e
    or d
    ld a, a
    and h
    or l
    and h
    xor l
    ld a, a
    or e
    and a
    and h
    ld d, l
    and e
    and b
    or c
    xor d
    and h
    or d
    or e
    ld a, a
    and e
    or h
    xor l
    and [hl]
    and h
    xor [hl]
    xor l
    or d
    add sp, $57
    nop
    adc [hl]
    xor l
    and d
    and h
    ld a, a
    and b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    xor e
    and h
    and b
    or c
    xor l
    or d
    ld a, a
    add l
    adc e
    add b
    sub d
    add a
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, l
    and d
    and b
    xor l
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    or e
    and a
    or c
    xor [hl]
    or h
    and [hl]
    and a
    ld d, l
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
    add sp, $57
    nop
    add b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld c, a
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
    and $55
    add c
    and h
    ld a, a
    and d
    and b
    or c
    and h
    and l
    or h
    xor e
    db $f4
    ld a, a
    xor b
    or e
    cp l
    ld d, l
    and b
    ld a, a
    xor l
    and b
    or e
    or h
    or c
    and b
    xor e
    ld a, a
    xor h
    and b
    cp c
    and h
    rst $20
    ld d, a
    nop
    sub c
    add b
    sub e
    sub e
    add b
    sub e
    add b
    ld a, a
    xor h
    and b
    cp b
    ld a, a
    and c
    and h
    ld c, a
    or d
    xor h
    and b
    xor e
    xor e
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    xor b
    or e
    or d
    ld d, l
    and c
    xor b
    or e
    and h
    ld a, a
    xor b
    or d
    ld a, a
    or [hl]
    xor b
    and d
    xor d
    and h
    and e
    rst $20
    ld d, l
    add e
    xor b
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    xor [hl]
    xor l
    and h
    and $57
    nop
    adc b
    cp a
    and h
    ld a, a
    db $fc
    ld a, a
    ld d, h
    ld a, a
    add c
    add b
    adc e
    adc e
    or d
    ld c, a
    or d
    and h
    or e
    ld a, a
    xor b
    xor l
    ld a, a
    xor h
    cp b
    ld a, a
    and c
    and h
    xor e
    or e
    add sp, $51
    add b
    or e
    ld a, a
    xor h
    xor [hl]
    or d
    or e
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld c, a
    and d
    and b
    or c
    or c
    cp b
    ld a, a
    db $fc
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    sub e
    add h
    add b
    adc h
    ld a, a
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub e
    ld c, a
    and b
    or e
    or e
    and b
    and d
    xor d
    or d
    ld a, a
    add d
    add h
    sub c
    sub h
    adc e
    add h
    add b
    adc l
    ld d, l
    and d
    xor b
    or e
    xor b
    cp c
    and h
    xor l
    or d
    add sp, -$18
    add sp, $51
    sub e
    add h
    add b
    adc h
    ld a, a
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub e
    ld a, a
    xor b
    or d
    ld c, a
    and b
    xor e
    or [hl]
    and b
    cp b
    or d
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld d, l
    xor l
    and h
    or [hl]
    or d
    rst $20
    ld d, a
    nop
    adc h
    add b
    adc l
    sbc h
    ld a, a
    add a
    and h
    xor e
    xor e
    xor [hl]
    db $f4
    ld a, a
    or e
    and a
    and h
    or c
    and h
    rst $20
    ld c, a
    add a
    and b
    or l
    and h
    ld a, a
    adc b
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    and b
    ld a, a
    and e
    and h
    and b
    xor e
    ld d, l
    xor c
    or h
    or d
    or e
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, c
    adc b
    cp h
    xor e
    ld a, a
    xor e
    and h
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and a
    and b
    or l
    and h
    ld c, a
    and b
    ld a, a
    or d
    or [hl]
    and h
    xor e
    xor e
    ld a, a
    adc h
    add b
    add [hl]
    adc b
    adc d
    add b
    sub c
    adc a
    ld d, l
    and l
    xor [hl]
    or c
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    ldh a, [$fb]
    or $f6
    rst $20
    ld d, l
    sub [hl]
    and a
    and b
    or e
    ld a, a
    and e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or d
    and b
    cp b
    and $57
    nop
    adc l
    xor [hl]
    and $7f
    adc b
    push hl
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld c, a
    and e
    xor [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    and b
    or d
    ld a, a
    and b
    ld d, l
    and l
    and b
    or l
    xor [hl]
    or c
    ld a, a
    or e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    cp h
    xor e
    ld a, a
    xor l
    and h
    and h
    and e
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld c, a
    xor h
    xor [hl]
    xor l
    and h
    cp b
    ld a, a
    or e
    and a
    and b
    xor l
    ld a, a
    or e
    and a
    and b
    or e
    rst $20
    ld d, a
    nop
    adc h
    add b
    adc l
    sbc h
    ld a, a
    sub [hl]
    and h
    xor e
    xor e
    db $f4
    ld a, a
    adc b
    ld a, a
    and e
    xor [hl]
    xor l
    cp [hl]
    ld c, a
    and [hl]
    xor b
    or l
    and h
    ld a, a
    or c
    and h
    and l
    or h
    xor l
    and e
    or d
    rst $20
    ld d, a
    nop
    ld d, a
    nop
    adc b
    push hl
    ld a, a
    xor [hl]
    xor l
    ld a, a
    and [hl]
    or h
    and b
    or c
    and e
    ld a, a
    and e
    or h
    or e
    cp b
    add sp, $4f
    add [hl]
    and h
    and h
    db $f4
    ld a, a
    adc b
    push hl
    ld a, a
    or e
    and a
    xor b
    or c
    or d
    or e
    cp b
    db $f4
    ld d, l
    or e
    and a
    xor [hl]
    or h
    and [hl]
    and a
    rst $20
    ld d, c
    adc [hl]
    and a
    ld a, a
    or [hl]
    and b
    xor b
    or e
    ld a, a
    or e
    and a
    and h
    or c
    and h
    db $f4
    ld c, a
    or e
    and a
    and h
    ld a, a
    or c
    xor [hl]
    and b
    and e
    cp l
    ld a, a
    and d
    xor e
    xor [hl]
    or d
    and h
    and e
    add sp, $57
    nop
    sub [hl]
    and a
    xor [hl]
    and b
    db $f4
    ld a, a
    and c
    xor [hl]
    cp b
    rst $20
    ld c, a
    adc b
    push hl
    ld a, a
    xor a
    and b
    or c
    and d
    and a
    and h
    and e
    rst $20
    ld d, l
    add sp, -$18
    add sp, $55
    add a
    or h
    and a
    and $7f
    adc b
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and a
    and b
    or l
    and h
    ld d, l
    or e
    and a
    xor b
    or d
    ld a, a
    and e
    or c
    xor b
    xor l
    xor d
    and $55
    add [hl]
    and h
    and h
    db $f4
    ld a, a
    or e
    and a
    and b
    xor l
    xor d
    or d
    rst $20
    ld d, b
    ld d, b
    nop
    ld d, c
    add sp, -$18
    add sp, $4f
    add [hl]
    xor e
    or h
    and [hl]
    ld a, a
    and [hl]
    xor e
    or h
    and [hl]
    add sp, -$18
    add sp, $55
    add sp, -$18
    add sp, $55
    add [hl]
    or h
    xor e
    xor a
    add sp, -$18
    add sp, $55
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    xor [hl]
    ld d, l
    or e
    xor [hl]
    ld a, a
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
    add sp, -$18
    add sp, $55
    add sp, -$18
    add sp, $55
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    xor [hl]
    xor l
    ld d, l
    or e
    and a
    or c
    xor [hl]
    or h
    and [hl]
    and a
    add sp, $7f
    adc b
    cp h
    xor e
    ld d, l
    or d
    and a
    and b
    or c
    and h
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld d, l
    or e
    and a
    and h
    ld a, a
    xor [hl]
    or e
    and a
    and h
    or c
    ld a, a
    and [hl]
    or h
    and b
    or c
    and e
    or d
    rst $20
    ld d, a
    nop
    add a
    xor b
    db $f4
    ld a, a
    or e
    and a
    and b
    xor l
    xor d
    or d
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    or e
    and a
    and h
    ld a, a
    and d
    xor [hl]
    xor [hl]
    xor e
    ld a, a
    and e
    or c
    xor b
    xor l
    xor d
    or d
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    or c
    or h
    xor l
    ld a, a
    and b
    ld a, a
    add e
    add b
    sbc b
    add d
    add b
    sub c
    add h
    add sp, $4f
    sub [hl]
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    xor h
    and h
    ld d, l
    or e
    xor [hl]
    ld a, a
    or c
    and b
    xor b
    or d
    and h
    ld a, a
    xor [hl]
    xor l
    and h
    ld a, a
    xor [hl]
    and l
    ld d, l
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    and $57
    nop
    sub [hl]
    and a
    xor b
    and d
    and a
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    adc b
    ld a, a
    or c
    and b
    xor b
    or d
    and h
    and $58
    nop
    add l
    xor b
    xor l
    and h
    db $f4
    ld a, a
    adc b
    cp h
    xor e
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld c, a
    and b
    and l
    or e
    and h
    or c
    ld a, a
    ld d, b
    ld bc, $cd6d
    nop
    ld d, l
    and l
    xor [hl]
    or c
    ld a, a
    and b
    ld a, a
    or [hl]
    and a
    xor b
    xor e
    and h
    add sp, $58
    nop
    add d
    xor [hl]
    xor h
    and h
    ld a, a
    or d
    and h
    and h
    ld a, a
    xor h
    and h
    ld a, a
    xor b
    xor l
    ld c, a
    and b
    ld a, a
    or [hl]
    and a
    xor b
    xor e
    and h
    add sp, $57
    nop
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    ld d, b
    ld bc, $cd6d
    nop
    ld c, a
    and a
    and b
    or d
    ld a, a
    and [hl]
    or c
    xor [hl]
    or [hl]
    xor l
    ld a, a
    and b
    ld a, a
    xor e
    xor [hl]
    or e
    rst $20
    ld d, c
    add c
    cp b
    ld a, a
    xor e
    and h
    or l
    and h
    xor e
    db $f4
    ld a, a
    xor b
    or e
    cp l
    ld c, a
    and [hl]
    or c
    xor [hl]
    or [hl]
    xor l
    ld a, a
    and c
    cp b
    ld a, a
    ld d, b
    add hl, bc
    ld a, $cd
    inc de
    nop
    rst $20
    ld d, c
    add b
    or c
    and h
    xor l
    cp [hl]
    ld a, a
    adc b
    ld a, a
    and [hl]
    or c
    and h
    and b
    or e
    and $58
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    xor [hl]
    or [hl]
    and h
    ld a, a
    xor h
    and h
    ld a, a
    ldh a, [$50]
    ld [bc], a
    ccf
    call Call_000_00c2
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    or e
    and a
    and h
    ld a, a
    or c
    and h
    or e
    or h
    or c
    xor l
    ld d, l
    xor [hl]
    and l
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    ld d, d
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld c, a
    ld d, b
    ld bc, $da49
    nop
    ld a, a
    and c
    and b
    and d
    xor d
    rst $20
    ld d, a
    nop
    add c
    and b
    and d
    xor d
    ld a, a
    and b
    xor e
    or c
    and h
    and b
    and e
    cp b
    and $4f
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    ld d, b
    ld bc, $cd6d
    nop
    ld d, l
    xor l
    and h
    and h
    and e
    or d
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld d, l
    or e
    xor b
    xor h
    and h
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor h
    and h
    add sp, $58
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_022_7f00:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
