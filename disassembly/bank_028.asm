; Disassembly of "Pokemon Red (UE) [S][!].gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $028", ROMX[$4000], BANK[$28]

    nop
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    and b
    and l
    and l
    xor e
    xor b
    and d
    or e
    and h
    and e
    ld a, a
    and c
    cp b
    ld c, a
    sub e
    adc [hl]
    sub a
    adc b
    add d
    db $f4
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    or d
    or h
    and l
    and l
    and h
    or c
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    and b
    xor l
    and e
    ld d, l
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    and b
    or d
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    ld d, l
    xor a
    or c
    xor [hl]
    and [hl]
    or c
    and h
    or d
    or d
    and h
    or d
    rst $20
    ld d, c
    adc b
    or e
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    or d
    or h
    or c
    and h
    xor e
    cp b
    ld c, a
    or e
    and h
    or c
    or c
    xor [hl]
    or c
    xor b
    cp c
    and h
    ld a, a
    and l
    xor [hl]
    and h
    or d
    rst $20
    ld d, a
    nop
    adc l
    xor [hl]
    or [hl]
    ld a, a
    or e
    and a
    and b
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
    or e
    and a
    and h
    ld a, a
    sub d
    adc [hl]
    sub h
    adc e
    add c
    add b
    add e
    add [hl]
    add h
    db $f4
    ld d, l
    or e
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
    ld d, l
    xor b
    xor l
    and d
    or c
    and h
    and b
    or d
    and h
    or d
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
    ld a, a
    xor [hl]
    and l
    ld d, l
    and c
    and b
    or e
    or e
    xor e
    and h
    rst $20
    ld d, c
    add b
    and a
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
    or e
    xor [hl]
    xor [hl]
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
    or $fc
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
    sub a
    adc b
    add d
    rst $20
    ld d, c
    adc b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    and b
    ld a, a
    or d
    and h
    and d
    or c
    and h
    or e
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
    xor [hl]
    or l
    and h
    or c
    ld d, l
    ld a, [$f6f6]
    ld a, a
    cp b
    and h
    and b
    or c
    or d
    ld a, a
    xor [hl]
    xor e
    and e
    rst $20
    ld d, a
    nop
    adc h
    and b
    xor d
    and h
    ld a, a
    or d
    xor a
    and b
    and d
    and h
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    or e
    and a
    xor b
    or d
    db $f4
    ld a, a
    and d
    and a
    xor b
    xor e
    and e
    rst $20
    ld d, a
    nop
    sub d
    or e
    or c
    and h
    xor l
    and [hl]
    or e
    and a
    ld a, a
    xor b
    or d
    xor l
    cp [hl]
    ld c, a
    or e
    and a
    and h
    ld a, a
    xor d
    and h
    cp b
    ld a, a
    and l
    xor [hl]
    or c
    ld d, l
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
    or d
    or e
    or c
    and b
    or e
    and h
    and [hl]
    cp b
    rst $20
    ld d, c
    adc b
    cp h
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
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld c, a
    or d
    or e
    or c
    and b
    or e
    and h
    and [hl]
    cp b
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and c
    and h
    and b
    or e
    ld d, l
    and c
    or c
    or h
    or e
    and h
    ld a, a
    or d
    or e
    or c
    and h
    xor l
    and [hl]
    or e
    and a
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    and b
    or e
    and $4f
    add h
    or a
    or e
    or c
    and b
    xor [hl]
    or c
    and e
    xor b
    xor l
    and b
    or c
    cp b
    rst $20
    ld e, b
    nop
    sub d
    xor [hl]
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor h
    xor b
    or a
    ld a, a
    and c
    or c
    and b
    or [hl]
    xor l
    ld c, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and c
    or c
    and b
    xor b
    xor l
    or d
    and $55
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    or d
    or e
    or c
    and b
    or e
    and h
    and [hl]
    cp b
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    or [hl]
    and b
    xor l
    or e
    and h
    and e
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
    ld c, a
    and b
    ld a, a
    xor l
    xor b
    xor l
    xor c
    and b
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    adc b
    ld d, l
    xor c
    xor [hl]
    xor b
    xor l
    and h
    and e
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    add [hl]
    sbc b
    adc h
    rst $20
    ld d, a
    nop
    adc b
    push hl
    ld a, a
    and e
    xor [hl]
    xor l
    and h
    ld c, a
    and l
    xor [hl]
    or c
    rst $20
    ld e, b
    nop
    adc b
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    xor d
    and h
    and h
    xor a
    ld a, a
    xor [hl]
    xor l
    ld c, a
    or e
    or c
    and b
    xor b
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    or h
    xor l
    and e
    and h
    or c
    ld d, l
    adc d
    adc [hl]
    add [hl]
    add b
    db $f4
    ld a, a
    xor h
    cp b
    ld a, a
    xor l
    xor b
    xor l
    xor c
    and b
    ld d, l
    xor h
    and b
    or d
    or e
    and h
    or c
    rst $20
    ld d, a
    nop
    adc e
    and h
    or e
    cp l
    ld a, a
    or d
    and h
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and c
    and h
    and b
    or e
    ld a, a
    xor h
    cp b
    ld a, a
    or d
    xor a
    and h
    and d
    xor b
    and b
    xor e
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
    sbc b
    xor [hl]
    or h
    ld c, a
    and a
    and b
    and e
    ld a, a
    xor h
    and h
    ld a, a
    and l
    xor [hl]
    xor [hl]
    xor e
    and h
    and e
    rst $20
    ld e, b
    nop
    adc b
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
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
    ld c, a
    or d
    xor e
    and h
    and h
    xor a
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
    db $f4
    ld d, l
    and b
    or d
    ld a, a
    or e
    and a
    and h
    cp b
    ld a, a
    xor e
    xor b
    xor l
    and [hl]
    and h
    or c
    ld d, l
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
    rst $20
    ld d, a
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
    rst $20
    ld d, c
    adc [hl]
    or h
    or c
    ld a, a
    xor b
    xor l
    or l
    xor b
    or d
    xor b
    and c
    xor e
    and h
    ld c, a
    or [hl]
    and b
    xor e
    xor e
    or d
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, l
    and l
    or c
    or h
    or d
    or e
    or c
    and b
    or e
    and h
    and e
    and $57
    nop
    sub [hl]
    and a
    xor [hl]
    and b
    rst $20
    ld c, a
    add a
    and h
    cp l
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    xor b
    or e
    rst $20
    ld e, b
    nop
    sbc b
    xor [hl]
    or h
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
    ld a, a
    xor h
    and h
    rst $20
    ld c, a
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
    adc e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    or l
    and h
    or c
    cp b
    ld a, a
    and d
    xor e
    xor [hl]
    or d
    and h
    xor e
    cp b
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    and [hl]
    and b
    xor a
    or d
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld d, l
    xor b
    xor l
    or l
    xor b
    or d
    xor b
    and c
    xor e
    and h
    ld a, a
    or [hl]
    and b
    xor e
    xor e
    or d
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    and b
    xor e
    or d
    xor [hl]
    ld a, a
    or d
    or e
    or h
    and e
    cp b
    ld a, a
    or e
    and a
    and h
    ld c, a
    or [hl]
    and b
    cp b
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor l
    xor b
    xor l
    xor c
    and b
    ld d, l
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor h
    and b
    or d
    or e
    and h
    or c
    ld a, a
    adc d
    adc [hl]
    add [hl]
    add b
    rst $20
    ld d, c
    adc l
    xor b
    xor l
    xor c
    and b
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    and b
    ld a, a
    xor e
    xor [hl]
    xor l
    and [hl]
    ld c, a
    and a
    xor b
    or d
    or e
    xor [hl]
    or c
    cp b
    ld a, a
    xor [hl]
    and l
    ld a, a
    or h
    or d
    xor b
    xor l
    and [hl]
    ld d, l
    and b
    xor l
    xor b
    xor h
    and b
    xor e
    or d
    rst $20
    ld d, a
    nop
    add b
    or [hl]
    xor [hl]
    xor [hl]
    rst $20
    ld e, b
    nop
    adc b
    ld a, a
    or d
    or e
    xor b
    xor e
    xor e
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    xor h
    or h
    and d
    and a
    ld c, a
    or e
    xor [hl]
    ld a, a
    xor e
    and h
    and b
    or c
    xor l
    rst $20
    ld d, a
    nop
    adc h
    and b
    or d
    or e
    and h
    or c
    ld a, a
    adc d
    adc [hl]
    add [hl]
    add b
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    or d
    ld c, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    and b
    ld a, a
    xor e
    xor [hl]
    xor l
    and [hl]
    ld a, a
    xor e
    xor b
    xor l
    and h
    ld d, l
    xor [hl]
    and l
    ld a, a
    xor l
    xor b
    xor l
    xor c
    and b
    or d
    rst $20
    ld d, c
    sub [hl]
    and a
    and b
    or e
    ld a, a
    and e
    xor b
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and e
    and h
    or d
    and d
    and h
    xor l
    and e
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    and $57
    nop
    add e
    or c
    xor [hl]
    xor a
    xor a
    and h
    and e
    ld c, a
    xor h
    cp b
    ld a, a
    and c
    and b
    xor e
    xor e
    or d
    rst $20
    ld e, b
    nop
    sub [hl]
    and a
    and h
    or c
    and h
    ld a, a
    or e
    and a
    and h
    or c
    and h
    ld a, a
    xor b
    or d
    ld c, a
    xor e
    xor b
    and [hl]
    and a
    or e
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
    ld d, l
    or d
    and a
    and b
    and e
    xor [hl]
    or [hl]
    rst $20
    ld d, c
    adc e
    xor b
    and [hl]
    and a
    or e
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or d
    and a
    and b
    and e
    xor [hl]
    or [hl]
    rst $20
    ld c, a
    sub [hl]
    and a
    xor b
    and d
    and a
    ld a, a
    and e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, l
    and d
    and a
    xor [hl]
    xor [hl]
    or d
    and h
    and $57
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
    add l
    sub h
    add d
    add a
    sub d
    adc b
    add b
    ld a, a
    add [hl]
    sbc b
    adc h
    ld a, a
    xor b
    or d
    ld c, a
    or c
    xor b
    and e
    and e
    xor e
    and h
    and e
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld d, l
    xor b
    xor l
    or l
    xor b
    or d
    xor b
    and c
    xor e
    and h
    ld a, a
    or [hl]
    and b
    xor e
    xor e
    or d
    rst $20
    ld d, c
    adc d
    adc [hl]
    add [hl]
    add b
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
    and d
    xor e
    xor [hl]
    or d
    and h
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    and a
    and h
    cp l
    ld d, l
    and c
    xor e
    xor [hl]
    and d
    xor d
    and h
    and e
    ld a, a
    xor [hl]
    and l
    and l
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
    or e
    xor [hl]
    ld a, a
    and l
    xor b
    xor l
    and e
    ld c, a
    and [hl]
    and b
    xor a
    or d
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    and b
    xor e
    xor e
    or d
    ld d, l
    or e
    xor [hl]
    ld a, a
    or c
    and h
    and b
    and d
    and a
    ld a, a
    and a
    xor b
    xor h
    rst $20
    ld d, a
    nop
    adc b
    or e
    cp l
    ld a, a
    and b
    xor h
    and b
    cp c
    xor b
    xor l
    and [hl]
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld c, a
    xor l
    xor b
    xor l
    xor c
    and b
    ld a, a
    and d
    and b
    xor l
    ld a, a
    or e
    and h
    or c
    or c
    xor b
    and l
    cp b
    ld d, l
    and h
    or l
    and h
    xor l
    ld a, a
    xor l
    xor [hl]
    or [hl]
    rst $20
    ld d, a
    nop
    sub [hl]
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
    and e
    ld a, a
    or e
    and a
    and h
    ld c, a
    sub [hl]
    add b
    sub c
    add e
    add h
    adc l
    ld a, a
    sub d
    adc e
    adc [hl]
    sub [hl]
    adc a
    adc [hl]
    adc d
    add h
    add sp, $51
    add a
    and h
    ld a, a
    and b
    xor l
    and e
    ld a, a
    sub d
    adc e
    adc [hl]
    sub [hl]
    adc a
    adc [hl]
    adc d
    add h
    ld c, a
    and c
    xor [hl]
    or e
    and a
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    or l
    and b
    and d
    and b
    xor l
    or e
    rst $20
    ld d, a
    nop
    sub d
    adc e
    adc [hl]
    sub [hl]
    adc a
    adc [hl]
    adc d
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
    xor d
    xor l
    xor [hl]
    or [hl]
    xor e
    and h
    and e
    and [hl]
    and h
    and b
    and c
    xor e
    and h
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
    add a
    and h
    ld a, a
    and h
    or l
    and h
    xor l
    ld a, a
    and a
    and b
    or d
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld c, a
    and l
    xor [hl]
    or d
    or d
    xor b
    xor e
    or d
    ld a, a
    xor [hl]
    and l
    ld a, a
    or c
    and b
    or c
    and h
    db $f4
    ld d, l
    and h
    or a
    or e
    xor b
    xor l
    and d
    or e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, a
    nop
    sub d
    adc e
    adc [hl]
    sub [hl]
    adc a
    adc [hl]
    adc d
    add h
    ld a, a
    and d
    and b
    xor h
    and h
    ld a, a
    xor b
    xor l
    db $f4
    ld c, a
    and c
    or h
    or e
    ld a, a
    adc b
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    xor l
    cp [hl]
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
    and a
    xor b
    xor h
    add sp, $51
    adc b
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
    ld a, a
    and a
    and h
    cp l
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld c, a
    and b
    ld a, a
    or d
    xor a
    and h
    and h
    and d
    and a
    ld a, a
    xor a
    or c
    xor [hl]
    and c
    xor e
    and h
    xor h
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
    cp l
    ld a, a
    xor [hl]
    xor e
    and e
    and h
    or c
    ld d, l
    and c
    or c
    xor [hl]
    or e
    and a
    and h
    or c
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
    ld a, a
    ld d, b
    ld bc, $cf4b
    nop
    rst $20
    ld d, b
    ld d, b
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
    sub [hl]
    and a
    xor [hl]
    ld a, a
    and b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    and $7f
    sub e
    and a
    and h
    or c
    and h
    ld c, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    xor l
    cp [hl]
    ld a, a
    and c
    and h
    ld d, l
    and b
    xor l
    cp b
    xor [hl]
    xor l
    and h
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $57
    nop
    adc [hl]
    or h
    and d
    and a
    rst $20
    ld e, b
    nop
    add b
    ld a, a
    xor d
    and h
    cp b
    and $7f
    adc b
    ld a, a
    and e
    xor [hl]
    xor l
    cp [hl]
    ld c, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld a, a
    or [hl]
    and a
    and b
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    db $e4
    and h
    ld d, l
    or e
    and b
    xor e
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    add sp, $57
    nop
    add b
    ld a, a
    or d
    and h
    and d
    or c
    and h
    or e
    ld a, a
    or d
    or [hl]
    xor b
    or e
    and d
    and a
    rst $20
    ld d, c
    adc a
    or c
    and h
    or d
    or d
    ld a, a
    xor b
    or e
    and $57
    nop
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
    and $58
    nop
    adc l
    xor [hl]
    or e
    ld a, a
    or b
    or h
    xor b
    or e
    and h
    ld a, a
    cp b
    and h
    or e
    rst $20
    ld d, a
    nop
    add a
    and b
    and a
    rst $20
    ld d, c
    adc b
    ld a, a
    and b
    xor h
    ld a, a
    add c
    adc e
    add b
    adc b
    adc l
    add h
    rst $20
    ld a, a
    adc b
    ld c, a
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
    ld a, a
    xor [hl]
    and l
    ld d, l
    add d
    adc b
    adc l
    adc l
    add b
    add c
    add b
    sub c
    ld a, a
    add [hl]
    sbc b
    adc h
    rst $20
    ld d, c
    adc h
    cp b
    ld a, a
    and l
    xor b
    and h
    or c
    cp b
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
    xor b
    xor l
    and d
    xor b
    xor l
    and h
    or c
    and b
    or e
    and h
    ld d, l
    and b
    xor e
    xor e
    ld a, a
    and d
    and a
    and b
    xor e
    xor e
    and h
    xor l
    and [hl]
    and h
    or c
    or d
    rst $20
    ld d, c
    add a
    and b
    and a
    rst $20
    ld a, a
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
    ld c, a
    and a
    and b
    or l
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
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    and a
    and b
    or l
    and h
    ld c, a
    and c
    or h
    or c
    xor l
    or e
    ld a, a
    xor [hl]
    or h
    or e
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
    and h
    and b
    or c
    xor l
    and h
    and e
    ld c, a
    or e
    and a
    and h
    ld a, a
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
    rst $20
    ld d, b
    ld d, b
    nop
    add l
    adc b
    sub c
    add h
    ld a, a
    add c
    adc e
    add b
    sub d
    sub e
    ld a, a
    xor b
    or d
    ld a, a
    or e
    and a
    and h
    ld c, a
    or h
    xor e
    or e
    xor b
    xor h
    and b
    or e
    and h
    ld a, a
    and l
    xor b
    or c
    and h
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
    rst $20
    ld d, c
    add e
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    or [hl]
    and b
    or d
    or e
    and h
    ld a, a
    xor b
    or e
    ld a, a
    xor [hl]
    xor l
    ld c, a
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
    ld d, a
    nop
    add a
    and b
    and a
    rst $20
    ld d, c
    sub e
    and a
    and h
    ld a, a
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
    ld c, a
    and a
    and h
    xor b
    and [hl]
    and a
    or e
    and h
    xor l
    or d
    ld a, a
    or e
    and a
    and h
    ld d, l
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
    xor [hl]
    and l
    ld a, a
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
    ld d, c
    add a
    and h
    or c
    and h
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
    and a
    and b
    or l
    and h
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    or e
    xor [hl]
    xor [hl]
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
    ld sp, hl
    cp $7f
    and d
    xor [hl]
    xor l
    or e
    and b
    xor b
    xor l
    or d
    ld c, a
    add l
    adc b
    sub c
    add h
    ld a, a
    add c
    adc e
    add b
    sub d
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
    and l
    xor b
    or c
    and h
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
    rst $20
    ld d, c
    add d
    add a
    add b
    sub c
    adc h
    add h
    adc e
    add h
    adc [hl]
    adc l
    ld a, a
    xor [hl]
    or c
    ld c, a
    adc a
    adc [hl]
    adc l
    sbc b
    sub e
    add b
    ld a, a
    or [hl]
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and c
    and h
    ld d, l
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and c
    and h
    or e
    or d
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
    ld a, a
    xor h
    cp b
    ld c, a
    and [hl]
    xor b
    and l
    or e
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
    xor d
    xor l
    xor [hl]
    or [hl]
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld c, a
    and a
    xor [hl]
    or e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and l
    xor b
    or c
    and h
    ld d, l
    and c
    or c
    and h
    and b
    or e
    and a
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and [hl]
    and h
    or e
    and $57
    nop
    sbc b
    xor [hl]
    or [hl]
    rst $20
    ld c, a
    add a
    xor [hl]
    or e
    db $f4
    ld a, a
    and a
    xor [hl]
    or e
    db $f4
    ld a, a
    and a
    xor [hl]
    or e
    rst $20
    ld e, b
    nop
    add l
    xor b
    or c
    and h
    db $f4
    ld a, a
    xor [hl]
    or c
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld c, a
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    xor a
    or c
    and h
    and d
    xor b
    or d
    and h
    db $f4
    ld d, l
    and d
    xor [hl]
    xor h
    and c
    or h
    or d
    or e
    xor b
    xor [hl]
    xor l
    add sp, -$18
    add sp, $51
    add c
    xor e
    and b
    and a
    db $f4
    ld a, a
    and c
    xor e
    and b
    and a
    db $f4
    ld a, a
    and c
    xor e
    and b
    and a
    db $f4
    ld c, a
    and c
    xor e
    and b
    and a
    add sp, -$18
    add sp, $57
    nop
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and b
    ld a, a
    or e
    and a
    xor b
    and h
    and l
    db $f4
    ld a, a
    and c
    or h
    or e
    ld c, a
    adc b
    ld a, a
    and c
    and h
    and d
    and b
    xor h
    and h
    ld a, a
    or d
    or e
    or c
    and b
    xor b
    and [hl]
    and a
    or e
    ld d, l
    and b
    or d
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
    ld d, a
    nop
    adc b
    ld c, a
    or d
    or h
    or c
    or c
    and h
    xor l
    and e
    and h
    or c
    rst $20
    ld e, b
    nop
    adc b
    ld a, a
    and d
    and b
    xor l
    cp [hl]
    ld a, a
    and a
    and h
    xor e
    xor a
    ld c, a
    or d
    or e
    and h
    and b
    xor e
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    or e
    and a
    and h
    or c
    ld d, l
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    cp l
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
    and d
    and b
    xor l
    cp [hl]
    ld a, a
    or [hl]
    xor b
    xor l
    rst $20
    ld c, a
    adc b
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    or d
    or e
    or h
    and e
    xor b
    and h
    and e
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or e
    xor [hl]
    or e
    and b
    xor e
    xor e
    cp b
    rst $20
    ld d, a
    nop
    sub [hl]
    and b
    and b
    and a
    rst $20
    ld c, a
    adc h
    cp b
    ld a, a
    or d
    or e
    or h
    and e
    xor b
    and h
    or d
    rst $20
    ld e, b
    nop
    adc h
    cp b
    ld a, a
    or e
    and a
    and h
    xor [hl]
    or c
    xor b
    and h
    or d
    ld a, a
    and b
    or c
    and h
    ld c, a
    or e
    xor [hl]
    xor [hl]
    ld a, a
    and d
    xor [hl]
    xor h
    xor a
    xor e
    xor b
    and d
    and b
    or e
    and h
    and e
    ld d, l
    and l
    xor [hl]
    or c
    ld a, a
    cp b
    xor [hl]
    or h
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
    xor b
    xor d
    and h
    ld a, a
    or h
    or d
    xor b
    xor l
    and [hl]
    ld c, a
    and l
    xor b
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
    sub e
    xor [hl]
    xor [hl]
    ld a, a
    and a
    xor [hl]
    or e
    ld c, a
    or e
    xor [hl]
    ld a, a
    and a
    and b
    xor l
    and e
    xor e
    and h
    rst $20
    ld e, b
    nop
    adc b
    ld a, a
    or [hl]
    xor b
    or d
    and a
    ld a, a
    or e
    and a
    and h
    or c
    and h
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    and b
    ld a, a
    or e
    and a
    xor b
    and h
    and l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, l
    adc b
    cp e
    ld a, a
    or h
    or d
    and h
    ld a, a
    or e
    and a
    and b
    or e
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
    or [hl]
    and a
    cp b
    ld a, a
    add c
    adc e
    add b
    adc b
    adc l
    add h
    ld c, a
    and c
    and h
    and d
    and b
    xor h
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
    ld d, a
    nop
    adc [hl]
    or [hl]
    rst $20
    ld e, b
    nop
    add c
    adc e
    add b
    adc b
    adc l
    add h
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    xor e
    xor [hl]
    or d
    or e
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
    ld d, l
    or [hl]
    and a
    and h
    xor l
    ld a, a
    and b
    ld a, a
    and l
    xor b
    and h
    or c
    cp b
    ld a, a
    and c
    xor b
    or c
    and e
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    and h
    and e
    add sp, $51
    adc b
    or e
    or d
    ld a, a
    xor e
    xor b
    and [hl]
    and a
    or e
    ld a, a
    and h
    xor l
    and b
    and c
    xor e
    and h
    and e
    ld c, a
    add c
    adc e
    add b
    adc b
    adc l
    add h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and l
    xor b
    xor l
    and e
    ld d, l
    and a
    xor b
    or d
    ld a, a
    or [hl]
    and b
    cp b
    ld a, a
    and e
    xor [hl]
    or [hl]
    xor l
    rst $20
    ld d, a
    nop
    adc b
    cp a
    and h
    ld a, a
    and c
    and h
    and h
    xor l
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    and b
    xor l
    cp b
    ld c, a
    add [hl]
    sbc b
    adc h
    or d
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld d, l
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
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or [hl]
    cp c
    and b
    rst $20
    ld c, a
    sub e
    xor [hl]
    xor [hl]
    ld a, a
    and a
    xor [hl]
    or e
    rst $20
    ld e, b
    nop
    sub h
    or d
    ld a, a
    and l
    xor b
    or c
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    and l
    and b
    xor l
    or d
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    adc a
    adc [hl]
    adc l
    sbc b
    sub e
    add b
    ld d, l
    and b
    xor l
    and e
    ld a, a
    adc l
    adc b
    adc l
    add h
    sub e
    add b
    adc e
    add h
    sub d
    rst $20
    ld d, a
    nop
    add l
    xor b
    or c
    and h
    ld a, a
    xor b
    or d
    ld a, a
    or [hl]
    and h
    and b
    xor d
    ld c, a
    and b
    and [hl]
    and b
    xor b
    xor l
    or d
    or e
    ld a, a
    add a
    ld hl, sp-$72
    rst $20
    ld d, a
    nop
    adc [hl]
    and a
    rst $20
    ld c, a
    sub d
    xor l
    or h
    and l
    and l
    and h
    and e
    ld a, a
    xor [hl]
    or h
    or e
    rst $20
    ld e, b
    nop
    sub [hl]
    and b
    or e
    and h
    or c
    ld a, a
    and c
    and h
    and b
    or e
    or d
    ld a, a
    and l
    xor b
    or c
    and h
    rst $20
    ld c, a
    add c
    or h
    or e
    db $f4
    ld a, a
    and l
    xor b
    or c
    and h
    ld a, a
    xor h
    and h
    xor e
    or e
    or d
    ld d, l
    xor b
    and d
    and h
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
    sub e
    and a
    and h
    ld a, a
    and a
    xor [hl]
    or e
    db $e3
    and a
    and h
    and b
    and e
    and h
    and e
    ld c, a
    add c
    adc e
    add b
    adc b
    adc l
    add h
    ld a, a
    xor b
    or d
    ld a, a
    and b
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
    xor a
    or c
    xor [hl]
    rst $20
    ld d, c
    add e
    xor [hl]
    or h
    or d
    and h
    ld a, a
    and a
    xor b
    or d
    ld a, a
    or d
    xor a
    xor b
    or c
    xor b
    or e
    or d
    ld c, a
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
    or e
    and b
    xor d
    and h
    ld c, a
    or d
    xor [hl]
    xor h
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
    or d
    rst $20
    ld d, a
    nop
    ld d, d
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    ld a, a
    and c
    and h
    and b
    or e
    ld c, a
    or e
    and a
    and b
    or e
    ld a, a
    and l
    xor b
    or c
    and h
    ld a, a
    and c
    or c
    and b
    xor l
    and e
    rst $20
    ld d, a
    nop
    sub [hl]
    and h
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
    and h
    or a
    or e
    and h
    xor l
    or d
    xor b
    or l
    and h
    xor e
    cp b
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $51
    adc a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld a, a
    xor [hl]
    and l
    or e
    and h
    xor l
    ld a, a
    and c
    or c
    xor b
    xor l
    and [hl]
    ld c, a
    or h
    or d
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
    ld d, l
    and l
    xor [hl]
    or c
    ld a, a
    and h
    or a
    and b
    xor h
    xor b
    xor l
    and b
    or e
    xor b
    xor [hl]
    xor l
    add sp, $57
    nop
    add b
    ld a, a
    xor a
    and a
    xor [hl]
    or e
    xor [hl]
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld c, a
    adc e
    add b
    add c
    cp l
    ld a, a
    and l
    xor [hl]
    or h
    xor l
    and e
    and h
    or c
    db $f4
    ld d, l
    add e
    sub c
    add sp, -$7b
    sub h
    adc c
    adc b
    rst $20
    ld d, a
    nop
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    adc e
    add b
    add c
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
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    adc e
    add b
    add c
    ld c, a
    sub c
    db $e3
    and b
    xor l
    and e
    db $e3
    add e
    ld a, a
    sub c
    xor [hl]
    xor [hl]
    xor h
    ld d, a
    nop
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    adc e
    add b
    add c
    ld c, a
    sub e
    and h
    or d
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
    adc b
    ld a, a
    and l
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    or l
    and h
    or c
    cp b
    ld c, a
    or d
    or e
    or c
    and b
    xor l
    and [hl]
    and h
    ld a, a
    and l
    xor [hl]
    or d
    or d
    xor b
    xor e
    ld a, a
    xor b
    xor l
    ld d, l
    adc h
    sub e
    add sp, -$74
    adc [hl]
    adc [hl]
    adc l
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
    xor b
    or e
    cp l
    ld a, a
    and b
    ld c, a
    or c
    and b
    or c
    and h
    db $f4
    ld a, a
    xor a
    or c
    and h
    and a
    xor b
    or d
    or e
    xor [hl]
    or c
    xor b
    and d
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, a
    nop
    sub e
    and d
    and a
    db $e3
    or e
    and d
    and a
    db $e3
    or e
    and d
    and a
    rst $20
    ld c, a
    adc b
    ld a, a
    xor h
    and b
    and e
    and h
    ld a, a
    and b
    ld a, a
    and d
    xor [hl]
    xor [hl]
    xor e
    ld a, a
    sub e
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
    and d
    and b
    or h
    or d
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
    and l
    or h
    xor l
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
    ld a, a
    ld c, a
    ld d, b
    ld bc, $cf4b
    nop
    rst $20
    ld d, b
    ld d, b
    nop
    sub e
    and d
    and a
    db $e3
    or e
    and d
    and a
    db $e3
    or e
    and d
    and a
    rst $20
    ld c, a
    sub e
    and a
    and b
    or e
    cp l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    xor [hl]
    or h
    xor l
    and e
    ld d, l
    xor [hl]
    and l
    ld a, a
    and b
    ld a, a
    adc h
    add h
    sub e
    sub c
    adc [hl]
    adc l
    adc [hl]
    adc h
    add h
    rst $20
    ld d, c
    adc b
    or e
    ld a, a
    or e
    or [hl]
    and h
    and b
    xor d
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
    cp l
    ld a, a
    and c
    or c
    and b
    xor b
    xor l
    ld d, l
    xor b
    xor l
    or e
    xor [hl]
    ld a, a
    or h
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    or d
    ld d, l
    xor b
    or e
    ld a, a
    and e
    xor [hl]
    and h
    or d
    xor l
    cp [hl]
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
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
    ld c, a
    and d
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
    rst $20
    ld d, a
    nop
    add h
    add h
    sub l
    add h
    add h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and h
    or l
    xor [hl]
    xor e
    or l
    and h
    ld c, a
    xor b
    xor l
    or e
    xor [hl]
    ld a, a
    rst $30
    ld a, a
    xor [hl]
    and l
    ld a, a
    ld sp, hl
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
    rst $20
    ld d, c
    add sp, -$18
    add sp, $51
    sub e
    and a
    and h
    ld a, a
    ld sp, hl
    ld a, a
    xor e
    and h
    and [hl]
    and h
    xor l
    and e
    and b
    or c
    cp b
    ld c, a
    and c
    xor b
    or c
    and e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    or c
    and h
    ld d, l
    add b
    sub c
    sub e
    adc b
    add d
    sub h
    adc l
    adc [hl]
    db $f4
    ld a, a
    sbc c
    add b
    adc a
    add e
    adc [hl]
    sub d
    ld d, l
    and b
    xor l
    and e
    ld a, a
    adc h
    adc [hl]
    adc e
    sub e
    sub c
    add h
    sub d
    add sp, $51
    sub e
    and a
    and h
    xor b
    or c
    ld a, a
    or [hl]
    and a
    and h
    or c
    and h
    and b
    and c
    xor [hl]
    or h
    or e
    or d
    ld c, a
    and b
    or c
    and h
    ld a, a
    or h
    xor l
    xor d
    xor l
    xor [hl]
    or [hl]
    xor l
    add sp, $51
    sub [hl]
    and h
    ld a, a
    xor a
    xor e
    and b
    xor l
    ld a, a
    or e
    xor [hl]
    ld a, a
    and h
    or a
    xor a
    xor e
    xor [hl]
    or c
    and h
    ld c, a
    or e
    and a
    and h
    ld a, a
    and d
    and b
    or l
    and h
    or c
    xor l
    ld a, a
    and d
    xor e
    xor [hl]
    or d
    and h
    ld d, l
    or e
    xor [hl]
    ld a, a
    add d
    add h
    sub c
    sub h
    adc e
    add h
    add b
    adc l
    add sp, $51
    add l
    or c
    xor [hl]
    xor h
    sbc h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    sub c
    add h
    sub d
    add h
    add b
    sub c
    add d
    add a
    ld a, a
    sub e
    add h
    add b
    adc h
    ld d, c
    add sp, -$18
    add sp, $57
    nop
    add b
    xor l
    ld a, a
    and b
    xor h
    and c
    and h
    or c
    ld a, a
    xor a
    xor b
    xor a
    and h
    rst $20
    ld d, a
    nop
    add a
    xor b
    cp b
    and b
    rst $20
    ld d, c
    adc b
    ld a, a
    and b
    xor h
    ld a, a
    xor b
    xor h
    xor a
    xor [hl]
    or c
    or e
    and b
    xor l
    or e
    ld c, a
    and e
    xor [hl]
    and d
    or e
    xor [hl]
    or c
    rst $20
    ld d, c
    adc b
    ld a, a
    or d
    or e
    or h
    and e
    cp b
    ld a, a
    and a
    and h
    or c
    and h
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
    and l
    xor [hl]
    or d
    or d
    xor b
    xor e
    or d
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    rst $20
    ld a, a
    add a
    and b
    or l
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    ld c, a
    and l
    xor [hl]
    or d
    or d
    xor b
    xor e
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor h
    and h
    and $58
    nop
    adc l
    xor [hl]
    rst $20
    ld a, a
    adc b
    or d
    ld a, a
    or e
    xor [hl]
    xor [hl]
    ld a, a
    and c
    and b
    and e
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    or e
    and b
    xor d
    and h
    ld a, a
    and b
    ld a, a
    xor e
    xor b
    or e
    or e
    xor e
    and h
    ld c, a
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
    and [hl]
    xor [hl]
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    or [hl]
    and b
    xor e
    xor d
    ld a, a
    and b
    ld c, a
    xor e
    xor b
    or e
    or e
    xor e
    and h
    ld a, a
    or [hl]
    and a
    xor b
    xor e
    and h
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    and h
    or c
    and h
    ld a, a
    or [hl]
    and h
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    and $51
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    and l
    xor [hl]
    or d
    or d
    xor b
    xor e
    ld a, a
    xor b
    or d
    ld c, a
    and c
    and b
    and d
    xor d
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor e
    xor b
    and l
    and h
    rst $20
    ld d, c
    adc b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    ld d, b
    ld bc, $cf4b
    nop
    ld c, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    adc b
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
    rst $20
    ld e, b
    nop
    adc [hl]
    and a
    rst $20
    ld a, a
    sub e
    and a
    and b
    or e
    ld a, a
    xor b
    or d
    ld c, a
    ld d, b
    ld bc, $cd6d
    nop
    rst $20
    ld d, c
    adc b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    and l
    xor [hl]
    or d
    or d
    xor b
    xor e
    ld a, a
    xor [hl]
    and l
    ld c, a
    ld d, b
    ld bc, $cf4b
    nop
    db $f4
    ld a, a
    and b
    ld d, l
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
    xor b
    or d
    ld d, l
    and b
    xor e
    or c
    and h
    and b
    and e
    cp b
    ld a, a
    and h
    or a
    or e
    xor b
    xor l
    and d
    or e
    rst $20
    ld d, c
    adc h
    cp b
    ld a, a
    sub c
    and h
    or d
    or h
    or c
    or c
    and h
    and d
    or e
    xor b
    xor [hl]
    xor l
    ld c, a
    adc h
    and b
    and d
    and a
    xor b
    xor l
    and h
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    xor h
    and b
    xor d
    and h
    ld d, l
    or e
    and a
    and b
    or e
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
    ld d, l
    and b
    and [hl]
    and b
    xor b
    xor l
    rst $20
    ld d, a
    nop
    sub d
    xor [hl]
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    ld a, a
    and a
    or h
    or c
    or c
    cp b
    ld a, a
    and b
    xor l
    and e
    ld c, a
    and [hl]
    xor b
    or l
    and h
    ld a, a
    xor h
    and h
    ld a, a
    or e
    and a
    and b
    or e
    rst $20
    ld d, c
    ld d, d
    ld a, a
    and a
    and b
    xor l
    and e
    and h
    and e
    ld c, a
    xor [hl]
    or l
    and h
    or c
    ld a, a
    ld d, b
    ld bc, $cd6d
    nop
    rst $20
    ld e, b
    nop
    adc b
    ld a, a
    or e
    and b
    xor d
    and h
    ld a, a
    and b
    ld a, a
    xor e
    xor b
    or e
    or e
    xor e
    and h
    ld c, a
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
    and [hl]
    xor [hl]
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    or [hl]
    and b
    xor e
    xor d
    ld a, a
    and b
    ld c, a
    xor e
    xor b
    or e
    or e
    xor e
    and h
    ld a, a
    or [hl]
    and a
    xor b
    xor e
    and h
    rst $20
    ld d, a
    nop
    add b
    xor b
    cp b
    and b
    and a
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
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
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and d
    and b
    xor l
    and d
    and h
    xor e
    ld c, a
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
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    and b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor b
    or d
    ld c, a
    and h
    or l
    xor [hl]
    xor e
    or l
    xor b
    xor l
    and [hl]
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld d, l
    or d
    or e
    xor [hl]
    xor a
    ld a, a
    xor b
    or e
    ld a, a
    and b
    xor l
    and e
    ld a, a
    xor e
    and h
    and b
    or l
    and h
    ld d, l
    xor b
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    and b
    cp b
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    or d
    add sp, $57
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
    xor l
    cp b
    ld c, a
    and l
    or c
    xor b
    and h
    xor l
    and e
    or d
    and $51
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
    and h
    or e
    ld c, a
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
    and [hl]
    or c
    xor [hl]
    or [hl]
    ld d, l
    or l
    and h
    or c
    cp b
    ld a, a
    or b
    or h
    xor b
    and d
    xor d
    xor e
    cp b
    add sp, $51
    adc b
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
    ld a, a
    xor b
    or e
    cp l
    ld c, a
    or [hl]
    xor [hl]
    or c
    or e
    and a
    ld a, a
    and b
    ld a, a
    or e
    or c
    cp b
    rst $20
    ld d, a
    nop
    add e
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    or e
    and a
    and h
    cp b
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    sub a
    ld c, a
    add b
    sub e
    sub e
    add b
    add d
    adc d
    and $7f
    adc b
    or e
    cp l
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld d, l
    and l
    xor [hl]
    or c
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    or d
    rst $20
    ld d, a
    nop
    adc b
    or e
    ld a, a
    xor l
    and h
    or l
    and h
    or c
    ld a, a
    and a
    or h
    or c
    or e
    or d
    ld a, a
    or e
    xor [hl]
    ld c, a
    and a
    and b
    or l
    and h
    ld a, a
    and h
    or a
    or e
    or c
    and b
    ld a, a
    xor b
    or e
    and h
    xor h
    or d
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
    add b
    or e
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
    db $f4
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
    and l
    and b
    and d
    and h
    ld d, l
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
    ld a, a
    xor b
    xor l
    ld d, l
    or d
    or h
    and d
    and d
    and h
    or d
    or d
    xor b
    xor [hl]
    xor l
    add sp, $51
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor e
    xor [hl]
    or d
    and h
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and a
    and b
    or l
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    or e
    and b
    or c
    or e
    ld a, a
    and b
    xor e
    xor e
    ld d, l
    xor [hl]
    or l
    and h
    or c
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    rst $20
    ld a, a
    sub e
    and a
    xor b
    or d
    ld d, l
    xor b
    or d
    ld a, a
    xor b
    or e
    rst $20
    ld a, a
    add [hl]
    xor [hl]
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor b
    or e
    rst $20
    ld d, a
    nop
    add l
    or c
    xor [hl]
    xor h
    ld a, a
    and a
    and h
    or c
    and h
    ld a, a
    xor [hl]
    xor l
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and l
    and b
    and d
    and h
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
    ld d, l
    add l
    adc [hl]
    sub h
    sub c
    ld a, a
    xor [hl]
    xor l
    and h
    ld a, a
    and c
    cp b
    ld a, a
    xor [hl]
    xor l
    and h
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
    xor b
    xor l
    db $f4
    ld a, a
    and b
    ld c, a
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
    ld a, a
    or e
    and a
    and h
    ld d, l
    xor l
    and h
    or a
    or e
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    rst $20
    ld d, l
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor e
    or h
    and d
    xor d
    rst $20
    ld d, a
    nop
    adc h
    cp b
    ld a, a
    and e
    and b
    or h
    and [hl]
    and a
    or e
    and h
    or c
    ld a, a
    xor b
    or d
    ld a, a
    or d
    xor [hl]
    ld c, a
    or d
    and h
    xor e
    and l
    db $e3
    and d
    and h
    xor l
    or e
    and h
    or c
    and h
    and e
    add sp, $55
    sub d
    and a
    and h
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    and a
    and b
    or d
    ld a, a
    and b
    ld d, l
    and l
    and h
    or [hl]
    ld a, a
    and l
    or c
    xor b
    and h
    xor l
    and e
    or d
    add sp, $57
    nop
    adc h
    cp b
    ld a, a
    and e
    and b
    or h
    and [hl]
    and a
    or e
    and h
    or c
    ld a, a
    xor e
    xor b
    xor d
    and h
    or d
    ld c, a
    or e
    xor [hl]
    ld a, a
    xor h
    xor b
    xor h
    xor b
    and d
    ld a, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    add sp, $51
    add a
    and h
    or c
    ld a, a
    xor h
    xor b
    xor h
    xor b
    and d
    or c
    cp b
    ld a, a
    and a
    and b
    or d
    ld c, a
    and h
    and b
    or c
    xor l
    and h
    and e
    ld a, a
    and a
    and h
    or c
    ld a, a
    or e
    and a
    and h
    ld d, l
    xor l
    xor b
    and d
    xor d
    xor l
    and b
    xor h
    and h
    ld a, a
    add d
    adc [hl]
    adc a
    sbc b
    add d
    add b
    sub e
    ld d, l
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    and a
    and h
    or c
    and h
    rst $20
    ld d, a
    nop
    add d
    add a
    add b
    adc l
    sub d
    add h
    sbc b
    sbc h
    ld a, a
    add d
    and a
    and b
    and b
    xor l
    rst $20
    ld c, a
    sub d
    xor b
    xor b
    rst $20
    ld d, b
    ld d, b
    nop
    ld d, d
    sbc h
    ld a, a
    add a
    xor b
    rst $20
    ld a, a
    add e
    xor [hl]
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    and $51
    ld d, d
    sbc h
    ld a, a
    sub h
    and a
    ld a, a
    xor l
    xor [hl]
    db $f4
    ld a, a
    adc b
    ld c, a
    xor c
    or h
    or d
    or e
    ld a, a
    and b
    or d
    xor d
    and h
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $51
    ld d, d
    sbc h
    ld a, a
    add a
    or h
    and a
    and $4f
    sbc b
    xor [hl]
    or h
    db $e4
    and h
    ld a, a
    or d
    or e
    or c
    and b
    xor l
    and [hl]
    and h
    rst $20
    ld d, c
    add d
    adc [hl]
    adc a
    sbc b
    add d
    add b
    sub e
    sbc h
    ld a, a
    add a
    xor h
    xor h
    and $4f
    sub b
    or h
    xor b
    or e
    ld a, a
    xor h
    xor b
    xor h
    xor b
    and d
    xor d
    xor b
    xor l
    and [hl]
    and $51
    add c
    or h
    or e
    db $f4
    ld a, a
    or e
    and a
    and b
    or e
    cp l
    ld a, a
    xor h
    cp b
    ld c, a
    and l
    and b
    or l
    xor [hl]
    or c
    xor b
    or e
    and h
    ld a, a
    and a
    xor [hl]
    and c
    and c
    cp b
    rst $20
    ld e, b
    nop
    adc [hl]
    and a
    ld a, a
    or [hl]
    xor [hl]
    or [hl]
    rst $20
    ld c, a
    add b
    ld a, a
    ld d, h
    ld a, a
    add e
    adc [hl]
    adc e
    adc e
    rst $20
    ld d, c
    add l
    xor [hl]
    or c
    ld a, a
    xor h
    and h
    and $4f
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
    ld c, a
    or e
    and a
    xor b
    or d
    db $f4
    ld a, a
    or e
    and a
    and h
    xor l
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
    ld d, c
    sub e
    adc h
    ld sp, hl
    rst $30
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
    xor h
    cp b
    ld c, a
    and l
    and b
    or l
    xor [hl]
    or c
    xor b
    or e
    and h
    db $f4
    ld a, a
    adc h
    adc b
    adc h
    adc b
    add d
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
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, b
    ld d, b
    nop
    ld d, d
    sbc h
    ld a, a
    add a
    xor b
    rst $20
    ld c, a
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
    sub e
    adc h
    ld sp, hl
    rst $30
    rst $20
    ld d, c
    ld d, d
    sbc h
    ld a, a
    adc a
    and b
    or c
    and e
    xor [hl]
    xor l
    and $51
    ld d, d
    sbc h
    ld a, a
    adc b
    or d
    ld a, a
    xor b
    or e
    ld c, a
    or e
    and a
    and b
    or e
    ld a, a
    and l
    or h
    xor l
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    xor b
    xor h
    xor b
    and d
    ld d, l
    xor h
    cp b
    ld a, a
    and h
    or l
    and h
    or c
    cp b
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    and $51
    add d
    adc [hl]
    adc a
    sbc b
    add d
    add b
    sub e
    sbc h
    ld a, a
    sbc b
    xor [hl]
    or h
    ld a, a
    and c
    and h
    or e
    rst $20
    ld c, a
    adc b
    or e
    cp l
    ld a, a
    and b
    ld a, a
    or d
    and d
    or c
    and h
    and b
    xor h
    rst $20
    ld d, a
    nop
    add e
    xor [hl]
    xor l
    cp [hl]
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
    and a
    xor b
    or d
    and $50
    ld d, b
    nop
    add e
    adc [hl]
    add e
    sub h
    adc [hl]
    sbc h
    ld a, a
    add [hl]
    xor b
    xor b
    xor b
    and a
    rst $20
    ld d, c
    adc h
    adc b
    sub c
    sub c
    adc [hl]
    sub c
    ld a, a
    adc h
    adc b
    sub c
    sub c
    adc [hl]
    sub c
    ld a, a
    adc [hl]
    adc l
    ld c, a
    sub e
    add a
    add h
    ld a, a
    sub [hl]
    add b
    adc e
    adc e
    db $f4
    ld a, a
    sub [hl]
    add a
    adc [hl]
    ld a, a
    adc b
    sub d
    ld d, l
    sub e
    add a
    add h
    ld a, a
    add l
    add b
    adc b
    sub c
    add h
    sub d
    sub e
    ld a, a
    adc [hl]
    adc l
    add h
    ld d, l
    adc [hl]
    add l
    ld a, a
    add b
    adc e
    adc e
    and $57
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
    rst $20
    ld a, a
    add a
    or h
    and a
    and $55
    adc b
    or e
    cp l
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    and b
    ld a, a
    and e
    xor [hl]
    xor e
    xor e
    rst $20
    ld d, a
    nop
    add b
    ld a, a
    and [hl]
    and b
    xor h
    and h
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    adc h
    add b
    sub c
    adc b
    adc [hl]
    ld c, a
    or [hl]
    and h
    and b
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    ld a, a
    and c
    or h
    and d
    xor d
    and h
    or e
    ld d, l
    xor [hl]
    xor l
    ld a, a
    and a
    xor b
    or d
    ld a, a
    and a
    and h
    and b
    and e
    rst $20
    ld d, a
    nop
    add sp, -$18
    add sp, $51
    adc h
    cp b
    ld a, a
    sub d
    and h
    and d
    or c
    and h
    or e
    or d
    rst $20
    ld d, c
    sub d
    xor d
    xor b
    xor e
    xor e
    sbc h
    ld a, a
    adc h
    xor b
    xor h
    xor b
    and d
    or c
    cp b
    rst $20
    ld c, a
    add a
    xor [hl]
    and c
    and c
    cp b
    sbc h
    ld a, a
    add d
    xor [hl]
    xor e
    xor e
    and h
    and d
    or e
    xor b
    xor l
    and [hl]
    ld d, l
    and e
    xor [hl]
    xor e
    xor e
    or d
    rst $20
    ld d, l
    add l
    and b
    or l
    xor [hl]
    or c
    xor b
    or e
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    sbc h
    ld d, l
    add d
    adc e
    add h
    add l
    add b
    adc b
    sub c
    sbc b
    rst $20
    ld d, a
    nop
    add a
    or h
    and a
    and $7f
    add d
    and b
    xor l
    cp [hl]
    ld a, a
    or d
    and h
    and h
    rst $20
    ld d, a
    nop
    add [hl]
    or c
    or h
    xor l
    or e
    rst $20
    ld d, c
    adc b
    ld a, a
    and b
    xor h
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc d
    add b
    sub c
    add b
    sub e
    add h
    ld c, a
    adc h
    add b
    sub d
    sub e
    add h
    sub c
    rst $20
    ld a, a
    adc b
    ld a, a
    and b
    xor h
    ld a, a
    or e
    and a
    and h
    ld d, l
    adc e
    add h
    add b
    add e
    add h
    sub c
    ld a, a
    and a
    and h
    or c
    and h
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    or [hl]
    xor b
    or d
    and a
    ld a, a
    or e
    xor [hl]
    ld c, a
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
    or h
    or d
    and $55
    add h
    or a
    xor a
    and h
    and d
    or e
    ld a, a
    xor l
    xor [hl]
    ld a, a
    xor h
    and h
    or c
    and d
    cp b
    rst $20
    ld d, c
    add l
    or [hl]
    and b
    and b
    and b
    rst $20
    ld d, a
    nop
    add a
    or [hl]
    and b
    rst $20
    ld c, a
    add b
    or c
    or c
    and [hl]
    and a
    rst $20
    ld a, a
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
    xor l
    and e
    and h
    and h
    and e
    db $f4
    ld a, a
    adc b
    ld a, a
    and a
    and b
    or l
    and h
    ld c, a
    xor e
    xor [hl]
    or d
    or e
    rst $20
    ld d, c
    add c
    or h
    or e
    db $f4
    ld a, a
    adc b
    ld a, a
    and c
    and h
    or d
    and h
    and h
    and d
    and a
    ld c, a
    cp b
    xor [hl]
    or h
    db $f4
    ld a, a
    and e
    xor [hl]
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    or e
    and b
    xor d
    and h
    ld d, l
    xor [hl]
    or h
    or c
    ld a, a
    and h
    xor h
    and c
    xor e
    and h
    xor h
    ld a, a
    and b
    or d
    ld d, l
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    or e
    or c
    xor [hl]
    xor a
    and a
    cp b
    rst $20
    ld d, c
    adc b
    xor l
    ld a, a
    or c
    and h
    or e
    or h
    or c
    xor l
    db $f4
    ld a, a
    adc b
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld c, a
    and [hl]
    xor b
    or l
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    ld a, a
    xor a
    or c
    xor b
    cp c
    and h
    and e
    ld d, l
    and l
    xor b
    and [hl]
    and a
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, c
    add d
    and a
    xor [hl]
    xor [hl]
    or d
    and h
    ld a, a
    or [hl]
    and a
    xor b
    and d
    and a
    and h
    or l
    and h
    or c
    ld c, a
    xor [hl]
    xor l
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
    nop
    add a
    xor [hl]
    rst $20
    ld d, c
    sub d
    or e
    and b
    cp b
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    ld a, a
    and b
    or e
    ld c, a
    adc d
    and b
    or c
    and b
    or e
    and h
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    or h
    or d
    rst $20
    ld d, a
    nop
    add a
    xor [hl]
    and b
    or c
    and [hl]
    and a
    rst $20
    ld a, a
    sub e
    and b
    xor d
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld c, a
    or d
    and a
    xor [hl]
    and h
    or d
    ld a, a
    xor [hl]
    and l
    and l
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    and [hl]
    xor b
    or l
    and h
    ld c, a
    or h
    xor a
    rst $20
    ld e, b
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and b
    xor b
    or e
    ld a, a
    cp [hl]
    xor b
    xor e
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    or d
    and h
    and h
    ld a, a
    xor [hl]
    or h
    or c
    ld a, a
    adc h
    and b
    or d
    or e
    and h
    or c
    rst $20
    ld d, c
    adc b
    push hl
    ld a, a
    and b
    ld a, a
    or d
    xor h
    and b
    xor e
    xor e
    ld a, a
    and l
    or c
    cp b
    ld c, a
    and d
    xor [hl]
    xor h
    xor a
    and b
    or c
    and h
    and e
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
    adc b
    ld a, a
    and a
    and h
    and b
    or c
    ld a, a
    cp b
    xor [hl]
    or h
    db $e4
    and h
    ld c, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    rst $20
    ld a, a
    sub d
    and a
    xor [hl]
    or [hl]
    ld a, a
    xor h
    and h
    rst $20
    ld d, a
    nop
    adc c
    or h
    and e
    and [hl]
    and h
    rst $20
    ld c, a
    rst $30
    ld a, a
    xor a
    xor [hl]
    xor b
    xor l
    or e
    rst $20
    ld e, b
    nop
    adc [hl]
    or h
    or c
    ld a, a
    adc h
    and b
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
    xor a
    or c
    xor [hl]
    ld a, a
    and l
    xor b
    and [hl]
    and a
    or e
    and h
    or c
    rst $20
    ld d, a
    nop
    adc l
    xor [hl]
    or e
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    ld c, a
    and l
    or c
    xor b
    and [hl]
    and a
    or e
    and h
    xor l
    or d
    ld a, a
    xor h
    and h
    rst $20
    ld d, c
    adc b
    ld a, a
    and c
    or c
    and h
    and b
    xor d
    ld a, a
    and c
    xor [hl]
    or h
    xor e
    and e
    and h
    or c
    or d
    ld c, a
    and l
    xor [hl]
    or c
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
    sbc b
    xor [hl]
    or [hl]
    rst $20
    ld c, a
    sub d
    or e
    or h
    and c
    and c
    and h
    and e
    ld a, a
    and l
    xor b
    xor l
    and [hl]
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
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    or e
    and a
    xor b
    xor l
    and [hl]
    ld c, a
    or e
    and a
    and b
    or e
    ld a, a
    and l
    or c
    xor b
    and [hl]
    and a
    or e
    and h
    xor l
    or d
    ld a, a
    or h
    or d
    ld d, l
    xor b
    or d
    ld a, a
    xor a
    or d
    cp b
    and d
    and a
    xor b
    and d
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    rst $20
    ld d, a
    nop
    add a
    xor [hl]
    xor [hl]
    and a
    and b
    and a
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    db $e4
    and h
    ld a, a
    or e
    or c
    and h
    or d
    xor a
    and b
    or d
    or d
    xor b
    xor l
    and [hl]
    ld c, a
    xor b
    xor l
    ld a, a
    xor [hl]
    or h
    or c
    ld a, a
    add l
    adc b
    add [hl]
    add a
    sub e
    adc b
    adc l
    add [hl]
    ld d, l
    add e
    adc [hl]
    adc c
    adc [hl]
    rst $20
    ld d, a
    nop
    adc [hl]
    xor [hl]
    and l
    rst $20
    ld c, a
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
    sub e
    and a
    and h
    ld a, a
    xor a
    or c
    xor b
    xor h
    and h
    ld a, a
    and l
    xor b
    and [hl]
    and a
    or e
    and h
    or c
    or d
    ld c, a
    and b
    and d
    or c
    xor [hl]
    or d
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor e
    and b
    xor l
    and e
    ld d, l
    or e
    or c
    and b
    xor b
    xor l
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $57
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    and a
    and h
    ld c, a
    and a
    and b
    or c
    and e
    ld a, a
    xor d
    xor b
    and d
    xor d
    xor b
    xor l
    and [hl]
    ld d, l
    add a
    adc b
    sub e
    adc h
    adc [hl]
    adc l
    adc e
    add h
    add h
    and $57
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    and a
    and h
    ld c, a
    xor a
    xor b
    or d
    or e
    xor [hl]
    xor l
    ld a, a
    xor a
    or h
    xor l
    and d
    and a
    xor b
    xor l
    and [hl]
    ld d, l
    add a
    adc b
    sub e
    adc h
    adc [hl]
    adc l
    add d
    add a
    add b
    adc l
    and $57
    nop
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
    and [hl]
    and h
    or e
    ld c, a
    and [hl]
    or c
    and h
    and h
    and e
    cp b
    add sp, -$18
    add sp, $57
    nop
    adc b
    ld a, a
    and a
    and b
    and e
    ld a, a
    and b
    ld a, a
    or l
    xor b
    or d
    xor b
    xor [hl]
    xor l
    ld a, a
    xor [hl]
    and l
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    and b
    or c
    or c
    xor b
    or l
    and b
    xor e
    rst $20
    ld d, c
    adc b
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    and a
    and b
    and e
    ld a, a
    xor a
    or d
    cp b
    and d
    and a
    xor b
    and d
    ld c, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    or d
    ld a, a
    or d
    xor b
    xor l
    and d
    and h
    ld a, a
    adc b
    ld d, l
    or [hl]
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
    add sp, $51
    adc b
    ld a, a
    and l
    xor b
    or c
    or d
    or e
    ld a, a
    xor e
    and h
    and b
    or c
    xor l
    and h
    and e
    ld c, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    xor l
    and e
    ld a, a
    or d
    xor a
    xor [hl]
    xor [hl]
    xor l
    or d
    ld d, l
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor h
    cp b
    ld a, a
    xor h
    xor b
    xor l
    and e
    add sp, $51
    adc b
    ld a, a
    and e
    xor b
    or d
    xor e
    xor b
    xor d
    and h
    ld a, a
    and l
    xor b
    and [hl]
    and a
    or e
    db $e3
    ld c, a
    xor b
    xor l
    and [hl]
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    xor b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, l
    or [hl]
    xor b
    or d
    and a
    db $f4
    ld a, a
    adc b
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    or d
    and a
    xor [hl]
    or [hl]
    ld d, l
    cp b
    xor [hl]
    or h
    ld a, a
    xor h
    cp b
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    or d
    rst $20
    ld d, a
    nop
    adc b
    push hl
    ld c, a
    or d
    and a
    xor [hl]
    and d
    xor d
    and h
    and e
    rst $20
    ld d, l
    add c
    or h
    or e
    db $f4
    ld a, a
    and b
    ld a, a
    xor e
    xor [hl]
    or d
    or d
    ld a, a
    xor b
    or d
    ld a, a
    and b
    ld d, l
    xor e
    xor [hl]
    or d
    or d
    add sp, $51
    adc b
    ld a, a
    and b
    and e
    xor h
    xor b
    or e
    ld a, a
    adc b
    ld a, a
    and e
    xor b
    and e
    xor l
    cp [hl]
    ld c, a
    or [hl]
    xor [hl]
    or c
    xor d
    ld a, a
    and a
    and b
    or c
    and e
    ld a, a
    and h
    xor l
    xor [hl]
    or h
    and [hl]
    and a
    ld d, l
    or e
    xor [hl]
    ld a, a
    or [hl]
    xor b
    xor l
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    and h
    and b
    or c
    xor l
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld c, a
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
    rst $20
    ld d, b
    ld d, b
    nop
    add h
    or l
    and h
    or c
    cp b
    xor [hl]
    xor l
    and h
    ld a, a
    and a
    and b
    or d
    ld c, a
    xor a
    or d
    cp b
    and d
    and a
    xor b
    and d
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    rst $20
    ld d, l
    adc a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    and e
    xor [hl]
    xor l
    cp [hl]
    ld d, l
    or c
    and h
    and b
    xor e
    xor b
    cp c
    and h
    ld a, a
    xor b
    or e
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
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
    ld c, a
    xor h
    and b
    xor d
    and h
    or d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or h
    xor a
    ld d, l
    or e
    xor [hl]
    ld a, a
    adc e
    db $fd
    or $7f
    xor [hl]
    and c
    and h
    cp b
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, c
    sub d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    and h
    or c
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
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    or [hl]
    xor b
    xor e
    and e
    db $f4
    ld d, l
    xor b
    and [hl]
    xor l
    xor [hl]
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld d, l
    xor [hl]
    or c
    and e
    and h
    or c
    or d
    ld a, a
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
    adc c
    or h
    or d
    or e
    ld a, a
    and e
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    or c
    and b
    xor b
    or d
    and h
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or e
    xor [hl]
    xor [hl]
    ld d, l
    xor h
    or h
    and d
    and a
    rst $20
    ld d, c
    sub [hl]
    and b
    xor b
    or e
    db $f4
    ld a, a
    xor a
    xor e
    and h
    and b
    or d
    and h
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
    sub e
    adc h
    ld a, a
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
    ld a, [$e7fc]
    ld d, b
    ld d, b
    nop
    ld d, c
    sub e
    adc h
    ld a, [$7ffc]
    xor b
    or d
    ld a, a
    adc a
    sub d
    sbc b
    sub [hl]
    add b
    sub l
    add h
    rst $20
    ld c, a
    adc b
    or e
    ld a, a
    or h
    or d
    and h
    or d
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    and l
    or h
    xor e
    ld d, l
    xor a
    or d
    cp b
    and d
    and a
    xor b
    and d
    ld a, a
    or [hl]
    and b
    or l
    and h
    or d
    ld a, a
    or e
    xor [hl]
    ld d, l
    xor b
    xor l
    and l
    xor e
    xor b
    and d
    or e
    ld a, a
    and e
    and b
    xor h
    and b
    and [hl]
    and h
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
    sub d
    add b
    add c
    sub c
    adc b
    adc l
    add b
    cp l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    or h
    or d
    and h
    ld a, a
    xor a
    or d
    cp b
    and d
    and a
    xor b
    and d
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    ld d, l
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
    ld a, a
    and l
    xor [hl]
    or c
    and d
    and h
    rst $20
    ld d, c
    add l
    xor b
    and [hl]
    and a
    or e
    xor b
    xor l
    and [hl]
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
    or [hl]
    and h
    and b
    xor d
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    or d
    or e
    ld d, l
    xor a
    or d
    cp b
    and d
    and a
    xor b
    and d
    ld a, a
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
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    and d
    or c
    and h
    and b
    xor h
    and h
    and e
    ld c, a
    and c
    and h
    and l
    xor [hl]
    or c
    and h
    ld a, a
    or e
    and a
    and h
    cp b
    ld a, a
    and d
    and b
    xor l
    ld d, l
    and h
    or l
    and h
    xor l
    ld a, a
    and b
    xor b
    xor h
    ld a, a
    and b
    ld a, a
    xor a
    or h
    xor l
    and d
    and a
    rst $20
    ld d, a
    nop
    adc a
    or d
    cp b
    and d
    and a
    xor b
    and d
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    db $f4
    ld c, a
    and a
    or h
    and a
    and $51
    adc b
    and l
    ld a, a
    adc b
    ld a, a
    and a
    and b
    and e
    ld a, a
    or e
    and a
    and b
    or e
    db $f4
    ld c, a
    adc b
    cp e
    ld a, a
    xor h
    and b
    xor d
    and h
    ld a, a
    and b
    ld a, a
    and c
    or h
    xor l
    and e
    xor e
    and h
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
    rst $20
    ld d, a
    nop
    sub d
    add b
    add c
    sub c
    adc b
    adc l
    add b
    ld a, a
    xor b
    or d
    ld a, a
    cp b
    xor [hl]
    or h
    xor l
    and [hl]
    and h
    or c
    ld c, a
    or e
    and a
    and b
    xor l
    ld a, a
    adc b
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    adc b
    ld d, l
    or c
    and h
    or d
    xor a
    and h
    and d
    or e
    ld a, a
    and a
    and h
    or c
    rst $20
    ld d, a
    nop
    adc l
    xor [hl]
    or e
    ld c, a
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
    rst $20
    ld e, b
    nop
    adc b
    xor l
    ld a, a
    and b
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    ld a, a
    xor [hl]
    and l
    ld c, a
    and h
    or b
    or h
    and b
    xor e
    or d
    db $f4
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor [hl]
    xor l
    and h
    ld d, l
    or [hl]
    xor b
    or e
    and a
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    and h
    or c
    ld d, l
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    or [hl]
    xor b
    xor l
    or d
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
    xor b
    or d
    and a
    ld c, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    and b
    or e
    ld a, a
    sub d
    add b
    add c
    sub c
    adc b
    adc l
    add b
    db $f4
    ld d, l
    and l
    xor [hl]
    and d
    or h
    or d
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or [hl]
    xor b
    xor l
    xor l
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    add e
    xor [hl]
    and h
    or d
    ld a, a
    xor [hl]
    or h
    or c
    ld a, a
    or h
    xor l
    or d
    and h
    and h
    xor l
    ld c, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    ld a, a
    or d
    and d
    and b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    and $57
    nop
    adc b
    ld a, a
    xor l
    and h
    or l
    and h
    or c
    ld c, a
    and l
    xor [hl]
    or c
    and h
    or d
    and b
    or [hl]
    ld a, a
    or e
    and a
    xor b
    or d
    rst $20
    ld e, b
    nop
    adc a
    or d
    cp b
    and d
    and a
    xor b
    and d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    and l
    and h
    and b
    or c
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    and [hl]
    and a
    xor [hl]
    or d
    or e
    or d
    ld d, l
    and b
    xor l
    and e
    ld a, a
    and c
    or h
    and [hl]
    or d
    rst $20
    ld d, a
    nop
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or e
    and b
    xor d
    and h
    ld a, a
    xor [hl]
    xor l
    ld c, a
    or e
    and a
    and h
    ld a, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    and b
    xor l
    and d
    and h
    ld a, a
    xor [hl]
    and l
    ld d, l
    or e
    and a
    and h
    xor b
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
    add sp, $51
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
    xor h
    or h
    or d
    or e
    ld c, a
    and c
    and h
    ld a, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    db $f4
    ld a, a
    or e
    and a
    and h
    xor l
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    xor d
    xor l
    and h
    or [hl]
    ld c, a
    xor b
    or e
    rst $20
    ld e, b
    nop
    adc b
    ld a, a
    xor h
    or h
    or d
    or e
    ld a, a
    or e
    and h
    and b
    and d
    and a
    ld c, a
    and c
    and h
    or e
    or e
    and h
    or c
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
    or e
    xor [hl]
    ld a, a
    xor h
    cp b
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
    xor d
    xor l
    xor [hl]
    or [hl]
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    ld a, a
    and b
    xor e
    xor [hl]
    xor l
    and h
    ld a, a
    xor b
    or d
    xor l
    cp [hl]
    ld d, l
    and h
    xor l
    xor [hl]
    or h
    and [hl]
    and a
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    and e
    xor [hl]
    xor l
    cp [hl]
    ld c, a
    and c
    and h
    xor e
    xor b
    and h
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
    sub d
    add b
    add c
    sub c
    adc b
    adc l
    add b
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    or [hl]
    xor b
    xor a
    and h
    and e
    ld c, a
    xor [hl]
    or h
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc d
    add b
    sub c
    add b
    sub e
    add h
    ld d, l
    adc h
    add b
    sub d
    sub e
    add h
    sub c
    ld a, a
    xor l
    and h
    or a
    or e
    ld a, a
    and e
    xor [hl]
    xor [hl]
    or c
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and b
    xor l
    and e
    ld a, a
    adc b
    db $f4
    ld a, a
    xor [hl]
    or h
    or c
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or d
    and a
    and b
    xor e
    xor e
    ld d, l
    and l
    xor b
    and [hl]
    and a
    or e
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    ld c, a
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
    ld e, b
    nop
    adc b
    ld a, a
    xor d
    xor l
    and h
    or [hl]
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    or e
    and a
    xor b
    or d
    ld c, a
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
    ld a, a
    or e
    and b
    xor d
    and h
    ld d, l
    xor a
    xor e
    and b
    and d
    and h
    add sp, $57
    nop
    sub d
    add b
    add c
    sub c
    adc b
    adc l
    add b
    ld a, a
    xor b
    or d
    ld a, a
    cp b
    xor [hl]
    or h
    xor l
    and [hl]
    db $f4
    ld c, a
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
    xor [hl]
    or h
    or c
    ld a, a
    adc e
    add h
    add b
    add e
    add h
    sub c
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    or [hl]
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    or c
    and h
    and b
    and d
    and a
    ld c, a
    and a
    and h
    or c
    ld a, a
    and h
    and b
    or d
    xor b
    xor e
    cp b
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    ld c, a
    xor h
    cp b
    ld a, a
    and d
    xor [hl]
    xor l
    and d
    and h
    xor l
    or e
    or c
    and b
    or e
    xor b
    xor [hl]
    xor l
    rst $20
    ld e, b
    nop
    sub e
    and a
    and h
    or c
    and h
    ld a, a
    or h
    or d
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld c, a
    ld hl, sp+$7f
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add [hl]
    sbc b
    adc h
    or d
    ld a, a
    xor b
    xor l
    ld d, l
    sub d
    add b
    add l
    add l
    sub c
    adc [hl]
    adc l
    add sp, $51
    sub e
    and a
    and h
    ld a, a
    add l
    adc b
    add [hl]
    add a
    sub e
    adc b
    adc l
    add [hl]
    ld a, a
    add e
    adc [hl]
    adc c
    adc [hl]
    ld c, a
    xor l
    and h
    or a
    or e
    ld a, a
    and e
    xor [hl]
    xor [hl]
    or c
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    ld d, l
    xor b
    or e
    or d
    ld a, a
    add [hl]
    sbc b
    adc h
    ld a, a
    or d
    or e
    and b
    or e
    or h
    or d
    ld d, l
    or [hl]
    and a
    and h
    xor l
    ld a, a
    or [hl]
    and h
    ld a, a
    or [hl]
    and h
    xor l
    or e
    ld a, a
    and b
    xor l
    and e
    ld d, l
    and d
    or c
    and h
    and b
    xor h
    and h
    and e
    ld a, a
    or e
    and a
    and h
    xor h
    rst $20
    ld d, a
    nop
    sub d
    add b
    add l
    add l
    sub c
    adc [hl]
    adc l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    add [hl]
    sbc b
    adc h
    ld a, a
    xor b
    or d
    ld a, a
    and l
    and b
    xor h
    xor [hl]
    or h
    or d
    ld a, a
    and l
    xor [hl]
    or c
    ld d, l
    xor b
    or e
    or d
    ld a, a
    xor a
    or d
    cp b
    and d
    and a
    xor b
    and d
    or d
    rst $20
    ld d, c
    sbc b
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
    ld c, a
    sub d
    add b
    add c
    sub c
    adc b
    adc l
    add b
    rst $20
    ld d, l
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
    rst $20
    ld d, a
    nop
    add b
    or c
    or c
    or c
    and [hl]
    and a
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
    or h
    or d
    and h
    and e
    ld a, a
    or e
    and h
    xor e
    and h
    xor a
    and b
    or e
    and a
    cp b
    ld a, a
    or e
    xor [hl]
    ld d, l
    or c
    and h
    and b
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor h
    xor b
    xor l
    and e
    rst $20
    ld d, a
    nop
    sub e
    and a
    and b
    xor l
    xor d
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    or [hl]
    or c
    xor b
    or e
    xor b
    xor l
    and [hl]
    add sp, $7f
    adc b
    ld a, a
    and a
    xor [hl]
    xor a
    and h
    ld d, l
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
    rst $20
    ld d, c
    add a
    and h
    cp b
    rst $20
    ld a, a
    add e
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld c, a
    and b
    or e
    ld a, a
    xor h
    cp b
    ld a, a
    xor e
    and h
    or e
    or e
    and h
    or c
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
    sub e
    and a
    and h
    ld a, a
    add d
    adc [hl]
    adc a
    sbc b
    add d
    add b
    sub e
    ld a, a
    xor b
    or d
    ld c, a
    and d
    or h
    or e
    and h
    rst $20
    ld a, a
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
    ld d, l
    and a
    and h
    or c
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
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and [hl]
    xor b
    or l
    and h
    xor l
    ld a, a
    and b
    ld a, a
    adc a
    adc a
    ld c, a
    sub h
    adc a
    ld a, a
    and b
    or d
    ld a, a
    and b
    ld a, a
    and [hl]
    xor b
    and l
    or e
    add sp, $51
    adc b
    or e
    cp l
    ld a, a
    or h
    or d
    and h
    and e
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    xor b
    xor l
    and d
    or c
    and h
    and b
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc a
    adc a
    ld d, l
    xor [hl]
    and l
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
    rst $20
    ld d, a
    nop
    adc h
    add b
    sub a
    ld a, a
    sub c
    add h
    adc a
    add h
    adc e
    ld a, a
    xor e
    and b
    or d
    or e
    or d
    ld c, a
    xor e
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
    sub d
    sub h
    adc a
    add h
    sub c
    ld d, l
    sub c
    add h
    adc a
    add h
    adc e
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor d
    and h
    and h
    xor a
    xor b
    xor l
    and [hl]
    ld d, l
    or [hl]
    and h
    and b
    xor d
    and h
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    and b
    or [hl]
    and b
    cp b
    rst $20
    ld d, a
    nop
    sub c
    add h
    sub l
    adc b
    sub l
    add h
    ld a, a
    xor b
    or d
    ld a, a
    and d
    xor [hl]
    or d
    or e
    xor e
    cp b
    db $f4
    ld c, a
    and c
    or h
    or e
    ld a, a
    xor b
    or e
    ld a, a
    or c
    and h
    or l
    xor b
    or l
    and h
    or d
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
    sub [hl]
    and h
    xor e
    and d
    xor [hl]
    xor h
    and h
    rst $20
    ld d, c
    sub e
    and a
    and h
    ld a, a
    adc a
    sub c
    add h
    sub d
    adc b
    add e
    add h
    adc l
    sub e
    ld a, a
    xor b
    or d
    ld c, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    and c
    xor [hl]
    and b
    or c
    and e
    or c
    xor [hl]
    xor [hl]
    xor h
    ld d, l
    xor [hl]
    xor l
    ld a, a
    rst $30
    rst $30
    add l
    rst $20
    ld d, a
    nop
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and [hl]
    or c
    xor [hl]
    or [hl]
    or e
    and a
    ld c, a
    or c
    and b
    or e
    and h
    or d
    ld a, a
    and e
    xor b
    and l
    and l
    and h
    or c
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld d, l
    or d
    xor a
    and h
    and d
    xor b
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    xor a
    and h
    and d
    xor b
    and h
    add sp, $57
    nop
    sub d
    adc b
    adc e
    adc a
    add a
    ld a, a
    add d
    adc [hl]
    add sp, $7f
    xor b
    or d
    ld a, a
    or l
    and h
    or c
    cp b
    ld c, a
    and l
    and b
    xor h
    xor [hl]
    or h
    or d
    add sp, $7f
    sub e
    and a
    and b
    or e
    cp l
    ld d, l
    or [hl]
    and a
    cp b
    ld a, a
    xor b
    or e
    ld a, a
    and b
    or e
    or e
    or c
    and b
    and d
    or e
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
    add sp, -$18
    add sp, -$6a
    and b
    xor b
    or e
    rst $20
    ld a, a
    add e
    xor [hl]
    xor l
    cp [hl]
    ld c, a
    or d
    and b
    cp b
    ld a, a
    and b
    ld a, a
    or [hl]
    xor [hl]
    or c
    and e
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and b
    xor l
    or e
    and h
    and e
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
    ld d, b
    ld bc, $cf4b
    nop
    rst $20
    ld d, b
    ld d, b
    nop
    sub e
    adc h
    ld hl, sp-$01
    ld a, a
    xor b
    or d
    ld a, a
    adc a
    sub d
    sbc b
    add d
    add a
    adc b
    add d
    rst $20
    ld d, c
    adc b
    or e
    ld a, a
    and d
    and b
    xor l
    ld a, a
    xor e
    xor [hl]
    or [hl]
    and h
    or c
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
    cp l
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
    add sp, $57
    nop
    sub [hl]
    and a
    and h
    or c
    and h
    ld a, a
    and e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor a
    xor e
    and b
    xor l
    ld c, a
    or e
    xor [hl]
    ld a, a
    xor a
    or h
    or e
    ld a, a
    or e
    and a
    xor b
    or d
    and $57
    nop
    add a
    xor b
    ld a, a
    or e
    and a
    and h
    or c
    and h
    rst $20
    ld c, [hl]
    adc h
    and b
    cp b
    ld a, a
    adc b
    ld a, a
    and a
    and h
    xor e
    xor a
    ld a, a
    cp b
    xor [hl]
    or h
    and $57
    ld bc, $cd6d
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
    ld d, a
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
    sub c
    add h
    adc a
    add h
    adc e
    cp l
    ld a, a
    and h
    and l
    and l
    and h
    and d
    or e
    ld c, a
    or [hl]
    xor [hl]
    or c
    and h
    ld a, a
    xor [hl]
    and l
    and l
    add sp, $57
    nop
    sub e
    and b
    xor d
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    or e
    xor b
    xor h
    and h
    add sp, $57
    ld bc, $cf4b
    nop
    and $4f
    sub e
    and a
    and b
    or e
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and c
    and h
    ld d, l
    ldh a, [$50]
    ld [bc], a
    sbc a
    rst $38
    jp $e800


    ld a, a
    adc [hl]
    adc d
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
    and b
    or c
    and h
    rst $20
    ld c, a
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
    ld e, b
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
    and h
    xor l
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    xor h
    xor [hl]
    xor l
    and h
    cp b
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
    or d
    and h
    xor e
    xor e
    and $57
    nop
    adc b
    ld a, a
    and d
    and b
    xor l
    ld a, a
    xor a
    and b
    cp b
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    ldh a, [$50]
    ld [bc], a
    sbc a
    rst $38
    jp Jump_028_7f00


    and l
    xor [hl]
    or c
    ld a, a
    or e
    and a
    and b
    or e
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
    ld c, a
    and b
    xor l
    cp b
    or e
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    and h
    xor e
    xor e
    add sp, $58
    nop
    adc b
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
    xor a
    or c
    xor b
    and d
    and h
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and b
    or e
    add sp, $58
    nop
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
    ld d, a
    nop
    adc b
    or d
    ld a, a
    or e
    and a
    and h
    or c
    and h
    ld a, a
    and b
    xor l
    cp b
    or e
    and a
    xor b
    xor l
    and [hl]
    ld c, a
    and h
    xor e
    or d
    and h
    ld a, a
    adc b
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and e
    xor [hl]
    and $57
    ld bc, $d036
    nop
    ld a, a
    xor e
    and h
    and b
    or c
    xor l
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
    and a
    xor b
    and d
    and a
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    ld a, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld c, [hl]
    and c
    and h
    ld a, a
    and l
    xor [hl]
    or c
    and [hl]
    xor [hl]
    or e
    or e
    and h
    xor l
    and $57
    nop
    add b
    and c
    and b
    xor l
    and e
    xor [hl]
    xor l
    ld a, a
    xor e
    and h
    and b
    or c
    xor l
    xor b
    xor l
    and [hl]
    ld c, a
    ld d, b
    ld bc, $cf4b
    nop
    and $57
    ld bc, $d036
    nop
    ld c, a
    and e
    xor b
    and e
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    xor e
    and h
    and b
    or c
    xor l
    ld d, l
    ld d, b
    ld bc, $cf4b
    nop
    rst $20
    ld e, b
    ld bc, $d036
    nop
    ld a, a
    xor b
    or d
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
    xor e
    and h
    and b
    or c
    xor l
    ld d, l
    ld d, b
    ld bc, $cf4b
    nop
    rst $20
    ld d, c
    add c
    or h
    or e
    db $f4
    ld a, a
    ld d, b
    ld bc, $d036
    nop
    ld c, a
    and d
    and b
    xor l
    cp [hl]
    ld a, a
    xor e
    and h
    and b
    or c
    xor l
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld d, l
    or e
    and a
    and b
    xor l
    ld a, a
    ld a, [$ac7f]
    xor [hl]
    or l
    and h
    or d
    rst $20
    ld d, c
    add e
    and h
    xor e
    and h
    or e
    and h
    ld a, a
    and b
    xor l
    ld a, a
    xor [hl]
    xor e
    and e
    and h
    or c
    ld c, a
    xor h
    xor [hl]
    or l
    and h
    ld a, a
    or e
    xor [hl]
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
    ld d, l
    and l
    xor [hl]
    or c
    ld a, a
    ld d, b
    ld bc, $cf4b
    nop
    and $57
    nop
    rst $30
    db $f4
    ld a, a
    ld hl, sp+$7f
    and b
    xor l
    and e
    add sp, -$18
    add sp, $50
    ld d, b
    nop
    ld a, a
    adc a
    xor [hl]
    xor [hl]
    and l
    rst $20
    ld d, b
    ld d, b
    nop
    ld d, c
    ld d, b
    ld bc, $d036
    nop
    ld a, a
    and l
    xor [hl]
    or c
    and [hl]
    xor [hl]
    or e
    ld c, a
    ld d, b
    ld bc, $cd6d
    nop
    rst $20
    ld d, c
    add b
    xor l
    and e
    add sp, -$18
    add sp, $58
    nop
    add a
    adc h
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
    ld c, a
    and d
    and b
    xor l
    cp [hl]
    ld a, a
    and c
    and h
    ld a, a
    and e
    and h
    xor e
    and h
    or e
    and h
    and e
    rst $20
    ld e, b
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
    xor [hl]
    or h
    or c
    ld c, a
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
    rst $20
    ld d, c
    sub [hl]
    and h
    ld a, a
    and a
    and h
    and b
    xor e
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
    and c
    and b
    and d
    xor d
    ld a, a
    or e
    xor [hl]
    ld d, l
    xor a
    and h
    or c
    and l
    and h
    and d
    or e
    ld a, a
    and a
    and h
    and b
    xor e
    or e
    and a
    rst $20
    ld e, b
    nop
    sub d
    and a
    and b
    xor e
    xor e
    ld a, a
    or [hl]
    and h
    ld a, a
    and a
    and h
    and b
    xor e
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
    and $57
    nop
    adc [hl]
    adc d
    add sp, $7f
    sub [hl]
    and h
    cp h
    xor e
    ld a, a
    xor l
    and h
    and h
    and e
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
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
    ld c, a
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
    and b
    or c
    and h
    ld d, l
    and l
    xor b
    and [hl]
    and a
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    and l
    xor b
    or e
    rst $20
    ld e, b
    nop
    sub [hl]
    and h
    ld a, a
    and a
    xor [hl]
    xor a
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    and h
    and h
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    rst $20
    ld d, a
    nop
    sub e
    and a
    xor b
    or d
    ld a, a
    and b
    or c
    and h
    and b
    ld a, a
    xor b
    or d
    ld c, a
    or c
    and h
    or d
    and h
    or c
    or l
    and h
    and e
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    ld hl, sp+$55
    and l
    or c
    xor b
    and h
    xor l
    and e
    or d
    ld a, a
    or [hl]
    and a
    xor [hl]
    ld a, a
    and b
    or c
    and h
    ld d, l
    xor e
    xor b
    xor l
    xor d
    and h
    and e
    ld a, a
    and c
    cp b
    ld a, a
    and d
    and b
    and c
    xor e
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
    add d
    and b
    and c
    xor e
    and h
    ld a, a
    add d
    xor e
    or h
    and c
    rst $20
    ld d, a
    nop
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    and b
    xor a
    xor a
    xor e
    cp b
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $51
    add c
    and h
    and l
    xor [hl]
    or c
    and h
    ld a, a
    xor [hl]
    xor a
    and h
    xor l
    xor b
    xor l
    and [hl]
    ld c, a
    or e
    and a
    and h
    ld a, a
    xor e
    xor b
    xor l
    xor d
    db $f4
    ld a, a
    or [hl]
    and h
    ld a, a
    and a
    and b
    or l
    and h
    ld d, l
    or e
    xor [hl]
    ld a, a
    or d
    and b
    or l
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    and [hl]
    and b
    xor h
    and h
    add sp, $57
    nop
    adc a
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
    add sp, $50
    ld d, b
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
    and a
    and b
    or d
    ld a, a
    and c
    and h
    and h
    xor l
    ld c, a
    and d
    xor e
    xor [hl]
    or d
    and h
    and e
    ld a, a
    and c
    and h
    and d
    and b
    or h
    or d
    and h
    ld a, a
    xor [hl]
    and l
    ld d, l
    xor b
    xor l
    and b
    and d
    or e
    xor b
    or l
    xor b
    or e
    cp b
    add sp, $51
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    and d
    xor [hl]
    xor l
    or e
    and b
    and d
    or e
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
    ld a, a
    and b
    xor l
    and e
    ld d, l
    and d
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_028_7f00:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
