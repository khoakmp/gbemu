; Disassembly of "Pokemon Red (UE) [S][!].gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $026", ROMX[$4000], BANK[$26]

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
    and b
    xor e
    xor e
    ld c, a
    xor d
    xor b
    xor l
    and e
    or d
    ld a, a
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
    ld d, l
    xor b
    xor l
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
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld c, a
    or l
    and h
    or c
    cp b
    ld a, a
    and [hl]
    xor b
    and l
    or e
    and h
    and e
    ld a, a
    and b
    or d
    ld a, a
    and b
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
    rst $20
    ld d, c
    add [hl]
    xor [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    add [hl]
    sbc b
    adc h
    ld a, a
    xor b
    xor l
    ld c, a
    add d
    add h
    sub c
    sub h
    adc e
    add h
    add b
    adc l
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or e
    and h
    or d
    or e
    ld d, l
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    and b
    and c
    xor b
    xor e
    xor b
    or e
    xor b
    and h
    or d
    rst $20
    ld d, a
    nop
    sub [hl]
    and b
    xor b
    or e
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
    ld c, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    cp b
    xor [hl]
    or h
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
    ld c, a
    sub e
    adc h
    ld sp, hl
    ld a, [$50e7]
    ld d, b
    nop
    ld d, c
    add b
    ld a, a
    sub e
    adc h
    ld a, a
    and d
    xor [hl]
    xor l
    or e
    and b
    xor b
    xor l
    or d
    ld a, a
    and b
    ld c, a
    or e
    and h
    and d
    and a
    xor l
    xor b
    or b
    or h
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld d, l
    and d
    and b
    xor l
    ld a, a
    and c
    and h
    ld a, a
    or e
    and b
    or h
    and [hl]
    and a
    or e
    ld a, a
    or e
    xor [hl]
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, c
    add b
    ld a, a
    sub e
    adc h
    ld a, a
    xor b
    or d
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld c, a
    xor [hl]
    xor l
    and d
    and h
    rst $20
    ld a, a
    sub d
    xor [hl]
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
    or h
    or d
    and h
    ld a, a
    xor [hl]
    xor l
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and h
    and b
    and d
    and a
    ld d, l
    and b
    ld a, a
    xor l
    and h
    or [hl]
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
    db $f4
    ld d, l
    xor a
    xor b
    and d
    xor d
    ld a, a
    or e
    and a
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    and d
    and b
    or c
    and h
    and l
    or h
    xor e
    xor e
    cp b
    rst $20
    ld d, c
    sub e
    adc h
    ld sp, hl
    ld a, [$a27f]
    xor [hl]
    xor l
    or e
    and b
    xor b
    xor l
    or d
    ld c, a
    add c
    adc b
    add e
    add h
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld c, a
    and b
    and c
    or d
    xor [hl]
    or c
    and c
    ld a, a
    and e
    and b
    xor h
    and b
    and [hl]
    and h
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
    ld a, a
    or e
    and a
    and h
    xor l
    ld a, a
    xor a
    and b
    cp b
    ld d, l
    xor b
    or e
    ld a, a
    and c
    and b
    and d
    xor d
    ld a, a
    and e
    xor [hl]
    or h
    and c
    xor e
    and h
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
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    or e
    xor [hl]
    xor [hl]
    xor d
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and [hl]
    or c
    and b
    xor l
    or e
    and h
    and e
    add sp, $51
    add b
    or d
    ld a, a
    xor a
    or c
    xor [hl]
    xor [hl]
    and l
    ld a, a
    xor [hl]
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld c, a
    or l
    xor b
    and d
    or e
    xor [hl]
    or c
    cp b
    db $f4
    ld a, a
    and a
    and h
    or c
    and h
    cp l
    ld d, l
    or e
    and a
    and h
    ld a, a
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
    or e
    and a
    and h
    ld a, a
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
    rst $20
    ld d, b
    ld d, b
    nop
    ld d, c
    sub e
    and a
    and b
    or e
    cp l
    ld a, a
    and b
    xor l
    ld a, a
    xor [hl]
    and l
    and l
    xor b
    and d
    xor b
    and b
    xor e
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
    ld d, l
    add c
    add b
    add e
    add [hl]
    add h
    rst $20
    ld d, c
    adc b
    or e
    or d
    ld a, a
    and c
    and h
    and b
    or c
    and h
    or c
    cp l
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
    rst $20
    ld d, c
    sub e
    and a
    and h
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
    ld c, a
    add l
    adc e
    add b
    sub d
    add a
    ld a, a
    and d
    and b
    xor l
    ld a, a
    xor l
    xor [hl]
    or [hl]
    ld a, a
    and c
    and h
    ld d, l
    or h
    or d
    and h
    and e
    ld a, a
    and b
    xor l
    cp b
    ld a, a
    or e
    xor b
    xor h
    and h
    rst $20
    ld e, b
    nop
    sub d
    or e
    xor [hl]
    xor a
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    ld a, a
    or e
    and a
    and h
    or c
    and h
    db $f4
    ld c, a
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
    or e
    xor b
    xor e
    xor e
    ld a, a
    xor e
    xor b
    and [hl]
    and a
    or e
    ld c, a
    cp b
    and h
    and b
    or c
    or d
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    and l
    and b
    and d
    xor b
    xor l
    and [hl]
    ld d, l
    add c
    sub c
    adc [hl]
    add d
    adc d
    rst $20
    ld d, a
    nop
    add e
    and b
    or c
    xor l
    rst $20
    ld d, c
    adc e
    xor b
    and [hl]
    and a
    or e
    ld a, a
    cp b
    and h
    and b
    or c
    or d
    ld a, a
    xor b
    or d
    xor l
    cp [hl]
    ld c, a
    or e
    xor b
    xor h
    and h
    rst $20
    ld a, a
    adc b
    or e
    ld a, a
    xor h
    and h
    and b
    or d
    or h
    or c
    and h
    or d
    ld d, l
    and e
    xor b
    or d
    or e
    and b
    xor l
    and d
    and h
    rst $20
    ld e, b
    nop
    sbc b
    xor [hl]
    or h
    db $e4
    and h
    ld a, a
    xor a
    or c
    and h
    or e
    or e
    cp b
    ld a, a
    and a
    xor [hl]
    or e
    db $f4
    ld c, a
    and c
    or h
    or e
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    and b
    or d
    ld a, a
    and a
    xor [hl]
    or e
    ld d, l
    and b
    or d
    ld a, a
    add c
    sub c
    adc [hl]
    add d
    adc d
    rst $20
    ld d, a
    nop
    add a
    xor b
    cp b
    and b
    rst $20
    ld a, a
    adc b
    ld a, a
    and d
    and b
    xor l
    ld a, a
    or e
    and h
    xor e
    xor e
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
    or [hl]
    and a
    and b
    or e
    ld a, a
    xor b
    or e
    ld d, l
    or e
    and b
    xor d
    and h
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    and b
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and d
    and a
    and b
    xor h
    xor a
    rst $20
    ld d, c
    adc b
    push hl
    ld a, a
    xor l
    xor [hl]
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    db $f4
    ld c, a
    and c
    or h
    or e
    ld a, a
    adc b
    ld a, a
    and d
    and b
    xor l
    ld a, a
    or e
    and h
    xor e
    xor e
    ld d, l
    cp b
    xor [hl]
    or h
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    or [hl]
    xor b
    xor l
    rst $20
    ld d, c
    adc e
    and h
    or e
    ld a, a
    xor h
    and h
    ld a, a
    or e
    and b
    xor d
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    or e
    xor [hl]
    xor a
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
    ld a, a
    adc e
    and h
    or e
    cp l
    ld c, a
    and [hl]
    and h
    or e
    ld a, a
    and a
    and b
    xor a
    xor a
    and h
    xor l
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
    rst $30
    or d
    or e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    xor [hl]
    or h
    or e
    ld a, a
    xor b
    xor l
    ld a, a
    and b
    ld a, a
    xor h
    and b
    or e
    and d
    and a
    ld a, a
    xor b
    or d
    ld d, l
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    or e
    xor [hl]
    xor a
    ld a, a
    xor [hl]
    and l
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
    adc e
    adc b
    sub d
    sub e
    rst $20
    ld d, c
    add c
    cp b
    ld a, a
    and d
    and a
    and b
    xor l
    and [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    ld c, a
    xor [hl]
    or c
    and e
    and h
    or c
    ld a, a
    xor [hl]
    and l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    db $f4
    ld d, l
    xor h
    and b
    or e
    and d
    and a
    and h
    or d
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and c
    and h
    ld d, l
    xor h
    and b
    and e
    and h
    ld a, a
    and h
    and b
    or d
    xor b
    and h
    or c
    rst $20
    ld d, a
    nop
    adc b
    or e
    cp l
    ld a, a
    and b
    ld a, a
    and l
    or c
    and h
    and h
    ld c, a
    or d
    and h
    or c
    or l
    xor b
    and d
    and h
    rst $20
    ld a, a
    adc e
    and h
    or e
    cp l
    ld d, l
    and [hl]
    and h
    or e
    ld a, a
    and a
    and b
    xor a
    xor a
    and h
    xor l
    xor b
    xor l
    and [hl]
    rst $20
    ld e, b
    nop
    adc c
    or h
    or d
    or e
    ld a, a
    and b
    or d
    ld a, a
    adc b
    ld a, a
    or e
    and a
    xor [hl]
    or h
    and [hl]
    and a
    or e
    rst $20
    ld c, a
    sbc b
    xor [hl]
    or h
    db $e4
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    and d
    and a
    and b
    xor h
    xor a
    ld a, a
    xor h
    and b
    or e
    and h
    or c
    xor b
    and b
    xor e
    rst $20
    ld d, a
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
    add c
    xor [hl]
    or [hl]
    and c
    xor [hl]
    or [hl]
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
    ld a, a
    or d
    xor b
    or e
    rst $20
    ld d, a
    nop
    adc [hl]
    or h
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    cp l
    ld a, a
    and b
    xor l
    ld c, a
    xor [hl]
    or h
    or e
    or d
    xor b
    and e
    and h
    or c
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    xor b
    or e
    cp l
    ld d, l
    and a
    and b
    or c
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and a
    and b
    xor l
    and e
    xor e
    and h
    add sp, $51
    add b
    xor l
    ld a, a
    xor [hl]
    or h
    or e
    or d
    xor b
    and e
    and h
    or c
    ld a, a
    xor b
    or d
    ld a, a
    and b
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
    cp b
    xor [hl]
    or h
    ld d, l
    and [hl]
    and h
    or e
    ld a, a
    xor b
    xor l
    ld a, a
    and b
    ld a, a
    or e
    or c
    and b
    and e
    and h
    add sp, $51
    adc b
    or e
    ld a, a
    and [hl]
    or c
    xor [hl]
    or [hl]
    or d
    ld a, a
    and l
    and b
    or d
    or e
    db $f4
    ld a, a
    and c
    or h
    or e
    ld c, a
    xor b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld a, a
    xor b
    and [hl]
    xor l
    xor [hl]
    or c
    and h
    ld a, a
    and b
    xor l
    ld d, l
    or h
    xor l
    or d
    xor d
    xor b
    xor e
    xor e
    and h
    and e
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    ld d, l
    xor b
    xor l
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    rst $20
    ld d, c
    adc b
    and l
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    or [hl]
    and h
    ld a, a
    and a
    and b
    and e
    ld c, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    add c
    add b
    add e
    add [hl]
    add h
    or d
    add sp, -$18
    add sp, $57
    nop
    add b
    ld a, a
    or d
    and a
    and b
    and e
    cp b
    db $f4
    ld a, a
    xor [hl]
    xor e
    and e
    ld a, a
    xor h
    and b
    xor l
    ld c, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    or h
    cp b
    ld d, l
    or e
    and a
    xor b
    or d
    ld a, a
    or c
    and h
    and b
    xor e
    xor e
    cp b
    ld a, a
    or [hl]
    and h
    xor b
    or c
    and e
    ld d, l
    and l
    xor b
    or d
    and a
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, c
    adc b
    or e
    cp l
    ld a, a
    or e
    xor [hl]
    or e
    and b
    xor e
    xor e
    cp b
    ld a, a
    or [hl]
    and h
    and b
    xor d
    ld c, a
    and b
    xor l
    and e
    ld a, a
    xor b
    or e
    ld a, a
    and d
    xor [hl]
    or d
    or e
    ld a, a
    ldh a, [$fb]
    or $f6
    rst $20
    ld d, a
    nop
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    or e
    and a
    xor b
    xor l
    and [hl]
    or d
    ld a, a
    and d
    and b
    xor l
    ld c, a
    and a
    and b
    xor a
    xor a
    and h
    xor l
    ld a, a
    xor b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, l
    or c
    and b
    xor b
    or d
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    and e
    xor b
    xor e
    xor b
    and [hl]
    and h
    xor l
    or e
    xor e
    cp b
    db $f4
    ld a, a
    and h
    or l
    and h
    xor l
    ld d, l
    or e
    and a
    and h
    ld a, a
    or [hl]
    and h
    and b
    xor d
    ld a, a
    xor [hl]
    xor l
    and h
    or d
    rst $20
    ld d, a
    nop
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor e
    and h
    and b
    or c
    xor l
    ld a, a
    xor l
    and h
    or [hl]
    ld c, a
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
    ld a, a
    and b
    or d
    ld d, l
    or e
    and a
    and h
    cp b
    ld a, a
    and [hl]
    or c
    xor [hl]
    or [hl]
    rst $20
    ld d, c
    add c
    or h
    or e
    db $f4
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    or d
    ld c, a
    xor h
    or h
    or d
    or e
    ld a, a
    and c
    and h
    ld a, a
    or e
    and b
    or h
    and [hl]
    and a
    or e
    ld a, a
    and c
    cp b
    ld d, l
    or e
    and a
    and h
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
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
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    ld c, a
    and h
    and b
    or d
    xor b
    and h
    or c
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
    or [hl]
    and a
    and h
    xor l
    ld a, a
    or e
    and a
    and h
    cp b
    ld a, a
    and b
    or c
    and h
    ld d, l
    and a
    or h
    or c
    or e
    ld a, a
    xor [hl]
    or c
    ld a, a
    and b
    or d
    xor e
    and h
    and h
    xor a
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
    xor l
    xor [hl]
    or e
    ld a, a
    and b
    ld c, a
    or d
    or h
    or c
    and h
    ld a, a
    or e
    and a
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    and b
    or e
    rst $20
    and $51
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
    or e
    ld a, a
    adc h
    sub e
    add sp, -$74
    adc [hl]
    adc [hl]
    adc l
    and $7f
    add a
    or h
    and a
    and $55
    adc b
    push hl
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor a
    and a
    xor [hl]
    xor l
    and h
    rst $20
    ld d, c
    sub d
    and d
    or c
    and b
    xor h
    rst $20
    ld d, a
    nop
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
    sbc h
    ld a, a
    adc a
    or h
    or h
    ld c, a
    xor a
    or h
    xor a
    or h
    or h
    rst $20
    ld d, a
    nop
    sub e
    and a
    xor [hl]
    or d
    and h
    ld a, a
    xor h
    xor b
    or d
    and h
    or c
    and b
    and c
    xor e
    and h
    ld c, a
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub e
    or d
    rst $20
    ld d, c
    adc e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    or [hl]
    and a
    and b
    or e
    ld a, a
    or e
    and a
    and h
    cp b
    ld c, a
    and e
    xor b
    and e
    ld a, a
    and a
    and h
    or c
    and h
    rst $20
    ld d, c
    sub e
    and a
    and h
    cp b
    ld a, a
    or d
    or e
    xor [hl]
    xor e
    and h
    ld a, a
    and b
    ld a, a
    sub e
    adc h
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    or e
    and h
    and b
    and d
    and a
    xor b
    xor l
    and [hl]
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld a, a
    or e
    xor [hl]
    ld d, l
    add e
    adc b
    add [hl]
    ld a, a
    and a
    xor [hl]
    xor e
    and h
    or d
    rst $20
    ld d, c
    sub e
    and a
    and b
    or e
    ld a, a
    and d
    xor [hl]
    or d
    or e
    ld a, a
    xor h
    and h
    ld a, a
    and b
    ld c, a
    and c
    or h
    xor l
    and e
    xor e
    and h
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    and e
    xor b
    and e
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    and l
    xor b
    and [hl]
    or h
    or c
    and h
    ld a, a
    or [hl]
    and a
    and b
    or e
    cp l
    ld c, a
    xor e
    xor [hl]
    or d
    or e
    ld a, a
    xor b
    or d
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    rst $20
    ld d, c
    adc b
    ld a, a
    and e
    and h
    and d
    xor b
    and e
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and h
    and b
    and d
    and a
    ld c, a
    add e
    adc b
    add [hl]
    adc e
    add h
    sub e
    sub e
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld a, a
    or e
    xor [hl]
    ld d, l
    add e
    adc b
    add [hl]
    ld a, a
    or [hl]
    xor b
    or e
    and a
    xor [hl]
    or h
    or e
    ld a, a
    and b
    ld a, a
    sub e
    adc h
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
    xor h
    or h
    or d
    or e
    ld c, a
    and c
    and h
    ld a, a
    or e
    or c
    cp b
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    add e
    adc b
    add [hl]
    ld d, l
    or e
    and a
    and h
    xor b
    or c
    ld a, a
    or [hl]
    and b
    cp b
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld a, a
    xor l
    xor [hl]
    ld d, l
    and [hl]
    xor [hl]
    xor [hl]
    and e
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
    xor e
    and h
    and l
    or e
    ld c, a
    and b
    ld a, a
    or [hl]
    and b
    cp b
    ld a, a
    xor [hl]
    or h
    or e
    rst $20
    ld d, a
    nop
    adc h
    cp b
    ld a, a
    and a
    or h
    or d
    and c
    and b
    xor l
    and e
    ld a, a
    xor e
    xor b
    xor d
    and h
    or d
    ld c, a
    or e
    or c
    and b
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    or c
    and h
    ld a, a
    and b
    ld c, a
    and d
    xor [hl]
    xor e
    xor e
    and h
    and d
    or e
    xor [hl]
    or c
    db $f4
    ld a, a
    or [hl]
    xor [hl]
    or h
    xor e
    and e
    ld d, l
    cp b
    xor [hl]
    or h
    ld a, a
    xor a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    or e
    or c
    and b
    and e
    and h
    ld d, l
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and a
    xor b
    xor h
    and $57
    nop
    sub e
    and a
    and b
    or e
    ld a, a
    add c
    adc b
    adc e
    adc e
    rst $20
    ld d, c
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
    and a
    and h
    cp h
    xor e
    ld a, a
    and e
    xor [hl]
    ld a, a
    or [hl]
    and a
    and b
    or e
    and h
    or l
    and h
    or c
    ld d, l
    xor b
    or e
    ld a, a
    or e
    and b
    xor d
    and h
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    and h
    or e
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
    and a
    and h
    and b
    or c
    and e
    ld c, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    add c
    adc b
    adc e
    adc e
    and $51
    add h
    or l
    and h
    or c
    cp b
    xor [hl]
    xor l
    and h
    ld a, a
    and d
    and b
    xor e
    xor e
    or d
    ld c, a
    and a
    xor b
    xor h
    ld a, a
    and b
    ld a, a
    ld d, h
    adc h
    add b
    adc l
    adc b
    add b
    add d
    rst $20
    ld d, c
    adc b
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
    ld a, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld c, a
    and b
    or c
    and h
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    xor c
    and h
    and b
    xor e
    xor [hl]
    or h
    or d
    ld d, l
    xor [hl]
    and l
    ld a, a
    add c
    adc b
    adc e
    adc e
    db $f4
    ld a, a
    or e
    and a
    xor [hl]
    or h
    and [hl]
    and a
    add sp, $51
    sub [hl]
    and a
    xor [hl]
    ld a, a
    or [hl]
    xor [hl]
    or h
    xor e
    and e
    xor l
    cp [hl]
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld c, a
    or e
    xor [hl]
    ld a, a
    and c
    xor [hl]
    and b
    or d
    or e
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld d, l
    or e
    and a
    and h
    xor b
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    and $57
    nop
    add a
    xor b
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    db $e4
    and h
    ld a, a
    and b
    ld a, a
    xor l
    and h
    or [hl]
    ld c, a
    and l
    and b
    and d
    and h
    rst $20
    ld d, c
    sub e
    or c
    and b
    xor b
    xor l
    and h
    or c
    or d
    ld a, a
    or [hl]
    and a
    xor [hl]
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
    or h
    or c
    xor l
    ld a, a
    xor a
    or c
    xor [hl]
    ld a, a
    and a
    and b
    or l
    and h
    ld d, l
    or e
    xor [hl]
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    and b
    ld a, a
    xor a
    xor [hl]
    xor e
    xor b
    and d
    cp b
    ld d, l
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, c
    sub [hl]
    and a
    and b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld c, a
    and b
    xor a
    xor a
    or c
    xor [hl]
    and b
    and d
    and a
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
    and $51
    adc h
    cp b
    ld a, a
    xor a
    xor [hl]
    xor e
    xor b
    and d
    cp b
    ld a, a
    xor b
    or d
    ld a, a
    and b
    xor l
    ld c, a
    and b
    xor e
    xor e
    db $e3
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    and l
    and l
    and h
    xor l
    or d
    xor b
    or l
    and h
    ld d, l
    or [hl]
    xor b
    or e
    and a
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
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, a
    nop
    sub e
    adc h
    rst $30
    rst $30
    ld a, a
    or e
    and h
    and b
    and d
    and a
    and h
    or d
    ld c, a
    add c
    sub h
    add c
    add c
    adc e
    add h
    add c
    add h
    add b
    adc h
    rst $20
    ld d, c
    sub h
    or d
    and h
    ld a, a
    xor b
    or e
    ld a, a
    xor [hl]
    xor l
    ld a, a
    and b
    xor l
    ld c, a
    and b
    or b
    or h
    and b
    or e
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
    sub e
    and a
    and h
    ld a, a
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
    ld c, a
    xor h
    and b
    xor d
    and h
    or d
    ld a, a
    and b
    xor e
    xor e
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
    ld sp, hl
    or $7f
    xor [hl]
    and c
    and h
    cp b
    rst $20
    ld d, c
    sub e
    and a
    and b
    or e
    ld a, a
    xor b
    xor l
    and d
    xor e
    or h
    and e
    and h
    or d
    ld c, a
    and h
    or l
    and h
    xor l
    ld a, a
    xor [hl]
    or h
    or e
    or d
    xor b
    and e
    and h
    or c
    or d
    rst $20
    ld d, c
    sub e
    and a
    and h
    or c
    and h
    cp l
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and d
    and b
    xor l
    ld a, a
    xor l
    xor [hl]
    or [hl]
    ld a, a
    or h
    or d
    and h
    ld a, a
    add d
    sub h
    sub e
    ld d, l
    and b
    xor l
    cp b
    ld a, a
    or e
    xor b
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
    add d
    sub h
    sub e
    ld a, a
    and e
    xor [hl]
    or [hl]
    xor l
    ld c, a
    or d
    xor h
    and b
    xor e
    xor e
    ld a, a
    and c
    or h
    or d
    and a
    and h
    or d
    ld a, a
    or e
    xor [hl]
    ld d, l
    xor [hl]
    xor a
    and h
    xor l
    ld a, a
    xor l
    and h
    or [hl]
    ld a, a
    xor a
    and b
    or e
    and a
    or d
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
    and b
    xor e
    or d
    xor [hl]
    ld a, a
    and a
    and b
    or l
    and h
    ld c, a
    xor h
    cp b
    ld a, a
    and l
    and b
    or l
    xor [hl]
    or c
    xor b
    or e
    and h
    ld a, a
    sub e
    adc h
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
    ld c, a
    sub e
    adc h
    rst $30
    rst $30
    rst $20
    ld d, b
    ld d, b
    nop
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
    rst $20
    ld d, a
    nop
    sub [hl]
    xor [hl]
    or [hl]
    rst $20
    ld c, a
    sbc b
    xor [hl]
    or h
    db $e4
    and h
    ld a, a
    or e
    xor [hl]
    xor [hl]
    ld a, a
    xor h
    or h
    and d
    and a
    rst $20
    ld d, c
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
    and h
    ld c, a
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
    ld a, a
    or e
    xor [hl]
    ld d, l
    or d
    and a
    xor [hl]
    or [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and c
    and h
    and b
    or e
    ld a, a
    xor h
    and h
    rst $20
    ld d, b
    ld d, b
    nop
    adc b
    push hl
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    or e
    and a
    and b
    xor l
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld c, a
    and h
    xor l
    xor [hl]
    or h
    and [hl]
    and a
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
    adc h
    adc b
    sub d
    sub e
    sbc b
    ld a, a
    and d
    and b
    xor l
    ld a, a
    or [hl]
    and b
    xor b
    or e
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    ld c, a
    xor [hl]
    or l
    and h
    or c
    or [hl]
    and a
    and h
    xor e
    xor h
    and h
    and e
    ld a, a
    xor h
    and h
    rst $20
    ld e, b
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
    or e
    xor [hl]
    ld a, a
    and l
    and b
    and d
    and h
    ld c, a
    xor [hl]
    or e
    and a
    and h
    or c
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    or d
    ld a, a
    or e
    xor [hl]
    ld d, l
    and l
    xor b
    xor l
    and e
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld d, l
    cp b
    xor [hl]
    or h
    ld a, a
    or c
    and h
    and b
    xor e
    xor e
    cp b
    ld a, a
    and b
    or c
    and h
    add sp, $57
    nop
    sub d
    xor a
    xor e
    and b
    or d
    and a
    rst $20
    ld d, c
    adc b
    push hl
    ld a, a
    and l
    xor b
    or c
    or d
    or e
    ld a, a
    or h
    xor a
    rst $20
    ld c, a
    adc e
    and h
    or e
    cp l
    ld a, a
    and e
    xor [hl]
    ld a, a
    xor b
    or e
    rst $20
    ld d, a
    nop
    sub e
    and a
    and b
    or e
    ld c, a
    and d
    and b
    xor l
    cp [hl]
    ld a, a
    and c
    and h
    rst $20
    ld e, b
    nop
    adc h
    adc b
    sub d
    sub e
    sbc b
    ld a, a
    xor b
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
    ld c, a
    xor d
    and h
    and h
    xor a
    ld a, a
    xor b
    xor h
    xor a
    or c
    xor [hl]
    or l
    xor b
    xor l
    and [hl]
    rst $20
    ld d, c
    sub d
    and a
    and h
    ld a, a
    or [hl]
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    xor e
    xor [hl]
    or d
    and h
    ld a, a
    or e
    xor [hl]
    ld c, a
    or d
    xor [hl]
    xor h
    and h
    xor [hl]
    xor l
    and h
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    cp b
    xor [hl]
    or h
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
    add a
    and h
    or c
    and h
    cp l
    ld a, a
    xor h
    cp b
    ld a, a
    and b
    and e
    or l
    xor b
    and d
    and h
    rst $20
    ld d, c
    sub e
    and a
    and h
    ld a, a
    adc e
    add h
    add b
    add e
    add h
    sub c
    db $f4
    ld a, a
    adc h
    adc b
    sub d
    sub e
    sbc b
    db $f4
    ld c, a
    xor b
    or d
    ld a, a
    and b
    ld a, a
    xor a
    or c
    xor [hl]
    ld a, a
    or [hl]
    and a
    xor [hl]
    ld a, a
    or h
    or d
    and h
    or d
    ld d, l
    or [hl]
    and b
    or e
    and h
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
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
    and e
    or c
    and b
    xor b
    xor l
    ld a, a
    and b
    xor e
    xor e
    ld c, a
    or e
    and a
    and h
    xor b
    or c
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld d, l
    xor a
    xor e
    and b
    xor l
    or e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, c
    adc [hl]
    or c
    db $f4
    ld a, a
    cp c
    and b
    xor a
    ld a, a
    or e
    and a
    and h
    xor h
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld c, a
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
    sbc b
    xor [hl]
    or h
    ld a, a
    and c
    and h
    and b
    or e
    ld a, a
    adc h
    adc b
    sub d
    sub e
    sbc b
    rst $20
    ld c, a
    sub [hl]
    and a
    and b
    or e
    cp e
    ld a, a
    adc b
    ld a, a
    or e
    and h
    xor e
    xor e
    ld a, a
    cp b
    and b
    and $51
    sbc b
    xor [hl]
    or h
    ld a, a
    and b
    xor l
    and e
    ld a, a
    xor h
    and h
    ld a, a
    xor d
    xor b
    and e
    db $f4
    ld c, a
    or [hl]
    and h
    ld a, a
    xor h
    and b
    xor d
    and h
    ld a, a
    and b
    ld a, a
    xor a
    or c
    and h
    or e
    or e
    cp b
    ld d, l
    and e
    and b
    or c
    xor l
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    or e
    and h
    and b
    xor h
    rst $20
    ld d, a
    nop
    add a
    xor b
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
    xor [hl]
    or h
    or c
    ld a, a
    add c
    adc b
    adc d
    add h
    ld a, a
    sub d
    add a
    adc [hl]
    adc a
    add sp, $51
    add a
    and b
    or l
    and h
    ld a, a
    or [hl]
    and h
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    xor c
    or h
    or d
    or e
    ld c, a
    or e
    and a
    and h
    ld a, a
    add c
    adc b
    adc d
    add h
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld e, b
    nop
    adc b
    or e
    cp l
    ld a, a
    and b
    ld a, a
    and d
    xor [hl]
    xor [hl]
    xor e
    ld a, a
    add c
    adc b
    adc d
    add h
    rst $20
    ld c, a
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
    xor b
    or e
    and $57
    nop
    sub d
    xor [hl]
    or c
    or c
    cp b
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    cp [hl]
    ld c, a
    and b
    and l
    and l
    xor [hl]
    or c
    and e
    ld a, a
    xor b
    or e
    rst $20
    ld e, b
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    or e
    and a
    and b
    or e
    cp l
    add sp, -$18
    add sp, $51
    add b
    ld a, a
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
    rst $20
    ld d, c
    adc [hl]
    adc d
    rst $20
    ld a, a
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
    ld e, b
    nop
    ld d, d
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
    ld c, a
    or e
    and a
    and h
    ld a, a
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
    ld d, l
    and l
    xor [hl]
    or c
    ld a, a
    and b
    ld a, a
    add c
    adc b
    add d
    sbc b
    add d
    adc e
    add h
    add sp, $50
    ld d, b
    nop
    add d
    xor [hl]
    xor h
    and h
    ld a, a
    and c
    and b
    and d
    xor d
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    ld c, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    or e
    xor b
    xor h
    and h
    rst $20
    ld d, a
    nop
    add a
    xor [hl]
    or [hl]
    ld a, a
    and e
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
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor l
    and h
    or [hl]
    ld a, a
    add c
    adc b
    add d
    sbc b
    add d
    adc e
    add h
    and $51
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    or e
    and b
    xor d
    and h
    ld a, a
    xor b
    or e
    ld c, a
    xor [hl]
    xor l
    ld a, a
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
    ld d, l
    and b
    xor l
    and e
    ld a, a
    xor b
    xor l
    ld a, a
    and d
    and b
    or l
    and h
    or d
    rst $20
    ld d, a
    nop
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
    rst $20
    ld d, a
    nop
    add b
    ld a, a
    xor a
    xor e
    and b
    xor b
    xor l
    ld a, a
    and d
    xor b
    or e
    cp b
    ld a, a
    add c
    adc b
    adc d
    add h
    ld c, a
    xor b
    or d
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and h
    xor l
    xor [hl]
    or h
    and [hl]
    and a
    ld d, l
    and l
    xor [hl]
    or c
    ld a, a
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
    cp [hl]
    ld a, a
    xor a
    or h
    or e
    ld a, a
    and b
    ld c, a
    or d
    and a
    xor [hl]
    xor a
    xor a
    xor b
    xor l
    and [hl]
    ld a, a
    and c
    and b
    or d
    xor d
    and h
    or e
    ld d, l
    xor [hl]
    xor l
    ld a, a
    and b
    xor l
    ld a, a
    adc h
    sub e
    add c
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    or d
    and h
    ld a, a
    add c
    adc b
    adc d
    add h
    or d
    ld a, a
    and b
    or c
    and h
    ld c, a
    and d
    xor [hl]
    xor [hl]
    xor e
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    or e
    and a
    and h
    cp b
    db $e4
    and h
    ld d, l
    or [hl]
    and b
    cp b
    ld a, a
    and h
    or a
    xor a
    and h
    xor l
    or d
    xor b
    or l
    and h
    rst $20
    ld d, a
    nop
    sub [hl]
    xor [hl]
    or [hl]
    add sp, $7f
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    add c
    adc b
    adc d
    add h
    ld a, a
    xor b
    or d
    ld c, a
    or c
    and h
    and b
    xor e
    xor e
    cp b
    ld a, a
    and d
    xor [hl]
    xor [hl]
    xor e
    rst $20
    ld d, a
    nop
    sub h
    or d
    and h
    ld a, a
    sub c
    add h
    adc a
    add h
    adc e
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor d
    and h
    and h
    xor a
    ld c, a
    and c
    or h
    and [hl]
    or d
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or [hl]
    and h
    and b
    xor d
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    or [hl]
    and b
    cp b
    add sp, $51
    adc a
    or h
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
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
    or e
    ld a, a
    or e
    and a
    and h
    ld d, l
    or e
    xor [hl]
    xor a
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor e
    xor b
    or d
    or e
    ld d, l
    and l
    xor [hl]
    or c
    ld a, a
    and c
    and h
    or d
    or e
    ld a, a
    or c
    and h
    or d
    or h
    xor e
    or e
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
    or d
    and h
    and h
    xor l
    ld a, a
    and b
    xor l
    cp b
    ld c, a
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
    and $51
    adc b
    or e
    cp l
    ld a, a
    or d
    or h
    xor a
    xor a
    xor [hl]
    or d
    and h
    and e
    ld a, a
    or e
    xor [hl]
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
    ld a, a
    and [hl]
    xor [hl]
    ld d, l
    or h
    xor a
    ld a, a
    xor [hl]
    xor l
    and h
    ld a, a
    xor e
    and h
    or l
    and h
    xor e
    rst $20
    ld d, a
    nop
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add c
    add b
    add e
    add [hl]
    add h
    or d
    ld c, a
    and b
    or c
    and h
    ld a, a
    xor [hl]
    or [hl]
    xor l
    and h
    and e
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    and c
    cp b
    ld d, l
    or d
    xor d
    xor b
    xor e
    xor e
    and h
    and e
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    or d
    add sp, $51
    adc b
    ld a, a
    or d
    and h
    and h
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
    or e
    ld a, a
    xor e
    and h
    and b
    or d
    or e
    ld a, a
    xor [hl]
    xor l
    and h
    add sp, $51
    sub e
    and a
    xor [hl]
    or d
    and h
    ld a, a
    add c
    add b
    add e
    add [hl]
    add h
    or d
    ld a, a
    and a
    and b
    or l
    and h
    ld c, a
    and b
    xor h
    and b
    cp c
    xor b
    xor l
    and [hl]
    ld a, a
    or d
    and h
    and d
    or c
    and h
    or e
    or d
    rst $20
    ld e, b
    nop
    adc l
    xor [hl]
    or [hl]
    ld a, a
    or e
    and a
    and h
    xor l
    add sp, -$18
    add sp, $51
    sub [hl]
    and a
    xor b
    and d
    and a
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld a, a
    cp $4f
    add c
    add b
    add e
    add [hl]
    add h
    or d
    ld a, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    adc b
    ld d, l
    and e
    and h
    or d
    and d
    or c
    xor b
    and c
    and h
    and $57
    nop
    add d
    xor [hl]
    xor h
    and h
    ld a, a
    or l
    xor b
    or d
    xor b
    or e
    ld a, a
    xor h
    and h
    ld a, a
    and b
    xor l
    cp b
    ld c, a
    or e
    xor b
    xor h
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    xor b
    or d
    and a
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    add b
    sub e
    sub e
    add b
    add d
    adc d
    ld a, a
    xor [hl]
    and l
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
    xor b
    xor l
    and d
    or c
    and h
    and b
    or d
    and h
    or d
    ld d, l
    and b
    ld a, a
    xor e
    xor b
    or e
    or e
    xor e
    and h
    ld a, a
    and c
    xor b
    or e
    add sp, $51
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
    ld c, a
    or h
    or d
    and h
    ld a, a
    add l
    adc e
    add b
    sub d
    add a
    ld a, a
    and b
    xor l
    cp b
    ld d, l
    or e
    xor b
    xor h
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and e
    and h
    or d
    xor b
    or c
    and h
    add sp, $58
    nop
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or h
    xor a
    ld a, a
    or e
    xor [hl]
    ld a, a
    adc e
    ld sp, hl
    or $4f
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    xor [hl]
    and c
    and h
    cp b
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $51
    add b
    xor l
    cp b
    ld a, a
    and a
    xor b
    and [hl]
    and a
    and h
    or c
    db $f4
    ld a, a
    or e
    and a
    and h
    cp b
    ld c, a
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    or h
    xor l
    or c
    or h
    xor e
    cp b
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
    ld c, a
    or h
    or d
    and h
    ld a, a
    add d
    sub h
    sub e
    ld a, a
    xor [hl]
    or h
    or e
    or d
    xor b
    and e
    and h
    ld d, l
    xor [hl]
    and l
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    add sp, $58
    nop
    sub e
    and a
    and h
    ld a, a
    sub d
    adc a
    add h
    add h
    add e
    ld a, a
    xor [hl]
    and l
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
    xor b
    xor l
    and d
    or c
    and h
    and b
    or d
    and h
    or d
    ld d, l
    and b
    ld a, a
    xor e
    xor b
    or e
    or e
    xor e
    and h
    ld a, a
    and c
    xor b
    or e
    add sp, $51
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
    ld c, a
    or h
    or d
    and h
    ld a, a
    add l
    adc e
    sbc b
    ld a, a
    xor [hl]
    or h
    or e
    or d
    xor b
    and e
    and h
    ld d, l
    xor [hl]
    and l
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    add sp, $58
    nop
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or h
    xor a
    ld a, a
    or e
    xor [hl]
    ld a, a
    adc e
    ei
    or $4f
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    xor [hl]
    and c
    and h
    cp b
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $51
    add b
    xor l
    cp b
    ld a, a
    and a
    xor b
    and [hl]
    and a
    and h
    or c
    db $f4
    ld a, a
    or e
    and a
    and h
    cp b
    ld c, a
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    or h
    xor l
    or c
    or h
    xor e
    cp b
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
    ld c, a
    or h
    or d
    and h
    ld a, a
    sub d
    sub e
    sub c
    add h
    adc l
    add [hl]
    sub e
    add a
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
    add sp, $58
    nop
    sub e
    and a
    and h
    ld a, a
    add e
    add h
    add l
    add h
    adc l
    sub d
    add h
    ld a, a
    xor [hl]
    and l
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
    xor b
    xor l
    and d
    or c
    and h
    and b
    or d
    and h
    or d
    ld d, l
    and b
    ld a, a
    xor e
    xor b
    or e
    or e
    xor e
    and h
    ld a, a
    and c
    xor b
    or e
    add sp, $51
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
    ld c, a
    or h
    or d
    and h
    ld a, a
    sub d
    sub h
    sub c
    add l
    ld a, a
    xor [hl]
    or h
    or e
    or d
    xor b
    and e
    and h
    ld d, l
    xor [hl]
    and l
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    add sp, $58
    nop
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or h
    xor a
    ld a, a
    or e
    xor [hl]
    ld a, a
    adc e
    db $fd
    or $4f
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    xor [hl]
    and c
    and h
    cp b
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $51
    add b
    xor l
    cp b
    ld a, a
    and a
    xor b
    and [hl]
    and a
    and h
    or c
    db $f4
    ld a, a
    or e
    and a
    and h
    cp b
    ld c, a
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    or h
    xor l
    or c
    or h
    xor e
    cp b
    rst $20
    ld e, b
    nop
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    cp l
    ld c, a
    sub d
    adc a
    add h
    add d
    adc b
    add b
    adc e
    ld a, a
    and b
    and c
    xor b
    xor e
    xor b
    or e
    xor b
    and h
    or d
    ld d, l
    xor b
    xor l
    and d
    or c
    and h
    and b
    or d
    and h
    ld a, a
    and b
    ld a, a
    and c
    xor b
    or e
    add sp, $58
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
    or [hl]
    xor b
    xor e
    xor e
    ld c, a
    xor [hl]
    and c
    and h
    cp b
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld e, b
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
    or [hl]
    xor b
    xor e
    xor e
    ld c, a
    and e
    xor [hl]
    ld a, a
    and b
    xor l
    cp b
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
    or e
    and a
    and h
    ld a, a
    or d
    and b
    xor d
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    and [hl]
    xor [hl]
    xor e
    and e
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    or d
    and b
    or [hl]
    ld a, a
    add d
    sub h
    add c
    adc [hl]
    adc l
    add h
    cp l
    ld c, a
    xor h
    xor [hl]
    or e
    and a
    and h
    or c
    ld a, a
    and e
    xor b
    and h
    ld a, a
    or e
    or c
    cp b
    xor b
    xor l
    and [hl]
    ld d, l
    or e
    xor [hl]
    ld a, a
    and h
    or d
    and d
    and b
    xor a
    and h
    ld a, a
    and l
    or c
    xor [hl]
    xor h
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
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    and h
    or c
    and h
    and d
    or e
    and h
    and e
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld d, l
    xor h
    and h
    xor h
    xor [hl]
    or c
    cp b
    ld a, a
    xor [hl]
    and l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    or e
    and a
    and b
    or e
    ld a, a
    and a
    and b
    and e
    ld a, a
    and e
    xor b
    and h
    and e
    add sp, $57
    nop
    add e
    xor b
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    ld c, a
    xor a
    and b
    cp b
    ld a, a
    or c
    and h
    or d
    xor a
    and h
    and d
    or e
    or d
    and $55
    add c
    xor e
    and h
    or d
    or d
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    and d
    and b
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor a
    or c
    and b
    cp b
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    xor h
    cp b
    ld a, a
    add d
    adc e
    add h
    add l
    add b
    adc b
    sub c
    sbc b
    add sp, $51
    sub d
    xor l
    xor b
    and l
    and l
    rst $20
    ld a, a
    adc b
    ld a, a
    and d
    and b
    xor l
    cp [hl]
    ld c, a
    or d
    or e
    xor [hl]
    xor a
    ld a, a
    and d
    or c
    cp b
    xor b
    xor l
    and [hl]
    add sp, -$18
    add sp, $57
    nop
    adc h
    cp b
    ld a, a
    add [hl]
    sub c
    adc [hl]
    sub [hl]
    adc e
    adc b
    sub e
    add a
    add h
    add sp, -$18
    add sp, $4f
    sub [hl]
    and a
    cp b
    ld a, a
    and e
    xor b
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and e
    xor b
    and h
    and $57
    nop
    adc b
    ld a, a
    and b
    xor h
    ld a, a
    and b
    ld a, a
    add d
    add a
    add b
    adc l
    adc l
    add h
    adc e
    add h
    sub c
    rst $20
    ld c, a
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
    or d
    xor a
    xor b
    or c
    xor b
    or e
    or d
    ld d, l
    or h
    xor a
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    xor b
    or d
    and d
    and a
    xor b
    and h
    and l
    rst $20
    ld d, a
    nop
    ld d, e
    sbc h
    ld a, a
    add a
    and h
    cp b
    db $f4
    ld c, a
    ld d, d
    rst $20
    ld a, a
    sub [hl]
    and a
    and b
    or e
    ld d, l
    and c
    or c
    xor b
    xor l
    and [hl]
    or d
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and a
    and h
    or c
    and h
    and $55
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    and e
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    and e
    and h
    and b
    and e
    rst $20
    ld d, c
    adc b
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and b
    or e
    ld a, a
    xor e
    and h
    and b
    or d
    or e
    ld c, a
    xor h
    and b
    xor d
    and h
    ld a, a
    or e
    and a
    and h
    xor h
    ld a, a
    and l
    and b
    xor b
    xor l
    or e
    rst $20
    ld d, l
    adc e
    and h
    or e
    cp l
    ld a, a
    and [hl]
    xor [hl]
    db $f4
    ld a, a
    xor a
    and b
    xor e
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    and b
    or e
    and $4f
    sbc b
    xor [hl]
    or h
    ld a, a
    or d
    or e
    xor b
    xor l
    xor d
    and h
    or c
    rst $20
    ld d, c
    adc b
    ld a, a
    or e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    xor b
    or e
    ld a, a
    and h
    and b
    or d
    cp b
    ld a, a
    xor [hl]
    xor l
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    or e
    xor [hl]
    xor [hl]
    rst $20
    ld e, b
    nop
    ld d, e
    sbc h
    ld a, a
    sub [hl]
    and h
    xor e
    xor e
    db $f4
    ld c, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    and b
    or e
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld d, l
    or [hl]
    xor b
    xor h
    xor a
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, c
    sub e
    xor [hl]
    or h
    and [hl]
    and a
    and h
    xor l
    ld a, a
    or e
    and a
    and h
    xor h
    ld a, a
    or h
    xor a
    ld a, a
    and b
    ld c, a
    and c
    xor b
    or e
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    rst $20
    ld e, b
    nop
    add a
    xor [hl]
    or [hl]
    cp l
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    ld d, h
    add e
    add h
    sub a
    ld c, a
    and d
    xor [hl]
    xor h
    xor b
    xor l
    and [hl]
    db $f4
    ld a, a
    xor a
    and b
    xor e
    and $55
    adc b
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    and d
    and b
    or h
    and [hl]
    and a
    or e
    ld a, a
    and b
    ld d, l
    add d
    sub h
    add c
    adc [hl]
    adc l
    add h
    rst $20
    ld d, c
    adc b
    ld a, a
    and d
    and b
    xor l
    cp [hl]
    ld a, a
    and l
    xor b
    xor l
    and e
    ld a, a
    or e
    and a
    and h
    ld c, a
    and [hl]
    or c
    xor [hl]
    or [hl]
    xor l
    db $e3
    or h
    xor a
    ld a, a
    adc h
    add b
    sub c
    adc [hl]
    sub [hl]
    add b
    adc d
    ld d, l
    cp b
    and h
    or e
    rst $20
    ld d, c
    adc b
    ld a, a
    and e
    xor [hl]
    or h
    and c
    or e
    ld a, a
    or e
    and a
    and h
    or c
    and h
    ld a, a
    and b
    or c
    and h
    ld c, a
    and b
    xor l
    cp b
    ld a, a
    xor e
    and h
    and l
    or e
    rst $20
    ld a, a
    sub [hl]
    and h
    xor e
    xor e
    db $f4
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
    and [hl]
    and h
    or e
    ld a, a
    and [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    rst $20
    ld d, l
    adc b
    cp a
    and h
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    and b
    ld a, a
    xor e
    xor [hl]
    or e
    ld a, a
    or e
    xor [hl]
    ld d, l
    and b
    and d
    and d
    xor [hl]
    xor h
    xor a
    xor e
    xor b
    or d
    and a
    db $f4
    ld a, a
    xor a
    and b
    xor e
    rst $20
    ld d, c
    sub d
    xor h
    and h
    xor e
    xor e
    ld a, a
    cp b
    and b
    ld a, a
    xor e
    and b
    or e
    and h
    or c
    rst $20
    ld d, a
    nop
    add h
    or l
    and h
    xor l
    ld a, a
    or [hl]
    and h
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    xor l
    xor [hl]
    or e
    ld c, a
    xor b
    and e
    and h
    xor l
    or e
    xor b
    and l
    cp b
    ld a, a
    or e
    and a
    and h
    ld d, l
    or [hl]
    and b
    cp b
    or [hl]
    and b
    or c
    and e
    ld a, a
    add [hl]
    add a
    adc [hl]
    sub d
    sub e
    or d
    rst $20
    ld d, c
    add b
    ld a, a
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
    xor h
    xor b
    and [hl]
    and a
    or e
    ld a, a
    and c
    and h
    ld a, a
    and b
    and c
    xor e
    and h
    ld a, a
    or e
    xor [hl]
    ld d, l
    or h
    xor l
    xor h
    and b
    or d
    xor d
    ld a, a
    or e
    and a
    and h
    xor h
    add sp, $57
    nop
    sub h
    or c
    or c
    and [hl]
    add sp, -$18
    add sp, -$80
    or [hl]
    and b
    and b
    add sp, -$18
    add sp, $4f
    add a
    or h
    and a
    or h
    add sp, -$18
    add sp, -$5a
    or c
    and b
    and b
    add sp, -$18
    ld d, a
    nop
    add a
    or [hl]
    and b
    rst $20
    ld c, a
    adc b
    push hl
    ld a, a
    or d
    and b
    or l
    and h
    and e
    rst $20
    ld e, b
    nop
    sub e
    and a
    and h
    ld a, a
    add [hl]
    add a
    adc [hl]
    sub d
    sub e
    or d
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and c
    and h
    ld c, a
    xor b
    and e
    and h
    xor l
    or e
    xor b
    and l
    xor b
    and h
    and e
    ld a, a
    and c
    cp b
    ld a, a
    or e
    and a
    and h
    ld d, l
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
    add sp, $57
    nop
    adc d
    and h
    xor d
    and h
    xor d
    and h
    add sp, -$18
    add sp, -$18
    ld c, a
    adc d
    or [hl]
    and b
    and b
    and b
    and a
    rst $20
    ld d, a
    nop
    add a
    xor h
    xor h
    and $4f
    sub [hl]
    and a
    and b
    or e
    ld a, a
    and b
    xor h
    ld a, a
    adc b
    ld a, a
    and e
    xor [hl]
    xor b
    xor l
    and [hl]
    and $58
    nop
    sub d
    xor [hl]
    or c
    or c
    cp b
    rst $20
    ld a, a
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    xor a
    xor [hl]
    or d
    or d
    and h
    or d
    or d
    and h
    and e
    rst $20
    ld d, a
    nop
    add c
    and h
    ld a, a
    and [hl]
    xor [hl]
    xor l
    and h
    rst $20
    ld c, a
    add h
    or l
    xor b
    xor e
    ld a, a
    or d
    xor a
    xor b
    or c
    xor b
    or e
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    and h
    or [hl]
    rst $20
    ld c, a
    sub e
    and a
    and h
    ld a, a
    or d
    xor a
    xor b
    or c
    xor b
    or e
    ld a, a
    xor e
    and h
    and l
    or e
    rst $20
    ld e, b
    nop
    adc h
    cp b
    ld a, a
    and l
    or c
    xor b
    and h
    xor l
    and e
    or d
    ld a, a
    or [hl]
    and h
    or c
    and h
    ld c, a
    xor a
    xor [hl]
    or d
    or d
    and h
    or d
    or d
    and h
    and e
    ld a, a
    or e
    xor [hl]
    xor [hl]
    rst $20
    ld d, a
    nop
    add [hl]
    add a
    adc [hl]
    sub d
    sub e
    rst $20
    ld a, a
    adc l
    xor [hl]
    rst $20
    ld c, a
    adc d
    or [hl]
    and b
    and b
    and b
    and a
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    and h
    or c
    and h
    ld c, a
    xor b
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    add [hl]
    add a
    adc [hl]
    sub d
    sub e
    and $58
    nop
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
    and c
    and h
    and h
    xor l
    ld c, a
    and e
    or c
    and h
    and b
    xor h
    xor b
    xor l
    and [hl]
    add sp, -$18
    add sp, $57
    nop
    add c
    and h
    ld a, a
    and d
    or h
    or c
    or d
    and h
    and e
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld c, a
    xor h
    and h
    rst $20
    ld a, a
    adc d
    or [hl]
    and b
    and b
    and b
    and a
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    and b
    or e
    rst $20
    ld e, b
    nop
    sub [hl]
    and h
    ld a, a
    and d
    and b
    xor l
    cp [hl]
    ld a, a
    and d
    or c
    and b
    and d
    xor d
    ld c, a
    or e
    and a
    and h
    ld a, a
    xor b
    and e
    and h
    xor l
    or e
    xor b
    or e
    cp b
    ld a, a
    xor [hl]
    and l
    ld d, l
    or e
    and a
    and h
    ld a, a
    add [hl]
    add a
    adc [hl]
    sub d
    sub e
    or d
    add sp, $57
    nop
    add a
    or h
    and a
    or h
    and a
    or h
    add sp, -$18
    add sp, $4f
    add c
    and h
    and b
    or e
    ld a, a
    xor h
    and h
    ld a, a
    xor l
    xor [hl]
    or e
    rst $20
    ld d, a
    nop
    add a
    or h
    and a
    and $4f
    sub [hl]
    and a
    xor [hl]
    and $7f
    sub [hl]
    and a
    and b
    or e
    and $58
    nop
    adc h
    and b
    cp b
    ld a, a
    or e
    and a
    and h
    ld a, a
    and e
    and h
    xor a
    and b
    or c
    or e
    and h
    and e
    ld c, a
    or d
    xor [hl]
    or h
    xor e
    or d
    ld a, a
    xor [hl]
    and l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    or c
    and h
    or d
    or e
    ld a, a
    xor b
    xor l
    ld a, a
    xor a
    and h
    and b
    and d
    and h
    add sp, -$18
    add sp, $57
    nop
    add d
    xor [hl]
    xor h
    and h
    db $f4
    ld a, a
    and d
    and a
    xor b
    xor e
    and e
    rst $20
    ld a, a
    adc b
    ld c, a
    or d
    and h
    and b
    xor e
    and h
    and e
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    or d
    xor a
    and b
    and d
    and h
    ld d, l
    or [hl]
    xor b
    or e
    and a
    ld a, a
    or [hl]
    and a
    xor b
    or e
    and h
    ld a, a
    xor h
    and b
    and [hl]
    xor b
    and d
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
    or c
    and h
    or d
    or e
    ld a, a
    and a
    and h
    or c
    and h
    rst $20
    ld d, a
    nop
    add [hl]
    xor b
    or l
    and h
    add sp, -$18
    add sp, -$54
    and h
    add sp, -$18
    add sp, $4f
    cp b
    xor [hl]
    or h
    or c
    add sp, -$18
    add sp, -$4e
    xor [hl]
    or h
    xor e
    add sp, -$18
    add sp, $57
    nop
    add [hl]
    and b
    or d
    xor a
    rst $20
    ld e, b
    nop
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    or h
    xor l
    and e
    and h
    or c
    ld c, a
    xor a
    xor [hl]
    or d
    or d
    and h
    or d
    or d
    xor b
    xor [hl]
    xor l
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    add sp, -$18
    add sp, -$4e
    and a
    and b
    xor e
    xor e
    add sp, -$18
    add sp, $4f
    xor c
    xor [hl]
    xor b
    xor l
    add sp, -$18
    add sp, -$4c
    or d
    add sp, -$18
    add sp, $57
    nop
    sub [hl]
    and a
    and b
    or e
    ld c, a
    and b
    ld a, a
    xor l
    xor b
    and [hl]
    and a
    or e
    xor h
    and b
    or c
    and h
    rst $20
    ld e, b
    nop
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    xor a
    xor [hl]
    or d
    or d
    and h
    or d
    or d
    and h
    and e
    rst $20
    ld d, a
    nop
    sbc c
    xor [hl]
    xor h
    and c
    xor b
    and h
    or d
    rst $20
    ld d, a
    nop
    add a
    and b
    and $58
    nop
    adc b
    ld a, a
    or c
    and h
    and [hl]
    and b
    xor b
    xor l
    and h
    and e
    ld a, a
    xor h
    cp b
    ld c, a
    or d
    and h
    xor l
    or d
    and h
    or d
    rst $20
    ld d, a
    nop
    sub h
    or c
    and [hl]
    and b
    and a
    add sp, -$18
    add sp, $4f
    sub h
    or c
    and l
    and l
    add sp, -$18
    add sp, -$18
    ld d, a
    nop
    sub [hl]
    and a
    xor [hl]
    xor [hl]
    rst $20
    ld e, b
    nop
    adc b
    ld a, a
    and l
    and h
    xor e
    xor e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and h
    or l
    xor b
    xor e
    ld c, a
    or d
    xor a
    xor b
    or c
    xor b
    or e
    or d
    ld a, a
    and e
    and h
    or d
    xor a
    xor b
    or e
    and h
    ld d, l
    xor h
    cp b
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    add h
    xor l
    or e
    and h
    or c
    and h
    and e
    ld a, a
    xor a
    or h
    or c
    xor b
    and l
    xor b
    and h
    and e
    db $f4
    ld c, a
    xor a
    or c
    xor [hl]
    or e
    and h
    and d
    or e
    and h
    and e
    ld a, a
    cp c
    xor [hl]
    xor l
    and h
    rst $20
    ld d, c
    ld d, d
    cp l
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
    and l
    or h
    xor e
    xor e
    cp b
    ld a, a
    and a
    and h
    and b
    xor e
    and h
    and e
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    add [hl]
    add a
    adc [hl]
    sub d
    sub e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    or e
    and a
    and h
    ld c, a
    or c
    and h
    or d
    or e
    xor e
    and h
    or d
    or d
    ld a, a
    or d
    xor [hl]
    or h
    xor e
    ld a, a
    xor [hl]
    and l
    ld d, l
    add d
    sub h
    add c
    adc [hl]
    adc l
    add h
    cp l
    ld a, a
    xor h
    xor [hl]
    or e
    and a
    and h
    or c
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    xor h
    xor [hl]
    or e
    and a
    and h
    or c
    cp l
    ld a, a
    or d
    xor [hl]
    or h
    xor e
    ld c, a
    or [hl]
    and b
    or d
    ld a, a
    and d
    and b
    xor e
    xor h
    and h
    and e
    add sp, $51
    adc b
    or e
    ld a, a
    and e
    and h
    xor a
    and b
    or c
    or e
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld c, a
    or e
    and a
    and h
    ld a, a
    and b
    and l
    or e
    and h
    or c
    xor e
    xor b
    and l
    and h
    rst $20
    ld d, a
    nop
    add [hl]
    xor b
    or l
    and h
    add sp, -$18
    add sp, -$54
    and h
    add sp, -$18
    add sp, $4f
    and c
    xor e
    xor [hl]
    xor [hl]
    and e
    add sp, -$18
    add sp, $57
    nop
    add [hl]
    or c
    xor [hl]
    and b
    xor l
    rst $20
    ld e, b
    nop
    adc b
    ld a, a
    and l
    and h
    and h
    xor e
    ld a, a
    and b
    xor l
    and h
    xor h
    xor b
    and d
    ld a, a
    and b
    xor l
    and e
    ld c, a
    or [hl]
    and h
    and b
    xor d
    add sp, -$18
    add sp, $57
    nop
    sub h
    or c
    and l
    and l
    add sp, -$18
    add sp, $7f
    adc d
    or [hl]
    and b
    and b
    and a
    rst $20
    ld d, a
    nop
    sub d
    xor [hl]
    xor h
    and h
    db $e3
    ld c, a
    or e
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    and l
    and h
    xor e
    xor e
    ld a, a
    xor [hl]
    or h
    or e
    rst $20
    ld e, b
    nop
    add a
    and b
    xor b
    or c
    ld a, a
    and e
    xor b
    and e
    xor l
    cp [hl]
    ld a, a
    and l
    and b
    xor e
    xor e
    ld c, a
    xor [hl]
    or h
    or e
    rst $20
    ld a, a
    adc b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and b
    xor l
    ld d, l
    and h
    or l
    xor b
    xor e
    ld a, a
    or d
    xor a
    xor b
    or c
    xor b
    or e
    rst $20
    ld d, a
    nop
    adc d
    and h
    add sp, -$18
    xor d
    and h
    add sp, -$18
    add sp, -$56
    and h
    add sp, -$18
    add sp, $4f
    xor d
    and h
    add sp, -$18
    xor d
    and h
    add sp, -$18
    add sp, -$56
    and h
    rst $20
    rst $20
    ld d, a
    nop
    adc d
    and h
    and h
    and h
    rst $20
    ld e, b
    nop
    sub [hl]
    and a
    and b
    or e
    cp l
    ld a, a
    and [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    xor l
    ld c, a
    and a
    and h
    or c
    and h
    and $57
    nop
    add c
    and h
    ld a, a
    and [hl]
    xor [hl]
    xor l
    and h
    add sp, -$18
    add sp, $4f
    adc b
    xor l
    or e
    or c
    or h
    and e
    and h
    or c
    or d
    add sp, -$18
    add sp, $57
    nop
    adc h
    sub c
    add sp, -$7b
    sub h
    adc c
    adc b
    sbc h
    ld a, a
    add a
    and h
    and a
    and $7f
    sbc b
    xor [hl]
    or h
    ld c, a
    and d
    and b
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    and b
    or l
    and h
    ld a, a
    xor h
    and h
    and $51
    sub e
    and a
    and b
    xor l
    xor d
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $7f
    add c
    or h
    or e
    db $f4
    ld a, a
    adc b
    ld c, a
    and d
    and b
    xor h
    and h
    ld a, a
    and a
    and h
    or c
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor h
    cp b
    ld d, l
    xor [hl]
    or [hl]
    xor l
    ld a, a
    and l
    or c
    and h
    and h
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    add sp, $51
    adc b
    ld a, a
    and d
    and b
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and d
    and b
    xor e
    xor h
    ld c, a
    or e
    and a
    and h
    ld a, a
    or d
    xor [hl]
    or h
    xor e
    ld a, a
    xor [hl]
    and l
    ld d, l
    add d
    sub h
    add c
    adc [hl]
    adc l
    add h
    cp l
    ld a, a
    xor h
    xor [hl]
    or e
    and a
    and h
    or c
    add sp, $51
    adc b
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
    ld a, a
    adc h
    add b
    sub c
    adc [hl]
    sub [hl]
    add b
    adc d
    cp l
    ld c, a
    or d
    xor a
    xor b
    or c
    xor b
    or e
    ld a, a
    and a
    and b
    or d
    ld a, a
    and [hl]
    xor [hl]
    xor l
    and h
    ld d, l
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    and b
    and l
    or e
    and h
    or c
    xor e
    xor b
    and l
    and h
    add sp, $51
    adc b
    ld a, a
    xor h
    or h
    or d
    or e
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
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor d
    xor b
    xor l
    and e
    ld d, l
    and d
    xor [hl]
    xor l
    and d
    and h
    or c
    xor l
    rst $20
    ld d, c
    add l
    xor [hl]
    xor e
    xor e
    xor [hl]
    or [hl]
    ld a, a
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    cp b
    ld c, a
    and a
    xor [hl]
    xor h
    and h
    db $f4
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    add a
    adc [hl]
    sub h
    sub d
    add h
    ld a, a
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    xor [hl]
    xor [hl]
    or e
    ld d, l
    xor [hl]
    and l
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    or e
    xor [hl]
    or [hl]
    and h
    or c
    add sp, $57
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
    and $4f
    sub [hl]
    and a
    cp b
    ld a, a
    and b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and a
    and h
    or c
    and h
    and $57
    nop
    adc b
    ld a, a
    and [hl]
    xor b
    or l
    and h
    ld a, a
    or h
    xor a
    rst $20
    ld e, b
    nop
    adc b
    push hl
    ld a, a
    xor l
    xor [hl]
    or e
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
    and l
    xor [hl]
    or c
    and [hl]
    and h
    or e
    ld a, a
    or e
    and a
    xor b
    or d
    rst $20
    ld d, a
    nop
    sub e
    and a
    xor b
    or d
    ld a, a
    xor [hl]
    xor e
    and e
    ld a, a
    and [hl]
    or h
    cp b
    ld a, a
    and d
    and b
    xor h
    and h
    ld c, a
    and b
    xor l
    and e
    ld a, a
    and d
    xor [hl]
    xor h
    xor a
    xor e
    and b
    xor b
    xor l
    and h
    and e
    ld d, l
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    or h
    or d
    ld a, a
    and a
    and b
    or c
    xor h
    xor b
    xor l
    and [hl]
    ld d, l
    or h
    or d
    and h
    xor e
    and h
    or d
    or d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, c
    sub [hl]
    and h
    db $e4
    and h
    ld a, a
    or e
    and b
    xor e
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    or e
    ld c, a
    xor [hl]
    or l
    and h
    or c
    ld a, a
    and b
    or d
    ld a, a
    and b
    and e
    or h
    xor e
    or e
    or d
    rst $20
    ld d, a
    nop
    adc a
    xor e
    and h
    and b
    or d
    and h
    rst $20
    ld c, a
    adc l
    xor [hl]
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    rst $20
    ld e, b
    nop
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
    xor l
    xor e
    cp b
    ld c, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
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
    ld d, l
    xor h
    xor [hl]
    xor l
    and h
    cp b
    rst $20
    ld d, c
    sub d
    or e
    and b
    cp b
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor [hl]
    or h
    or c
    ld c, a
    and c
    or h
    or d
    xor b
    xor l
    and h
    or d
    or d
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    db $e4
    and h
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    or d
    and b
    or l
    xor b
    xor l
    and [hl]
    ld c, a
    and b
    xor l
    cp b
    xor [hl]
    xor l
    and h
    db $f4
    ld a, a
    xor d
    xor b
    and e
    rst $20
    ld d, a
    nop
    add e
    xor [hl]
    xor l
    cp [hl]
    ld c, a
    and l
    xor b
    and [hl]
    and a
    or e
    ld a, a
    or h
    or d
    ld a, a
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub e
    or d
    rst $20
    ld e, b
    nop
    sbc b
    xor [hl]
    or h
    db $e4
    and h
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    and [hl]
    and h
    or e
    or e
    xor b
    xor l
    and [hl]
    ld c, a
    and b
    or [hl]
    and b
    cp b
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    or e
    and a
    xor b
    or d
    rst $20
    ld d, a
    nop
    sub e
    and a
    and b
    or e
    cp l
    ld a, a
    xor [hl]
    and e
    and e
    db $f4
    ld a, a
    adc h
    sub c
    add sp, -$7b
    sub h
    adc c
    adc b
    ld c, a
    xor b
    or d
    xor l
    cp [hl]
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $55
    sub [hl]
    and a
    and h
    or c
    and h
    cp e
    ld a, a
    and a
    and h
    ld a, a
    and [hl]
    xor [hl]
    and $57
    nop
    adc h
    sub c
    add sp, -$7b
    sub h
    adc c
    adc b
    ld a, a
    and a
    and b
    and e
    ld a, a
    and c
    and h
    and h
    xor l
    ld c, a
    xor a
    or c
    and b
    cp b
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    xor e
    xor [hl]
    xor l
    and h
    ld a, a
    and l
    xor [hl]
    or c
    ld d, l
    add d
    sub h
    add c
    adc [hl]
    adc l
    add h
    cp l
    ld a, a
    xor h
    xor [hl]
    or e
    and a
    and h
    or c
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
    or c
    and h
    and b
    xor e
    xor e
    cp b
    ld c, a
    adc h
    sub c
    add sp, -$7b
    sub h
    adc c
    adc b
    cp l
    ld a, a
    and a
    xor [hl]
    or h
    or d
    and h
    add sp, $51
    add a
    and h
    cp l
    ld a, a
    or c
    and h
    and b
    xor e
    xor e
    cp b
    ld a, a
    xor d
    xor b
    xor l
    and e
    rst $20
    ld d, c
    add a
    and h
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    or d
    ld a, a
    and b
    and l
    or e
    and h
    or c
    ld c, a
    and b
    and c
    and b
    xor l
    and e
    xor [hl]
    xor l
    and h
    and e
    ld a, a
    and b
    xor l
    and e
    ld d, l
    xor [hl]
    or c
    xor a
    and a
    and b
    xor l
    and h
    and e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, a
    nop
    adc b
    or e
    cp l
    ld a, a
    or d
    xor [hl]
    ld a, a
    or [hl]
    and b
    or c
    xor h
    rst $20
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
    or d
    xor [hl]
    ld d, l
    xor l
    xor b
    and d
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and a
    or h
    and [hl]
    rst $20
    ld d, a
    nop
    adc a
    sub d
    sbc b
    add e
    sub h
    add d
    adc d
    sbc h
    ld a, a
    add [hl]
    or [hl]
    and b
    xor a
    xor a
    and b
    rst $20
    ld d, b
    ld d, b
    nop
    adc l
    adc b
    add e
    adc [hl]
    sub c
    adc b
    adc l
    adc [hl]
    sbc h
    ld a, a
    add [hl]
    and b
    xor [hl]
    xor [hl]
    rst $20
    ld d, b
    ld d, b
    nop
    adc h
    sub c
    add sp, -$7b
    sub h
    adc c
    adc b
    sbc h
    ld a, a
    ld d, d
    add sp, $51
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    ld d, h
    add e
    add h
    sub a
    ld a, a
    or b
    or h
    and h
    or d
    or e
    ld c, a
    xor h
    and b
    cp b
    ld a, a
    and l
    and b
    xor b
    xor e
    ld a, a
    or [hl]
    xor b
    or e
    and a
    xor [hl]
    or h
    or e
    ld d, l
    xor e
    xor [hl]
    or l
    and h
    ld a, a
    and l
    xor [hl]
    or c
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
    add sp, $51
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
    xor b
    or d
    ld a, a
    xor h
    and b
    cp b
    ld c, a
    and a
    and h
    xor e
    xor a
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    or b
    or h
    and h
    or d
    or e
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
    and b
    ld a, a
    ld d, b
    ld bc, $cf4b
    nop
    rst $20
    ld d, b
    ld d, b
    nop
    ld d, c
    sub h
    xor a
    xor [hl]
    xor l
    ld a, a
    and a
    and h
    and b
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    ld d, h
    ld c, a
    add l
    adc e
    sub h
    sub e
    add h
    db $f4
    ld a, a
    or d
    xor e
    and h
    and h
    xor a
    xor b
    xor l
    and [hl]
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
    ld d, l
    or d
    xor a
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    or [hl]
    and b
    xor d
    and h
    add sp, $51
    adc b
    or e
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor d
    or d
    ld a, a
    xor [hl]
    xor l
    ld a, a
    and b
    xor e
    xor e
    ld c, a
    or d
    xor e
    and h
    and h
    xor a
    xor b
    xor l
    and [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    xor h
    or h
    or d
    or e
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
    rst $20
    ld d, a
    nop
    adc h
    sub c
    add sp, -$7b
    sub h
    adc c
    adc b
    sbc h
    ld a, a
    add a
    and b
    or d
    ld a, a
    xor h
    cp b
    ld c, a
    add l
    adc e
    sub h
    sub e
    add h
    ld a, a
    and a
    and h
    xor e
    xor a
    and h
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    and $57
    nop
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    adc h
    xor [hl]
    xor l
    or e
    and a
    xor e
    cp b
    ld c, a
    add [hl]
    or c
    and b
    xor l
    and e
    ld a, a
    adc a
    or c
    xor b
    cp c
    and h
    ld d, l
    add e
    or c
    and b
    or [hl]
    xor b
    xor l
    and [hl]
    rst $20
    ld d, c
    sub e
    and a
    and h
    ld a, a
    and b
    xor a
    xor a
    xor e
    xor b
    and d
    and b
    or e
    xor b
    xor [hl]
    xor l
    ld c, a
    and l
    xor [hl]
    or c
    xor h
    ld a, a
    xor b
    or d
    add sp, -$18
    add sp, $51
    add [hl]
    xor [hl]
    xor l
    and h
    rst $20
    ld a, a
    adc b
    or e
    cp l
    ld a, a
    and c
    and h
    and h
    xor l
    ld c, a
    and d
    xor e
    xor b
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
    adc b
    push hl
    ld a, a
    or d
    and h
    and b
    or c
    and d
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    xor b
    or e
    and h
    xor h
    or d
    ld a, a
    or e
    and a
    and b
    or e
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
    ld a, a
    and b
    and c
    xor b
    xor e
    xor b
    or e
    xor b
    and h
    or d
    ld a, a
    xor [hl]
    and l
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and e
    or h
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    ld d, l
    or d
    xor b
    xor l
    and [hl]
    xor e
    and h
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    add sp, $51
    sub a
    ld a, a
    add b
    sub e
    sub e
    add b
    add d
    adc d
    db $f4
    ld a, a
    sub a
    ld c, a
    add e
    add h
    add l
    add h
    adc l
    add e
    db $f4
    ld a, a
    sub a
    ld a, a
    sub d
    adc a
    add h
    add h
    add e
    ld d, l
    and b
    xor l
    and e
    ld a, a
    sub a
    ld a, a
    sub d
    adc a
    add h
    add d
    adc b
    add b
    adc e
    ld a, a
    and b
    or c
    and h
    ld d, l
    or [hl]
    and a
    and b
    or e
    ld a, a
    adc b
    push hl
    ld a, a
    and b
    and l
    or e
    and h
    or c
    add sp, $51
    add e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld a, a
    or [hl]
    and a
    and h
    or c
    and h
    ld c, a
    adc b
    ld a, a
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
    and h
    xor h
    and $57
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld a, a
    sub c
    add h
    sub l
    adc b
    sub l
    add h
    and $4f
    adc b
    or e
    ld a, a
    or c
    and h
    or l
    xor b
    or l
    and h
    or d
    ld a, a
    and b
    xor l
    cp b
    ld d, l
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
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    and l
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    and b
    ld a, a
    adc l
    sub h
    add [hl]
    add [hl]
    add h
    sub e
    ld c, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor h
    xor [hl]
    or h
    xor l
    or e
    and b
    xor b
    xor l
    or d
    add sp, $51
    adc b
    ld a, a
    or e
    and a
    xor [hl]
    or h
    and [hl]
    and a
    or e
    ld a, a
    xor b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    or h
    or d
    and h
    xor e
    and h
    or d
    or d
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    xor b
    or e
    ld d, l
    or d
    xor [hl]
    xor e
    and e
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    ldh a, [$fb]
    or $f6
    or $e7
    ld d, a
    nop
    add d
    sub h
    add c
    adc [hl]
    adc l
    add h
    sbc h
    ld a, a
    adc d
    cp b
    and b
    or c
    or h
    and [hl]
    xor [hl]
    xor [hl]
    rst $20
    ld d, b
    ld d, b
    nop
    adc b
    ld a, a
    and a
    and b
    or e
    and h
    ld a, a
    or e
    and a
    xor [hl]
    or d
    and h
    ld c, a
    and a
    xor [hl]
    or c
    or c
    xor b
    and c
    xor e
    and h
    ld a, a
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub e
    or d
    rst $20
    ld d, c
    sub e
    and a
    and b
    or e
    ld a, a
    xor a
    xor [hl]
    xor [hl]
    or c
    ld a, a
    add d
    sub h
    add c
    adc [hl]
    adc l
    add h
    cp l
    ld c, a
    xor h
    xor [hl]
    or e
    and a
    and h
    or c
    add sp, -$18
    add sp, $51
    adc b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    xor d
    xor b
    xor e
    xor e
    and h
    and e
    ld c, a
    or e
    or c
    cp b
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    and h
    or d
    and d
    and b
    xor a
    and h
    ld d, l
    and l
    or c
    xor [hl]
    xor h
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
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    add [hl]
    add a
    adc [hl]
    sub d
    sub e
    ld a, a
    xor [hl]
    and l
    ld c, a
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
    ld a, a
    xor b
    or d
    ld d, l
    and [hl]
    xor [hl]
    xor l
    and h
    rst $20
    ld d, c
    sub d
    xor [hl]
    xor h
    and h
    xor [hl]
    xor l
    and h
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
    ld c, a
    or d
    xor [hl]
    xor [hl]
    or e
    and a
    and h
    and e
    ld a, a
    xor b
    or e
    or d
    ld d, l
    or c
    and h
    or d
    or e
    xor e
    and h
    or d
    or d
    ld a, a
    or d
    xor [hl]
    or h
    xor e
    rst $20
    ld d, a
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
    db $f4
    ld a, a
    and a
    and h
    xor e
    xor e
    xor [hl]
    rst $20
    ld c, a
    adc b
    ld a, a
    and b
    xor h
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor [hl]
    and l
    and l
    xor b
    and d
    xor b
    and b
    xor e
    ld d, l
    adc l
    add b
    adc h
    add h
    ld a, a
    sub c
    add b
    sub e
    add h
    sub c
    rst $20
    ld d, c
    sub [hl]
    and b
    xor l
    or e
    ld a, a
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or c
    and b
    or e
    and h
    ld c, a
    or e
    and a
    and h
    ld a, a
    xor l
    xor b
    and d
    xor d
    xor l
    and b
    xor h
    and h
    or d
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
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    and b
    or e
    and $58
    ld bc, $cd6d
    nop
    db $f4
    ld a, a
    xor b
    or d
    ld a, a
    xor b
    or e
    and $4f
    sub e
    and a
    and b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    and b
    ld a, a
    and e
    and h
    and d
    and h
    xor l
    or e
    ld d, l
    xor l
    xor b
    and d
    xor d
    xor l
    and b
    xor h
    and h
    rst $20
    ld d, c
    add c
    or h
    or e
    db $f4
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
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    xor b
    or l
    and h
    ld d, l
    xor b
    or e
    ld a, a
    and b
    ld a, a
    xor l
    xor b
    and d
    and h
    or c
    ld a, a
    xor l
    and b
    xor h
    and h
    and $51
    add a
    xor [hl]
    or [hl]
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    xor b
    or e
    and $57
    nop
    add l
    xor b
    xor l
    and h
    rst $20
    ld a, a
    sub [hl]
    and a
    and b
    or e
    ld a, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld c, a
    or [hl]
    and h
    ld a, a
    xor l
    and b
    xor h
    and h
    ld a, a
    xor b
    or e
    and $58
    nop
    adc [hl]
    adc d
    rst $20
    ld a, a
    sub e
    and a
    xor b
    or d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    and a
    and b
    or d
    ld a, a
    and c
    and h
    and h
    xor l
    ld a, a
    or c
    and h
    xor l
    and b
    xor h
    and h
    and e
    ld d, l
    ld d, b
    ld bc, $cee9
    nop
    rst $20
    ld d, c
    sub e
    and a
    and b
    or e
    cp l
    ld a, a
    and b
    ld a, a
    and c
    and h
    or e
    or e
    and h
    or c
    ld c, a
    xor l
    and b
    xor h
    and h
    ld a, a
    or e
    and a
    and b
    xor l
    ld a, a
    and c
    and h
    and l
    xor [hl]
    or c
    and h
    rst $20
    ld d, a
    nop
    add l
    xor b
    xor l
    and h
    rst $20
    ld a, a
    add d
    xor [hl]
    xor h
    and h
    ld a, a
    and b
    xor l
    cp b
    ld c, a
    or e
    xor b
    xor h
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor e
    xor b
    xor d
    and h
    rst $20
    ld d, a
    ld bc, $cd6d
    nop
    db $f4
    ld a, a
    xor b
    or d
    ld a, a
    xor b
    or e
    and $4f
    sub e
    and a
    and b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    and b
    ld a, a
    or e
    or c
    or h
    xor e
    cp b
    ld d, l
    xor b
    xor h
    xor a
    and h
    and d
    and d
    and b
    and c
    xor e
    and h
    ld a, a
    xor l
    and b
    xor h
    and h
    rst $20
    ld d, c
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
    rst $20
    ld d, a
    nop
    add h
    or l
    and h
    xor l
    ld a, a
    xor b
    and l
    ld a, a
    or e
    and a
    and h
    cp b
    ld a, a
    and b
    or c
    and h
    ld c, a
    or e
    and a
    and h
    ld a, a
    or d
    and b
    xor h
    and h
    ld a, a
    xor e
    and h
    or l
    and h
    xor e
    db $f4
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
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
    or l
    and h
    or c
    cp b
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
    add b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or c
    and b
    xor b
    or d
    and h
    and e
    ld c, a
    and c
    cp b
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
    ld a, a
    xor b
    or d
    ld d, l
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    and h
    or c
    ld a, a
    or e
    and a
    and b
    xor l
    ld a, a
    xor [hl]
    xor l
    and h
    ld d, l
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    xor b
    xor e
    and e
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
    or [hl]
    and b
    or d
    ld c, a
    xor a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    and h
    and e
    rst $20
    ld a, a
    adc b
    or e
    ld d, l
    and l
    and b
    xor b
    xor l
    or e
    and h
    and e
    ld a, a
    or [hl]
    and a
    xor b
    xor e
    and h
    ld a, a
    or [hl]
    and h
    ld d, l
    or [hl]
    and h
    or c
    and h
    ld a, a
    or [hl]
    and b
    xor e
    xor d
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    sub [hl]
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    and e
    xor h
    xor b
    or c
    and h
    ld c, a
    xor h
    cp b
    ld a, a
    adc a
    adc b
    adc d
    add b
    add d
    add a
    sub h
    cp l
    ld d, l
    and b
    and e
    xor [hl]
    or c
    and b
    and c
    xor e
    and h
    ld a, a
    or e
    and b
    xor b
    xor e
    and $57
    nop
    add a
    or h
    xor h
    xor a
    and a
    rst $20
    ld a, a
    adc h
    cp b
    ld a, a
    adc a
    adc b
    adc d
    add b
    add d
    add a
    sub h
    ld c, a
    xor b
    or d
    ld a, a
    or e
    or [hl]
    xor b
    and d
    and h
    ld a, a
    and b
    or d
    ld a, a
    and d
    or h
    or e
    and h
    ld d, l
    and b
    or d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor [hl]
    xor l
    and h
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    xor e
    xor [hl]
    or l
    and h
    ld a, a
    xor h
    cp b
    ld c, a
    sub d
    add h
    add h
    adc e
    rst $20
    ld d, c
    adc b
    or e
    ld a, a
    or d
    or b
    or h
    and h
    and b
    xor e
    or d
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld a, a
    adc b
    ld c, a
    and a
    or h
    and [hl]
    ld a, a
    xor b
    or e
    rst $20
    ld d, a
    nop
    adc [hl]
    and a
    ld a, a
    and e
    and h
    and b
    or c
    rst $20
    ld d, c
    adc h
    cp b
    ld a, a
    sub d
    add h
    add h
    adc e
    ld a, a
    xor b
    or d
    ld a, a
    and l
    and b
    or c
    ld c, a
    xor h
    xor [hl]
    or c
    and h
    ld a, a
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
    rst $20
    ld d, a
    nop
    adc a
    adc b
    adc d
    add b
    add d
    add a
    sub h
    sbc h
    ld a, a
    add d
    and a
    or h
    rst $20
    ld c, a
    adc a
    xor b
    xor d
    and b
    and d
    and a
    or h
    rst $20
    ld d, a
    nop
    sub d
    add h
    add h
    adc e
    sbc h
    ld a, a
    adc d
    cp b
    or h
    xor [hl]
    xor [hl]
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    and d
    and a
    and b
    xor b
    or c
    ld a, a
    or e
    and a
    and h
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add l
    and b
    xor l
    ld a, a
    add d
    xor e
    or h
    and c
    rst $20
    ld d, c
    adc b
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    and d
    xor [hl]
    xor e
    xor e
    and h
    and d
    or e
    and h
    and e
    ld c, a
    xor [hl]
    or l
    and h
    or c
    ld a, a
    rst $30
    or $f6
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, c
    adc b
    push hl
    ld a, a
    or l
    and h
    or c
    cp b
    ld a, a
    and l
    or h
    or d
    or d
    cp b
    ld c, a
    or [hl]
    and a
    and h
    xor l
    ld a, a
    xor b
    or e
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    or d
    ld a, a
    or e
    xor [hl]
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, c
    sub d
    xor [hl]
    add sp, -$18
    add sp, $51
    add e
    xor b
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    ld c, a
    or l
    xor b
    or d
    xor b
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and a
    and h
    and b
    or c
    ld d, l
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    xor h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    and $57
    nop
    add [hl]
    xor [hl]
    xor [hl]
    and e
    rst $20
    ld c, a
    sub e
    and a
    and h
    xor l
    ld a, a
    xor e
    xor b
    or d
    or e
    and h
    xor l
    ld a, a
    or h
    xor a
    rst $20
    ld d, c
    adc h
    cp b
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
    sub c
    add b
    adc a
    adc b
    add e
    add b
    sub d
    add a
    add sp, -$18
    add sp, $51
    adc b
    or e
    add sp, -$18
    add sp, -$5e
    or h
    or e
    and h
    add sp, -$18
    add sp, $4f
    xor e
    xor [hl]
    or l
    and h
    xor e
    cp b
    add sp, -$18
    add sp, -$4e
    xor h
    and b
    or c
    or e
    add sp, -$18
    add sp, $55
    xor a
    xor e
    or h
    or d
    add sp, -$18
    add sp, -$60
    xor h
    and b
    cp c
    xor b
    xor l
    and [hl]
    add sp, -$18
    add sp, $55
    cp b
    xor [hl]
    or h
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
    ld a, a
    or d
    xor [hl]
    and $e8
    add sp, -$18
    ld d, l
    xor [hl]
    and a
    ld a, a
    cp b
    and h
    or d
    add sp, -$18
    add sp, -$58
    or e
    add sp, -$18
    add sp, $55
    or d
    or e
    or h
    xor l
    xor l
    xor b
    xor l
    and [hl]
    add sp, -$18
    add sp, $55
    xor d
    xor b
    xor l
    and e
    xor e
    cp b
    add sp, -$18
    add sp, $55
    xor e
    xor [hl]
    or l
    and h
    ld a, a
    xor b
    or e
    rst $20
    ld d, c
    add a
    or h
    and [hl]
    ld a, a
    xor b
    or e
    add sp, -$18
    add sp, -$4a
    and a
    and h
    xor l
    add sp, -$18
    add sp, $55
    or d
    xor e
    and h
    and h
    xor a
    xor b
    xor l
    and [hl]
    add sp, -$18
    add sp, -$4a
    and b
    or c
    xor h
    ld d, l
    and b
    xor l
    and e
    ld a, a
    and d
    or h
    and e
    and e
    xor e
    cp b
    add sp, -$18
    add sp, $55
    or d
    xor a
    and h
    and d
    or e
    and b
    and d
    or h
    xor e
    and b
    or c
    add sp, -$18
    add sp, $55
    or c
    and b
    or l
    xor b
    or d
    and a
    xor b
    xor l
    and [hl]
    add sp, -$18
    add sp, $55
    add sp, -$18
    add sp, -$72
    xor [hl]
    xor a
    or d
    rst $20
    ld a, a
    adc e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    and b
    or e
    ld d, l
    or e
    and a
    and h
    ld a, a
    or e
    xor b
    xor h
    and h
    rst $20
    ld a, a
    adc b
    ld a, a
    xor d
    and h
    xor a
    or e
    ld d, l
    cp b
    xor [hl]
    or h
    ld a, a
    or e
    xor [hl]
    xor [hl]
    ld a, a
    xor e
    xor [hl]
    xor l
    and [hl]
    rst $20
    ld d, c
    sub e
    and a
    and b
    xor l
    xor d
    or d
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and a
    and h
    and b
    or c
    xor b
    xor l
    and [hl]
    ld c, a
    xor h
    and h
    ld a, a
    xor [hl]
    or h
    or e
    rst $20
    ld a, a
    adc b
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld d, l
    cp b
    xor [hl]
    or h
    ld a, a
    or e
    xor [hl]
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
    ld d, c
    add h
    or a
    and d
    and a
    and b
    xor l
    and [hl]
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    and b
    ld a, a
    add c
    adc b
    add d
    sbc b
    add d
    adc e
    add h
    rst $20
    ld d, c
    add e
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    or [hl]
    xor [hl]
    or c
    or c
    cp b
    db $f4
    ld a, a
    xor h
    cp b
    ld c, a
    add l
    add h
    add b
    sub c
    adc [hl]
    sub [hl]
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    add l
    adc e
    sbc b
    ld d, l
    xor h
    and h
    ld a, a
    and b
    xor l
    cp b
    or [hl]
    and a
    and h
    or c
    and h
    rst $20
    ld d, c
    sub d
    xor [hl]
    db $f4
    ld a, a
    adc b
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
    and b
    ld c, a
    add c
    adc b
    add d
    sbc b
    add d
    adc e
    add h
    rst $20
    ld d, c
    adc b
    ld a, a
    and a
    xor [hl]
    xor a
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld c, a
    and d
    cp b
    and d
    xor e
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    adc [hl]
    and a
    add sp, $7f
    add d
    xor [hl]
    xor h
    and h
    ld a, a
    and c
    and b
    and d
    xor d
    ld c, a
    or [hl]
    and a
    and h
    xor l
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
    ld d, l
    and a
    and h
    and b
    or c
    ld a, a
    xor h
    cp b
    ld a, a
    or d
    or e
    xor [hl]
    or c
    cp b
    rst $20
    ld d, a
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
    db $f4
    ld a, a
    ld d, d
    rst $20
    ld d, c
    add e
    xor b
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    or d
    and h
    and h
    ld c, a
    xor h
    and h
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    xor h
    cp b
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    and $51
    adc l
    xor [hl]
    and $7f
    sub e
    xor [hl]
    xor [hl]
    ld a, a
    and c
    and b
    and e
    rst $20
    ld d, a
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
    adc [hl]
    or h
    or c
    ld a, a
    add d
    and a
    and b
    xor b
    or c
    xor h
    and b
    xor l
    ld a, a
    xor b
    or d
    ld c, a
    or l
    and h
    or c
    cp b
    ld a, a
    or l
    xor [hl]
    and d
    and b
    xor e
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    adc e
    and h
    or e
    cp l
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    xor e
    xor b
    or d
    or e
    and h
    xor l
    ld c, a
    xor a
    xor [hl]
    xor e
    xor b
    or e
    and h
    xor e
    cp b
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor [hl]
    or e
    and a
    and h
    or c
    ld d, l
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    or d
    rst $20
    ld d, a
    nop
    adc b
    and l
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    xor [hl]
    xor l
    and h
    ld a, a
    and c
    or c
    and b
    and [hl]
    or d
    db $f4
    ld c, a
    and c
    or c
    and b
    and [hl]
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    ld a, a
    and c
    and b
    and d
    xor d
    rst $20
    ld d, a
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
    and h
    or l
    xor b
    xor e
    ld c, a
    xor a
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
    or [hl]
    xor b
    xor e
    xor e
    ld d, l
    or h
    or d
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and l
    xor [hl]
    or c
    ld d, l
    and d
    or c
    xor b
    xor h
    xor b
    xor l
    and b
    xor e
    ld a, a
    and b
    and d
    or e
    or d
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
    ld c, a
    or e
    or c
    and b
    and l
    and l
    xor b
    and d
    or d
    ld a, a
    xor b
    xor l
    ld a, a
    or c
    and b
    or c
    and h
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
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
    and b
    and c
    and b
    xor l
    and e
    xor [hl]
    xor l
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
    or e
    and a
    and h
    cp b
    ld d, l
    and d
    xor [hl]
    xor l
    or d
    xor b
    and e
    and h
    or c
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    or e
    xor [hl]
    ld d, l
    and c
    and h
    ld a, a
    xor a
    xor [hl]
    xor a
    or h
    xor e
    and b
    or c
    ld a, a
    xor [hl]
    or c
    ld d, l
    or h
    or d
    and h
    and l
    or h
    xor e
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
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor [hl]
    or c
    ld d, l
    and h
    or l
    xor b
    xor e
    add sp, $7f
    adc b
    or e
    ld a, a
    and e
    and h
    xor a
    and h
    xor l
    and e
    or d
    ld d, l
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    add sp, $57
    nop
    add a
    and h
    cp b
    db $f4
    ld a, a
    xor d
    xor b
    and e
    rst $20
    ld a, a
    sub [hl]
    and a
    and b
    or e
    ld a, a
    and e
    xor [hl]
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
    ld a, a
    cp b
    xor [hl]
    or h
    db $e4
    and h
    ld d, l
    and e
    xor [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    and a
    and h
    or c
    and h
    and $51
    sbc b
    xor [hl]
    or h
    ld a, a
    or [hl]
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    xor e
    xor b
    or l
    and h
    ld c, a
    xor e
    xor [hl]
    xor l
    and [hl]
    ld a, a
    xor b
    xor l
    ld a, a
    and d
    xor [hl]
    xor h
    and c
    and b
    or e
    rst $20
    ld d, l
    sub e
    and a
    and b
    or e
    cp l
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    or d
    or h
    or c
    and h
    rst $20
    ld d, c
    adc b
    ld a, a
    or e
    and h
    xor e
    xor e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor d
    xor b
    and e
    db $f4
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
    ld d, l
    or d
    and b
    or l
    and h
    and e
    ld a, a
    xor h
    and h
    ld a, a
    and e
    or h
    or c
    xor b
    xor l
    and [hl]
    ld d, l
    or e
    and a
    and h
    ld a, a
    or [hl]
    and b
    or c
    rst $20
    ld d, c
    sub e
    and a
    and h
    cp b
    ld a, a
    cp c
    and b
    xor a
    xor a
    and h
    and e
    ld a, a
    xor h
    cp b
    ld c, a
    and h
    xor l
    and h
    xor h
    xor b
    and h
    or d
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
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
    rst $20
    ld d, c
    sub e
    and a
    and h
    ld a, a
    or d
    and b
    xor h
    and h
    ld a, a
    and b
    or d
    ld a, a
    adc b
    cp h
    xor e
    ld c, a
    and e
    xor [hl]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
