; Disassembly of "Pokemon Red (UE) [S][!].gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $027", ROMX[$4000], BANK[$27]

    nop
    add b
    ld a, a
    xor e
    xor b
    or e
    or e
    xor e
    and h
    ld a, a
    or [hl]
    xor [hl]
    or c
    and e
    ld a, a
    xor [hl]
    and l
    ld c, a
    and b
    and e
    or l
    xor b
    and d
    and h
    db $f4
    ld a, a
    xor d
    xor b
    and e
    rst $20
    ld d, c
    add h
    xor e
    and h
    and d
    or e
    or c
    xor b
    and d
    xor b
    or e
    cp b
    ld a, a
    xor b
    or d
    ld c, a
    or d
    or h
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
    rst $20
    ld d, c
    add c
    or h
    or e
    db $f4
    ld a, a
    xor b
    or e
    cp l
    ld a, a
    or h
    or d
    and h
    xor e
    and h
    or d
    or d
    ld c, a
    and b
    and [hl]
    and b
    xor b
    xor l
    or d
    or e
    ld a, a
    and [hl]
    or c
    xor [hl]
    or h
    xor l
    and e
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
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
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
    ld c, a
    and d
    or c
    and b
    xor l
    xor d
    or d
    ld a, a
    or h
    xor a
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
    cp l
    ld a, a
    sub d
    adc a
    add h
    add h
    add e
    rst $20
    ld d, c
    adc b
    or e
    ld a, a
    and b
    xor e
    or d
    xor [hl]
    ld a, a
    xor e
    and h
    or e
    or d
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add l
    adc e
    sbc b
    ld a, a
    and b
    xor l
    cp b
    ld d, l
    or e
    xor b
    xor h
    and h
    db $f4
    ld a, a
    xor d
    xor b
    and e
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    db $e4
    and h
    ld a, a
    or d
    xor a
    and h
    and d
    xor b
    and b
    xor e
    db $f4
    ld c, a
    xor d
    xor b
    and e
    rst $20
    ld a, a
    sub e
    and b
    xor d
    and h
    ld a, a
    or e
    and a
    xor b
    or d
    rst $20
    ld d, a
    nop
    ld d, d
    ld a, a
    or c
    and h
    and d
    and h
    xor b
    or l
    and h
    and e
    ld a, a
    ld c, a
    ld d, b
    ld bc, $cf4b
    nop
    rst $20
    ld d, b
    ld d, b
    nop
    ld d, c
    sub e
    adc h
    ld hl, sp-$06
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
    add a
    sub h
    adc l
    add e
    add h
    sub c
    add c
    adc [hl]
    adc e
    sub e
    rst $20
    ld d, c
    sub e
    and h
    and b
    and d
    and a
    ld a, a
    xor b
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and b
    xor l
    ld c, a
    and h
    xor e
    and h
    and d
    or e
    or c
    xor b
    and d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    ld a, a
    xor d
    xor b
    and e
    db $f4
    ld a, a
    xor h
    and b
    xor d
    and h
    ld a, a
    or c
    xor [hl]
    xor [hl]
    xor h
    ld c, a
    xor b
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor a
    and b
    and d
    xor d
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    xor [hl]
    and b
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    db $e4
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    or c
    and h
    and b
    xor e
    ld c, a
    and e
    and h
    and b
    xor e
    db $f4
    ld a, a
    xor d
    xor b
    and e
    rst $20
    ld d, c
    add l
    xor b
    xor l
    and h
    ld a, a
    or e
    and a
    and h
    xor l
    db $f4
    ld a, a
    or e
    and b
    xor d
    and h
    ld c, a
    or e
    and a
    and h
    ld a, a
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
    rst $20
    ld e, b
    nop
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, a
    add b
    or c
    xor h
    cp b
    db $f4
    ld a, a
    adc e
    sub e
    add sp, -$6e
    sub h
    sub c
    add [hl]
    add h
    ld d, l
    or [hl]
    and b
    or d
    ld a, a
    xor h
    cp b
    ld a, a
    or d
    or e
    or c
    xor b
    and d
    or e
    ld a, a
    add d
    adc [hl]
    rst $20
    ld d, a
    nop
    sub d
    or e
    xor [hl]
    xor a
    rst $20
    ld c, a
    sbc b
    xor [hl]
    or h
    db $e4
    and h
    ld a, a
    or l
    and h
    or c
    cp b
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    rst $20
    ld e, b
    nop
    sub e
    and a
    and h
    ld a, a
    and e
    xor [hl]
    xor [hl]
    or c
    ld a, a
    or [hl]
    xor [hl]
    xor l
    cp [hl]
    ld c, a
    xor [hl]
    xor a
    and h
    xor l
    and $51
    adc e
    sub e
    add sp, -$6e
    sub h
    sub c
    add [hl]
    add h
    ld a, a
    and b
    xor e
    or [hl]
    and b
    cp b
    or d
    ld c, a
    or [hl]
    and b
    or d
    ld a, a
    and d
    and b
    or h
    or e
    xor b
    xor [hl]
    or h
    or d
    rst $20
    ld d, a
    nop
    adc b
    push hl
    ld a, a
    and b
    ld a, a
    xor e
    xor b
    and [hl]
    and a
    or e
    or [hl]
    and h
    xor b
    and [hl]
    and a
    or e
    db $f4
    ld c, a
    and c
    or h
    or e
    ld a, a
    adc b
    push hl
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld d, l
    and h
    xor e
    and h
    and d
    or e
    or c
    xor b
    and d
    xor b
    or e
    cp b
    rst $20
    ld d, a
    nop
    add l
    or c
    xor b
    and h
    and e
    rst $20
    ld e, b
    nop
    adc [hl]
    adc d
    db $f4
    ld a, a
    adc b
    cp h
    xor e
    ld a, a
    or e
    and b
    xor e
    xor d
    rst $20
    ld d, c
    adc e
    sub e
    add sp, -$6e
    sub h
    sub c
    add [hl]
    add h
    ld a, a
    or d
    and b
    xor b
    and e
    ld a, a
    and a
    and h
    ld c, a
    and a
    xor b
    and e
    ld a, a
    and e
    xor [hl]
    xor [hl]
    or c
    ld a, a
    or d
    or [hl]
    xor b
    or e
    and d
    and a
    and h
    or d
    ld d, l
    xor b
    xor l
    or d
    xor b
    and e
    and h
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    or e
    and a
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    xor l
    xor [hl]
    ld a, a
    xor a
    xor e
    and b
    and d
    and h
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    xor d
    xor b
    and e
    or d
    rst $20
    ld d, a
    nop
    sub [hl]
    xor [hl]
    or [hl]
    rst $20
    ld c, a
    sub d
    or h
    or c
    xor a
    or c
    xor b
    or d
    and h
    and e
    ld a, a
    xor h
    and h
    rst $20
    ld e, b
    nop
    adc e
    sub e
    add sp, -$6e
    sub h
    sub c
    add [hl]
    add h
    ld a, a
    or d
    and h
    or e
    ld a, a
    or h
    xor a
    ld c, a
    and e
    xor [hl]
    or h
    and c
    xor e
    and h
    ld a, a
    xor e
    xor [hl]
    and d
    xor d
    or d
    rst $20
    ld d, l
    add a
    and h
    or c
    and h
    cp l
    ld a, a
    and b
    ld a, a
    and a
    xor b
    xor l
    or e
    rst $20
    ld d, c
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor [hl]
    xor a
    and h
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, a
    rst $30
    or d
    or e
    ld a, a
    xor e
    xor [hl]
    and d
    xor d
    db $f4
    ld a, a
    or e
    and a
    and h
    ld a, a
    ld hl, sp-$53
    and e
    ld d, l
    xor e
    xor [hl]
    and d
    xor d
    ld a, a
    xor b
    or d
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    ld d, l
    xor l
    and h
    or a
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor b
    or e
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    rst $20
    ld a, a
    add d
    and a
    and b
    xor h
    xor a
    ld a, a
    xor b
    xor l
    ld c, a
    xor h
    and b
    xor d
    xor b
    xor l
    and [hl]
    rst $20
    ld d, c
    adc e
    sub e
    add sp, -$6e
    sub h
    sub c
    add [hl]
    add h
    ld a, a
    and a
    and b
    or d
    ld a, a
    and b
    ld c, a
    xor l
    xor b
    and d
    xor d
    xor l
    and b
    xor h
    and h
    add sp, $7f
    adc a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld d, l
    or c
    and h
    and l
    and h
    or c
    ld a, a
    or e
    xor [hl]
    ld a, a
    and a
    xor b
    xor h
    ld a, a
    and b
    or d
    ld d, l
    or e
    and a
    and h
    ld a, a
    adc e
    xor b
    and [hl]
    and a
    or e
    xor l
    xor b
    xor l
    and [hl]
    ld d, l
    add b
    xor h
    and h
    or c
    xor b
    and d
    and b
    xor l
    rst $20
    ld d, c
    add a
    and h
    cp l
    ld a, a
    and b
    xor l
    ld a, a
    and h
    or a
    xor a
    and h
    or c
    or e
    ld a, a
    xor [hl]
    xor l
    ld c, a
    and h
    xor e
    and h
    and d
    or e
    or c
    xor b
    and d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, c
    add c
    xor b
    or c
    and e
    or d
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    or c
    and h
    ld a, a
    and b
    or e
    ld d, l
    or c
    xor b
    or d
    xor d
    rst $20
    ld a, a
    add c
    and h
    or [hl]
    and b
    or c
    and h
    ld a, a
    xor [hl]
    and l
    ld d, l
    xor a
    and b
    or c
    and b
    xor e
    cp b
    or d
    xor b
    or d
    ld a, a
    or e
    xor [hl]
    xor [hl]
    rst $20
    ld d, c
    adc e
    sub e
    add sp, -$6e
    sub h
    sub c
    add [hl]
    add h
    ld a, a
    xor b
    or d
    ld a, a
    or l
    and h
    or c
    cp b
    ld c, a
    and d
    and b
    or h
    or e
    xor b
    xor [hl]
    or h
    or d
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    cp h
    xor e
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    or e
    xor [hl]
    ld c, a
    and c
    or c
    and h
    and b
    xor d
    ld a, a
    and b
    ld a, a
    and d
    xor [hl]
    and e
    and h
    ld a, a
    or e
    xor [hl]
    ld d, l
    and [hl]
    and h
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and a
    xor b
    xor h
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    and h
    or [hl]
    rst $20
    ld a, a
    sub e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    or e
    and d
    and a
    ld c, a
    or [hl]
    and b
    or d
    ld a, a
    and h
    xor e
    and h
    and d
    or e
    or c
    xor b
    and d
    rst $20
    ld d, a
    nop
    adc b
    push hl
    ld a, a
    and [hl]
    and h
    or e
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    xor h
    cp b
    ld c, a
    adc a
    adc b
    add e
    add [hl]
    add h
    sbc b
    ld a, a
    or e
    xor [hl]
    ld a, a
    and l
    xor e
    cp b
    ld a, a
    and b
    ld d, l
    xor e
    and h
    or e
    or e
    and h
    or c
    ld a, a
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
    ld d, l
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor l
    xor [hl]
    or c
    or e
    and a
    rst $20
    ld d, a
    nop
    adc a
    adc b
    add e
    add [hl]
    add h
    sbc b
    sbc h
    ld a, a
    adc d
    or h
    or c
    or h
    xor d
    xor d
    xor [hl]
    xor [hl]
    rst $20
    ld d, b
    ld d, b
    nop
    add e
    and h
    and b
    or c
    ld a, a
    adc a
    adc b
    adc a
    adc a
    adc b
    db $f4
    ld a, a
    adc b
    ld a, a
    and a
    xor [hl]
    xor a
    and h
    ld c, a
    or e
    xor [hl]
    ld a, a
    or d
    and h
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or d
    xor [hl]
    xor [hl]
    xor l
    add sp, $51
    adc b
    ld a, a
    and a
    and h
    and b
    or c
    and e
    ld a, a
    sub d
    add b
    add l
    add l
    sub c
    adc [hl]
    adc l
    ld c, a
    and a
    and b
    or d
    ld a, a
    xor a
    or c
    xor [hl]
    and c
    xor e
    and h
    xor h
    or d
    ld a, a
    or [hl]
    xor b
    or e
    and a
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
    add sp, $51
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
    and b
    xor a
    xor a
    and h
    and b
    or c
    or d
    ld c, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld a, a
    or d
    and b
    and l
    and h
    add sp, $57
    nop
    ld d, a
    nop
    adc b
    push hl
    ld a, a
    or e
    and a
    and h
    ld a, a
    add l
    adc b
    sub d
    add a
    adc b
    adc l
    add [hl]
    ld c, a
    add [hl]
    sub h
    sub c
    sub h
    rst $20
    ld d, c
    adc b
    ld a, a
    or d
    xor b
    xor h
    xor a
    xor e
    cp b
    ld a, a
    adc e
    xor [hl]
    xor [hl]
    xor [hl]
    or l
    and h
    ld c, a
    and l
    xor b
    or d
    and a
    xor b
    xor l
    and [hl]
    rst $20
    ld d, c
    add e
    xor [hl]
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
    or e
    xor [hl]
    ld c, a
    and l
    xor b
    or d
    and a
    and $57
    nop
    add [hl]
    or c
    and b
    xor l
    and e
    rst $20
    ld a, a
    adc b
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    or d
    or e
    cp b
    xor e
    and h
    rst $20
    ld d, c
    sub e
    and b
    xor d
    and h
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    and b
    xor l
    and e
    ld c, a
    and l
    xor b
    or d
    and a
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    xor l
    and [hl]
    ld a, a
    xor [hl]
    xor l
    and h
    rst $20
    ld d, c
    ld d, d
    ld a, a
    or c
    and h
    and d
    and h
    xor b
    or l
    and h
    and e
    ld c, a
    and b
    xor l
    ld a, a
    ld d, b
    ld bc, $cf4b
    nop
    rst $20
    ld d, b
    ld d, b
    nop
    ld d, c
    add l
    xor b
    or d
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    or d
    ld a, a
    and b
    ld a, a
    or [hl]
    and b
    cp b
    ld c, a
    xor [hl]
    and l
    ld a, a
    xor e
    xor b
    and l
    and h
    rst $20
    ld d, c
    add l
    or c
    xor [hl]
    xor h
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    and h
    and b
    or d
    ld a, a
    or e
    xor [hl]
    ld c, a
    or c
    xor b
    or l
    and h
    or c
    or d
    db $f4
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    xor [hl]
    or h
    or e
    ld d, l
    and b
    xor l
    and e
    ld a, a
    xor e
    and b
    xor l
    and e
    ld a, a
    or e
    and a
    and h
    ld a, a
    and c
    xor b
    and [hl]
    ld d, l
    xor [hl]
    xor l
    and h
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    xor l
    and [hl]
    ld a, a
    xor [hl]
    xor l
    and h
    rst $20
    ld d, a
    nop
    adc [hl]
    and a
    add sp, -$18
    add sp, $7f
    sub e
    and a
    and b
    or e
    cp l
    ld a, a
    or d
    xor [hl]
    ld c, a
    and e
    xor b
    or d
    and b
    xor a
    xor a
    xor [hl]
    xor b
    xor l
    or e
    xor b
    xor l
    and [hl]
    add sp, -$18
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
    db $f4
    ld c, a
    ld d, d
    rst $20
    ld d, c
    add a
    xor [hl]
    or [hl]
    ld a, a
    and b
    or c
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    xor b
    or d
    and a
    ld c, a
    and c
    xor b
    or e
    xor b
    xor l
    and [hl]
    and $57
    nop
    adc [hl]
    and a
    ld a, a
    xor l
    xor [hl]
    rst $20
    ld d, c
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
    ld a, a
    or c
    xor [hl]
    xor [hl]
    xor h
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    xor h
    cp b
    ld a, a
    and [hl]
    xor b
    and l
    or e
    rst $20
    ld d, a
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
    rst $20
    ld a, a
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
    ld c, a
    add d
    add h
    adc e
    add b
    add e
    adc [hl]
    adc l
    ld a, a
    add e
    add h
    adc a
    sub e
    add sp, $55
    sub d
    sub e
    adc [hl]
    sub c
    add h
    add sp, $51
    sub e
    and a
    and h
    ld a, a
    and c
    xor [hl]
    and b
    or c
    and e
    ld a, a
    xor [hl]
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
    and e
    and h
    or d
    and d
    or c
    xor b
    and c
    and h
    or d
    ld d, l
    or e
    and a
    and h
    ld a, a
    or d
    or e
    xor [hl]
    or c
    and h
    ld a, a
    xor e
    and b
    cp b
    xor [hl]
    or h
    or e
    add sp, $57
    nop
    rst $30
    add l
    sbc h
    ld a, a
    sub d
    add h
    sub c
    sub l
    adc b
    add d
    add h
    ld c, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    add d
    adc [hl]
    sub h
    adc l
    sub e
    add h
    sub c
    ld d, c
    ld hl, sp-$7b
    sbc h
    ld a, a
    sub e
    sub c
    add b
    adc b
    adc l
    add h
    sub c
    ldh [$92], a
    ld c, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    adc h
    add b
    sub c
    adc d
    add h
    sub e
    ld d, c
    ld sp, hl
    add l
    sbc h
    ld a, a
    sub e
    sub l
    ld a, a
    add [hl]
    add b
    adc h
    add h
    ld a, a
    sub d
    add a
    adc [hl]
    adc a
    ld d, c
    ld a, [$9c85]
    ld a, a
    sub [hl]
    adc b
    sub d
    add h
    adc h
    add b
    adc l
    ld a, a
    add [hl]
    adc b
    add l
    sub e
    sub d
    ld d, c
    ei
    add l
    sbc h
    ld a, a
    add e
    sub c
    sub h
    add [hl]
    ld a, a
    sub d
    sub e
    adc [hl]
    sub c
    add h
    ld d, c
    sub c
    adc [hl]
    adc [hl]
    add l
    sub e
    adc [hl]
    adc a
    ld a, a
    sub d
    sub b
    sub h
    add b
    sub c
    add h
    sbc h
    ld c, a
    sub l
    add h
    adc l
    add e
    adc b
    adc l
    add [hl]
    ld a, a
    adc h
    add b
    add d
    add a
    adc b
    adc l
    add h
    sub d
    ld d, a
    nop
    rst $30
    add l
    sbc h
    ld a, a
    sub d
    add h
    sub c
    sub l
    adc b
    add d
    add h
    ld c, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    add d
    adc [hl]
    sub h
    adc l
    sub e
    add h
    sub c
    ld d, a
    nop
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
    ld a, a
    xor d
    and h
    and h
    xor a
    or d
    ld c, a
    or [hl]
    and h
    and b
    xor d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    or e
    ld d, l
    and c
    and b
    cp b
    add sp, -$18
    add sp, $51
    add a
    xor h
    xor h
    db $f4
    ld a, a
    xor b
    or e
    cp l
    ld a, a
    and b
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld c, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    and l
    or h
    xor e
    ld a, a
    sub c
    add h
    adc a
    add h
    adc e
    rst $20
    ld d, a
    nop
    add l
    xor [hl]
    or c
    ld a, a
    xor e
    xor [hl]
    xor l
    and [hl]
    ld a, a
    xor [hl]
    or h
    or e
    xor b
    xor l
    and [hl]
    or d
    db $f4
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and c
    or h
    cp b
    ld d, l
    sub c
    add h
    sub l
    adc b
    sub l
    add h
    add sp, $57
    nop
    sub e
    xor [hl]
    xor a
    ld a, a
    add [hl]
    or c
    and b
    and e
    and h
    ld a, a
    adc b
    or e
    and h
    xor h
    or d
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    sub e
    or c
    and b
    xor b
    xor l
    and h
    or c
    or d
    rst $20
    ld d, c
    ld hl, sp-$7b
    sbc h
    ld a, a
    sub e
    sub c
    add b
    adc b
    adc l
    add h
    sub c
    ldh [$92], a
    ld c, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    adc h
    add b
    sub c
    adc d
    add h
    sub e
    ld d, a
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    and a
    xor b
    rst $20
    ld a, a
    adc b
    ld a, a
    and l
    xor b
    xor l
    and b
    xor e
    xor e
    cp b
    ld c, a
    and l
    xor b
    xor l
    xor b
    or d
    and a
    and h
    and e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, c
    adc l
    xor [hl]
    or e
    ld a, a
    and e
    xor [hl]
    xor l
    and h
    ld a, a
    cp b
    and h
    or e
    and $4f
    sub e
    and a
    xor b
    or d
    ld a, a
    xor h
    xor b
    and [hl]
    and a
    or e
    ld a, a
    and c
    and h
    ld d, l
    or h
    or d
    and h
    and l
    or h
    xor e
    rst $20
    ld e, b
    nop
    ld d, d
    ld a, a
    or c
    and h
    and d
    and h
    xor b
    or l
    and h
    and e
    ld c, a
    ld d, b
    ld bc, $cf4b
    nop
    rst $20
    ld d, b
    ld d, b
    nop
    sub e
    adc h
    rst $30
    cp $7f
    xor b
    or d
    ld a, a
    add d
    adc [hl]
    sub h
    adc l
    sub e
    add h
    sub c
    rst $20
    ld c, a
    adc l
    xor [hl]
    or e
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor [hl]
    xor l
    and h
    ld d, l
    adc b
    push hl
    ld a, a
    xor e
    and h
    and b
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    xor l
    db $f4
    ld d, l
    xor h
    xor b
    xor l
    and e
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
    or c
    ld a, a
    xor a
    and b
    and d
    xor d
    ld a, a
    xor b
    or d
    ld a, a
    and l
    or h
    xor e
    xor e
    ld c, a
    xor [hl]
    and l
    ld a, a
    xor b
    or e
    and h
    xor h
    or d
    rst $20
    ld d, a
    nop
    add d
    and b
    xor a
    or e
    or h
    or c
    and h
    and e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    and b
    or c
    and h
    ld a, a
    or c
    and h
    and [hl]
    xor b
    or d
    or e
    and h
    or c
    and h
    and e
    ld d, l
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and b
    xor l
    ld a, a
    adc b
    add e
    ld a, a
    adc l
    xor [hl]
    add sp, $55
    and b
    xor l
    and e
    ld a, a
    adc [hl]
    sub e
    db $f4
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor l
    and b
    xor h
    and h
    ld d, l
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc [hl]
    or c
    xor b
    and [hl]
    xor b
    xor l
    and b
    xor e
    ld d, l
    sub e
    or c
    and b
    xor b
    xor l
    and h
    or c
    ld a, a
    or e
    and a
    and b
    or e
    ld d, l
    and d
    and b
    or h
    and [hl]
    and a
    or e
    ld a, a
    xor b
    or e
    rst $20
    ld d, a
    nop
    add b
    xor e
    xor e
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    rst $20
    ld d, c
    adc h
    cp b
    ld a, a
    and c
    or h
    and e
    and e
    cp b
    cp l
    ld a, a
    and [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    ld c, a
    or e
    xor [hl]
    ld a, a
    or e
    or c
    and b
    and e
    and h
    ld a, a
    xor h
    and h
    ld a, a
    and a
    xor b
    or d
    ld d, l
    adc d
    add b
    adc l
    add [hl]
    add b
    sub d
    adc d
    add a
    add b
    adc l
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor h
    cp b
    ld d, l
    add [hl]
    sub c
    add b
    sub l
    add h
    adc e
    add h
    sub c
    rst $20
    ld d, a
    nop
    add d
    xor [hl]
    xor h
    and h
    ld a, a
    xor [hl]
    xor l
    ld a, a
    add [hl]
    sub c
    add b
    sub l
    add h
    adc e
    add h
    sub c
    rst $20
    ld d, c
    adc b
    ld a, a
    xor e
    xor [hl]
    or l
    and h
    ld a, a
    add [hl]
    sub c
    add b
    sub l
    add h
    adc e
    add h
    sub c
    rst $20
    ld c, a
    adc b
    ld a, a
    and d
    xor [hl]
    xor e
    xor e
    and h
    and d
    or e
    ld a, a
    or e
    and a
    and h
    xor h
    rst $20
    ld d, c
    add a
    or h
    and a
    and $51
    add [hl]
    sub c
    add b
    sub l
    add h
    adc e
    add h
    sub c
    ld a, a
    or e
    or h
    or c
    xor l
    and h
    and e
    ld c, a
    xor b
    xor l
    or e
    xor [hl]
    ld a, a
    and b
    ld a, a
    and e
    xor b
    and l
    and l
    and h
    or c
    and h
    xor l
    or e
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    xor b
    and e
    and h
    xor l
    or e
    xor b
    and l
    cp b
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld d, l
    xor b
    xor l
    ld a, a
    or e
    or c
    and b
    and e
    and h
    or d
    ld a, a
    and c
    cp b
    ld d, l
    or e
    and a
    and h
    xor b
    or c
    ld a, a
    adc b
    add e
    ld a, a
    adc l
    or h
    xor h
    and c
    and h
    or c
    or d
    rst $20
    ld d, a
    nop
    adc b
    or e
    cp l
    ld a, a
    and b
    xor l
    ld a, a
    sub d
    adc l
    add h
    sub d
    rst $20
    ld d, a
    nop
    add b
    xor l
    ld a, a
    sub c
    adc a
    add [hl]
    rst $20
    ld a, a
    sub e
    and a
    and h
    or c
    and h
    cp l
    ld c, a
    xor l
    xor [hl]
    ld a, a
    or e
    xor b
    xor h
    and h
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    or e
    and a
    and b
    or e
    rst $20
    ld d, a
    nop
    add b
    ld a, a
    or d
    xor a
    xor [hl]
    or c
    or e
    or d
    ld a, a
    and [hl]
    and b
    xor h
    and h
    rst $20
    ld c, a
    add e
    and b
    and e
    cp h
    xor e
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    or e
    and a
    and b
    or e
    rst $20
    ld d, a
    nop
    add b
    ld a, a
    xor a
    or h
    cp c
    cp c
    xor e
    and h
    ld a, a
    and [hl]
    and b
    xor h
    and h
    rst $20
    ld c, a
    adc e
    xor [hl]
    xor [hl]
    xor d
    or d
    ld a, a
    and b
    and e
    and e
    xor b
    and d
    or e
    xor b
    or l
    and h
    rst $20
    ld d, a
    nop
    add b
    ld a, a
    and l
    xor b
    and [hl]
    and a
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    and [hl]
    and b
    xor h
    and h
    rst $20
    ld c, a
    adc e
    xor [hl]
    xor [hl]
    xor d
    or d
    ld a, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    rst $20
    ld d, a
    nop
    ld sp, hl
    add l
    sbc h
    ld a, a
    sub e
    sub l
    ld a, a
    add [hl]
    add b
    adc h
    add h
    ld a, a
    sub d
    add a
    adc [hl]
    adc a
    ld d, a
    nop
    sub c
    and h
    and e
    ld a, a
    and b
    xor l
    and e
    ld a, a
    add c
    xor e
    or h
    and h
    rst $20
    ld c, a
    add c
    xor [hl]
    or e
    and a
    ld a, a
    and b
    or c
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, a
    nop
    adc b
    push hl
    ld a, a
    and [hl]
    and h
    or e
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    ld c, a
    ld d, h
    ld a, a
    add e
    adc [hl]
    adc e
    adc e
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor h
    cp b
    ld d, l
    and [hl]
    xor b
    or c
    xor e
    ld a, a
    and l
    or c
    xor b
    and h
    xor l
    and e
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
    or d
    xor [hl]
    xor h
    and h
    or e
    and a
    xor b
    xor l
    and [hl]
    ld c, a
    or h
    or d
    and h
    and l
    or h
    xor e
    add sp, $51
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    or c
    or h
    xor l
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld c, a
    or [hl]
    xor b
    xor e
    and e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and c
    cp b
    ld d, l
    and e
    xor b
    or d
    or e
    or c
    and b
    and d
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    xor h
    ld d, l
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and b
    ld a, a
    ld d, h
    ld a, a
    add e
    adc [hl]
    adc e
    adc e
    rst $20
    ld d, a
    nop
    add h
    or a
    xor a
    or c
    and h
    or d
    or d
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    or d
    and h
    xor e
    and l
    ld c, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and [hl]
    xor b
    and l
    or e
    or d
    rst $20
    ld d, c
    ld a, [$9c85]
    ld a, a
    sub [hl]
    adc b
    sub d
    add h
    adc h
    add b
    adc l
    ld a, a
    add [hl]
    adc b
    add l
    sub e
    sub d
    ld d, c
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
    sub d
    xor a
    and h
    and d
    xor b
    and b
    xor e
    rst $20
    ld c, a
    add h
    xor e
    and h
    xor h
    and h
    xor l
    or e
    ld a, a
    sub d
    sub e
    adc [hl]
    adc l
    add h
    or d
    ld a, a
    xor [hl]
    xor l
    ld d, l
    or d
    and b
    xor e
    and h
    ld a, a
    xor l
    xor [hl]
    or [hl]
    rst $20
    ld d, a
    nop
    add [hl]
    xor b
    or l
    and h
    ld a, a
    and a
    and h
    or c
    ld a, a
    or [hl]
    and a
    xor b
    and d
    and a
    ld c, a
    and e
    or c
    xor b
    xor l
    xor d
    and $57
    nop
    sbc b
    and b
    cp b
    rst $20
    ld d, c
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
    rst $20
    ld d, c
    sub e
    and a
    and b
    xor l
    xor d
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    or e
    and a
    xor b
    or d
    ld c, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    xor h
    and h
    rst $20
    ld d, b
    ld d, b
    nop
    ld d, d
    ld a, a
    or c
    and h
    and d
    and h
    xor b
    or l
    and h
    and e
    ld c, a
    ld d, b
    ld bc, $cf4b
    nop
    rst $20
    ld d, b
    ld d, b
    nop
    ld d, c
    ld d, b
    ld bc, $cf4b
    nop
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
    adc b
    add d
    add h
    ld a, a
    add c
    add h
    add b
    adc h
    rst $20
    ld d, c
    adc b
    or e
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and l
    or c
    and h
    and h
    cp c
    and h
    ld a, a
    or e
    and a
    and h
    ld c, a
    or e
    and b
    or c
    and [hl]
    and h
    or e
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    or e
    xor b
    xor h
    and h
    or d
    rst $20
    ld d, b
    ld d, b
    nop
    sbc b
    and b
    cp b
    rst $20
    ld d, c
    sub d
    adc [hl]
    add e
    add b
    ld a, a
    adc a
    adc [hl]
    adc a
    rst $20
    ld d, c
    sub e
    and a
    and b
    xor l
    xor d
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    or e
    and a
    xor b
    or d
    ld c, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    xor h
    and h
    rst $20
    ld d, b
    ld d, b
    nop
    ld d, d
    ld a, a
    or c
    and h
    and d
    and h
    xor b
    or l
    and h
    and e
    ld c, a
    ld d, b
    ld bc, $cf4b
    nop
    rst $20
    ld d, b
    ld d, b
    nop
    ld d, c
    ld d, b
    ld bc, $cf4b
    nop
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
    sub c
    adc [hl]
    add d
    adc d
    ld a, a
    sub d
    adc e
    adc b
    add e
    add h
    rst $20
    ld d, c
    adc b
    or e
    ld a, a
    and d
    and b
    xor l
    ld a, a
    or d
    xor a
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    or e
    and a
    and h
    ld c, a
    or e
    and b
    or c
    and [hl]
    and h
    or e
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    or e
    xor b
    xor h
    and h
    or d
    rst $20
    ld d, b
    ld d, b
    nop
    sbc b
    and b
    cp b
    rst $20
    ld d, c
    adc e
    add h
    adc h
    adc [hl]
    adc l
    add b
    add e
    add h
    rst $20
    ld d, c
    sub e
    and a
    and b
    xor l
    xor d
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    or e
    and a
    xor b
    or d
    ld c, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    xor h
    and h
    rst $20
    ld d, b
    ld d, b
    nop
    ld d, d
    ld a, a
    or c
    and h
    and d
    and h
    xor b
    or l
    and h
    and e
    ld c, a
    sub e
    adc h
    ld a, [$e7ff]
    ld d, b
    ld d, b
    nop
    ld d, c
    sub e
    adc h
    ld a, [$7fff]
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
    sub c
    adc b
    ld a, a
    add b
    sub e
    sub e
    add b
    add d
    adc d
    rst $20
    ld d, b
    ld d, b
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
    or d
    xor a
    and b
    and d
    and h
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    or e
    and a
    xor b
    or d
    rst $20
    ld d, b
    ld d, b
    nop
    adc l
    xor [hl]
    ld a, a
    or e
    and a
    and b
    xor l
    xor d
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld c, a
    adc b
    push hl
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    or e
    and a
    xor b
    or c
    or d
    or e
    cp b
    ld d, l
    and b
    and l
    or e
    and h
    or c
    ld a, a
    and b
    xor e
    xor e
    rst $20
    ld d, b
    ld d, b
    nop
    adc h
    cp b
    ld a, a
    or d
    xor b
    or d
    or e
    and h
    or c
    ld a, a
    xor b
    or d
    ld a, a
    and b
    ld c, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    db $f4
    ld a, a
    and c
    and h
    xor e
    xor b
    and h
    or l
    and h
    ld d, l
    xor b
    or e
    ld a, a
    xor [hl]
    or c
    ld a, a
    xor l
    xor [hl]
    or e
    add sp, $51
    add c
    or h
    or e
    db $f4
    ld a, a
    or d
    and a
    and h
    cp l
    ld a, a
    or d
    xor [hl]
    ld c, a
    xor b
    xor h
    xor h
    and b
    or e
    or h
    or c
    and h
    db $f4
    ld a, a
    or d
    and a
    and h
    ld d, l
    and e
    or c
    xor b
    or l
    and h
    or d
    ld a, a
    xor h
    and h
    ld a, a
    xor l
    or h
    or e
    or d
    rst $20
    ld d, a
    nop
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
    rst $20
    ld c, a
    adc b
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    or e
    and a
    xor b
    xor l
    and [hl]
    ld d, l
    or e
    xor [hl]
    ld a, a
    and e
    or c
    xor b
    xor l
    xor d
    rst $20
    ld d, a
    nop
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
    rst $20
    ld c, a
    adc b
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    or e
    and a
    xor b
    xor l
    and [hl]
    ld d, l
    or e
    xor [hl]
    ld a, a
    and e
    or c
    xor b
    xor l
    xor d
    rst $20
    ld d, c
    add [hl]
    xor b
    or l
    and h
    ld a, a
    and a
    and h
    or c
    ld a, a
    and b
    ld a, a
    and e
    or c
    xor b
    xor l
    xor d
    and $57
    nop
    sub c
    adc [hl]
    adc [hl]
    add l
    sub e
    adc [hl]
    adc a
    ld a, a
    sub d
    sub b
    sub h
    add b
    sub c
    add h
    sbc h
    ld c, a
    sub l
    add h
    adc l
    add e
    adc b
    adc l
    add [hl]
    ld a, a
    adc h
    add b
    add d
    add a
    adc b
    adc l
    add h
    sub d
    ld d, a
    nop
    add b
    ld a, a
    or l
    and h
    xor l
    and e
    xor b
    xor l
    and [hl]
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
    add a
    and h
    or c
    and h
    cp l
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor h
    and h
    xor l
    or h
    rst $20
    ld e, b
    nop
    adc [hl]
    xor [hl]
    xor a
    or d
    db $f4
    ld a, a
    xor l
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
    xor h
    xor [hl]
    xor l
    and h
    cp b
    rst $20
    ld d, a
    ld bc, $cf4b
    nop
    ld c, a
    xor a
    xor [hl]
    xor a
    xor a
    and h
    and e
    ld a, a
    xor [hl]
    or h
    or e
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
    xor h
    xor [hl]
    or c
    and h
    ld c, a
    or c
    xor [hl]
    xor [hl]
    xor h
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    or d
    or e
    or h
    and l
    and l
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
    or c
    or d
    or e
    cp b
    rst $20
    ld d, a
    nop
    adc h
    add h
    adc [hl]
    sub [hl]
    sub e
    add a
    sbc h
    ld a, a
    adc h
    and h
    xor [hl]
    or [hl]
    rst $20
    ld d, b
    ld d, b
    nop
    adc h
    cp b
    ld a, a
    and e
    and h
    and b
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    xor d
    and h
    and h
    xor a
    ld a, a
    xor h
    and h
    ld a, a
    and d
    xor [hl]
    xor h
    xor a
    and b
    xor l
    cp b
    add sp, $51
    adc h
    add h
    adc [hl]
    sub [hl]
    sub e
    add a
    ld a, a
    and h
    or l
    and h
    xor l
    ld a, a
    and c
    or c
    xor b
    xor l
    and [hl]
    or d
    ld c, a
    xor h
    xor [hl]
    xor l
    and h
    cp b
    ld a, a
    and a
    xor [hl]
    xor h
    and h
    rst $20
    ld d, a
    nop
    add d
    adc e
    add h
    add l
    add b
    adc b
    sub c
    sbc b
    sbc h
    ld a, a
    adc a
    xor b
    ld c, a
    xor a
    xor b
    xor a
    xor a
    xor b
    xor a
    xor a
    xor b
    rst $20
    ld d, b
    ld d, b
    nop
    adc l
    adc b
    add e
    adc [hl]
    sub c
    add b
    adc l
    sbc h
    ld a, a
    adc d
    cp b
    and b
    ld c, a
    xor d
    cp b
    and b
    xor [hl]
    xor [hl]
    rst $20
    ld d, b
    ld d, b
    nop
    add d
    add h
    adc e
    add b
    add e
    adc [hl]
    adc l
    ld a, a
    adc h
    add b
    adc l
    sub d
    adc b
    adc [hl]
    adc l
    ld c, a
    adc h
    and b
    xor l
    and b
    and [hl]
    and h
    or c
    cp l
    ld a, a
    sub d
    or h
    xor b
    or e
    and h
    ld d, a
    nop
    add [hl]
    add b
    adc h
    add h
    ld a, a
    add l
    sub c
    add h
    add b
    adc d
    ld c, a
    adc h
    and h
    and h
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    sub c
    xor [hl]
    xor [hl]
    xor h
    ld d, a
    nop
    adc h
    and h
    and $7f
    adc b
    push hl
    ld a, a
    or e
    and a
    and h
    ld c, a
    xor a
    or c
    xor [hl]
    and [hl]
    or c
    and b
    xor h
    xor h
    and h
    or c
    rst $20
    ld d, a
    nop
    adc b
    push hl
    ld a, a
    or e
    and a
    and h
    ld a, a
    and [hl]
    or c
    and b
    xor a
    and a
    xor b
    and d
    ld c, a
    and b
    or c
    or e
    xor b
    or d
    or e
    rst $20
    ld d, l
    adc b
    ld a, a
    and e
    or c
    and h
    or [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    or [hl]
    or c
    xor [hl]
    or e
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    or e
    xor [hl]
    or c
    cp b
    rst $20
    ld c, a
    adc b
    or d
    xor l
    cp [hl]
    ld a, a
    add h
    sub c
    adc b
    adc d
    add b
    ld a, a
    and d
    or h
    or e
    and h
    and $51
    adc b
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    adc h
    adc b
    sub d
    sub e
    sbc b
    ld a, a
    and b
    ld c, a
    xor e
    xor [hl]
    or e
    ld a, a
    or e
    xor [hl]
    xor [hl]
    rst $20
    ld d, c
    adc [hl]
    and a
    db $f4
    ld a, a
    and b
    xor l
    and e
    ld a, a
    sub d
    add b
    add c
    sub c
    adc b
    adc l
    add b
    db $f4
    ld c, a
    adc b
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    and a
    and h
    or c
    rst $20
    ld d, a
    nop
    adc b
    or d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    and $51
    adc b
    push hl
    ld a, a
    or e
    and a
    and h
    ld a, a
    and [hl]
    and b
    xor h
    and h
    ld c, a
    and e
    and h
    or d
    xor b
    and [hl]
    xor l
    and h
    or c
    rst $20
    ld d, c
    add l
    xor b
    xor e
    xor e
    xor b
    xor l
    and [hl]
    ld a, a
    or h
    xor a
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
    xor b
    or d
    ld a, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    db $f4
    ld d, l
    and c
    or h
    or e
    ld a, a
    and e
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    or b
    or h
    xor b
    or e
    rst $20
    ld d, c
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and l
    xor b
    xor l
    xor b
    or d
    and a
    db $f4
    ld c, a
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    or e
    and h
    xor e
    xor e
    ld a, a
    xor h
    and h
    rst $20
    ld d, a
    nop
    sub [hl]
    xor [hl]
    or [hl]
    rst $20
    ld a, a
    add h
    or a
    and d
    and h
    xor e
    xor e
    and h
    xor l
    or e
    rst $20
    ld c, a
    sbc b
    xor [hl]
    or h
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
    ld d, l
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    ld d, h
    add e
    add h
    sub a
    rst $20
    ld d, l
    add d
    xor [hl]
    xor l
    and [hl]
    or c
    and b
    or e
    or h
    xor e
    and b
    or e
    xor b
    xor [hl]
    xor l
    or d
    rst $20
    ld d, l
    add sp, -$18
    add sp, $50
    ld d, b
    nop
    adc b
    or e
    cp l
    ld a, a
    or e
    and a
    and h
    ld a, a
    and [hl]
    and b
    xor h
    and h
    ld c, a
    xor a
    or c
    xor [hl]
    and [hl]
    or c
    and b
    xor h
    rst $20
    ld a, a
    adc h
    and h
    or d
    or d
    xor b
    xor l
    and [hl]
    ld d, l
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor b
    or e
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and c
    or h
    and [hl]
    ld d, l
    xor [hl]
    or h
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    and [hl]
    and b
    xor h
    and h
    rst $20
    ld d, a
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
    xor a
    xor e
    and b
    cp b
    xor b
    xor l
    and [hl]
    ld c, a
    and b
    ld a, a
    and [hl]
    and b
    xor h
    and h
    ld a, a
    xor b
    xor l
    or d
    or e
    and h
    and b
    and e
    ld a, a
    xor [hl]
    and l
    ld d, l
    or [hl]
    xor [hl]
    or c
    xor d
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    adc b
    or e
    cp l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    and d
    or c
    xor b
    xor a
    or e
    rst $20
    ld c, a
    add c
    and h
    or e
    or e
    and h
    or c
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld d, l
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    and h
    xor l
    and e
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    add [hl]
    add b
    adc h
    add h
    ld a, a
    add l
    sub c
    add h
    add b
    adc d
    ld c, a
    add e
    and h
    or l
    and h
    xor e
    xor [hl]
    xor a
    xor h
    and h
    xor l
    or e
    ld a, a
    sub c
    xor [hl]
    xor [hl]
    xor h
    ld d, a
    nop
    adc b
    ld a, a
    adc d
    adc l
    adc [hl]
    sub [hl]
    ld a, a
    add h
    sub l
    add h
    sub c
    sbc b
    sub e
    add a
    adc b
    adc l
    add [hl]
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld a, a
    and h
    or l
    and h
    or c
    cp b
    or e
    and a
    xor b
    xor l
    and [hl]
    ld c, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor e
    and e
    ld d, l
    xor [hl]
    and l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor b
    xor l
    ld d, l
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    add [hl]
    add b
    adc h
    add h
    ld a, a
    add c
    adc [hl]
    sbc b
    rst $20
    ld d, c
    add [hl]
    and h
    or e
    ld a, a
    or e
    xor [hl]
    and [hl]
    and h
    or e
    and a
    and h
    or c
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    and l
    or c
    xor b
    and h
    xor l
    and e
    or d
    ld a, a
    and b
    xor l
    and e
    ld d, l
    or e
    or c
    and b
    and e
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, a
    nop
    ld d, h
    ld a, a
    add l
    adc e
    sub h
    sub e
    add h
    ld a, a
    and b
    or [hl]
    and b
    xor d
    and h
    xor l
    or d
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and b
    ld d, l
    or d
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld d, l
    or e
    and a
    and h
    cp b
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and a
    and h
    and b
    or c
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    or c
    xor [hl]
    and e
    and h
    ld a, a
    or h
    xor a
    and a
    xor b
    xor e
    xor e
    ld a, a
    xor [hl]
    xor l
    ld c, a
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
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld d, l
    add l
    sub h
    add d
    add a
    sub d
    adc b
    add b
    rst $20
    ld d, a
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
    add sp, $7f
    adc e
    xor [hl]
    or l
    and h
    xor e
    cp b
    ld c, a
    or [hl]
    and h
    and b
    or e
    and a
    and h
    or c
    ld a, a
    xor b
    or d
    xor l
    cp [hl]
    ld a, a
    xor b
    or e
    and $55
    adc b
    or e
    cp l
    ld a, a
    or d
    xor [hl]
    ld a, a
    xor a
    xor e
    and h
    and b
    or d
    and b
    xor l
    or e
    add sp, $51
    add sp, -$18
    add sp, -$72
    and a
    ld a, a
    and e
    and h
    and b
    or c
    add sp, -$18
    add sp, $4f
    adc b
    ld a, a
    xor h
    or h
    or d
    or e
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    and e
    xor [hl]
    cp c
    and h
    and e
    ld d, l
    xor [hl]
    and l
    and l
    add sp, $7f
    sub [hl]
    and h
    xor e
    and d
    xor [hl]
    xor h
    and h
    add sp, $51
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
    add h
    sub c
    adc b
    adc d
    add b
    add sp, $4f
    adc b
    ld a, a
    and b
    xor h
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc e
    add h
    add b
    add e
    add h
    sub c
    ld d, l
    xor [hl]
    and l
    ld a, a
    add d
    add h
    adc e
    add b
    add e
    adc [hl]
    adc l
    ld a, a
    add [hl]
    sbc b
    adc h
    add sp, $51
    adc b
    ld a, a
    or e
    and h
    and b
    and d
    and a
    ld a, a
    or e
    and a
    and h
    ld a, a
    and b
    or c
    or e
    ld a, a
    xor [hl]
    and l
    ld c, a
    and l
    xor e
    xor [hl]
    or [hl]
    and h
    or c
    ld a, a
    and b
    or c
    or c
    and b
    xor l
    and [hl]
    xor b
    xor l
    and [hl]
    add sp, $55
    adc h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    or c
    and h
    ld a, a
    xor [hl]
    and l
    ld d, l
    or e
    and a
    and h
    ld a, a
    and [hl]
    or c
    and b
    or d
    or d
    db $e3
    or e
    cp b
    xor a
    and h
    add sp, $51
    adc [hl]
    and a
    db $f4
    ld a, a
    adc b
    push hl
    ld a, a
    or d
    xor [hl]
    or c
    or c
    cp b
    db $f4
    ld a, a
    adc b
    ld c, a
    and a
    and b
    and e
    ld a, a
    xor l
    xor [hl]
    ld a, a
    xor b
    and e
    and h
    and b
    ld a, a
    or e
    and a
    and b
    or e
    ld d, l
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    xor b
    or d
    and a
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld d, l
    and d
    and a
    and b
    xor e
    xor e
    and h
    xor l
    and [hl]
    and h
    ld a, a
    xor h
    and h
    add sp, $51
    sub l
    and h
    or c
    cp b
    ld a, a
    or [hl]
    and h
    xor e
    xor e
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    adc b
    ld c, a
    or d
    and a
    and b
    xor e
    xor e
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    xor e
    xor [hl]
    or d
    and h
    add sp, $57
    nop
    adc [hl]
    and a
    rst $20
    ld c, a
    adc b
    ld a, a
    and d
    xor [hl]
    xor l
    and d
    and h
    and e
    and h
    ld a, a
    and e
    and h
    and l
    and h
    and b
    or e
    add sp, $51
    sbc b
    xor [hl]
    or h
    ld a, a
    and b
    or c
    and h
    ld a, a
    or c
    and h
    xor h
    and b
    or c
    xor d
    and b
    and c
    xor e
    cp b
    ld c, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    add sp, $51
    adc b
    ld a, a
    xor h
    or h
    or d
    or e
    ld a, a
    and d
    xor [hl]
    xor l
    and l
    and h
    or c
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    or e
    and a
    and h
    ld a, a
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
    add sp, $58
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and b
    or c
    and h
    ld a, a
    and d
    and b
    or e
    and b
    xor e
    xor [hl]
    and [hl]
    xor b
    xor l
    and [hl]
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    and $7f
    adc b
    ld a, a
    xor h
    or h
    or d
    or e
    ld d, l
    or d
    and b
    cp b
    ld a, a
    adc b
    push hl
    ld a, a
    xor b
    xor h
    xor a
    or c
    and h
    or d
    or d
    and h
    and e
    add sp, $51
    adc b
    ld a, a
    or [hl]
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    xor l
    and h
    or l
    and h
    or c
    ld c, a
    and d
    xor [hl]
    xor e
    xor e
    and h
    and d
    or e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    xor b
    and l
    ld a, a
    or e
    and a
    and h
    cp b
    ld a, a
    or [hl]
    and h
    or c
    and h
    ld d, l
    or h
    xor l
    and b
    or e
    or e
    or c
    and b
    and d
    or e
    xor b
    or l
    and h
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
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
    ld c, a
    or [hl]
    xor b
    xor e
    xor e
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
    or h
    xor a
    ld a, a
    or e
    xor [hl]
    ld a, a
    adc e
    ei
    or $7f
    xor [hl]
    and c
    and h
    cp b
    add sp, $51
    adc b
    or e
    ld a, a
    and b
    xor e
    or d
    xor [hl]
    ld a, a
    and b
    xor e
    xor e
    xor [hl]
    or [hl]
    or d
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or e
    xor [hl]
    ld a, a
    or h
    or d
    and h
    ld d, l
    sub d
    sub e
    sub c
    add h
    adc l
    add [hl]
    sub e
    add a
    ld a, a
    xor b
    xor l
    ld a, a
    and b
    xor l
    and e
    ld d, l
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    add sp, $51
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    and b
    xor e
    or d
    xor [hl]
    ld a, a
    or e
    and b
    xor d
    and h
    ld c, a
    or e
    and a
    xor b
    or d
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $57
    nop
    ld d, d
    ld a, a
    or c
    and h
    and d
    and h
    xor b
    or l
    and h
    and e
    ld c, a
    ld d, b
    ld bc, $cf4b
    nop
    rst $20
    ld d, b
    ld d, b
    nop
    ld d, c
    sub e
    adc h
    ld hl, sp-$09
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
    adc h
    add h
    add [hl]
    add b
    ld a, a
    add e
    sub c
    add b
    adc b
    adc l
    add sp, $51
    add a
    and b
    xor e
    and l
    ld a, a
    or e
    and a
    and h
    ld a, a
    and e
    and b
    xor h
    and b
    and [hl]
    and h
    ld c, a
    xor b
    or e
    ld a, a
    xor b
    xor l
    and l
    xor e
    xor b
    and d
    or e
    or d
    ld a, a
    xor b
    or d
    ld d, l
    and e
    or c
    and b
    xor b
    xor l
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and a
    and h
    and b
    xor e
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
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    xor h
    and b
    xor d
    and h
    ld c, a
    or c
    xor [hl]
    xor [hl]
    xor h
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    or e
    and a
    xor b
    or d
    add sp, $57
    nop
    add a
    and h
    cp b
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
    xor l
    xor [hl]
    or e
    ld c, a
    and b
    xor e
    xor e
    xor [hl]
    or [hl]
    and h
    and e
    ld a, a
    xor b
    xor l
    ld a, a
    and a
    and h
    or c
    and h
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    db $e4
    and h
    ld c, a
    or e
    xor [hl]
    xor [hl]
    ld a, a
    or c
    xor [hl]
    or h
    and [hl]
    and a
    rst $20
    ld e, b
    nop
    add c
    xor e
    and h
    and b
    and b
    and a
    rst $20
    ld c, a
    adc b
    ld a, a
    and a
    xor [hl]
    xor a
    and h
    ld a, a
    add h
    sub c
    adc b
    adc d
    add b
    ld d, l
    or [hl]
    xor b
    xor a
    and h
    or d
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor [hl]
    or h
    or e
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and [hl]
    and h
    or e
    or e
    xor b
    xor l
    and [hl]
    ld c, a
    and c
    xor [hl]
    or c
    and h
    and e
    add sp, $57
    nop
    adc h
    cp b
    ld c, a
    xor h
    and b
    xor d
    and h
    or h
    xor a
    rst $20
    ld e, b
    nop
    add [hl]
    or c
    and b
    or d
    or d
    db $e3
    or e
    cp b
    xor a
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    and b
    or c
    and h
    ld a, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    or d
    or e
    ld d, l
    or e
    and a
    and h
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    db $e3
    or e
    cp b
    xor a
    and h
    rst $20
    ld d, c
    sub e
    and a
    and h
    cp b
    ld a, a
    and b
    xor e
    or d
    xor [hl]
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    and b
    xor l
    ld c, a
    and h
    and e
    and [hl]
    and h
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or c
    xor [hl]
    and d
    xor d
    ld a, a
    and b
    xor l
    and e
    ld d, l
    and [hl]
    or c
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, a
    nop
    add b
    or c
    and h
    xor l
    cp [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or e
    and a
    and h
    ld c, a
    xor a
    and h
    and h
    xor a
    xor b
    xor l
    and [hl]
    ld a, a
    sub e
    xor [hl]
    xor h
    and $57
    nop
    adc b
    push hl
    ld c, a
    xor b
    xor l
    ld a, a
    or d
    and a
    xor [hl]
    and d
    xor d
    rst $20
    ld e, b
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and h
    or c
    and h
    xor l
    cp [hl]
    ld c, a
    xor a
    and h
    and h
    xor a
    xor b
    xor l
    and [hl]
    and $7f
    sub [hl]
    and h
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    and b
    ld d, l
    xor e
    xor [hl]
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    and [hl]
    and b
    or [hl]
    xor d
    and h
    or c
    or d
    rst $20
    ld d, a
    nop
    adc e
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
    and [hl]
    or c
    and b
    or d
    or d
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, c
    sub e
    and a
    and h
    cp b
    db $e4
    and h
    ld a, a
    or d
    xor [hl]
    ld a, a
    and h
    and b
    or d
    cp b
    ld c, a
    or e
    xor [hl]
    ld a, a
    or c
    and b
    xor b
    or d
    and h
    rst $20
    ld d, a
    nop
    adc l
    xor [hl]
    rst $20
    ld e, b
    nop
    sub [hl]
    and h
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    or h
    or d
    and h
    ld a, a
    and [hl]
    or c
    and b
    or d
    or d
    db $e3
    ld c, a
    or e
    cp b
    xor a
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    or e
    ld d, l
    xor [hl]
    or h
    or c
    ld a, a
    add [hl]
    sbc b
    adc h
    rst $20
    ld d, c
    sub [hl]
    and h
    ld a, a
    and b
    xor e
    or d
    xor [hl]
    ld a, a
    or h
    or d
    and h
    ld a, a
    or e
    and a
    and h
    xor h
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    xor h
    and b
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    and l
    xor e
    xor [hl]
    or [hl]
    and h
    or c
    ld d, l
    and b
    or c
    or c
    and b
    xor l
    and [hl]
    and h
    xor h
    and h
    xor l
    or e
    or d
    rst $20
    ld d, a
    nop
    add e
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    and c
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    xor l
    cp b
    ld c, a
    and c
    or h
    and [hl]
    or d
    ld a, a
    xor [hl]
    or c
    ld a, a
    and l
    xor b
    or c
    and h
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor b
    xor l
    ld a, a
    and a
    and h
    or c
    and h
    rst $20
    ld d, a
    nop
    adc [hl]
    and a
    rst $20
    ld c, a
    sbc b
    xor [hl]
    or h
    rst $20
    ld e, b
    nop
    adc [hl]
    or h
    or c
    ld a, a
    adc e
    add h
    add b
    add e
    add h
    sub c
    db $f4
    ld a, a
    add h
    sub c
    adc b
    adc d
    add b
    db $f4
    ld c, a
    xor h
    xor b
    and [hl]
    and a
    or e
    ld a, a
    and c
    and h
    ld a, a
    or b
    or h
    xor b
    and h
    or e
    db $f4
    ld d, l
    and c
    or h
    or e
    ld a, a
    or d
    and a
    and h
    cp l
    ld a, a
    and b
    xor e
    or d
    xor [hl]
    ld d, l
    or l
    and h
    or c
    cp b
    ld a, a
    or d
    xor d
    xor b
    xor e
    xor e
    and h
    and e
    rst $20
    ld d, a
    nop
    adc a
    xor e
    and h
    and b
    or d
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    and h
    and h
    or e
    ld c, a
    cp b
    xor [hl]
    or h
    add sp, $7f
    adc h
    cp b
    ld a, a
    and a
    xor [hl]
    and c
    and c
    cp b
    ld a, a
    xor b
    or d
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
    xor b
    xor l
    and [hl]
    add sp, $57
    nop
    adc [hl]
    and a
    rst $20
    ld c, a
    sub d
    xor a
    xor e
    and h
    xor l
    and e
    xor b
    and e
    rst $20
    ld e, b
    nop
    adc b
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    and b
    ld a, a
    and c
    xor e
    xor b
    xor l
    and e
    ld c, a
    and e
    and b
    or e
    and h
    ld a, a
    and d
    xor [hl]
    xor h
    xor b
    xor l
    and [hl]
    ld a, a
    or h
    xor a
    add sp, $55
    adc b
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor e
    and h
    and b
    or c
    xor l
    ld d, l
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld a, a
    xor a
    xor [hl]
    xor e
    xor b
    or e
    and h
    add sp, $57
    nop
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
    ld c, a
    add d
    add h
    adc e
    add b
    add e
    adc [hl]
    adc l
    ld a, a
    add [hl]
    sbc b
    adc h
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    and c
    and h
    or e
    or e
    and h
    or c
    ld a, a
    xor l
    xor [hl]
    or e
    ld c, a
    or h
    xor l
    and e
    and h
    or c
    and h
    or d
    or e
    xor b
    xor h
    and b
    or e
    and h
    ld d, l
    and [hl]
    xor b
    or c
    xor e
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    rst $20
    ld d, a
    nop
    adc [hl]
    and a
    rst $20
    ld c, a
    add c
    and h
    and b
    or e
    and h
    xor l
    rst $20
    ld e, b
    nop
    adc b
    ld a, a
    and e
    xor b
    and e
    xor l
    cp [hl]
    ld a, a
    and c
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    xor h
    cp b
    ld c, a
    and c
    and h
    or d
    or e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, c
    sub [hl]
    and b
    xor b
    or e
    ld a, a
    cp [hl]
    xor b
    xor e
    ld a, a
    xor l
    and h
    or a
    or e
    ld c, a
    or e
    xor b
    xor h
    and h
    rst $20
    ld d, a
    nop
    sub [hl]
    and h
    xor e
    and d
    xor [hl]
    xor h
    and h
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and h
    or a
    and d
    and a
    and b
    xor l
    and [hl]
    and h
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    and d
    xor [hl]
    xor b
    xor l
    or d
    ld a, a
    and l
    xor [hl]
    or c
    ld d, l
    and l
    and b
    and c
    or h
    xor e
    xor [hl]
    or h
    or d
    ld a, a
    xor a
    or c
    xor b
    cp c
    and h
    or d
    ld d, l
    xor l
    and h
    or a
    or e
    ld a, a
    and e
    xor [hl]
    xor [hl]
    or c
    add sp, $57
    nop
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
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub e
    ld c, a
    add [hl]
    add b
    adc h
    add h
    ld a, a
    add d
    adc [hl]
    sub c
    adc l
    add h
    sub c
    rst $20
    ld d, c
    add e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor l
    and h
    and h
    and e
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld c, a
    and [hl]
    and b
    xor h
    and h
    ld a, a
    and d
    xor [hl]
    xor b
    xor l
    or d
    and $51
    adc b
    or e
    cp l
    ld a, a
    ldh a, [$f7]
    or $f6
    or $7f
    and l
    xor [hl]
    or c
    ld a, a
    ei
    or $4f
    and d
    xor [hl]
    xor b
    xor l
    or d
    add sp, $7f
    sub [hl]
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, l
    xor e
    xor b
    xor d
    and h
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    and $57
    nop
    sub e
    and a
    and b
    xor l
    xor d
    or d
    rst $20
    ld a, a
    add a
    and h
    or c
    and h
    ld a, a
    and b
    or c
    and h
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    ei
    or $7f
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
    and $7f
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    ld c, a
    xor a
    xor e
    and b
    cp b
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    or e
    xor b
    xor h
    and h
    rst $20
    ld d, a
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
    and b
    and l
    and l
    xor [hl]
    or c
    and e
    ld c, a
    or e
    and a
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
    adc [hl]
    xor [hl]
    xor a
    or d
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    add d
    adc [hl]
    adc b
    adc l
    ld c, a
    add d
    add b
    sub d
    add h
    ld a, a
    xor b
    or d
    ld a, a
    and l
    or h
    xor e
    xor e
    add sp, $57
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
    ld a, a
    and b
    ld c, a
    add d
    adc [hl]
    adc b
    adc l
    ld a, a
    add d
    add b
    sub d
    add h
    rst $20
    ld d, a
    nop
    adc d
    and h
    and h
    xor a
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    or b
    or h
    xor b
    and h
    or e
    add sp, $51
    adc b
    or e
    cp l
    ld a, a
    or c
    or h
    xor h
    xor [hl]
    or c
    and h
    and e
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    or e
    and a
    xor b
    or d
    ld a, a
    xor a
    xor e
    and b
    and d
    and h
    ld a, a
    xor b
    or d
    ld a, a
    or c
    or h
    xor l
    ld d, l
    and c
    cp b
    ld a, a
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
    add sp, $57
    nop
    adc b
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
    ld a, a
    or e
    and a
    and h
    or d
    and h
    ld c, a
    xor h
    and b
    and d
    and a
    xor b
    xor l
    and h
    or d
    ld a, a
    and a
    and b
    or l
    and h
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
    xor [hl]
    and e
    and e
    or d
    add sp, $57
    nop
    adc d
    xor b
    and e
    db $f4
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
    xor a
    xor e
    and b
    cp b
    and $58
    nop
    ld d, d
    ld a, a
    or c
    and h
    and d
    and h
    xor b
    or l
    and h
    and e
    ld c, a
    rst $30
    or $7f
    and d
    xor [hl]
    xor b
    xor l
    or d
    rst $20
    ld d, b
    ld d, b
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
    xor l
    and h
    and h
    and e
    ld a, a
    xor h
    cp b
    ld c, a
    and d
    xor [hl]
    xor b
    xor l
    or d
    rst $20
    ld d, a
    nop
    sub [hl]
    xor b
    xor l
    or d
    ld a, a
    or d
    and h
    and h
    xor h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    ld c, a
    and b
    xor l
    and e
    ld a, a
    and [hl]
    xor [hl]
    add sp, $57
    nop
    adc b
    push hl
    ld a, a
    and a
    and b
    or l
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    ld c, a
    or [hl]
    xor [hl]
    xor l
    and e
    and h
    or c
    and l
    or h
    xor e
    ld a, a
    or e
    xor b
    xor h
    and h
    rst $20
    ld d, a
    nop
    add a
    and h
    cp b
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    and c
    and h
    or e
    or e
    and h
    or c
    ld c, a
    or e
    and a
    xor b
    xor l
    and [hl]
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    and e
    xor [hl]
    db $f4
    ld d, l
    and d
    and a
    and b
    xor h
    xor a
    ld a, a
    xor b
    xor l
    ld a, a
    xor h
    and b
    xor d
    xor b
    xor l
    and [hl]
    rst $20
    ld d, c
    add d
    add h
    adc e
    add b
    add e
    adc [hl]
    adc l
    ld a, a
    add [hl]
    sbc b
    adc h
    cp l
    ld c, a
    adc e
    add h
    add b
    add e
    add h
    sub c
    ld a, a
    xor b
    or d
    ld a, a
    add h
    sub c
    adc b
    adc d
    add b
    rst $20
    ld d, l
    sub d
    and a
    and h
    ld a, a
    or h
    or d
    and h
    or d
    ld a, a
    and [hl]
    or c
    and b
    or d
    or d
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
    rst $20
    ld d, c
    sub d
    and a
    and h
    ld a, a
    xor h
    xor b
    and [hl]
    and a
    or e
    ld a, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    ld c, a
    and e
    xor [hl]
    and d
    xor b
    xor e
    and h
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    and e
    xor [hl]
    xor l
    cp [hl]
    ld d, l
    and c
    and h
    ld a, a
    and l
    xor [hl]
    xor [hl]
    xor e
    and h
    and e
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    cp b
    ld a, a
    xor [hl]
    and l
    and l
    and h
    or c
    ld a, a
    or c
    and b
    or c
    and h
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    and d
    and b
    xor l
    ld d, l
    and c
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
    and e
    ld a, a
    and l
    xor [hl]
    or c
    ld d, l
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    and d
    xor [hl]
    xor b
    xor l
    or d
    add sp, $51
    add c
    or h
    or e
    db $f4
    ld a, a
    adc b
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    and d
    and b
    xor l
    cp [hl]
    ld c, a
    or d
    and h
    and h
    xor h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or [hl]
    xor b
    xor l
    rst $20
    ld d, a
    nop
    add [hl]
    and b
    xor h
    and h
    or d
    ld a, a
    and b
    or c
    and h
    ld a, a
    or d
    and d
    and b
    or c
    cp b
    rst $20
    ld c, a
    adc b
    or e
    cp l
    ld a, a
    or d
    xor [hl]
    ld a, a
    and h
    and b
    or d
    cp b
    ld a, a
    or e
    xor [hl]
    ld d, l
    and [hl]
    and h
    or e
    ld a, a
    and a
    xor [hl]
    xor [hl]
    xor d
    and h
    and e
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    and b
    or e
    cp l
    ld a, a
    or h
    xor a
    and $7f
    sub [hl]
    and b
    xor l
    or e
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
    and $58
    nop
    ld d, d
    ld a, a
    or c
    and h
    and d
    and h
    xor b
    or l
    and h
    and e
    ld c, a
    ld hl, sp-$0a
    ld a, a
    and d
    xor [hl]
    xor b
    xor l
    or d
    rst $20
    ld d, b
    ld d, b
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
    xor e
    xor [hl]
    or e
    or d
    ld a, a
    xor [hl]
    and l
    ld c, a
    and d
    xor [hl]
    xor b
    xor l
    or d
    rst $20
    ld d, a
    nop
    add e
    and b
    or c
    xor l
    rst $20
    ld a, a
    adc b
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
    or e
    and a
    and h
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    adc b
    ld a, a
    or [hl]
    and b
    xor l
    or e
    rst $20
    ld d, a
    nop
    add a
    and h
    cp b
    db $f4
    ld a, a
    or [hl]
    and a
    and b
    or e
    and $7f
    sbc b
    xor [hl]
    or h
    db $e4
    and h
    ld c, a
    or e
    and a
    or c
    xor [hl]
    or [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    xor h
    and h
    ld a, a
    xor [hl]
    and l
    and l
    rst $20
    ld d, l
    add a
    and h
    or c
    and h
    ld a, a
    and b
    or c
    and h
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld d, l
    and d
    xor [hl]
    xor b
    xor l
    or d
    db $f4
    ld a, a
    or d
    and a
    xor [hl]
    xor [hl]
    rst $20
    ld e, b
    nop
    ld d, d
    ld a, a
    or c
    and h
    and d
    and h
    xor b
    or l
    and h
    and e
    ld c, a
    ld hl, sp-$0a
    ld a, a
    and d
    xor [hl]
    xor b
    xor l
    or d
    rst $20
    ld d, b
    ld d, b
    nop
    sbc b
    xor [hl]
    or h
    cp a
    and h
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld c, a
    xor [hl]
    or [hl]
    xor l
    ld a, a
    and d
    xor [hl]
    xor b
    xor l
    or d
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    or e
    or c
    xor b
    and d
    xor d
    ld a, a
    xor b
    or d
    ld a, a
    or e
    xor [hl]
    ld c, a
    or [hl]
    and b
    or e
    and d
    and a
    ld a, a
    or e
    and a
    and h
    ld a, a
    or c
    and h
    and h
    xor e
    or d
    ld d, l
    and d
    xor e
    xor [hl]
    or d
    and h
    xor e
    cp b
    rst $20
    ld d, a
    nop
    adc b
    push hl
    ld a, a
    and [hl]
    or h
    and b
    or c
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    xor b
    or d
    ld c, a
    xor a
    xor [hl]
    or d
    or e
    and h
    or c
    rst $20
    ld d, l
    add [hl]
    xor [hl]
    ld a, a
    and b
    or [hl]
    and b
    cp b
    db $f4
    ld a, a
    xor [hl]
    or c
    ld a, a
    and h
    xor e
    or d
    and h
    rst $20
    ld d, a
    nop
    add e
    and b
    xor l
    and [hl]
    rst $20
    ld e, b
    nop
    adc [hl]
    or h
    or c
    ld a, a
    and a
    xor b
    and e
    and h
    xor [hl]
    or h
    or e
    ld a, a
    xor h
    xor b
    and [hl]
    and a
    or e
    ld c, a
    and c
    and h
    ld a, a
    and e
    xor b
    or d
    and d
    xor [hl]
    or l
    and h
    or c
    and h
    and e
    rst $20
    ld a, a
    adc b
    ld d, l
    and c
    and h
    or e
    or e
    and h
    or c
    ld a, a
    or e
    and h
    xor e
    xor e
    ld a, a
    add c
    adc [hl]
    sub d
    sub d
    rst $20
    ld d, a
    nop
    add a
    and h
    cp b
    rst $20
    ld d, c
    add b
    ld a, a
    or d
    or [hl]
    xor b
    or e
    and d
    and a
    ld a, a
    and c
    and h
    and a
    xor b
    xor l
    and e
    ld c, a
    or e
    and a
    and h
    ld a, a
    xor a
    xor [hl]
    or d
    or e
    and h
    or c
    rst $20
    and $55
    adc e
    and h
    or e
    cp l
    ld a, a
    xor a
    or h
    or d
    and a
    ld a, a
    xor b
    or e
    rst $20
    ld d, b
    ld d, b
    nop
    adc [hl]
    xor [hl]
    xor a
    or d
    rst $20
    ld a, a
    add l
    xor [hl]
    or c
    and [hl]
    xor [hl]
    or e
    ld a, a
    or e
    and a
    and h
    ld c, a
    add d
    adc [hl]
    adc b
    adc l
    ld a, a
    add d
    add b
    sub d
    add h
    rst $20
    ld d, a
    nop
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    and c
    xor b
    xor e
    xor b
    or e
    cp b
    ld c, a
    and h
    xor l
    and a
    and b
    xor l
    and d
    and h
    or c
    or d
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and c
    and h
    ld d, l
    and c
    xor [hl]
    or h
    and [hl]
    and a
    or e
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $51
    sub h
    or d
    and h
    ld a, a
    add d
    add b
    adc e
    add d
    adc b
    sub h
    adc h
    ld a, a
    or e
    xor [hl]
    ld c, a
    xor b
    xor l
    and d
    or c
    and h
    and b
    or d
    and h
    ld a, a
    sub d
    adc a
    add h
    add d
    adc b
    add b
    adc e
    ld d, l
    and b
    and c
    xor b
    xor e
    xor b
    or e
    xor b
    and h
    or d
    add sp, $51
    sub h
    or d
    and h
    ld a, a
    add d
    add b
    sub c
    add c
    adc [hl]
    sub d
    ld a, a
    or e
    xor [hl]
    ld c, a
    xor b
    xor l
    and d
    or c
    and h
    and b
    or d
    and h
    ld a, a
    sub d
    adc a
    add h
    add h
    add e
    add sp, $57
    nop
    adc b
    push hl
    ld a, a
    and a
    and h
    or c
    and h
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
    and b
    and c
    xor b
    xor e
    xor b
    or e
    cp b
    ld d, l
    and h
    xor l
    and a
    and b
    xor l
    and d
    and h
    or c
    or d
    add sp, $51
    adc a
    sub c
    adc [hl]
    sub e
    add h
    adc b
    adc l
    ld a, a
    xor b
    xor l
    and d
    or c
    and h
    and b
    or d
    and h
    or d
    ld c, a
    add b
    sub e
    sub e
    add b
    add d
    adc d
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    add sp, $51
    adc b
    sub c
    adc [hl]
    adc l
    ld a, a
    xor b
    xor l
    and d
    or c
    and h
    and b
    or d
    and h
    or d
    ld c, a
    add e
    add h
    add l
    add h
    adc l
    sub d
    add h
    rst $20
    ld d, a
    nop
    ei
    add l
    sbc h
    ld a, a
    add e
    sub c
    sub h
    add [hl]
    ld a, a
    sub d
    sub e
    adc [hl]
    sub c
    add h
    ld d, a
    nop
    adc b
    ld a, a
    or d
    or h
    or c
    and h
    ld a, a
    and e
    xor [hl]
    ld a, a
    and l
    and b
    xor l
    and d
    cp b
    ld c, a
    or e
    and a
    and b
    or e
    ld a, a
    adc a
    adc [hl]
    sub c
    sbc b
    add [hl]
    adc [hl]
    adc l
    rst $20
    ld d, c
    add c
    or h
    or e
    db $f4
    ld a, a
    xor b
    or e
    cp l
    ld a, a
    and a
    and b
    or c
    and e
    ld a, a
    or e
    xor [hl]
    ld c, a
    or [hl]
    xor b
    xor l
    ld a, a
    and b
    or e
    ld a, a
    or d
    xor e
    xor [hl]
    or e
    or d
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    and a
    and b
    and e
    ld a, a
    and b
    ld a, a
    xor h
    and b
    xor c
    xor [hl]
    or c
    ld c, a
    and a
    and b
    or h
    xor e
    ld a, a
    or e
    xor [hl]
    and e
    and b
    cp b
    rst $20
    ld d, a
    nop
    add a
    xor b
    rst $20
    ld d, c
    sub [hl]
    and h
    db $e4
    and h
    ld a, a
    or e
    and b
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    ld c, a
    and c
    or c
    and h
    and b
    xor d
    ld a, a
    xor l
    xor [hl]
    or [hl]
    add sp, $57
    nop
    adc h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    or c
    and h
    ld c, a
    or [hl]
    and h
    and b
    xor d
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    adc b
    ld a, a
    xor [hl]
    and l
    or e
    and h
    xor l
    ld d, l
    and a
    and b
    or l
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld d, l
    add e
    sub c
    sub h
    add [hl]
    ld a, a
    sub d
    sub e
    adc [hl]
    sub c
    add h
    add sp, $57
    nop
    adc a
    or d
    or d
    or e
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
    and c
    and b
    or d
    and h
    xor h
    and h
    xor l
    or e
    ld a, a
    or h
    xor l
    and e
    and h
    or c
    ld d, l
    or e
    and a
    and h
    ld a, a
    add [hl]
    add b
    adc h
    add h
    ld a, a
    add d
    adc [hl]
    sub c
    adc l
    add h
    sub c
    add sp, $57
    nop
    adc h
    or h
    xor l
    and d
    and a
    add sp, -$18
    add sp, $51
    sub e
    and a
    and h
    ld a, a
    xor h
    and b
    xor l
    ld a, a
    and b
    or e
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    or e
    and b
    and c
    xor e
    and h
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    ld a, a
    xor b
    or e
    ld a, a
    and b
    xor e
    xor e
    ld d, l
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    xor e
    xor [hl]
    or e
    or d
    add sp, $57
    nop
    add [hl]
    xor [hl]
    ld a, a
    and b
    and a
    and h
    and b
    and e
    rst $20
    ld a, a
    adc e
    and b
    or h
    and [hl]
    and a
    rst $20
    ld d, c
    adc b
    push hl
    ld a, a
    and l
    xor e
    and b
    or e
    ld a, a
    xor [hl]
    or h
    or e
    ld c, a
    and c
    or h
    or d
    or e
    and h
    and e
    rst $20
    ld d, c
    adc l
    xor [hl]
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    or d
    xor e
    xor [hl]
    or e
    or d
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    xor h
    and h
    rst $20
    ld a, a
    adc b
    push hl
    ld a, a
    and [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    ld d, l
    or d
    or e
    or c
    and b
    xor b
    and [hl]
    and a
    or e
    rst $20
    ld d, c
    add a
    and h
    or c
    and h
    rst $20
    ld a, a
    adc b
    ld a, a
    or [hl]
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    and c
    and h
    ld c, a
    xor l
    and h
    and h
    and e
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
    xor l
    cp b
    db $e3
    ld d, l
    xor h
    xor [hl]
    or c
    and h
    rst $20
    ld e, b
    nop
    ld d, d
    ld a, a
    or c
    and h
    and d
    and h
    xor b
    or l
    and h
    and e
    ld c, a
    and b
    ld a, a
    ld d, b
    ld bc, $cf4b
    nop
    rst $20
    ld d, b
    ld d, b
    nop
    adc h
    and b
    xor d
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
    ld c, a
    or e
    and a
    xor b
    or d
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    and b
    xor e
    or [hl]
    and b
    cp b
    or d
    ld a, a
    or e
    and a
    xor [hl]
    or h
    and [hl]
    and a
    or e
    ld c, a
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld d, l
    or [hl]
    xor b
    xor l
    ld a, a
    xor b
    or e
    ld a, a
    and c
    and b
    and d
    xor d
    add sp, -$18
    add sp, $57
    nop
    add a
    and h
    and a
    and h
    and a
    and h
    rst $20
    ld a, a
    sub e
    and a
    and h
    ld a, a
    or d
    xor e
    xor [hl]
    or e
    or d
    ld c, a
    xor c
    or h
    or d
    or e
    ld a, a
    or c
    and h
    and h
    xor e
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld d, l
    and e
    xor [hl]
    or h
    and [hl]
    and a
    db $f4
    ld a, a
    and c
    xor b
    and [hl]
    ld a, a
    or e
    xor b
    xor h
    and h
    rst $20
    ld d, a
    nop
    add d
    add a
    adc b
    add h
    add l
    rst $20
    ld d, c
    sub [hl]
    and h
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    or d
    and a
    xor b
    xor a
    xor a
    and h
    and e
    ld c, a
    ld hl, sp-$0a
    or $f6
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    or d
    ld d, l
    or d
    xor e
    xor [hl]
    or e
    ld a, a
    xor a
    or c
    xor b
    cp c
    and h
    or d
    rst $20
    ld d, a
    nop
    add e
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    or e
    xor [hl]
    or h
    and d
    and a
    ld a, a
    or e
    and a
    and h
    ld c, a
    xor a
    xor [hl]
    or d
    or e
    and h
    or c
    ld a, a
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld d, l
    add [hl]
    add b
    adc h
    add h
    ld a, a
    add d
    adc [hl]
    sub c
    adc l
    add h
    sub c
    rst $20
    ld d, c
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
    or d
    and h
    and d
    or c
    and h
    or e
    ld c, a
    or d
    or [hl]
    xor b
    or e
    and d
    and a
    ld a, a
    and c
    and h
    and a
    xor b
    xor l
    and e
    ld a, a
    xor b
    or e
    rst $20
    ld d, a
    nop
    ld d, h
    adc h
    adc [hl]
    adc l
    and $7f
    adc l
    xor [hl]
    db $f4
    ld a, a
    or e
    and a
    xor b
    or d
    ld c, a
    xor b
    or d
    ld a, a
    and b
    ld a, a
    and a
    xor [hl]
    or e
    and h
    xor e
    ld a, a
    and l
    xor [hl]
    or c
    ld d, l
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    add sp, $51
    sub [hl]
    and h
    db $e4
    and h
    ld a, a
    and l
    or h
    xor e
    xor e
    ld a, a
    or h
    xor a
    add sp, $57
    nop
    adc b
    push hl
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or l
    and b
    and d
    and b
    or e
    xor b
    xor [hl]
    xor l
    ld c, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor h
    cp b
    ld a, a
    and c
    or c
    xor [hl]
    or e
    and a
    and h
    or c
    ld d, l
    and b
    xor l
    and e
    ld a, a
    and c
    xor [hl]
    cp b
    ld a, a
    and l
    or c
    xor b
    and h
    xor l
    and e
    add sp, $51
    add d
    add h
    adc e
    add b
    add e
    adc [hl]
    adc l
    ld a, a
    xor b
    or d
    ld a, a
    or d
    or h
    and d
    and a
    ld a, a
    and b
    ld c, a
    xor a
    or c
    and h
    or e
    or e
    cp b
    ld a, a
    and d
    xor b
    or e
    cp b
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    cp b
    ld a, a
    and e
    xor b
    and e
    ld a, a
    or d
    and a
    and h
    ld a, a
    and c
    or c
    xor b
    xor l
    and [hl]
    ld c, a
    and a
    and h
    or c
    ld a, a
    and c
    or c
    xor [hl]
    or e
    and a
    and h
    or c
    and $57
    nop
    add e
    xor [hl]
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
    and b
    ld c, a
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
    ld a, a
    and l
    xor e
    and b
    and [hl]
    and $51
    sub [hl]
    and a
    and b
    or e
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    and d
    and b
    or c
    and e
    or d
    ld c, a
    xor [hl]
    or c
    ld a, a
    and d
    and b
    xor e
    and h
    xor l
    and e
    and b
    or c
    or d
    and $57
    nop
    add e
    xor b
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or e
    or c
    cp b
    ld a, a
    sub a
    ld c, a
    sub d
    adc a
    add h
    add h
    add e
    and $7f
    adc b
    or e
    ld a, a
    or d
    xor a
    and h
    and h
    and e
    or d
    ld d, l
    or h
    xor a
    ld a, a
    and b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor b
    xor l
    ld d, l
    and c
    and b
    or e
    or e
    xor e
    and h
    rst $20
    ld d, a
    nop
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
    cp l
    ld c, a
    sub [hl]
    add b
    sub c
    add e
    add h
    adc l
    ld a, a
    xor b
    or d
    ld a, a
    xor [hl]
    xor e
    and e
    db $f4
    ld d, l
    and c
    or h
    or e
    ld a, a
    or d
    or e
    xor b
    xor e
    xor e
    ld a, a
    and b
    and d
    or e
    xor b
    or l
    and h
    rst $20
    ld d, c
    add b
    xor e
    xor e
    ld a, a
    and a
    xor b
    or d
    ld a, a
    or e
    and h
    and h
    or e
    and a
    ld a, a
    and b
    or c
    and h
    ld c, a
    and l
    and b
    xor e
    or d
    and h
    db $f4
    ld a, a
    or e
    and a
    xor [hl]
    or h
    and [hl]
    and a
    add sp, $57
    nop
    add a
    xor h
    xor h
    and $7f
    sbc b
    xor [hl]
    or h
    cp a
    and h
    ld a, a
    xor h
    and h
    or e
    ld c, a
    add c
    adc b
    adc e
    adc e
    and $51
    add a
    and h
    cp l
    ld a, a
    xor h
    cp b
    ld a, a
    and [hl]
    or c
    and b
    xor l
    and e
    or d
    xor [hl]
    xor l
    rst $20
    ld d, c
    add a
    and h
    ld a, a
    and b
    xor e
    or [hl]
    and b
    cp b
    or d
    ld a, a
    xor e
    xor b
    xor d
    and h
    and e
    ld c, a
    and d
    xor [hl]
    xor e
    xor e
    and h
    and d
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    xor b
    xor l
    and [hl]
    or d
    ld d, l
    and h
    or l
    and h
    xor l
    ld a, a
    and b
    or d
    ld a, a
    and b
    ld a, a
    and d
    and a
    xor b
    xor e
    and e
    rst $20
    ld d, a
    nop
    add c
    adc b
    adc e
    adc e
    ld a, a
    and l
    xor b
    xor e
    and h
    or d
    ld a, a
    and a
    xor b
    or d
    ld c, a
    xor [hl]
    or [hl]
    xor l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and e
    and b
    or e
    and b
    ld d, l
    xor [hl]
    xor l
    ld a, a
    and a
    xor b
    or d
    ld a, a
    adc a
    add d
    rst $20
    ld d, c
    add e
    xor b
    and e
    ld a, a
    and a
    and h
    ld a, a
    or d
    and a
    xor [hl]
    or [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    and $57
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
    or [hl]
    xor b
    xor l
    ld c, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    xor [hl]
    xor l
    and h
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
    add sp, $51
    adc b
    or e
    cp l
    ld a, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    db $f4
    ld a, a
    and c
    or h
    or e
    ld c, a
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
    ld a, a
    or c
    and b
    xor b
    or d
    and h
    ld d, l
    or e
    and a
    and h
    xor h
    ld a, a
    and h
    or l
    and h
    xor l
    xor e
    cp b
    add sp, $57
    nop
    sub e
    and a
    and h
    or c
    and h
    cp l
    ld a, a
    and b
    ld a, a
    xor l
    and b
    or c
    or c
    xor [hl]
    or [hl]
    ld c, a
    or e
    or c
    and b
    xor b
    xor e
    ld a, a
    or [hl]
    and h
    or d
    or e
    ld a, a
    xor [hl]
    and l
    ld d, l
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
    add sp, $51
    adc b
    or e
    ld a, a
    and [hl]
    xor [hl]
    and h
    or d
    ld a, a
    or e
    xor [hl]
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
    ld a, a
    add a
    sub b
    add sp, $55
    sub e
    and a
    and h
    ld a, a
    add a
    sub b
    ld a, a
    and [hl]
    xor [hl]
    or l
    and h
    or c
    xor l
    or d
    ld d, l
    and b
    xor e
    xor e
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    or d
    add sp, $57
    nop
    sub [hl]
    add b
    sub c
    add e
    add h
    adc l
    sbc h
    ld a, a
    add a
    xor b
    and l
    ld a, a
    and l
    or h
    and l
    and l
    ld c, a
    and a
    and h
    and l
    xor b
    and l
    xor [hl]
    xor [hl]
    rst $20
    ld d, c
    add a
    and b
    ld a, a
    xor e
    xor [hl]
    and l
    ld a, a
    and a
    and b
    ld a, a
    and l
    and h
    and h
    and l
    ld a, a
    and h
    and h
    ld c, a
    and a
    and b
    and l
    and b
    and a
    xor b
    ld a, a
    and a
    xor [hl]
    add sp, $7f
    add a
    and h
    and l
    and l
    ld d, l
    and a
    and h
    and h
    ld a, a
    and l
    or [hl]
    and h
    and h
    rst $20
    ld d, a
    nop
    add b
    and a
    ld a, a
    and a
    xor [hl]
    or [hl]
    and a
    and h
    and h
    ld a, a
    and a
    xor [hl]
    ld a, a
    and a
    xor [hl]
    xor [hl]
    rst $20
    ld c, a
    add h
    and h
    and l
    ld a, a
    and h
    and h
    ld a, a
    and a
    and b
    and l
    and b
    and a
    xor b
    ld a, a
    and a
    xor [hl]
    rst $20
    ld d, a
    nop
    add a
    and b
    and $7f
    add a
    and h
    ld a, a
    xor [hl]
    and a
    and b
    cp b
    ld a, a
    and a
    and h
    and a
    ld c, a
    and a
    and b
    ld a, a
    and a
    xor [hl]
    xor [hl]
    ld a, a
    and h
    and h
    ld a, a
    and a
    and b
    and a
    and h
    and a
    rst $20
    ld d, a
    nop
    ld d, d
    ld a, a
    and [hl]
    and b
    or l
    and h
    ld a, a
    or e
    and a
    and h
    ld c, a
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
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld d, l
    sub [hl]
    add b
    sub c
    add e
    add h
    adc l
    rst $20
    ld d, b
    ld d, b
    nop
    ld d, c
    sub e
    and a
    and h
    ld a, a
    sub [hl]
    add b
    sub c
    add e
    add h
    adc l
    ld a, a
    xor a
    xor [hl]
    xor a
    xor a
    and h
    and e
    ld c, a
    xor b
    xor l
    ld a, a
    and a
    xor b
    or d
    ld a, a
    or e
    and h
    and h
    or e
    and a
    rst $20
    ld e, b
    nop
    sub [hl]
    add b
    sub c
    add e
    add h
    adc l
    sbc h
    ld a, a
    sub e
    and a
    and b
    xor l
    xor d
    or d
    db $f4
    ld c, a
    xor d
    xor b
    and e
    rst $20
    ld a, a
    adc l
    xor [hl]
    ld a, a
    xor [hl]
    xor l
    and h
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld d, l
    or h
    xor l
    and e
    and h
    or c
    or d
    or e
    and b
    xor l
    and e
    ld a, a
    and b
    ld a, a
    or [hl]
    xor [hl]
    or c
    and e
    ld d, l
    or e
    and a
    and b
    or e
    ld a, a
    adc b
    ld a, a
    or d
    and b
    xor b
    and e
    add sp, $51
    adc b
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    xor l
    cp [hl]
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor d
    ld c, a
    or e
    and a
    and b
    or e
    ld a, a
    or [hl]
    and b
    cp b
    add sp, $55
    adc e
    and h
    or e
    ld a, a
    xor h
    and h
    ld a, a
    and [hl]
    xor b
    or l
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, l
    or d
    xor [hl]
    xor h
    and h
    or e
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    and l
    xor [hl]
    or c
    ld d, l
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    or e
    or c
    xor [hl]
    or h
    and c
    xor e
    and h
    add sp, $58
    nop
    ld d, d
    ld a, a
    or c
    and h
    and d
    and h
    xor b
    or l
    and h
    and e
    ld c, a
    ld d, b
    ld bc, $cf4b
    nop
    rst $20
    ld d, b
    ld d, b
    nop
    sub [hl]
    add b
    sub c
    add e
    add h
    adc l
    sbc h
    ld a, a
    add a
    adc h
    or $fa
    ld c, a
    or e
    and h
    and b
    and d
    and a
    and h
    or d
    ld a, a
    sub d
    sub e
    sub c
    add h
    adc l
    add [hl]
    sub e
    add a
    rst $20
    ld d, c
    adc b
    or e
    ld a, a
    xor e
    and h
    or e
    or d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    xor h
    xor [hl]
    or l
    and h
    ld a, a
    and c
    xor [hl]
    or h
    xor e
    and e
    and h
    or c
    or d
    ld d, l
    or [hl]
    and a
    and h
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    db $e4
    and h
    ld a, a
    xor [hl]
    or h
    or e
    db $e3
    ld d, l
    or d
    xor b
    and e
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    add sp, $51
    adc [hl]
    and a
    ld a, a
    cp b
    and h
    or d
    db $f4
    ld a, a
    and e
    xor b
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and l
    xor b
    xor l
    and e
    ld a, a
    sub d
    add h
    add d
    sub c
    add h
    sub e
    ld a, a
    add a
    adc [hl]
    sub h
    sub d
    add h
    ld d, l
    xor b
    xor l
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
    and $51
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and e
    xor [hl]
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    or [hl]
    xor b
    xor l
    ld a, a
    and b
    xor l
    ld a, a
    add a
    adc h
    rst $20
    ld d, c
    adc b
    ld a, a
    and a
    and h
    and b
    or c
    ld a, a
    xor b
    or e
    cp l
    ld a, a
    or e
    and a
    and h
    ld c, a
    or c
    and b
    or c
    and h
    ld a, a
    sub d
    sub h
    sub c
    add l
    ld a, a
    add a
    adc h
    add sp, $57
    nop
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    xor a
    and b
    and d
    xor d
    ld a, a
    xor b
    or d
    ld c, a
    or d
    or e
    or h
    and l
    and l
    and h
    and e
    ld a, a
    and l
    or h
    xor e
    xor e
    rst $20
    ld d, a
    nop
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor a
    and a
    xor [hl]
    or e
    xor [hl]
    or d
    ld c, a
    and b
    xor l
    and e
    ld a, a
    and l
    xor [hl]
    or d
    or d
    xor b
    xor e
    or d
    add sp, $57
    nop
    adc [hl]
    xor e
    and e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    xor h
    and h
    or c
    and d
    and a
    and b
    xor l
    and e
    xor b
    or d
    and h
    add sp, $57
    nop
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
    ld c, a
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
    rst $20
    ld d, a
    nop
    add l
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
    db $f4
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and d
    and b
    or e
    and d
    and a
    ld a, a
    and b
    xor e
    xor e
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
    cp b
    xor [hl]
    or h
    ld d, l
    or [hl]
    and b
    xor l
    or e
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor a
    and b
    or c
    xor d
    rst $20
    ld d, c
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
    or e
    xor [hl]
    ld c, a
    xor c
    xor [hl]
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    and a
    or h
    xor l
    or e
    and $50
    ld d, b
    nop
    sub e
    and a
    and b
    or e
    cp h
    xor e
    ld a, a
    and c
    and h
    ld a, a
    ldh a, [$fb]
    or $f6
    ld c, a
    xor a
    xor e
    and h
    and b
    or d
    and h
    rst $20
    ld d, c
    sub [hl]
    and h
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    or h
    or d
    and h
    ld a, a
    and b
    ld c, a
    or d
    xor a
    and h
    and d
    xor b
    and b
    xor e
    ld a, a
    ld d, h
    ld a, a
    add c
    add b
    adc e
    adc e
    ld d, l
    and a
    and h
    or c
    and h
    add sp, $51
    ld d, d
    ld a, a
    or c
    and h
    and d
    and h
    xor b
    or l
    and h
    and e
    ld c, a
    ld sp, hl
    or $7f
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
    ld d, b
    ld d, b
    nop
    ld d, c
    sub [hl]
    and h
    cp h
    xor e
    ld a, a
    and d
    and b
    xor e
    xor e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor [hl]
    xor l
    ld c, a
    or e
    and a
    and h
    ld a, a
    adc a
    add b
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, l
    or c
    or h
    xor l
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    xor b
    xor h
    and h
    ld d, l
    xor [hl]
    or c
    ld a, a
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
    ld d, a
    nop
    adc [hl]
    adc d
    rst $20
    ld a, a
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    ld c, a
    and b
    and [hl]
    and b
    xor b
    xor l
    rst $20
    ld d, a
    nop
    adc [hl]
    xor [hl]
    xor a
    or d
    rst $20
    ld a, a
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
    xor h
    xor [hl]
    xor l
    and h
    cp b
    rst $20
    ld d, a
    nop
    adc e
    and h
    and b
    or l
    xor b
    xor l
    and [hl]
    ld a, a
    and h
    and b
    or c
    xor e
    cp b
    and $50
    ld d, b
    nop
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    or c
    and h
    or e
    or h
    or c
    xor l
    ld a, a
    and b
    xor l
    cp b
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
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, l
    and a
    and b
    or l
    and h
    ld a, a
    xor e
    and h
    and l
    or e
    add sp, $57
    nop
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    adc e
    or h
    and d
    xor d
    rst $20
    ld d, a
    nop
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
    and b
    ld c, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and a
    and b
    or h
    xor e
    and $55
    add d
    xor [hl]
    xor h
    and h
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    rst $20
    ld d, a
    nop
    add a
    xor b
    rst $20
    ld a, a
    adc b
    or d
    ld a, a
    xor b
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld c, a
    and l
    xor b
    or c
    or d
    or e
    ld a, a
    or e
    xor b
    xor h
    and h
    ld a, a
    and a
    and h
    or c
    and h
    and $57
    nop
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
    ld a, a
    and a
    and b
    or d
    ld a, a
    ld a, [$b94f]
    xor [hl]
    xor l
    and h
    or d
    ld a, a
    xor b
    xor l
    ld a, a
    xor b
    or e
    add sp, $51
    add h
    and b
    and d
    and a
    ld a, a
    cp c
    xor [hl]
    xor l
    and h
    ld a, a
    and a
    and b
    or d
    ld c, a
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
    ld d, l
    xor [hl]
    and l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $7f
    sub h
    or d
    and h
    ld d, l
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
    ld a, a
    or e
    xor [hl]
    ld d, l
    and d
    and b
    or e
    and d
    and a
    ld a, a
    or e
    and a
    and h
    xor h
    rst $20
    ld d, c
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or c
    or h
    xor l
    ld a, a
    xor [hl]
    or h
    or e
    ld c, a
    xor [hl]
    and l
    ld a, a
    or e
    xor b
    xor h
    and h
    ld a, a
    xor [hl]
    or c
    ld a, a
    sub d
    add b
    add l
    add b
    sub c
    adc b
    ld d, l
    add c
    add b
    adc e
    adc e
    or d
    db $f4
    ld a, a
    xor b
    or e
    cp l
    ld a, a
    and [hl]
    and b
    xor h
    and h
    ld d, l
    xor [hl]
    or l
    and h
    or c
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
    add c
    and h
    and l
    xor [hl]
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and [hl]
    xor [hl]
    db $f4
    ld c, a
    xor [hl]
    xor a
    and h
    xor l
    ld a, a
    and b
    xor l
    ld a, a
    or h
    xor l
    or h
    or d
    and h
    and e
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add c
    adc [hl]
    sub a
    ld a, a
    or d
    xor [hl]
    ld d, l
    or e
    and a
    and h
    or c
    and h
    cp l
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
    xor l
    and h
    or [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, a
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
    db $e4
    and h
    ld a, a
    and b
    ld c, a
    or c
    and h
    and [hl]
    or h
    xor e
    and b
    or c
    ld a, a
    and a
    and h
    or c
    and h
    rst $20
    ld d, a
    nop
    adc d
    adc [hl]
    add [hl]
    add b
    sbc h
    ld a, a
    add l
    or [hl]
    and b
    and a
    and b
    and a
    and b
    and a
    and b
    rst $20
    ld d, c
    add b
    ld a, a
    xor h
    and h
    or c
    and h
    ld a, a
    and d
    and a
    xor b
    xor e
    and e
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    and e
    and b
    or c
    and h
    or d
    ld a, a
    or e
    xor [hl]
    ld d, l
    and d
    and a
    and b
    xor e
    xor e
    and h
    xor l
    and [hl]
    and h
    ld a, a
    xor h
    and h
    and $51
    sub l
    and h
    or c
    cp b
    ld a, a
    or [hl]
    and h
    xor e
    xor e
    db $f4
    ld a, a
    adc b
    ld c, a
    or d
    and a
    and b
    xor e
    xor e
    ld a, a
    or d
    and a
    xor [hl]
    or [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, l
    or e
    or c
    or h
    and h
    ld a, a
    or e
    and h
    or c
    or c
    xor [hl]
    or c
    ld a, a
    and b
    or d
    ld a, a
    and b
    ld d, l
    xor l
    xor b
    xor l
    xor c
    and b
    ld a, a
    xor h
    and b
    or d
    or e
    and h
    or c
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    or d
    and a
    and b
    xor e
    xor e
    ld a, a
    and l
    and h
    and h
    xor e
    ld c, a
    or e
    and a
    and h
    ld a, a
    and e
    and h
    or d
    xor a
    and b
    xor b
    or c
    ld a, a
    xor [hl]
    and l
    ld d, l
    xor a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or d
    xor e
    and h
    and h
    xor a
    ld d, l
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
    rst $20
    ld d, a
    nop
    add a
    or h
    xor h
    xor a
    and a
    rst $20
    ld c, a
    sbc b
    xor [hl]
    or h
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    xor a
    or c
    xor [hl]
    or l
    and h
    xor l
    ld d, l
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    or [hl]
    xor [hl]
    or c
    or e
    and a
    rst $20
    ld d, c
    add a
    and h
    or c
    and h
    rst $20
    ld a, a
    sub e
    and b
    xor d
    and h
    ld a, a
    or e
    and a
    and h
    ld c, a
    sub d
    adc [hl]
    sub h
    adc e
    add c
    add b
    add e
    add [hl]
    add h
    rst $20
    ld e, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
