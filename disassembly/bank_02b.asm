; Disassembly of "Pokemon Red (UE) [S][!].gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $02b", ROMX[$4000], BANK[$2b]

    nop
    adc a
    or c
    xor [hl]
    or e
    and h
    and d
    or e
    and h
    and e
    ld a, a
    and c
    cp b
    ld a, a
    and b
    xor l
    ld c, [hl]
    and b
    or c
    xor h
    xor [hl]
    or c
    db $e3
    xor e
    xor b
    xor d
    and h
    ld a, a
    and a
    xor b
    and e
    and h
    db $f4
    ld c, [hl]
    xor b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    and d
    and b
    xor a
    and b
    and c
    xor e
    and h
    ld a, a
    xor [hl]
    and l
    ld c, c
    xor e
    xor b
    or l
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    xor l
    ld a, a
    xor h
    xor [hl]
    xor e
    or e
    and h
    xor l
    ld c, [hl]
    xor e
    and b
    or l
    and b
    ld a, a
    xor [hl]
    and l
    ld a, a
    ld sp, hl
    db $f4
    db $fc
    or $f6
    ld c, [hl]
    and e
    and h
    and [hl]
    or c
    and h
    and h
    or d
    ld e, a
    ld d, b
    nop
    sub e
    and a
    and h
    ld a, a
    xor b
    xor l
    and l
    and b
    xor l
    or e
    ld a, a
    or c
    and b
    or c
    and h
    xor e
    cp b
    ld c, [hl]
    or l
    and h
    xor l
    or e
    or h
    or c
    and h
    or d
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    and l
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    xor h
    xor [hl]
    or e
    and a
    and h
    or c
    cp l
    ld c, c
    xor a
    or c
    xor [hl]
    or e
    and h
    and d
    or e
    xor b
    or l
    and h
    ld a, a
    xor a
    xor [hl]
    or h
    and d
    and a
    ld c, [hl]
    or h
    xor l
    or e
    xor b
    xor e
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    ld sp, hl
    ld c, [hl]
    cp b
    and h
    and b
    or c
    or d
    ld a, a
    xor [hl]
    xor e
    and e
    ld e, a
    ld d, b
    nop
    sub d
    or e
    xor b
    and l
    and l
    and h
    xor l
    or d
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and h
    and b
    or c
    or d
    ld c, [hl]
    or e
    xor [hl]
    ld a, a
    or d
    and h
    xor l
    or d
    and h
    ld a, a
    and e
    and b
    xor l
    and [hl]
    and h
    or c
    add sp, $4e
    sub e
    and a
    and h
    ld a, a
    xor e
    and b
    or c
    and [hl]
    and h
    or c
    ld a, a
    xor b
    or e
    or d
    ld c, c
    and a
    xor [hl]
    or c
    xor l
    or d
    db $f4
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld c, [hl]
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    and l
    or h
    xor e
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    or d
    and h
    and d
    or c
    and h
    or e
    and h
    and e
    ld a, a
    or l
    and h
    xor l
    xor [hl]
    xor h
    ld e, a
    ld d, b
    nop
    adc b
    or e
    or d
    ld a, a
    xor h
    and b
    and [hl]
    xor b
    and d
    and b
    xor e
    ld a, a
    and b
    xor l
    and e
    ld c, [hl]
    and d
    or h
    or e
    and h
    ld a, a
    and b
    xor a
    xor a
    and h
    and b
    xor e
    ld a, a
    and a
    and b
    or d
    ld c, [hl]
    xor h
    and b
    xor l
    cp b
    ld a, a
    and b
    and e
    xor h
    xor b
    or c
    and h
    or c
    or d
    add sp, $49
    adc b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    or c
    and b
    or c
    and h
    ld a, a
    and b
    xor l
    and e
    ld c, [hl]
    and l
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    xor b
    xor l
    ld c, [hl]
    and d
    and h
    or c
    or e
    and b
    xor b
    xor l
    ld a, a
    and b
    or c
    and h
    and b
    or d
    ld e, a
    ld d, b
    nop
    add h
    and b
    or e
    or d
    ld a, a
    and c
    or h
    and [hl]
    or d
    ld a, a
    xor b
    xor l
    ld c, [hl]
    and [hl]
    or c
    and b
    or d
    or d
    cp b
    ld a, a
    and b
    or c
    and h
    and b
    or d
    add sp, $7f
    adc b
    or e
    ld c, [hl]
    and a
    and b
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    and l
    xor e
    and b
    xor a
    ld a, a
    xor b
    or e
    or d
    ld c, c
    or d
    and a
    xor [hl]
    or c
    or e
    ld a, a
    or [hl]
    xor b
    xor l
    and [hl]
    or d
    ld a, a
    and b
    or e
    ld c, [hl]
    and a
    xor b
    and [hl]
    and a
    ld a, a
    or d
    xor a
    and h
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    or d
    or e
    and b
    cp b
    ld a, a
    and b
    xor b
    or c
    and c
    xor [hl]
    or c
    xor l
    and h
    ld e, a
    ld d, b
    nop
    sub h
    or d
    or h
    and b
    xor e
    xor e
    cp b
    ld a, a
    and l
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    xor b
    xor l
    ld c, [hl]
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    ld a, a
    xor a
    xor e
    and b
    xor l
    or e
    or d
    add sp, $4e
    add h
    and b
    or d
    xor b
    xor e
    cp b
    ld a, a
    xor h
    xor b
    or d
    or e
    and b
    xor d
    and h
    xor l
    ld c, c
    and l
    xor [hl]
    or c
    ld a, a
    and b
    ld a, a
    ld d, h
    ld a, a
    add c
    add b
    adc e
    adc e
    db $f4
    ld c, [hl]
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
    cp c
    and b
    xor a
    xor a
    and h
    and e
    ld c, [hl]
    xor h
    and b
    xor l
    cp b
    ld a, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld e, a
    ld d, b
    nop
    adc b
    or e
    ld a, a
    or h
    or d
    and h
    or d
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    and l
    or h
    xor e
    ld a, a
    or e
    and b
    xor b
    xor e
    ld a, a
    xor b
    xor l
    ld c, [hl]
    and c
    and b
    or e
    or e
    xor e
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    xor h
    and b
    or d
    and a
    db $f4
    ld c, c
    and d
    xor [hl]
    xor l
    or d
    or e
    or c
    xor b
    and d
    or e
    db $f4
    ld a, a
    or e
    and a
    and h
    xor l
    ld c, [hl]
    and c
    or c
    and h
    and b
    xor d
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor a
    or c
    and h
    cp b
    cp l
    ld c, [hl]
    and c
    xor [hl]
    xor l
    and h
    or d
    ld e, a
    ld d, b
    nop
    sub e
    and a
    and h
    ld a, a
    sub d
    add a
    add h
    adc e
    adc e
    add e
    add h
    sub c
    ld a, a
    or e
    and a
    and b
    or e
    ld c, [hl]
    xor b
    or d
    ld a, a
    xor e
    and b
    or e
    and d
    and a
    and h
    and e
    ld a, a
    xor [hl]
    xor l
    or e
    xor [hl]
    ld c, [hl]
    sub d
    adc e
    adc [hl]
    sub [hl]
    adc a
    adc [hl]
    adc d
    add h
    cp l
    ld a, a
    or e
    and b
    xor b
    xor e
    ld c, c
    xor b
    or d
    ld a, a
    or d
    and b
    xor b
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and l
    and h
    and h
    and e
    ld c, [hl]
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    and a
    xor [hl]
    or d
    or e
    cp l
    ld a, a
    xor e
    and h
    and l
    or e
    ld c, [hl]
    xor [hl]
    or l
    and h
    or c
    ld a, a
    or d
    and d
    or c
    and b
    xor a
    or d
    ld e, a
    ld d, b
    nop
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    and c
    or h
    xor e
    and c
    ld a, a
    xor [hl]
    xor l
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    and c
    and b
    and d
    xor d
    ld a, a
    and [hl]
    or c
    xor [hl]
    or [hl]
    or d
    ld c, [hl]
    xor e
    and b
    or c
    and [hl]
    and h
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    or d
    ld c, c
    or e
    xor [hl]
    ld a, a
    xor e
    xor [hl]
    or d
    and h
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    and b
    and c
    xor b
    xor e
    xor b
    or e
    cp b
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    or e
    and b
    xor l
    and e
    ld c, [hl]
    xor [hl]
    xor l
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and a
    xor b
    xor l
    and e
    ld a, a
    xor e
    and h
    and [hl]
    or d
    ld e, a
    ld d, b
    nop
    adc e
    and h
    and [hl]
    and h
    xor l
    and e
    ld a, a
    and a
    and b
    or d
    ld a, a
    xor b
    or e
    ld a, a
    or e
    and a
    and b
    or e
    ld c, [hl]
    xor [hl]
    xor l
    ld a, a
    or c
    and b
    or c
    and h
    ld a, a
    xor [hl]
    and d
    and d
    and b
    or d
    xor b
    xor [hl]
    xor l
    or d
    db $f4
    ld c, [hl]
    xor [hl]
    xor l
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and a
    and h
    and b
    and e
    or d
    ld c, c
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and e
    or c
    xor [hl]
    xor a
    ld a, a
    xor [hl]
    and l
    and l
    ld a, a
    and b
    xor l
    and e
    ld c, [hl]
    and d
    xor [hl]
    xor l
    or e
    xor b
    xor l
    or h
    and h
    ld a, a
    xor [hl]
    xor l
    ld a, a
    and b
    or d
    ld a, a
    and b
    xor l
    ld c, [hl]
    add h
    sub a
    add h
    add [hl]
    add [hl]
    add d
    sub h
    sub e
    add h
    ld e, a
    ld d, b
    nop
    adc b
    or e
    or d
    ld a, a
    or e
    xor [hl]
    xor l
    and [hl]
    or h
    and h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and c
    and h
    ld c, [hl]
    and h
    or a
    or e
    and h
    xor l
    and e
    and h
    and e
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    and b
    ld c, [hl]
    and d
    and a
    and b
    xor h
    and h
    xor e
    and h
    xor [hl]
    xor l
    cp l
    add sp, $7f
    adc b
    or e
    ld c, c
    xor e
    and h
    and b
    or l
    and h
    or d
    ld a, a
    and b
    ld a, a
    or e
    xor b
    xor l
    and [hl]
    xor e
    xor b
    xor l
    and [hl]
    ld c, [hl]
    or d
    and h
    xor l
    or d
    and b
    or e
    xor b
    xor [hl]
    xor l
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld a, a
    xor b
    or e
    ld c, [hl]
    xor e
    xor b
    and d
    xor d
    or d
    ld a, a
    and h
    xor l
    and h
    xor h
    xor b
    and h
    or d
    ld e, a
    ld d, b
    nop
    adc [hl]
    and l
    or e
    and h
    xor l
    ld a, a
    xor h
    xor b
    or d
    or e
    and b
    xor d
    and h
    xor l
    ld c, [hl]
    and l
    xor [hl]
    or c
    ld a, a
    and h
    and [hl]
    and [hl]
    or d
    add sp, $4e
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    and e
    xor b
    or d
    or e
    or h
    or c
    and c
    and h
    and e
    db $f4
    ld c, c
    or e
    and a
    and h
    cp b
    ld a, a
    or b
    or h
    xor b
    and d
    xor d
    xor e
    cp b
    ld c, [hl]
    and [hl]
    and b
    or e
    and a
    and h
    or c
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld c, [hl]
    xor b
    xor l
    ld a, a
    or d
    or [hl]
    and b
    or c
    xor h
    or d
    ld e, a
    ld d, b
    nop
    add b
    xor a
    xor a
    and h
    and b
    or c
    or d
    ld a, a
    xor b
    xor l
    ld a, a
    and l
    xor b
    xor e
    or e
    and a
    cp b
    ld c, [hl]
    and b
    or c
    and h
    and b
    or d
    add sp, $7f
    sub e
    and a
    or c
    xor b
    or l
    and h
    or d
    ld a, a
    and c
    cp b
    ld c, [hl]
    or d
    or h
    and d
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    or h
    xor a
    ld c, c
    xor a
    xor [hl]
    xor e
    xor e
    or h
    or e
    and h
    and e
    ld a, a
    or d
    xor e
    or h
    and e
    and [hl]
    and h
    ld c, [hl]
    or e
    and a
    and b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    xor a
    or h
    xor h
    xor a
    and h
    and e
    ld c, [hl]
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    and l
    and b
    and d
    or e
    xor [hl]
    or c
    xor b
    and h
    or d
    ld e, a
    ld d, b
    nop
    sub h
    xor l
    and e
    and h
    or c
    ld a, a
    and b
    ld a, a
    and l
    or h
    xor e
    xor e
    ld a, a
    xor h
    xor [hl]
    xor [hl]
    xor l
    db $f4
    ld c, [hl]
    or e
    and a
    xor b
    or d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, [hl]
    xor e
    xor b
    xor d
    and h
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    xor b
    xor h
    xor b
    and d
    ld c, c
    or e
    and a
    and h
    ld a, a
    or d
    and a
    and b
    and e
    xor [hl]
    or [hl]
    or d
    ld a, a
    xor [hl]
    and l
    ld c, [hl]
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld a, a
    and b
    xor l
    and e
    ld a, a
    xor e
    and b
    or h
    and [hl]
    and a
    ld c, [hl]
    and b
    or e
    ld a, a
    or e
    and a
    and h
    xor b
    or c
    ld a, a
    and l
    or c
    xor b
    and [hl]
    and a
    or e
    ld e, a
    ld d, b
    nop
    add b
    xor e
    or e
    and a
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    or d
    xor h
    and b
    xor e
    xor e
    db $f4
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    or l
    and h
    xor l
    xor [hl]
    xor h
    xor [hl]
    or h
    or d
    ld c, [hl]
    and c
    and b
    or c
    and c
    or d
    ld a, a
    or c
    and h
    xor l
    and e
    and h
    or c
    ld a, a
    or e
    and a
    xor b
    or d
    ld c, c
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and e
    and b
    xor l
    and [hl]
    and h
    or c
    xor [hl]
    or h
    or d
    add sp, $4e
    sub e
    and a
    and h
    ld a, a
    and l
    and h
    xor h
    and b
    xor e
    and h
    ld a, a
    and a
    and b
    or d
    ld c, [hl]
    or d
    xor h
    and b
    xor e
    xor e
    and h
    or c
    ld a, a
    and a
    xor [hl]
    or c
    xor l
    or d
    ld e, a
    ld d, b
    nop
    adc b
    or e
    or d
    ld a, a
    and a
    and b
    or c
    and e
    ld a, a
    or d
    and d
    and b
    xor e
    and h
    or d
    ld c, [hl]
    xor a
    or c
    xor [hl]
    or l
    xor b
    and e
    and h
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    ld c, [hl]
    xor a
    or c
    xor [hl]
    or e
    and h
    and d
    or e
    xor b
    xor [hl]
    xor l
    add sp, $7f
    adc b
    or e
    ld c, c
    or h
    or d
    and h
    or d
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and a
    and h
    and l
    or e
    cp b
    ld c, [hl]
    and c
    or h
    xor e
    xor d
    ld a, a
    or e
    xor [hl]
    ld a, a
    and h
    or a
    and h
    and d
    or h
    or e
    and h
    ld c, [hl]
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    and l
    or h
    xor e
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    or d
    ld e, a
    ld d, b
    nop
    add c
    and h
    and d
    and b
    or h
    or d
    and h
    ld a, a
    xor b
    or e
    ld a, a
    xor l
    and h
    or l
    and h
    or c
    ld c, [hl]
    or c
    and h
    xor h
    xor [hl]
    or l
    and h
    or d
    ld a, a
    xor b
    or e
    or d
    ld a, a
    or d
    xor d
    or h
    xor e
    xor e
    ld c, [hl]
    and a
    and h
    xor e
    xor h
    and h
    or e
    db $f4
    ld a, a
    xor l
    xor [hl]
    ld a, a
    xor [hl]
    xor l
    and h
    ld c, c
    and a
    and b
    or d
    ld a, a
    and h
    or l
    and h
    or c
    ld a, a
    or d
    and h
    and h
    xor l
    ld c, [hl]
    or e
    and a
    xor b
    or d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    cp l
    ld c, [hl]
    or c
    and h
    and b
    xor e
    ld a, a
    and l
    and b
    and d
    and h
    ld e, a
    ld d, b
    nop
    adc b
    or e
    or d
    ld a, a
    xor h
    and b
    or d
    or d
    xor b
    or l
    and h
    ld a, a
    and c
    xor [hl]
    xor l
    and h
    or d
    ld c, [hl]
    and b
    or c
    and h
    ld a, a
    rst $30
    or $f6
    or $7f
    or e
    xor b
    xor h
    and h
    or d
    ld c, [hl]
    and a
    and b
    or c
    and e
    and h
    or c
    ld a, a
    or e
    and a
    and b
    xor l
    ld a, a
    and a
    or h
    xor h
    and b
    xor l
    ld c, c
    and c
    xor [hl]
    xor l
    and h
    or d
    add sp, $7f
    adc b
    or e
    ld a, a
    and d
    and b
    xor l
    ld c, [hl]
    and h
    and b
    or d
    xor b
    xor e
    cp b
    ld a, a
    xor d
    xor l
    xor [hl]
    and d
    xor d
    ld a, a
    and b
    ld c, [hl]
    or e
    or c
    and b
    xor b
    xor e
    and h
    or c
    ld a, a
    and l
    xor e
    cp b
    xor b
    xor l
    and [hl]
    ld e, a
    ld d, b
    nop
    add b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or e
    and a
    and b
    or e
    ld c, [hl]
    and a
    and b
    or d
    ld a, a
    and c
    and h
    and h
    xor l
    ld a, a
    xor [hl]
    or l
    and h
    or c
    db $e3
    ld c, [hl]
    and a
    or h
    xor l
    or e
    and h
    and e
    ld a, a
    and b
    xor e
    xor h
    xor [hl]
    or d
    or e
    ld a, a
    or e
    xor [hl]
    ld c, c
    and h
    or a
    or e
    xor b
    xor l
    and d
    or e
    xor b
    xor [hl]
    xor l
    add sp, $7f
    adc b
    or e
    ld c, [hl]
    and d
    and b
    xor l
    ld a, a
    and l
    and h
    or c
    or c
    cp b
    ld a, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld c, [hl]
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
    or [hl]
    and b
    or e
    and h
    or c
    ld e, a
    ld d, b
    nop
    add b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or e
    and a
    and b
    or e
    ld c, [hl]
    and a
    and b
    or d
    ld a, a
    and c
    and h
    and h
    xor l
    ld a, a
    and b
    and e
    xor h
    xor b
    or c
    and h
    and e
    ld c, [hl]
    or d
    xor b
    xor l
    and d
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor a
    and b
    or d
    or e
    ld c, c
    and l
    xor [hl]
    or c
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and c
    and h
    and b
    or h
    or e
    cp b
    add sp, $4e
    adc b
    or e
    ld a, a
    or c
    or h
    xor l
    or d
    ld a, a
    and b
    and [hl]
    xor b
    xor e
    and h
    xor e
    cp b
    ld c, [hl]
    and b
    or d
    ld a, a
    xor b
    and l
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or [hl]
    xor b
    xor l
    and [hl]
    or d
    ld e, a
    ld d, b
    nop
    sub d
    xor [hl]
    ld a, a
    or c
    and b
    or c
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor b
    or e
    ld c, [hl]
    xor b
    or d
    ld a, a
    or d
    or e
    xor b
    xor e
    xor e
    ld a, a
    or d
    and b
    xor b
    and e
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    and c
    and h
    ld a, a
    and b
    ld a, a
    xor h
    xor b
    or c
    and b
    and [hl]
    and h
    ld a, a
    and c
    cp b
    ld c, c
    xor h
    and b
    xor l
    cp b
    ld a, a
    and h
    or a
    xor a
    and h
    or c
    or e
    or d
    add sp, $7f
    adc [hl]
    xor l
    xor e
    cp b
    ld c, [hl]
    and b
    ld a, a
    and l
    and h
    or [hl]
    ld a, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld a, a
    and a
    and b
    or l
    and h
    ld c, [hl]
    or d
    and h
    and h
    xor l
    ld a, a
    xor b
    or e
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor e
    and e
    or [hl]
    xor b
    and e
    and h
    ld e, a
    ld d, b
    nop
    sub c
    and b
    or c
    and h
    xor e
    cp b
    ld a, a
    or d
    and h
    and h
    xor l
    ld a, a
    xor b
    xor l
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    or [hl]
    xor b
    xor e
    and e
    add sp, $7f
    add a
    or h
    and [hl]
    and h
    ld c, [hl]
    and b
    xor l
    and e
    ld a, a
    or l
    xor b
    and d
    xor b
    xor [hl]
    or h
    or d
    db $f4
    ld a, a
    xor b
    or e
    ld c, c
    xor b
    or d
    ld a, a
    and d
    and b
    xor a
    and b
    and c
    xor e
    and h
    ld a, a
    xor [hl]
    and l
    ld c, [hl]
    and e
    and h
    or d
    or e
    or c
    xor [hl]
    cp b
    xor b
    xor l
    and [hl]
    ld a, a
    and h
    xor l
    or e
    xor b
    or c
    and h
    ld c, [hl]
    and d
    xor b
    or e
    xor b
    and h
    or d
    ld a, a
    xor b
    xor l
    ld a, a
    and b
    ld a, a
    or c
    and b
    and [hl]
    and h
    ld e, a
    ld d, b
    nop
    adc b
    or e
    or d
    ld a, a
    and a
    and b
    or c
    and e
    ld a, a
    or d
    and a
    and h
    xor e
    xor e
    ld c, [hl]
    or c
    and h
    xor a
    and h
    xor e
    or d
    ld a, a
    and b
    xor l
    cp b
    ld a, a
    xor d
    xor b
    xor l
    and e
    ld c, [hl]
    xor [hl]
    and l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    add sp, $49
    adc b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    or l
    or h
    xor e
    xor l
    and h
    or c
    and b
    and c
    xor e
    and h
    ld c, [hl]
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    or d
    and a
    and h
    xor e
    xor e
    ld a, a
    xor b
    or d
    ld a, a
    xor [hl]
    xor a
    and h
    xor l
    ld e, a
    ld d, b
    nop
    add e
    or c
    xor b
    and l
    or e
    or d
    ld a, a
    xor b
    xor l
    ld a, a
    or d
    and a
    and b
    xor e
    xor e
    xor [hl]
    or [hl]
    ld c, [hl]
    or d
    and h
    and b
    or d
    add sp, $7f
    add b
    xor l
    and [hl]
    xor e
    and h
    or c
    or d
    ld a, a
    or [hl]
    and a
    xor [hl]
    ld c, [hl]
    and a
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    or e
    and a
    and h
    xor h
    ld a, a
    and c
    cp b
    ld c, c
    and b
    and d
    and d
    xor b
    and e
    and h
    xor l
    or e
    ld a, a
    and b
    or c
    and h
    ld c, [hl]
    xor [hl]
    and l
    or e
    and h
    xor l
    ld a, a
    xor a
    or h
    xor l
    xor b
    or d
    and a
    and h
    and e
    ld a, a
    and c
    cp b
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    or d
    or e
    xor b
    xor l
    and [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    and d
    xor b
    and e
    ld e, a
    ld d, b
    nop
    add b
    xor e
    xor h
    xor [hl]
    or d
    or e
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
    db $f4
    ld c, [hl]
    or e
    and a
    xor b
    or d
    ld a, a
    and [hl]
    and b
    or d
    and h
    xor [hl]
    or h
    or d
    ld c, [hl]
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and d
    xor e
    xor [hl]
    and b
    xor d
    or d
    ld c, c
    or e
    and a
    and h
    ld a, a
    or e
    and b
    or c
    and [hl]
    and h
    or e
    ld a, a
    and b
    xor l
    and e
    ld c, [hl]
    xor a
    or h
    or e
    or d
    ld a, a
    xor b
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    xor e
    and h
    and h
    xor a
    ld c, [hl]
    or [hl]
    xor b
    or e
    and a
    xor [hl]
    or h
    or e
    ld a, a
    xor l
    xor [hl]
    or e
    xor b
    and d
    and h
    ld e, a
    ld d, b
    nop
    sub [hl]
    xor b
    or e
    and a
    ld a, a
    xor l
    xor b
    xor l
    xor c
    and b
    db $e3
    xor e
    xor b
    xor d
    and h
    ld c, [hl]
    and b
    and [hl]
    xor b
    xor e
    xor b
    or e
    cp b
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
    db $f4
    ld c, [hl]
    xor b
    or e
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and d
    or c
    and h
    and b
    or e
    and h
    ld a, a
    or e
    and a
    and h
    ld c, c
    xor b
    xor e
    xor e
    or h
    or d
    xor b
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and b
    or e
    ld c, [hl]
    or e
    and a
    and h
    or c
    and h
    ld a, a
    xor b
    or d
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld c, [hl]
    or e
    and a
    and b
    xor l
    ld a, a
    xor [hl]
    xor l
    and h
    ld e, a
    ld d, b
    nop
    add b
    xor l
    ld a, a
    and h
    xor l
    xor b
    and [hl]
    xor h
    and b
    or e
    xor b
    and d
    ld c, [hl]
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
    ld c, [hl]
    and h
    and l
    and l
    xor [hl]
    or c
    or e
    xor e
    and h
    or d
    or d
    xor e
    cp b
    ld c, c
    or c
    and h
    and [hl]
    and h
    xor l
    and h
    or c
    and b
    or e
    and h
    ld a, a
    and b
    xor l
    cp b
    ld c, [hl]
    and b
    xor a
    xor a
    and h
    xor l
    and e
    and b
    and [hl]
    and h
    ld a, a
    xor b
    or e
    ld c, [hl]
    xor e
    xor [hl]
    or d
    and h
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
    ld e, a
    ld d, b
    nop
    add b
    ld a, a
    and c
    or c
    or h
    or e
    and b
    xor e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, [hl]
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor a
    or c
    and h
    or d
    or d
    or h
    or c
    xor b
    cp c
    and h
    and e
    ld c, [hl]
    or [hl]
    and b
    or e
    and h
    or c
    ld a, a
    xor c
    and h
    or e
    or d
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor b
    or e
    or d
    ld c, c
    or d
    and a
    and h
    xor e
    xor e
    add sp, $7f
    sub e
    and a
    and h
    cp b
    ld a, a
    and b
    or c
    and h
    ld c, [hl]
    or h
    or d
    and h
    and e
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and a
    xor b
    and [hl]
    and a
    ld c, [hl]
    or d
    xor a
    and h
    and h
    and e
    ld a, a
    or e
    and b
    and d
    xor d
    xor e
    and h
    or d
    ld e, a
    ld d, b
    nop
    adc b
    and l
    ld a, a
    xor b
    or e
    ld a, a
    and l
    and b
    xor b
    xor e
    or d
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    and d
    or c
    or h
    or d
    and a
    ld a, a
    or e
    and a
    and h
    ld a, a
    or l
    xor b
    and d
    or e
    xor b
    xor h
    ld c, [hl]
    xor b
    xor l
    ld a, a
    xor b
    or e
    or d
    ld a, a
    xor a
    xor b
    xor l
    and d
    and h
    or c
    or d
    db $f4
    ld c, c
    xor b
    or e
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    or d
    or [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    or e
    ld c, [hl]
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or e
    xor [hl]
    or d
    or d
    ld c, [hl]
    xor b
    or e
    ld a, a
    and a
    and b
    or c
    and e
    ld e, a
    ld d, b
    nop
    sub e
    and a
    and h
    ld a, a
    or [hl]
    and a
    xor [hl]
    xor e
    and h
    ld a, a
    and c
    xor [hl]
    and e
    cp b
    ld a, a
    xor b
    or d
    ld c, [hl]
    or d
    or [hl]
    and b
    or e
    and a
    and h
    and e
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    or [hl]
    xor b
    and e
    and h
    ld c, [hl]
    or l
    xor b
    xor l
    and h
    or d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    and b
    or c
    and h
    ld c, c
    or d
    xor b
    xor h
    xor b
    xor e
    and b
    or c
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    and h
    and b
    db $e3
    ld c, [hl]
    or [hl]
    and h
    and h
    and e
    add sp, $7f
    adc b
    or e
    or d
    ld a, a
    or l
    xor b
    xor l
    and h
    or d
    ld c, [hl]
    or d
    and a
    and b
    xor d
    and h
    ld a, a
    and b
    or d
    ld a, a
    xor b
    or e
    ld a, a
    or [hl]
    and b
    xor e
    xor d
    or d
    ld e, a
    ld d, b
    nop
    sub l
    and h
    or c
    cp b
    ld a, a
    xor a
    or c
    xor [hl]
    or e
    and h
    and d
    or e
    xor b
    or l
    and h
    ld c, [hl]
    xor [hl]
    and l
    ld a, a
    xor b
    or e
    or d
    ld a, a
    or e
    and h
    or c
    or c
    xor b
    or e
    xor [hl]
    or c
    cp b
    add sp, $4e
    adc b
    or e
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and c
    and b
    or c
    xor d
    ld a, a
    and b
    xor l
    and e
    ld c, c
    and c
    xor b
    or e
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or c
    and h
    xor a
    and h
    xor e
    ld c, [hl]
    xor b
    xor l
    or e
    or c
    or h
    and e
    and h
    or c
    or d
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    or d
    xor a
    and b
    and d
    and h
    ld e, a
    ld d, b
    nop
    add b
    or d
    ld a, a
    xor b
    or e
    ld a, a
    and [hl]
    or c
    xor [hl]
    or [hl]
    or d
    db $f4
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    or d
    or e
    xor [hl]
    xor l
    and h
    ld a, a
    xor a
    xor [hl]
    or c
    or e
    xor b
    xor [hl]
    xor l
    or d
    ld a, a
    xor [hl]
    and l
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    and c
    xor [hl]
    and e
    cp b
    ld a, a
    and a
    and b
    or c
    and e
    and h
    xor l
    ld c, c
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
    or d
    xor b
    xor h
    xor b
    xor e
    and b
    or c
    ld c, [hl]
    or e
    xor [hl]
    ld a, a
    and b
    ld a, a
    and e
    xor b
    and b
    xor h
    xor [hl]
    xor l
    and e
    db $f4
    ld a, a
    and c
    or h
    or e
    ld c, [hl]
    and d
    xor [hl]
    xor e
    xor [hl]
    or c
    and h
    and e
    ld a, a
    and c
    xor e
    and b
    and d
    xor d
    ld e, a
    ld d, b
    nop
    sub [hl]
    xor b
    or e
    and a
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and a
    or h
    and [hl]
    and h
    ld a, a
    and b
    xor l
    and e
    ld c, [hl]
    xor h
    and b
    and [hl]
    xor l
    xor b
    and l
    xor b
    and d
    and h
    xor l
    or e
    ld a, a
    or [hl]
    xor b
    xor l
    and [hl]
    or d
    db $f4
    ld c, [hl]
    xor b
    or e
    ld a, a
    and d
    and b
    xor l
    ld a, a
    xor d
    and h
    and h
    xor a
    ld a, a
    and b
    xor e
    xor [hl]
    and l
    or e
    ld c, c
    or [hl]
    xor b
    or e
    and a
    xor [hl]
    or h
    or e
    ld a, a
    and h
    or l
    and h
    or c
    ld c, [hl]
    and a
    and b
    or l
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor e
    and b
    xor l
    and e
    ld c, [hl]
    and l
    xor [hl]
    or c
    ld a, a
    or c
    and h
    or d
    or e
    ld e, a
    ld d, b
    nop
    add b
    ld a, a
    and d
    xor [hl]
    xor h
    xor h
    xor [hl]
    xor l
    ld a, a
    or d
    xor b
    and [hl]
    and a
    or e
    ld a, a
    xor b
    xor l
    ld c, [hl]
    and l
    xor [hl]
    or c
    and h
    or d
    or e
    or d
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or [hl]
    xor [hl]
    xor [hl]
    and e
    or d
    add sp, $4e
    adc b
    or e
    ld a, a
    and l
    xor e
    and b
    xor a
    or d
    ld a, a
    xor b
    or e
    or d
    ld c, c
    or [hl]
    xor b
    xor l
    and [hl]
    or d
    ld a, a
    and b
    or e
    ld a, a
    and [hl]
    or c
    xor [hl]
    or h
    xor l
    and e
    ld c, [hl]
    xor e
    and h
    or l
    and h
    xor e
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor d
    xor b
    and d
    xor d
    ld a, a
    or h
    xor a
    ld c, [hl]
    and c
    xor e
    xor b
    xor l
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    or d
    and b
    xor l
    and e
    ld e, a
    ld d, b
    nop
    adc b
    xor l
    and d
    or c
    and h
    and e
    xor b
    and c
    xor e
    cp b
    ld a, a
    or d
    xor e
    xor [hl]
    or [hl]
    ld c, [hl]
    and b
    xor l
    and e
    ld a, a
    and e
    xor [hl]
    xor a
    and h
    cp b
    add sp, $7f
    adc b
    or e
    ld c, [hl]
    or e
    and b
    xor d
    and h
    or d
    ld a, a
    ei
    ld a, a
    or d
    and h
    and d
    xor [hl]
    xor l
    and e
    or d
    ld c, c
    and l
    xor [hl]
    or c
    ld a, a
    xor b
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and l
    and h
    and h
    xor e
    ld c, [hl]
    xor a
    and b
    xor b
    xor l
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld a, a
    or h
    xor l
    and e
    and h
    or c
    ld c, [hl]
    and b
    or e
    or e
    and b
    and d
    xor d
    ld e, a
    ld d, b
    nop
    adc b
    or e
    ld a, a
    and h
    xor h
    xor b
    or e
    or d
    ld a, a
    or d
    xor a
    and h
    and d
    xor b
    and b
    xor e
    ld c, [hl]
    and b
    xor e
    xor a
    and a
    and b
    ld a, a
    or [hl]
    and b
    or l
    and h
    or d
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    and c
    xor [hl]
    and e
    cp b
    ld a, a
    or e
    and a
    and b
    or e
    ld c, c
    xor b
    xor l
    and e
    or h
    and d
    and h
    ld a, a
    and a
    and h
    and b
    and e
    and b
    and d
    and a
    and h
    or d
    ld c, [hl]
    xor c
    or h
    or d
    or e
    ld a, a
    and c
    cp b
    ld a, a
    and c
    and h
    xor b
    xor l
    and [hl]
    ld c, [hl]
    and d
    xor e
    xor [hl]
    or d
    and h
    ld a, a
    and c
    cp b
    ld e, a
    ld d, b
    nop
    sub c
    xor [hl]
    xor e
    xor e
    or d
    ld a, a
    and e
    xor [hl]
    or [hl]
    xor l
    ld a, a
    or d
    xor e
    xor [hl]
    xor a
    and h
    or d
    ld c, [hl]
    or e
    xor [hl]
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    add sp, $7f
    adc b
    or e
    ld a, a
    or c
    xor [hl]
    xor e
    xor e
    or d
    ld c, [hl]
    xor [hl]
    or l
    and h
    or c
    ld a, a
    and b
    xor l
    cp b
    ld a, a
    xor [hl]
    and c
    or d
    or e
    and b
    and d
    xor e
    and h
    ld c, c
    or [hl]
    xor b
    or e
    and a
    xor [hl]
    or h
    or e
    ld a, a
    or d
    xor e
    xor [hl]
    or [hl]
    xor b
    xor l
    and [hl]
    ld c, [hl]
    xor [hl]
    or c
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
    xor b
    or e
    or d
    ld c, [hl]
    and e
    xor b
    or c
    and h
    and d
    or e
    xor b
    xor [hl]
    xor l
    ld e, a
    ld d, b
    nop
    add b
    ld a, a
    or c
    and b
    or c
    and h
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and h
    xor e
    or h
    or d
    xor b
    or l
    and h
    ld c, [hl]
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
    ld c, [hl]
    or d
    and b
    xor b
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    or c
    xor b
    xor l
    and [hl]
    ld c, c
    and a
    and b
    xor a
    xor a
    xor b
    xor l
    and h
    or d
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and a
    xor [hl]
    or d
    and h
    ld c, [hl]
    or [hl]
    and a
    xor [hl]
    ld a, a
    xor h
    and b
    xor l
    and b
    and [hl]
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    and h
    or e
    ld c, [hl]
    xor b
    or e
    ld e, a
    ld d, b
    nop
    adc b
    or e
    or d
    ld a, a
    xor h
    or h
    or d
    and d
    or h
    xor e
    and b
    or c
    ld a, a
    and c
    xor [hl]
    and e
    cp b
    ld c, [hl]
    xor b
    or d
    ld a, a
    or d
    xor [hl]
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    and l
    or h
    xor e
    db $f4
    ld a, a
    xor b
    or e
    ld c, [hl]
    xor h
    or h
    or d
    or e
    ld a, a
    or [hl]
    and h
    and b
    or c
    ld a, a
    and b
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    ld c, c
    or d
    and b
    or l
    and h
    ld a, a
    and c
    and h
    xor e
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld c, [hl]
    and b
    and c
    xor e
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or c
    and h
    and [hl]
    or h
    xor e
    and b
    or e
    and h
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    xor h
    xor [hl]
    or e
    xor b
    xor [hl]
    xor l
    or d
    ld e, a
    ld d, b
    nop
    adc b
    and l
    ld a, a
    xor b
    xor l
    or e
    and h
    or c
    or c
    or h
    xor a
    or e
    and h
    and e
    ld c, [hl]
    or [hl]
    and a
    xor b
    xor e
    and h
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    or d
    ld c, [hl]
    xor h
    xor b
    xor h
    xor b
    xor l
    and [hl]
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld c, c
    or d
    xor e
    and b
    xor a
    ld a, a
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    xor [hl]
    and l
    and l
    and h
    xor l
    and e
    and h
    or c
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    and c
    or c
    xor [hl]
    and b
    and e
    ld a, a
    and a
    and b
    xor l
    and e
    or d
    ld e, a
    ld d, b
    nop
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    xor b
    xor l
    ld a, a
    and b
    ld a, a
    and a
    or h
    or c
    or c
    cp b
    db $f4
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    xor e
    and h
    and [hl]
    or d
    ld a, a
    xor e
    and h
    xor l
    and [hl]
    or e
    and a
    and h
    xor l
    ld c, [hl]
    xor a
    or c
    xor [hl]
    and [hl]
    or c
    and h
    or d
    or d
    xor b
    or l
    and h
    xor e
    cp b
    add sp, $49
    adc b
    or e
    ld a, a
    or c
    or h
    xor l
    or d
    ld a, a
    or d
    xor h
    xor [hl]
    xor [hl]
    or e
    and a
    xor e
    cp b
    ld c, [hl]
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and h
    or a
    or e
    or c
    and b
    ld a, a
    xor e
    xor [hl]
    xor l
    and [hl]
    db $f4
    ld c, [hl]
    xor e
    xor [hl]
    xor a
    xor b
    xor l
    and [hl]
    ld a, a
    or d
    or e
    or c
    xor b
    and e
    and h
    or d
    ld e, a
    ld d, b
    nop
    sub [hl]
    and a
    xor b
    xor e
    and h
    ld a, a
    and b
    xor a
    xor a
    and b
    or c
    and h
    xor l
    or e
    xor e
    cp b
    ld c, [hl]
    and e
    xor [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    xor l
    xor [hl]
    or e
    and a
    xor b
    xor l
    and [hl]
    db $f4
    ld a, a
    xor b
    or e
    ld c, [hl]
    and l
    xor b
    or c
    and h
    or d
    ld a, a
    xor a
    or h
    xor l
    and d
    and a
    and h
    or d
    ld a, a
    xor b
    xor l
    ld c, c
    xor e
    xor b
    and [hl]
    and a
    or e
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    and l
    and b
    or d
    or e
    ld c, [hl]
    or l
    xor [hl]
    xor e
    xor e
    and h
    cp b
    or d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    and b
    or c
    and h
    ld c, [hl]
    xor b
    xor h
    xor a
    xor [hl]
    or d
    or d
    xor b
    and c
    xor e
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    and h
    and h
    ld e, a
    ld d, b
    nop
    adc b
    or e
    ld a, a
    xor b
    or d
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
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    and l
    and h
    or c
    xor [hl]
    and d
    xor b
    xor [hl]
    or h
    or d
    ld c, [hl]
    or [hl]
    and b
    or c
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    xor h
    and b
    or c
    xor d
    xor b
    xor l
    and [hl]
    or d
    ld c, c
    xor [hl]
    xor l
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and c
    and h
    xor e
    xor e
    cp b
    ld c, [hl]
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
    ld a, a
    and b
    or c
    and h
    and b
    ld c, [hl]
    or e
    xor [hl]
    ld a, a
    and b
    or c
    and h
    and b
    ld e, a
    ld d, b
    nop
    add b
    ld a, a
    and a
    xor [hl]
    or d
    or e
    db $e3
    xor a
    and b
    or c
    and b
    or d
    xor b
    or e
    and h
    ld c, [hl]
    xor a
    and b
    xor b
    or c
    ld a, a
    xor b
    xor l
    ld a, a
    or [hl]
    and a
    xor b
    and d
    and a
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    xor a
    and b
    or c
    and b
    or d
    xor b
    or e
    and h
    ld a, a
    xor h
    or h
    or d
    and a
    or c
    xor [hl]
    xor [hl]
    xor h
    ld c, c
    and a
    and b
    or d
    ld a, a
    or e
    and b
    xor d
    and h
    xor l
    ld a, a
    xor [hl]
    or l
    and h
    or c
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    and a
    xor [hl]
    or d
    or e
    ld a, a
    and c
    or h
    and [hl]
    add sp, $7f
    adc a
    or c
    and h
    and l
    and h
    or c
    or d
    ld c, [hl]
    and e
    and b
    xor h
    xor a
    ld a, a
    xor a
    xor e
    and b
    and d
    and h
    or d
    ld e, a
    ld d, b
    nop
    sub [hl]
    and a
    xor b
    xor e
    and h
    ld a, a
    xor e
    or h
    xor e
    xor e
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    and h
    xor l
    and h
    xor h
    xor b
    and h
    or d
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    or l
    and b
    and d
    and b
    xor l
    or e
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    db $f4
    ld a, a
    or e
    and a
    xor b
    or d
    ld c, c
    or [hl]
    xor b
    xor e
    cp b
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
    ld c, [hl]
    or h
    or d
    and h
    ld a, a
    xor a
    or d
    cp b
    and d
    and a
    xor [hl]
    xor d
    xor b
    xor l
    and h
    or e
    xor b
    and d
    ld c, [hl]
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    or d
    ld e, a
    ld d, b
    nop
    adc a
    or h
    or e
    or d
    ld a, a
    and h
    xor l
    and h
    xor h
    xor b
    and h
    or d
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    or d
    xor e
    and h
    and h
    xor a
    ld a, a
    or e
    and a
    and h
    xor l
    ld a, a
    and h
    and b
    or e
    or d
    ld c, [hl]
    or e
    and a
    and h
    xor b
    or c
    ld a, a
    and e
    or c
    and h
    and b
    xor h
    or d
    add sp, $49
    adc [hl]
    and d
    and d
    and b
    or d
    xor b
    xor [hl]
    xor l
    and b
    xor e
    xor e
    cp b
    ld a, a
    and [hl]
    and h
    or e
    or d
    ld c, [hl]
    or d
    xor b
    and d
    xor d
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    and h
    and b
    or e
    xor b
    xor l
    and [hl]
    ld c, [hl]
    and c
    and b
    and e
    ld a, a
    and e
    or c
    and h
    and b
    xor h
    or d
    ld e, a
    ld d, b
    nop
    adc b
    or e
    or d
    ld a, a
    and c
    xor [hl]
    or h
    xor e
    and e
    and h
    or c
    db $e3
    xor e
    xor b
    xor d
    and h
    ld c, [hl]
    and c
    xor [hl]
    and e
    cp b
    ld a, a
    xor b
    or d
    ld a, a
    and h
    or a
    or e
    or c
    and h
    xor h
    and h
    xor e
    cp b
    ld c, [hl]
    and a
    and b
    or c
    and e
    add sp, $7f
    adc b
    or e
    ld a, a
    and d
    and b
    xor l
    ld c, c
    and h
    and b
    or d
    xor b
    xor e
    cp b
    ld a, a
    or [hl]
    xor b
    or e
    and a
    or d
    or e
    and b
    xor l
    and e
    ld c, [hl]
    and e
    cp b
    xor l
    and b
    xor h
    xor b
    or e
    and h
    ld a, a
    and c
    xor e
    and b
    or d
    or e
    or d
    ld c, [hl]
    or [hl]
    xor b
    or e
    and a
    xor [hl]
    or h
    or e
    ld a, a
    and e
    and b
    xor h
    and b
    and [hl]
    and h
    ld e, a
    ld d, b
    nop
    adc b
    or e
    or d
    ld a, a
    and c
    xor [hl]
    and e
    cp b
    ld a, a
    and b
    xor e
    or [hl]
    and b
    cp b
    or d
    ld c, [hl]
    and c
    or h
    or c
    xor l
    or d
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and b
    xor l
    ld c, [hl]
    xor [hl]
    or c
    and b
    xor l
    and [hl]
    and h
    ld a, a
    and [hl]
    xor e
    xor [hl]
    or [hl]
    ld a, a
    or e
    and a
    and b
    or e
    ld c, c
    and h
    xor l
    and b
    and c
    xor e
    and h
    or d
    ld a, a
    xor b
    or e
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    and a
    xor b
    and e
    and h
    ld a, a
    xor a
    and h
    or c
    and l
    and h
    and d
    or e
    xor e
    cp b
    ld c, [hl]
    and b
    xor h
    xor [hl]
    xor l
    and [hl]
    ld a, a
    and l
    xor e
    and b
    xor h
    and h
    or d
    ld e, a
    ld d, b
    nop
    adc l
    xor [hl]
    or c
    xor h
    and b
    xor e
    xor e
    cp b
    ld a, a
    and l
    xor [hl]
    or h
    xor l
    and e
    ld c, [hl]
    xor l
    and h
    and b
    or c
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    ld a, a
    xor a
    xor e
    and b
    xor l
    or e
    or d
    db $f4
    ld c, [hl]
    or e
    and a
    and h
    cp b
    ld a, a
    and d
    and b
    xor l
    ld a, a
    or [hl]
    and b
    xor l
    and e
    and h
    or c
    ld c, c
    and b
    or [hl]
    and b
    cp b
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and d
    and b
    or h
    or d
    and h
    ld c, [hl]
    xor h
    and b
    xor c
    xor [hl]
    or c
    ld a, a
    and c
    xor e
    and b
    and d
    xor d
    xor [hl]
    or h
    or e
    or d
    ld c, [hl]
    xor b
    xor l
    ld a, a
    and d
    xor b
    or e
    xor b
    and h
    or d
    ld e, a
    ld d, b
    nop
    add l
    xor [hl]
    or c
    xor h
    and h
    and e
    ld a, a
    and c
    cp b
    ld a, a
    or d
    and h
    or l
    and h
    or c
    and b
    xor e
    ld c, [hl]
    adc h
    add b
    add [hl]
    adc l
    add h
    adc h
    adc b
    sub e
    add h
    or d
    ld a, a
    xor e
    xor b
    xor l
    xor d
    and h
    and e
    ld c, [hl]
    or e
    xor [hl]
    and [hl]
    and h
    or e
    and a
    and h
    or c
    add sp, $7f
    sub e
    and a
    and h
    cp b
    ld c, c
    and l
    or c
    and h
    or b
    or h
    and h
    xor l
    or e
    xor e
    cp b
    ld a, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    ld c, [hl]
    or [hl]
    and a
    and h
    xor l
    ld a, a
    or d
    or h
    xor l
    or d
    xor a
    xor [hl]
    or e
    or d
    ld c, [hl]
    and l
    xor e
    and b
    or c
    and h
    ld a, a
    or h
    xor a
    ld e, a
    ld d, b
    nop
    add c
    and h
    and d
    and b
    or h
    or d
    and h
    ld a, a
    xor b
    or e
    ld a, a
    or d
    or e
    xor [hl]
    or c
    and h
    or d
    ld c, [hl]
    or d
    and h
    or l
    and h
    or c
    and b
    xor e
    ld a, a
    xor d
    xor b
    xor l
    and e
    or d
    ld a, a
    xor [hl]
    and l
    ld c, [hl]
    or e
    xor [hl]
    or a
    xor b
    and d
    ld a, a
    and [hl]
    and b
    or d
    and h
    or d
    ld a, a
    xor b
    xor l
    ld c, c
    xor b
    or e
    or d
    ld a, a
    and c
    xor [hl]
    and e
    cp b
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    or d
    ld c, [hl]
    xor a
    or c
    xor [hl]
    xor l
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and h
    or a
    xor a
    xor e
    xor [hl]
    and e
    xor b
    xor l
    and [hl]
    ld c, [hl]
    or [hl]
    xor b
    or e
    and a
    xor [hl]
    or h
    or e
    ld a, a
    or [hl]
    and b
    or c
    xor l
    xor b
    xor l
    and [hl]
    ld e, a
    ld d, b
    nop
    add h
    or a
    or e
    or c
    and h
    xor h
    and h
    xor e
    cp b
    ld a, a
    or b
    or h
    xor b
    and d
    xor d
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    and b
    xor l
    and [hl]
    and h
    or c
    add sp, $7f
    adc b
    or e
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld c, [hl]
    and c
    and h
    ld a, a
    and e
    xor [hl]
    and d
    xor b
    xor e
    and h
    ld a, a
    xor [hl]
    xor l
    and h
    ld c, c
    xor h
    xor [hl]
    xor h
    and h
    xor l
    or e
    ld a, a
    or e
    and a
    and h
    xor l
    ld c, [hl]
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
    or [hl]
    and b
    cp b
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    xor l
    and h
    or a
    or e
    ld a, a
    xor b
    xor l
    or d
    or e
    and b
    xor l
    or e
    ld e, a
    ld d, b
    nop
    sub e
    and a
    and h
    ld a, a
    xor a
    or c
    xor [hl]
    or e
    or c
    or h
    and e
    xor b
    xor l
    and [hl]
    ld c, [hl]
    and a
    xor [hl]
    or c
    xor l
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and a
    and h
    and b
    and e
    ld c, [hl]
    xor b
    or d
    ld a, a
    or l
    and h
    or c
    cp b
    ld a, a
    and a
    and b
    or c
    and e
    add sp, $49
    adc b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    or h
    or d
    and h
    and e
    ld a, a
    and l
    xor [hl]
    or c
    ld c, [hl]
    and c
    and b
    or d
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    or c
    xor [hl]
    or h
    and [hl]
    and a
    ld c, [hl]
    or e
    and a
    xor b
    and d
    xor d
    ld a, a
    xor b
    and d
    and h
    ld e, a
    ld d, b
    nop
    adc e
    xor b
    or l
    and h
    or d
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    xor l
    and h
    ld c, [hl]
    cp b
    and b
    or c
    and e
    ld a, a
    or h
    xor l
    and e
    and h
    or c
    and [hl]
    or c
    xor [hl]
    or h
    xor l
    and e
    ld c, [hl]
    or [hl]
    and a
    and h
    or c
    and h
    ld a, a
    xor b
    or e
    ld a, a
    and l
    and h
    and h
    and e
    or d
    ld a, a
    xor [hl]
    xor l
    ld c, c
    xor a
    xor e
    and b
    xor l
    or e
    ld a, a
    or c
    xor [hl]
    xor [hl]
    or e
    or d
    add sp, $7f
    adc b
    or e
    ld c, [hl]
    or d
    xor [hl]
    xor h
    and h
    or e
    xor b
    xor h
    and h
    or d
    ld a, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    or d
    ld c, [hl]
    and b
    and c
    xor [hl]
    or l
    and h
    ld a, a
    and [hl]
    or c
    xor [hl]
    or h
    xor l
    and e
    ld e, a
    ld d, b
    nop
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    xor b
    or e
    ld a, a
    or e
    and b
    or c
    and [hl]
    and h
    or e
    or d
    ld c, [hl]
    and b
    xor l
    ld a, a
    and h
    xor l
    and h
    xor h
    cp b
    db $f4
    ld a, a
    xor b
    or e
    ld c, [hl]
    and d
    and a
    and b
    or c
    and [hl]
    and h
    or d
    ld a, a
    and l
    or h
    or c
    xor b
    xor [hl]
    or h
    or d
    xor e
    cp b
    ld c, c
    or [hl]
    and a
    xor b
    xor e
    and h
    ld a, a
    or [hl]
    and a
    xor b
    xor a
    xor a
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    and c
    xor [hl]
    and e
    cp b
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    xor e
    xor [hl]
    xor l
    and [hl]
    ld a, a
    or e
    and b
    xor b
    xor e
    or d
    ld e, a
    ld d, b
    nop
    sub e
    and a
    and h
    ld a, a
    or d
    xor a
    or c
    xor b
    and [hl]
    ld a, a
    xor [hl]
    and l
    ld c, [hl]
    and [hl]
    or c
    and h
    and h
    xor l
    ld a, a
    xor [hl]
    xor l
    xor b
    xor [hl]
    xor l
    or d
    ld a, a
    xor b
    or e
    ld c, [hl]
    and a
    xor [hl]
    xor e
    and e
    or d
    ld a, a
    xor b
    or d
    ld a, a
    xor b
    or e
    or d
    ld c, c
    or [hl]
    and h
    and b
    xor a
    xor [hl]
    xor l
    add sp, $7f
    adc b
    or e
    ld a, a
    xor b
    or d
    ld c, [hl]
    or h
    or d
    and h
    and e
    ld a, a
    xor h
    or h
    and d
    and a
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    and b
    ld c, [hl]
    xor h
    and h
    or e
    and b
    xor e
    ld a, a
    or d
    or [hl]
    xor [hl]
    or c
    and e
    ld e, a
    ld d, b
    nop
    adc e
    xor b
    or l
    and h
    or d
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    or d
    and a
    and b
    and e
    xor [hl]
    or [hl]
    or d
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and b
    xor e
    xor e
    ld c, [hl]
    or e
    or c
    and h
    and h
    or d
    ld a, a
    or [hl]
    and a
    and h
    or c
    and h
    ld a, a
    xor b
    or e
    ld c, c
    and h
    and b
    or e
    or d
    ld a, a
    xor b
    xor l
    or d
    and h
    and d
    or e
    or d
    add sp, $7f
    adc b
    or e
    ld c, [hl]
    xor b
    or d
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
    ld a, a
    and c
    cp b
    ld c, [hl]
    xor e
    xor b
    and [hl]
    and a
    or e
    ld a, a
    and b
    or e
    ld a, a
    xor l
    xor b
    and [hl]
    and a
    or e
    ld e, a
    ld d, b
    nop
    add b
    xor l
    ld a, a
    and h
    or a
    or e
    or c
    and h
    xor h
    and h
    xor e
    cp b
    ld c, [hl]
    or c
    and b
    or c
    and h
    xor e
    cp b
    ld a, a
    or d
    and h
    and h
    xor l
    ld c, [hl]
    xor h
    and b
    or c
    xor b
    xor l
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $49
    adc b
    or e
    or d
    ld a, a
    xor b
    xor l
    or e
    and h
    xor e
    xor e
    xor b
    and [hl]
    and h
    xor l
    and d
    and h
    ld c, [hl]
    xor b
    or d
    ld a, a
    or d
    and b
    xor b
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    and b
    or e
    and d
    and a
    ld c, [hl]
    or e
    and a
    and b
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    and a
    or h
    xor h
    and b
    xor l
    or d
    ld e, a
    ld d, b
    nop
    add b
    ld a, a
    and c
    xor b
    or c
    and e
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    xor d
    and h
    or d
    ld c, [hl]
    or h
    xor a
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor b
    or e
    or d
    ld a, a
    xor a
    xor [hl]
    xor [hl]
    or c
    ld c, [hl]
    and l
    xor e
    cp b
    xor b
    xor l
    and [hl]
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor b
    or e
    or d
    ld c, c
    and l
    and b
    or d
    or e
    ld a, a
    and l
    xor [hl]
    xor [hl]
    or e
    ld a, a
    or d
    xor a
    and h
    and h
    and e
    add sp, $4e
    adc e
    and h
    and b
    or l
    and h
    or d
    ld a, a
    and [hl]
    xor b
    and b
    xor l
    or e
    ld c, [hl]
    and l
    xor [hl]
    xor [hl]
    or e
    xor a
    or c
    xor b
    xor l
    or e
    or d
    ld e, a
    ld d, b
    nop
    adc b
    or e
    or d
    ld a, a
    xor l
    and h
    or [hl]
    xor e
    cp b
    ld a, a
    and [hl]
    or c
    xor [hl]
    or [hl]
    xor l
    ld c, [hl]
    xor e
    and h
    and [hl]
    or d
    ld a, a
    xor a
    or c
    and h
    or l
    and h
    xor l
    or e
    ld a, a
    xor b
    or e
    ld c, [hl]
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    or c
    or h
    xor l
    xor l
    xor b
    xor l
    and [hl]
    add sp, $7f
    adc b
    or e
    ld c, c
    and b
    xor a
    xor a
    and h
    and b
    or c
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor a
    or c
    and h
    and l
    and h
    or c
    ld c, [hl]
    or d
    or [hl]
    xor b
    xor h
    xor h
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and b
    xor l
    ld c, [hl]
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
    or d
    or e
    and b
    xor l
    and e
    ld e, a
    ld d, b
    nop
    adc b
    or e
    ld a, a
    or d
    and h
    and e
    or h
    and d
    or e
    xor b
    or l
    and h
    xor e
    cp b
    ld c, [hl]
    or [hl]
    xor b
    and [hl]
    and [hl]
    xor e
    and h
    or d
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and a
    xor b
    xor a
    or d
    ld c, [hl]
    and b
    or d
    ld a, a
    xor b
    or e
    ld a, a
    or [hl]
    and b
    xor e
    xor d
    or d
    add sp, $7f
    adc b
    or e
    ld c, c
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
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld c, [hl]
    or e
    xor [hl]
    ld a, a
    and e
    and b
    xor l
    and d
    and h
    ld a, a
    xor b
    xor l
    ld c, [hl]
    or h
    xor l
    xor b
    or d
    xor [hl]
    xor l
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor b
    or e
    ld e, a
    ld d, b
    nop
    adc d
    xor l
    xor [hl]
    or [hl]
    xor l
    ld a, a
    and b
    or d
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    xor e
    and h
    and [hl]
    and h
    xor l
    and e
    and b
    or c
    cp b
    ld a, a
    and c
    xor b
    or c
    and e
    ld a, a
    xor [hl]
    and l
    ld c, [hl]
    and l
    xor b
    or c
    and h
    add sp, $7f
    add h
    or l
    and h
    or c
    cp b
    ld a, a
    and l
    xor e
    and b
    xor a
    ld c, c
    xor [hl]
    and l
    ld a, a
    xor b
    or e
    or d
    ld a, a
    or [hl]
    xor b
    xor l
    and [hl]
    or d
    ld c, [hl]
    and d
    or c
    and h
    and b
    or e
    and h
    or d
    ld a, a
    and b
    ld a, a
    and e
    and b
    cp c
    cp c
    xor e
    xor b
    xor l
    and [hl]
    ld c, [hl]
    and l
    xor e
    and b
    or d
    and a
    ld a, a
    xor [hl]
    and l
    ld a, a
    and l
    xor e
    and b
    xor h
    and h
    or d
    ld e, a
    ld d, b
    nop
    add b
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
    ld a, a
    and c
    xor b
    or c
    and e
    ld c, [hl]
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
    ld c, [hl]
    or d
    and b
    xor b
    and e
    ld a, a
    or e
    xor [hl]
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
    ld c, c
    and e
    xor [hl]
    xor [hl]
    xor h
    and h
    and e
    ld a, a
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
    ld c, [hl]
    and b
    or c
    and h
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    ld a, a
    xor b
    xor l
    ld a, a
    xor b
    and d
    cp b
    ld c, [hl]
    xor h
    xor [hl]
    or h
    xor l
    or e
    and b
    xor b
    xor l
    or d
    ld e, a
    ld d, b
    nop
    add b
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
    ld a, a
    and c
    xor b
    or c
    and e
    ld c, [hl]
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
    ld c, [hl]
    or d
    and b
    xor b
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    ld c, c
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    and d
    xor e
    xor [hl]
    or h
    and e
    or d
    ld a, a
    or [hl]
    and a
    xor b
    xor e
    and h
    ld c, [hl]
    and e
    or c
    xor [hl]
    xor a
    xor a
    xor b
    xor l
    and [hl]
    ld a, a
    and h
    xor l
    xor [hl]
    or c
    xor h
    xor [hl]
    or h
    or d
    ld c, [hl]
    xor e
    xor b
    and [hl]
    and a
    or e
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    and c
    xor [hl]
    xor e
    or e
    or d
    ld e, a
    ld d, b
    nop
    add d
    and b
    xor a
    and b
    and c
    xor e
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    and d
    xor [hl]
    xor a
    cp b
    xor b
    xor l
    and [hl]
    ld c, [hl]
    and b
    xor l
    ld a, a
    and h
    xor l
    and h
    xor h
    cp b
    cp l
    ld a, a
    and [hl]
    and h
    xor l
    and h
    or e
    xor b
    and d
    ld c, [hl]
    and d
    xor [hl]
    and e
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor b
    xor l
    or d
    or e
    and b
    xor l
    or e
    xor e
    cp b
    ld c, c
    or e
    or c
    and b
    xor l
    or d
    and l
    xor [hl]
    or c
    xor h
    ld a, a
    xor b
    or e
    or d
    and h
    xor e
    and l
    ld c, [hl]
    xor b
    xor l
    or e
    xor [hl]
    ld a, a
    and b
    ld a, a
    and e
    or h
    xor a
    xor e
    xor b
    and d
    and b
    or e
    and h
    ld c, [hl]
    xor [hl]
    and l
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
    ld e, a
    ld d, b
    nop
    add b
    and e
    xor [hl]
    or c
    and h
    or d
    ld a, a
    and d
    xor b
    or c
    and d
    or h
    xor e
    and b
    or c
    ld c, [hl]
    xor [hl]
    and c
    xor c
    and h
    and d
    or e
    or d
    add sp, $7f
    sub [hl]
    and b
    xor l
    and e
    and h
    or c
    or d
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    or d
    or e
    or c
    and h
    and h
    or e
    or d
    ld a, a
    xor [hl]
    xor l
    ld a, a
    and b
    ld c, c
    xor l
    xor b
    and [hl]
    and a
    or e
    xor e
    cp b
    ld a, a
    and c
    and b
    or d
    xor b
    or d
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and e
    or c
    xor [hl]
    xor a
    xor a
    and h
    and e
    ld c, [hl]
    xor e
    xor [hl]
    xor [hl]
    or d
    and h
    ld a, a
    and d
    and a
    and b
    xor l
    and [hl]
    and h
    ld e, a
    ld d, b
    nop
    adc b
    or e
    or d
    ld a, a
    xor a
    xor b
    xor l
    and d
    and h
    or c
    or d
    ld a, a
    and b
    or c
    and h
    ld c, [hl]
    xor l
    xor [hl]
    or e
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    and l
    or h
    xor e
    ld c, [hl]
    or [hl]
    and h
    and b
    xor a
    xor [hl]
    xor l
    or d
    db $f4
    ld a, a
    or e
    and a
    and h
    cp b
    ld a, a
    and b
    or c
    and h
    ld c, c
    or h
    or d
    and h
    and e
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and c
    and b
    xor e
    and b
    xor l
    and d
    and h
    ld c, [hl]
    or [hl]
    and a
    and h
    xor l
    ld a, a
    or [hl]
    and b
    xor e
    xor d
    xor b
    xor l
    and [hl]
    ld c, [hl]
    or d
    xor b
    and e
    and h
    or [hl]
    and b
    cp b
    or d
    ld e, a
    ld d, b
    nop
    add b
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    or e
    xor b
    xor h
    and h
    ld a, a
    xor [hl]
    and l
    ld c, [hl]
    and c
    xor b
    or c
    or e
    and a
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    and a
    and b
    or d
    ld c, [hl]
    xor c
    or h
    or d
    or e
    ld a, a
    xor [hl]
    xor l
    and h
    ld a, a
    or e
    and b
    xor b
    xor e
    add sp, $49
    sub e
    and a
    and h
    ld a, a
    or e
    and b
    xor b
    xor e
    ld a, a
    or d
    xor a
    xor e
    xor b
    or e
    or d
    ld c, [hl]
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    xor b
    or e
    or d
    ld a, a
    or e
    xor b
    xor a
    ld a, a
    and b
    or d
    ld c, [hl]
    xor b
    or e
    ld a, a
    and [hl]
    or c
    xor [hl]
    or [hl]
    or d
    ld a, a
    xor [hl]
    xor e
    and e
    and h
    or c
    ld e, a
    ld d, b
    nop
    sub l
    and h
    or c
    cp b
    ld a, a
    or d
    xor h
    and b
    or c
    or e
    ld a, a
    and b
    xor l
    and e
    ld c, [hl]
    or l
    and h
    or c
    cp b
    ld a, a
    or l
    and h
    xor l
    and [hl]
    and h
    and l
    or h
    xor e
    add sp, $4e
    add [hl]
    or c
    and b
    and c
    and c
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    xor l
    and h
    ld a, a
    xor [hl]
    and l
    ld c, c
    xor b
    or e
    or d
    ld a, a
    xor h
    and b
    xor l
    cp b
    ld a, a
    or e
    and b
    xor b
    xor e
    or d
    ld c, [hl]
    and d
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    or c
    and h
    or d
    or h
    xor e
    or e
    ld a, a
    xor b
    xor l
    ld a, a
    and b
    ld c, [hl]
    rst $30
    or $f6
    or $e3
    cp b
    and h
    and b
    or c
    ld a, a
    and d
    or h
    or c
    or d
    and h
    ld e, a
    ld d, b
    nop
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    or d
    and h
    or l
    and h
    or c
    and b
    xor e
    ld a, a
    xor [hl]
    and l
    ld c, [hl]
    or e
    and a
    and h
    or d
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, [hl]
    and [hl]
    and b
    or e
    and a
    and h
    or c
    db $f4
    ld a, a
    or e
    and a
    and h
    xor b
    or c
    ld c, c
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
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld c, [hl]
    and c
    or h
    xor b
    xor e
    and e
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and d
    and b
    or h
    or d
    and h
    ld c, [hl]
    xor e
    xor b
    and [hl]
    and a
    or e
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    or d
    or e
    xor [hl]
    or c
    xor h
    or d
    ld e, a
    ld d, b
    nop
    adc b
    or e
    or d
    ld a, a
    xor e
    xor [hl]
    xor l
    and [hl]
    ld a, a
    or e
    and b
    xor b
    xor e
    ld c, [hl]
    or d
    and h
    or c
    or l
    and h
    or d
    ld a, a
    and b
    or d
    ld a, a
    and b
    ld c, [hl]
    and [hl]
    or c
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor a
    or c
    xor [hl]
    or e
    and h
    and d
    or e
    ld c, c
    xor b
    or e
    or d
    and h
    xor e
    and l
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    xor [hl]
    or [hl]
    xor l
    ld a, a
    and a
    xor b
    and [hl]
    and a
    ld a, a
    or l
    xor [hl]
    xor e
    or e
    and b
    and [hl]
    and h
    ld c, [hl]
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    ld e, a
    ld d, b
    nop
    adc e
    xor [hl]
    xor l
    and [hl]
    ld a, a
    and d
    xor [hl]
    xor l
    or d
    xor b
    and e
    and h
    or c
    and h
    and e
    ld a, a
    and b
    ld c, [hl]
    xor h
    cp b
    or e
    and a
    xor b
    and d
    and b
    xor e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, [hl]
    or h
    xor l
    or e
    xor b
    xor e
    ld a, a
    or c
    and h
    and d
    and h
    xor l
    or e
    xor e
    cp b
    ld c, c
    or [hl]
    and a
    and h
    xor l
    ld a, a
    and b
    ld a, a
    or d
    xor h
    and b
    xor e
    xor e
    ld c, [hl]
    and d
    xor [hl]
    xor e
    xor [hl]
    xor l
    cp b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and l
    xor [hl]
    or h
    xor l
    and e
    ld c, [hl]
    xor e
    xor b
    or l
    xor b
    xor l
    and [hl]
    ld a, a
    or h
    xor l
    and e
    and h
    or c
    or [hl]
    and b
    or e
    and h
    or c
    ld e, a
    ld d, b
    nop
    add b
    ld a, a
    xor h
    cp b
    or d
    or e
    xor b
    and d
    and b
    xor e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, [hl]
    or e
    and a
    and b
    or e
    ld a, a
    and h
    or a
    or h
    and e
    and h
    or d
    ld a, a
    and b
    ld c, [hl]
    and [hl]
    and h
    xor l
    or e
    xor e
    and h
    ld a, a
    and b
    or h
    or c
    and b
    add sp, $49
    add a
    and b
    or d
    ld a, a
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
    cp b
    ld c, [hl]
    or e
    xor [hl]
    ld a, a
    and d
    and a
    and b
    xor l
    and [hl]
    and h
    ld a, a
    and d
    xor e
    xor b
    xor h
    and b
    or e
    and h
    ld c, [hl]
    and d
    xor [hl]
    xor l
    and e
    xor b
    or e
    xor b
    xor [hl]
    xor l
    or d
    ld e, a
    ld d, b
    nop
    add b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or e
    and a
    and b
    or e
    ld c, [hl]
    or [hl]
    and b
    or d
    ld a, a
    or c
    and h
    or d
    or h
    or c
    or c
    and h
    and d
    or e
    and h
    and e
    ld c, [hl]
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    and b
    ld a, a
    and l
    xor [hl]
    or d
    or d
    xor b
    xor e
    ld c, c
    and l
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    xor b
    xor l
    ld a, a
    or [hl]
    and a
    and b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld c, [hl]
    xor [hl]
    xor l
    and d
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor [hl]
    and d
    and h
    and b
    xor l
    ld c, [hl]
    and l
    xor e
    xor [hl]
    xor [hl]
    or c
    ld a, a
    and h
    xor [hl]
    xor l
    or d
    ld a, a
    and b
    and [hl]
    xor [hl]
    ld e, a
    ld d, b
    nop
    adc b
    or e
    or d
    ld a, a
    or d
    xor e
    and h
    and h
    xor d
    ld a, a
    or d
    and a
    and b
    xor a
    and h
    ld a, a
    xor b
    or d
    ld c, [hl]
    xor a
    and h
    or c
    and l
    and h
    and d
    or e
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    or d
    or [hl]
    xor b
    xor h
    db $e3
    ld c, [hl]
    xor h
    xor b
    xor l
    and [hl]
    add sp, $7f
    adc b
    or e
    ld a, a
    or d
    xor e
    and b
    or d
    and a
    and h
    or d
    ld c, c
    xor a
    or c
    and h
    cp b
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    and d
    xor e
    and b
    or [hl]
    or d
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and e
    or c
    and b
    xor b
    xor l
    or d
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    and c
    xor [hl]
    and e
    cp b
    ld a, a
    and l
    xor e
    or h
    xor b
    and e
    or d
    ld e, a
    ld d, b
    nop
    adc d
    xor l
    xor [hl]
    or [hl]
    xor l
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    and a
    xor [hl]
    xor [hl]
    or e
    ld c, [hl]
    and e
    xor [hl]
    or [hl]
    xor l
    ld a, a
    and l
    xor e
    cp b
    xor b
    xor l
    and [hl]
    ld a, a
    and c
    or h
    and [hl]
    or d
    ld c, [hl]
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor a
    or c
    and h
    and d
    xor b
    or d
    xor b
    xor [hl]
    xor l
    ld c, c
    and c
    xor e
    and b
    or d
    or e
    or d
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor b
    xor l
    xor d
    ld c, [hl]
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    or h
    or c
    and l
    and b
    and d
    and h
    ld c, [hl]
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    ld e, a
    ld d, b
    nop
    add d
    and b
    xor a
    and b
    and c
    xor e
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    or d
    or [hl]
    xor b
    xor h
    db $e3
    ld c, [hl]
    xor h
    xor b
    xor l
    and [hl]
    ld a, a
    and c
    and b
    and d
    xor d
    or [hl]
    and b
    or c
    and e
    or d
    ld a, a
    and c
    cp b
    ld c, [hl]
    or c
    and b
    xor a
    xor b
    and e
    xor e
    cp b
    ld a, a
    and l
    xor e
    and b
    xor a
    xor a
    xor b
    xor l
    and [hl]
    ld c, c
    xor b
    or e
    or d
    ld a, a
    or [hl]
    xor b
    xor l
    and [hl]
    db $e3
    xor e
    xor b
    xor d
    and h
    ld c, [hl]
    xor a
    and h
    and d
    or e
    xor [hl]
    or c
    and b
    xor e
    ld a, a
    and l
    xor b
    xor l
    or d
    ld a, a
    and b
    xor l
    and e
    ld c, [hl]
    or d
    or e
    xor [hl]
    or h
    or e
    ld a, a
    or e
    and b
    xor b
    xor e
    ld e, a
    ld d, b
    nop
    add c
    or h
    or c
    or c
    xor [hl]
    or [hl]
    or d
    ld a, a
    and e
    and h
    and h
    xor a
    ld c, [hl]
    or h
    xor l
    and e
    and h
    or c
    and [hl]
    or c
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    xor b
    xor l
    ld c, [hl]
    and b
    or c
    xor b
    and e
    ld a, a
    xor e
    xor [hl]
    and d
    and b
    or e
    xor b
    xor [hl]
    xor l
    or d
    ld c, c
    and l
    and b
    or c
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    add sp, $4e
    adc b
    or e
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    and h
    xor h
    and h
    or c
    and [hl]
    and h
    or d
    ld c, [hl]
    or e
    xor [hl]
    ld a, a
    and a
    or h
    xor l
    or e
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and l
    xor [hl]
    xor [hl]
    and e
    ld e, a
    ld d, b
    nop
    add d
    or h
    or c
    xor e
    or d
    ld a, a
    or h
    xor a
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld a, a
    and b
    ld c, [hl]
    or d
    xor a
    xor b
    xor l
    cp b
    ld a, a
    and c
    and b
    xor e
    xor e
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld c, [hl]
    or e
    and a
    or c
    and h
    and b
    or e
    and h
    xor l
    and h
    and e
    add sp, $7f
    adc b
    or e
    ld c, c
    and d
    and b
    xor l
    ld a, a
    or c
    xor [hl]
    xor e
    xor e
    ld a, a
    or [hl]
    and a
    xor b
    xor e
    and h
    ld c, [hl]
    and d
    or h
    or c
    xor e
    and h
    and e
    ld a, a
    or h
    xor a
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    xor [hl]
    or c
    ld a, a
    and h
    or d
    and d
    and b
    xor a
    and h
    ld e, a
    ld d, b
    nop
    add b
    xor e
    or e
    and a
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    xor e
    xor [hl]
    xor l
    and [hl]
    ld c, [hl]
    and h
    or a
    or e
    xor b
    xor l
    and d
    or e
    db $f4
    ld a, a
    xor b
    xor l
    ld a, a
    or c
    and b
    or c
    and h
    ld c, [hl]
    and d
    and b
    or d
    and h
    or d
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and c
    and h
    ld c, c
    and [hl]
    and h
    xor l
    and h
    or e
    xor b
    and d
    and b
    xor e
    xor e
    cp b
    ld c, [hl]
    or c
    and h
    or d
    or h
    or c
    or c
    and h
    and d
    or e
    and h
    and e
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld c, [hl]
    and l
    xor [hl]
    or d
    or d
    xor b
    xor e
    or d
    ld e, a
    ld d, b
    nop
    add b
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
    ld c, [hl]
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
    and e
    xor b
    and h
    and e
    ld c, [hl]
    xor [hl]
    or h
    or e
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld a, a
    xor b
    or e
    or d
    ld c, c
    and a
    and h
    and b
    or l
    cp b
    ld a, a
    or d
    and a
    and h
    xor e
    xor e
    ld a, a
    xor h
    and b
    and e
    and h
    ld c, [hl]
    xor b
    or e
    ld a, a
    xor b
    xor h
    xor a
    xor [hl]
    or d
    or d
    xor b
    and c
    xor e
    and h
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    and d
    and b
    or e
    and d
    and a
    ld a, a
    xor a
    or c
    and h
    cp b
    ld e, a
    ld d, b
    nop
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and a
    or h
    and [hl]
    and h
    ld a, a
    and h
    cp b
    and h
    or d
    ld c, [hl]
    xor e
    xor b
    and [hl]
    and a
    or e
    ld a, a
    or h
    xor a
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    or d
    xor b
    xor l
    and [hl]
    or d
    ld c, [hl]
    and b
    ld a, a
    xor h
    cp b
    or d
    or e
    and h
    or c
    xor b
    xor [hl]
    or h
    or d
    xor e
    cp b
    ld c, c
    or d
    xor [hl]
    xor [hl]
    or e
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    xor h
    and h
    xor e
    xor [hl]
    and e
    cp b
    ld c, [hl]
    or e
    and a
    and b
    or e
    ld a, a
    xor e
    or h
    xor e
    xor e
    or d
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    and h
    xor l
    and h
    xor h
    xor b
    and h
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    xor e
    and h
    and h
    xor a
    ld e, a
    ld d, b
    nop
    sub e
    and a
    and h
    ld a, a
    and c
    xor [hl]
    and e
    cp b
    ld a, a
    xor b
    or d
    ld a, a
    or d
    xor [hl]
    and l
    or e
    ld c, [hl]
    and b
    xor l
    and e
    ld a, a
    or c
    or h
    and c
    and c
    and h
    or c
    cp b
    add sp, $7f
    sub [hl]
    and a
    and h
    xor l
    ld c, [hl]
    and b
    xor l
    and [hl]
    and h
    or c
    and h
    and e
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld c, c
    or d
    or h
    and d
    xor d
    ld a, a
    xor b
    xor l
    ld a, a
    and b
    xor b
    or c
    ld a, a
    and b
    xor l
    and e
    ld c, [hl]
    xor b
    xor l
    and l
    xor e
    and b
    or e
    and h
    ld a, a
    xor b
    or e
    or d
    and h
    xor e
    and l
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    and b
    xor l
    ld a, a
    and h
    xor l
    xor [hl]
    or c
    xor h
    xor [hl]
    or h
    or d
    ld a, a
    or d
    xor b
    cp c
    and h
    ld e, a
    ld d, b
    nop
    adc b
    or e
    or d
    ld a, a
    and [hl]
    and h
    xor l
    and h
    or e
    xor b
    and d
    ld a, a
    and d
    xor [hl]
    and e
    and h
    ld c, [hl]
    xor b
    or d
    ld a, a
    xor b
    or c
    or c
    and h
    and [hl]
    or h
    xor e
    and b
    or c
    add sp, $4e
    adc b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld a, a
    xor h
    or h
    or e
    and b
    or e
    and h
    ld a, a
    xor b
    and l
    ld c, c
    xor b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    and h
    or a
    xor a
    xor [hl]
    or d
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    or c
    and b
    and e
    xor b
    and b
    or e
    xor b
    xor [hl]
    xor l
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld c, [hl]
    and h
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
    ld e, a
    ld d, b
    nop
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    or d
    or e
    xor [hl]
    or c
    xor b
    xor l
    and [hl]
    ld c, [hl]
    or e
    and a
    and h
    or c
    xor h
    and b
    xor e
    ld a, a
    and h
    xor l
    and h
    or c
    and [hl]
    cp b
    ld a, a
    xor b
    xor l
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    and c
    xor [hl]
    and e
    cp b
    db $f4
    ld a, a
    xor b
    or e
    or d
    ld c, c
    or e
    and h
    xor h
    xor a
    and h
    or c
    and b
    or e
    or h
    or c
    and h
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld c, [hl]
    or d
    xor [hl]
    and b
    or c
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor [hl]
    or l
    and h
    or c
    ld a, a
    rst $30
    db $fc
    or $f6
    ld c, [hl]
    and e
    and h
    and [hl]
    or c
    and h
    and h
    or d
    ld e, a
    ld d, b
    nop
    adc b
    or e
    ld a, a
    and b
    and d
    and d
    or h
    xor h
    or h
    xor e
    and b
    or e
    and h
    or d
    ld c, [hl]
    xor l
    and h
    and [hl]
    and b
    or e
    xor b
    or l
    and h
    ld a, a
    xor b
    xor [hl]
    xor l
    or d
    ld a, a
    xor b
    xor l
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    and b
    or e
    xor h
    xor [hl]
    or d
    xor a
    and a
    and h
    or c
    and h
    ld a, a
    or e
    xor [hl]
    ld c, c
    and c
    xor e
    and b
    or d
    or e
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    rst $30
    or $f6
    or $f6
    db $e3
    ld c, [hl]
    or l
    xor [hl]
    xor e
    or e
    ld a, a
    xor e
    xor b
    and [hl]
    and a
    or e
    xor l
    xor b
    xor l
    and [hl]
    ld c, [hl]
    and c
    xor [hl]
    xor e
    or e
    or d
    ld e, a
    ld d, b
    nop
    adc e
    xor b
    or l
    and h
    or d
    ld a, a
    and d
    xor e
    xor [hl]
    or d
    and h
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    or [hl]
    and b
    or e
    and h
    or c
    add sp, $7f
    adc b
    or e
    or d
    ld a, a
    xor e
    xor [hl]
    xor l
    and [hl]
    ld c, [hl]
    or e
    and b
    xor b
    xor e
    ld a, a
    xor b
    or d
    ld a, a
    or c
    xor b
    and e
    and [hl]
    and h
    and e
    ld c, c
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and b
    ld a, a
    and l
    xor b
    xor l
    ld a, a
    or [hl]
    and a
    xor b
    and d
    and a
    ld c, [hl]
    xor b
    or d
    ld a, a
    xor [hl]
    and l
    or e
    and h
    xor l
    ld a, a
    xor h
    xor b
    or d
    or e
    and b
    xor d
    and h
    xor l
    ld c, [hl]
    and l
    xor [hl]
    or c
    ld a, a
    and b
    ld a, a
    xor h
    and h
    or c
    xor h
    and b
    xor b
    and e
    cp l
    ld e, a
    ld d, b
    nop
    adc e
    xor [hl]
    or l
    and h
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    or h
    xor b
    xor e
    and e
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    xor h
    or h
    or d
    and d
    xor e
    and h
    or d
    add sp, $4e
    adc b
    or e
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    or d
    ld a, a
    xor b
    xor l
    ld a, a
    and b
    xor e
    xor e
    ld c, c
    or d
    or e
    cp b
    xor e
    and h
    or d
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor h
    and b
    or c
    or e
    xor b
    and b
    xor e
    ld c, [hl]
    and b
    or c
    or e
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
    ld c, [hl]
    and h
    or l
    and h
    xor l
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    and h
    or c
    ld e, a
    ld d, b
    nop
    add l
    xor [hl]
    or c
    xor h
    or d
    ld a, a
    and d
    xor [hl]
    xor e
    xor [hl]
    xor l
    xor b
    and h
    or d
    ld a, a
    xor b
    xor l
    ld c, [hl]
    xor a
    and h
    or c
    xor a
    and h
    or e
    or h
    and b
    xor e
    xor e
    cp b
    ld a, a
    and e
    and b
    or c
    xor d
    ld c, [hl]
    xor a
    xor e
    and b
    and d
    and h
    or d
    add sp, $7f
    sub h
    or d
    and h
    or d
    ld c, c
    or h
    xor e
    or e
    or c
    and b
    or d
    xor [hl]
    xor l
    xor b
    and d
    ld a, a
    or [hl]
    and b
    or l
    and h
    or d
    ld c, [hl]
    or e
    xor [hl]
    ld a, a
    xor b
    and e
    and h
    xor l
    or e
    xor b
    and l
    cp b
    ld a, a
    and b
    xor l
    and e
    ld c, [hl]
    and b
    xor a
    xor a
    or c
    xor [hl]
    and b
    and d
    and a
    ld a, a
    or e
    and b
    or c
    and [hl]
    and h
    or e
    or d
    ld e, a
    ld d, b
    nop
    adc h
    xor [hl]
    or l
    and h
    or d
    ld a, a
    or d
    xor b
    xor e
    and h
    xor l
    or e
    xor e
    cp b
    ld c, [hl]
    and b
    xor l
    and e
    ld a, a
    or d
    or e
    and h
    and b
    xor e
    or e
    and a
    xor b
    xor e
    cp b
    add sp, $4e
    add h
    and b
    or e
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    and h
    and [hl]
    and [hl]
    or d
    ld a, a
    xor [hl]
    and l
    ld c, c
    and c
    xor b
    or c
    and e
    or d
    db $f4
    ld a, a
    or d
    or h
    and d
    and a
    ld a, a
    and b
    or d
    ld c, [hl]
    adc a
    adc b
    add e
    add [hl]
    add h
    sbc b
    ld a, a
    and b
    xor l
    and e
    ld c, [hl]
    sub d
    adc a
    add h
    add b
    sub c
    adc [hl]
    sub [hl]
    db $f4
    ld a, a
    or [hl]
    and a
    xor [hl]
    xor e
    and h
    ld e, a
    ld d, b
    nop
    add c
    or h
    or c
    or c
    xor [hl]
    or [hl]
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    or h
    and d
    xor d
    ld c, [hl]
    or e
    or c
    and h
    and h
    ld a, a
    or c
    xor [hl]
    xor [hl]
    or e
    or d
    add sp, $7f
    sub e
    and a
    and h
    ld c, [hl]
    xor h
    or h
    or d
    and a
    or c
    xor [hl]
    xor [hl]
    xor h
    or d
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor b
    or e
    or d
    ld c, c
    and c
    and b
    and d
    xor d
    ld a, a
    and [hl]
    or c
    xor [hl]
    or [hl]
    ld a, a
    and c
    cp b
    ld a, a
    and e
    or c
    and b
    or [hl]
    db $e3
    ld c, [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    xor l
    or h
    or e
    or c
    xor b
    and h
    xor l
    or e
    or d
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    and c
    or h
    and [hl]
    ld a, a
    and a
    xor [hl]
    or d
    or e
    ld e, a
    ld d, b
    nop
    add d
    and b
    xor a
    and b
    and c
    xor e
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor e
    xor b
    or l
    xor b
    xor l
    and [hl]
    ld c, [hl]
    xor b
    xor l
    ld a, a
    xor [hl]
    or c
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    and l
    ld c, [hl]
    or [hl]
    and b
    or e
    and h
    or c
    add sp, $7f
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    xor [hl]
    or h
    or e
    ld c, c
    xor [hl]
    and l
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    db $f4
    ld a, a
    xor b
    or e
    ld c, [hl]
    or d
    or [hl]
    and h
    and b
    or e
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor d
    and h
    and h
    xor a
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    and c
    xor [hl]
    and e
    cp b
    ld a, a
    or d
    xor e
    xor b
    xor h
    cp b
    ld e, a
    ld d, b
    nop
    add b
    xor l
    ld a, a
    and b
    and e
    and h
    xor a
    or e
    ld a, a
    or d
    or [hl]
    xor b
    xor h
    xor h
    and h
    or c
    ld c, [hl]
    and b
    or e
    ld a, a
    and c
    xor [hl]
    or e
    and a
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    or c
    xor [hl]
    xor l
    or e
    ld c, [hl]
    and d
    or c
    and b
    or [hl]
    xor e
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and c
    or c
    and h
    and b
    or d
    or e
    ld c, c
    or d
    or e
    or c
    xor [hl]
    xor d
    and h
    add sp, $7f
    add h
    and b
    or d
    xor b
    xor e
    cp b
    ld c, [hl]
    xor [hl]
    or l
    and h
    or c
    or e
    and b
    xor d
    and h
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    and c
    and h
    or d
    or e
    ld c, [hl]
    and a
    or h
    xor h
    and b
    xor l
    ld a, a
    or d
    or [hl]
    xor b
    xor h
    xor h
    and h
    or c
    or d
    ld e, a
    ld d, b
    nop
    adc [hl]
    and l
    or e
    and h
    xor l
    ld a, a
    and l
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    xor b
    xor l
    ld c, [hl]
    and l
    xor [hl]
    or c
    and h
    or d
    or e
    or d
    db $f4
    ld a, a
    and h
    and b
    or e
    xor b
    xor l
    and [hl]
    ld c, [hl]
    xor e
    and h
    and b
    or l
    and h
    or d
    add sp, $49
    adc b
    or e
    ld a, a
    and a
    and b
    or d
    ld a, a
    and b
    ld a, a
    or d
    and a
    and b
    or c
    xor a
    ld c, [hl]
    or l
    and h
    xor l
    xor [hl]
    xor h
    xor [hl]
    or h
    or d
    ld a, a
    or d
    or e
    xor b
    xor l
    and [hl]
    and h
    or c
    ld c, [hl]
    xor [hl]
    xor l
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and a
    and h
    and b
    and e
    ld e, a
    ld d, b
    nop
    add b
    xor e
    xor h
    xor [hl]
    or d
    or e
    ld a, a
    xor b
    xor l
    and d
    and b
    xor a
    and b
    and c
    xor e
    and h
    ld c, [hl]
    xor [hl]
    and l
    ld a, a
    xor h
    xor [hl]
    or l
    xor b
    xor l
    and [hl]
    db $f4
    ld a, a
    or e
    and a
    xor b
    or d
    ld c, [hl]
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and d
    and b
    xor l
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld c, c
    and a
    and b
    or c
    and e
    and h
    xor l
    ld a, a
    xor b
    or e
    or d
    ld a, a
    or d
    and a
    and h
    xor e
    xor e
    ld c, [hl]
    or e
    xor [hl]
    ld a, a
    xor a
    or c
    xor [hl]
    or e
    and h
    and d
    or e
    ld a, a
    xor b
    or e
    or d
    and h
    xor e
    and l
    ld c, [hl]
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    xor a
    or c
    and h
    and e
    and b
    or e
    xor [hl]
    or c
    or d
    ld e, a
    ld d, b
    nop
    add l
    xor e
    xor b
    and h
    or d
    ld a, a
    and b
    or e
    ld a, a
    and a
    xor b
    and [hl]
    and a
    ld c, [hl]
    or d
    xor a
    and h
    and h
    and e
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    or d
    ld c, [hl]
    or h
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    or e
    or d
    ld a, a
    xor e
    and b
    or c
    and [hl]
    and h
    ld c, c
    or l
    and h
    xor l
    xor [hl]
    xor h
    xor [hl]
    or h
    or d
    ld a, a
    or d
    or e
    xor b
    xor l
    and [hl]
    and h
    or c
    or d
    ld c, [hl]
    xor [hl]
    xor l
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and l
    xor [hl]
    or c
    and h
    xor e
    and h
    and [hl]
    or d
    ld c, [hl]
    and b
    xor l
    and e
    ld a, a
    or e
    and b
    xor b
    xor e
    ld e, a
    ld d, b
    nop
    sub h
    or d
    and h
    or d
    ld a, a
    xor b
    or e
    or d
    ld a, a
    or e
    and a
    or c
    and h
    and h
    ld c, [hl]
    and c
    or c
    and b
    xor b
    xor l
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    and h
    or a
    and h
    and d
    or h
    or e
    and h
    ld c, [hl]
    and d
    xor [hl]
    xor h
    xor a
    xor e
    and h
    or a
    ld a, a
    xor a
    xor e
    and b
    xor l
    or d
    add sp, $49
    sub [hl]
    and a
    xor b
    xor e
    and h
    ld a, a
    or e
    or [hl]
    xor [hl]
    ld a, a
    and a
    and h
    and b
    and e
    or d
    ld c, [hl]
    or d
    xor e
    and h
    and h
    xor a
    db $f4
    ld a, a
    xor [hl]
    xor l
    and h
    ld a, a
    and a
    and h
    and b
    and e
    ld c, [hl]
    or d
    or e
    and b
    cp b
    or d
    ld a, a
    and b
    or [hl]
    and b
    xor d
    and h
    ld e, a
    ld d, b
    nop
    add b
    xor e
    or [hl]
    and b
    cp b
    or d
    ld a, a
    and l
    or h
    or c
    xor b
    xor [hl]
    or h
    or d
    ld c, [hl]
    and b
    xor l
    and e
    ld a, a
    or e
    and h
    xor l
    and b
    and d
    xor b
    xor [hl]
    or h
    or d
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    and c
    xor [hl]
    xor [hl]
    or e
    add sp, $7f
    adc b
    or e
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    xor l
    xor [hl]
    or e
    ld c, c
    and b
    and c
    and b
    xor l
    and e
    xor [hl]
    xor l
    ld a, a
    and d
    and a
    and b
    or d
    xor b
    xor l
    and [hl]
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    or b
    or h
    and b
    or c
    or c
    cp b
    ld a, a
    or h
    xor l
    or e
    xor b
    xor e
    ld c, [hl]
    xor b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    and d
    and b
    or h
    and [hl]
    and a
    or e
    ld e, a
    ld d, b
    nop
    add b
    ld a, a
    or e
    and h
    and b
    xor h
    ld a, a
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
    ld c, [hl]
    or e
    or c
    xor b
    xor a
    xor e
    and h
    or e
    or d
    add sp, $4e
    adc b
    or e
    ld a, a
    or e
    or c
    xor b
    and [hl]
    and [hl]
    and h
    or c
    or d
    ld a, a
    and a
    or h
    and [hl]
    and h
    ld c, c
    and h
    and b
    or c
    or e
    and a
    or b
    or h
    and b
    xor d
    and h
    or d
    ld a, a
    and c
    cp b
    ld c, [hl]
    and c
    or h
    or c
    or c
    xor [hl]
    or [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    db $fc
    or $7f
    xor h
    xor b
    xor e
    and h
    or d
    ld c, [hl]
    or h
    xor l
    and e
    and h
    or c
    and [hl]
    or c
    xor [hl]
    or h
    xor l
    and e
    ld e, a
    ld d, b
    nop
    sub e
    and a
    and h
    ld a, a
    and e
    or h
    or d
    or e
    db $e3
    xor e
    xor b
    xor d
    and h
    ld c, [hl]
    or d
    and d
    and b
    xor e
    and h
    or d
    ld a, a
    and d
    xor [hl]
    or l
    and h
    or c
    xor b
    xor l
    and [hl]
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    or [hl]
    xor b
    xor l
    and [hl]
    or d
    ld a, a
    and b
    or c
    and h
    ld c, c
    and d
    xor [hl]
    xor e
    xor [hl]
    or c
    ld a, a
    and d
    xor [hl]
    and e
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    xor b
    xor l
    and e
    xor b
    and d
    and b
    or e
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor d
    xor b
    xor l
    and e
    or d
    ld c, [hl]
    xor [hl]
    and l
    ld a, a
    xor a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    ld a, a
    xor b
    or e
    ld a, a
    and a
    and b
    or d
    ld e, a
    ld d, b
    nop
    sub d
    or e
    xor [hl]
    or c
    and h
    or d
    ld a, a
    or e
    and a
    and h
    or c
    xor h
    and b
    xor e
    ld c, [hl]
    and h
    xor l
    and h
    or c
    and [hl]
    cp b
    ld a, a
    xor b
    xor l
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    and c
    xor [hl]
    and e
    cp b
    add sp, $7f
    sub d
    or [hl]
    xor b
    xor h
    or d
    ld a, a
    and b
    or e
    ld a, a
    and b
    ld c, c
    or d
    or e
    and h
    and b
    and e
    cp b
    ld a, a
    cp $7f
    xor d
    xor l
    xor [hl]
    or e
    or d
    ld c, [hl]
    and h
    or l
    and h
    xor l
    ld a, a
    xor b
    xor l
    ld a, a
    xor b
    xor l
    or e
    and h
    xor l
    or d
    and h
    xor e
    cp b
    ld c, [hl]
    and d
    xor [hl]
    xor e
    and e
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    or d
    ld e, a
    ld d, b
    nop
    adc b
    or e
    or d
    ld a, a
    or d
    and a
    xor [hl]
    or c
    or e
    ld a, a
    and l
    and h
    and h
    or e
    ld c, [hl]
    and b
    or c
    and h
    ld a, a
    or e
    xor b
    xor a
    xor a
    and h
    and e
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld c, [hl]
    or d
    or h
    and d
    or e
    xor b
    xor [hl]
    xor l
    ld a, a
    xor a
    and b
    and e
    or d
    ld a, a
    or e
    and a
    and b
    or e
    ld c, c
    and h
    xor l
    and b
    and c
    xor e
    and h
    ld a, a
    xor b
    or e
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    or e
    xor b
    or c
    and h
    xor e
    and h
    or d
    or d
    xor e
    cp b
    ld a, a
    and d
    xor e
    xor b
    xor h
    and c
    ld c, [hl]
    or d
    xor e
    xor [hl]
    xor a
    and h
    or d
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or [hl]
    and b
    xor e
    xor e
    or d
    ld e, a
    ld d, b
    nop
    sub e
    and a
    xor b
    or d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor b
    or d
    ld c, [hl]
    or l
    or h
    xor e
    xor l
    and h
    or c
    and b
    and c
    xor e
    and h
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or [hl]
    and a
    xor b
    xor e
    and h
    ld a, a
    xor b
    or e
    or d
    ld c, c
    or d
    and a
    and h
    xor e
    xor e
    ld a, a
    xor b
    or d
    ld a, a
    or d
    xor [hl]
    and l
    or e
    db $f4
    ld c, [hl]
    and h
    or a
    xor a
    xor [hl]
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    or e
    or d
    ld a, a
    or [hl]
    and h
    and b
    xor d
    ld c, [hl]
    and b
    xor l
    and e
    ld a, a
    or e
    and h
    xor l
    and e
    and h
    or c
    ld a, a
    and c
    xor [hl]
    and e
    cp b
    ld e, a
    ld d, b
    nop
    adc b
    xor l
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    db $f4
    ld a, a
    xor b
    or e
    ld c, [hl]
    and l
    xor e
    and b
    xor a
    or d
    ld a, a
    xor b
    or e
    or d
    ld a, a
    or [hl]
    xor b
    xor l
    and [hl]
    or d
    ld c, [hl]
    and b
    or e
    ld a, a
    and a
    xor b
    and [hl]
    and a
    ld a, a
    or d
    xor a
    and h
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld c, c
    or c
    and h
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    and a
    xor b
    and [hl]
    and a
    xor e
    cp b
    ld c, [hl]
    or e
    xor [hl]
    or a
    xor b
    and d
    ld a, a
    and e
    or h
    or d
    or e
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    and b
    xor b
    or c
    ld e, a
    ld d, b
    nop
    sub h
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and a
    and h
    and b
    or l
    cp b
    ld c, [hl]
    xor h
    or h
    or d
    and d
    xor e
    and h
    or d
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    or e
    and a
    or c
    xor [hl]
    or [hl]
    or d
    ld c, [hl]
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    and l
    or h
    xor e
    ld a, a
    xor a
    or h
    xor l
    and d
    and a
    and h
    or d
    ld c, c
    or e
    and a
    and b
    or e
    ld a, a
    and d
    and b
    xor l
    ld a, a
    or d
    and h
    xor l
    and e
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    or l
    xor b
    and d
    or e
    xor b
    xor h
    ld a, a
    and d
    xor e
    and h
    and b
    or c
    ld a, a
    xor [hl]
    or l
    and h
    or c
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    and a
    xor [hl]
    or c
    xor b
    cp c
    xor [hl]
    xor l
    ld e, a
    ld d, b
    nop
    adc [hl]
    and l
    or e
    and h
    xor l
    ld a, a
    or d
    and h
    and h
    xor l
    ld a, a
    or d
    or [hl]
    xor b
    xor h
    db $e3
    ld c, [hl]
    xor h
    xor b
    xor l
    and [hl]
    ld a, a
    and h
    xor e
    and h
    and [hl]
    and b
    xor l
    or e
    xor e
    cp b
    ld a, a
    and c
    cp b
    ld c, [hl]
    xor e
    and b
    xor d
    and h
    ld a, a
    or d
    and a
    xor [hl]
    or c
    and h
    or d
    add sp, $7f
    adc b
    or e
    ld c, c
    xor b
    or d
    ld a, a
    xor [hl]
    and l
    or e
    and h
    xor l
    ld a, a
    xor h
    xor b
    or d
    or e
    and b
    xor d
    and h
    xor l
    ld c, [hl]
    and l
    xor [hl]
    or c
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc c
    and b
    xor a
    and b
    xor l
    and h
    or d
    and h
    ld c, [hl]
    xor h
    xor [hl]
    xor l
    or d
    or e
    and h
    or c
    db $f4
    ld a, a
    adc d
    and b
    xor a
    xor a
    and b
    ld e, a
    ld d, b
    nop
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    xor b
    or e
    ld a, a
    xor e
    xor [hl]
    and d
    xor d
    or d
    ld a, a
    and h
    cp b
    and h
    or d
    ld c, [hl]
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and b
    xor l
    ld a, a
    and h
    xor l
    and h
    xor h
    cp b
    db $f4
    ld a, a
    xor b
    or e
    ld c, [hl]
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    or h
    or d
    and h
    ld a, a
    and b
    ld a, a
    xor h
    xor b
    or a
    ld a, a
    xor [hl]
    and l
    ld c, c
    adc a
    sub d
    adc b
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    or d
    ld a, a
    or d
    or h
    and d
    and a
    ld a, a
    and b
    or d
    ld c, [hl]
    add a
    sbc b
    adc a
    adc l
    adc [hl]
    sub d
    adc b
    sub d
    ld a, a
    and b
    xor l
    and e
    ld c, [hl]
    add d
    adc [hl]
    adc l
    add l
    sub h
    sub d
    adc b
    adc [hl]
    adc l
    ld e, a
    ld d, b
    nop
    adc [hl]
    xor l
    and d
    and h
    ld a, a
    xor b
    or e
    ld a, a
    or d
    or e
    or c
    xor b
    xor d
    and h
    or d
    db $f4
    ld c, [hl]
    xor b
    or e
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    or d
    or e
    xor [hl]
    xor a
    ld c, [hl]
    and e
    or c
    and b
    xor b
    xor l
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
    ld c, c
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    or e
    and a
    and h
    ld a, a
    or l
    xor b
    and d
    or e
    xor b
    xor h
    ld c, [hl]
    and h
    or l
    and h
    xor l
    ld a, a
    xor b
    and l
    ld a, a
    xor b
    or e
    ld a, a
    and [hl]
    and h
    or e
    or d
    ld c, [hl]
    or e
    xor [hl]
    xor [hl]
    ld a, a
    and a
    and h
    and b
    or l
    cp b
    ld a, a
    or e
    xor [hl]
    ld a, a
    and l
    xor e
    cp b
    ld e, a
    ld d, b
    nop
    adc b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and d
    or c
    and h
    and b
    or e
    and h
    and e
    ld a, a
    and c
    cp b
    ld c, [hl]
    and b
    ld a, a
    or d
    and d
    xor b
    and h
    xor l
    or e
    xor b
    or d
    or e
    ld a, a
    and b
    and l
    or e
    and h
    or c
    ld c, [hl]
    cp b
    and h
    and b
    or c
    or d
    ld a, a
    xor [hl]
    and l
    ld a, a
    and a
    xor [hl]
    or c
    or c
    xor b
    and l
    xor b
    and d
    ld c, c
    and [hl]
    and h
    xor l
    and h
    ld a, a
    or d
    xor a
    xor e
    xor b
    and d
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    xor l
    and e
    ld c, [hl]
    add e
    adc l
    add b
    ld a, a
    and h
    xor l
    and [hl]
    xor b
    xor l
    and h
    and h
    or c
    xor b
    xor l
    and [hl]
    ld c, [hl]
    and h
    or a
    xor a
    and h
    or c
    xor b
    xor h
    and h
    xor l
    or e
    or d
    ld e, a
    ld d, b
    nop
    sub l
    and h
    or c
    cp b
    ld a, a
    xor e
    and b
    cp c
    cp b
    add sp, $7f
    adc c
    or h
    or d
    or e
    ld c, [hl]
    and h
    and b
    or e
    or d
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
    or d
    add sp, $4e
    add b
    or d
    ld a, a
    xor b
    or e
    or d
    ld a, a
    or c
    xor [hl]
    or e
    or h
    xor l
    and e
    ld c, c
    and c
    or h
    xor e
    xor d
    ld a, a
    and c
    or h
    xor b
    xor e
    and e
    or d
    db $f4
    ld a, a
    xor b
    or e
    ld c, [hl]
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    or d
    ld a, a
    or d
    or e
    and h
    and b
    and e
    xor b
    xor e
    cp b
    ld c, [hl]
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    or d
    xor e
    xor [hl]
    or e
    and a
    and l
    or h
    xor e
    ld e, a
    ld d, b
    nop
    adc b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    and e
    xor b
    or d
    or e
    and b
    xor l
    or e
    ld c, [hl]
    xor a
    and b
    or d
    or e
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld c, [hl]
    or d
    xor [hl]
    xor h
    and h
    or [hl]
    and a
    and b
    or e
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    and h
    or c
    ld c, c
    or e
    and a
    and b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    and a
    xor [hl]
    or c
    or c
    xor b
    and c
    xor e
    cp b
    ld c, [hl]
    or [hl]
    and h
    and b
    xor d
    ld a, a
    and e
    and h
    or d
    and d
    and h
    xor l
    and e
    and b
    xor l
    or e
    or d
    ld c, [hl]
    or e
    and a
    and b
    or e
    ld a, a
    and h
    or a
    xor b
    or d
    or e
    ld a, a
    or e
    xor [hl]
    and e
    and b
    cp b
    ld e, a
    ld d, b
    nop
    sub e
    and a
    xor b
    and d
    xor d
    xor e
    cp b
    ld a, a
    and d
    xor [hl]
    or l
    and h
    or c
    and h
    and e
    ld c, [hl]
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and b
    ld a, a
    and l
    xor b
    xor e
    or e
    and a
    cp b
    db $f4
    ld c, [hl]
    or l
    xor b
    xor e
    and h
    ld a, a
    or d
    xor e
    or h
    and e
    and [hl]
    and h
    add sp, $7f
    adc b
    or e
    ld c, c
    xor b
    or d
    ld a, a
    or d
    xor [hl]
    ld a, a
    or e
    xor [hl]
    or a
    xor b
    and d
    db $f4
    ld a, a
    and h
    or l
    and h
    xor l
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    and l
    xor [hl]
    xor [hl]
    or e
    xor a
    or c
    xor b
    xor l
    or e
    or d
    ld c, [hl]
    and d
    xor [hl]
    xor l
    or e
    and b
    xor b
    xor l
    ld a, a
    xor a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    ld e, a
    ld d, b
    nop
    sub e
    and a
    and h
    ld a, a
    xor e
    and b
    or c
    and [hl]
    and h
    ld a, a
    xor a
    xor b
    xor l
    and d
    and h
    or c
    ld c, [hl]
    and a
    and b
    or d
    ld a, a
    rst $30
    or $f6
    or $f6
    ld a, a
    and a
    xor a
    ld a, a
    xor [hl]
    and l
    ld c, [hl]
    and d
    or c
    or h
    or d
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    add sp, $49
    add a
    xor [hl]
    or [hl]
    and h
    or l
    and h
    or c
    db $f4
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and a
    or h
    and [hl]
    and h
    ld c, [hl]
    or d
    xor b
    cp c
    and h
    ld a, a
    xor h
    and b
    xor d
    and h
    or d
    ld a, a
    xor b
    or e
    ld c, [hl]
    or h
    xor l
    or [hl]
    xor b
    and h
    xor e
    and e
    cp b
    ld a, a
    or e
    xor [hl]
    ld a, a
    or h
    or d
    and h
    ld e, a
    ld d, b
    nop
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    and h
    and e
    db $f4
    ld a, a
    xor b
    or e
    ld c, [hl]
    xor e
    and b
    or h
    xor l
    and d
    and a
    and h
    or d
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    and a
    xor [hl]
    or c
    xor l
    or d
    ld a, a
    xor b
    xor l
    ld a, a
    or b
    or h
    xor b
    and d
    xor d
    ld c, c
    or l
    xor [hl]
    xor e
    xor e
    and h
    cp b
    or d
    add sp, $7f
    adc b
    or e
    or d
    ld c, [hl]
    xor b
    xor l
    xor l
    and b
    or c
    and e
    or d
    ld a, a
    and a
    and b
    or l
    and h
    ld c, [hl]
    xor l
    and h
    or l
    and h
    or c
    ld a, a
    and c
    and h
    and h
    xor l
    ld a, a
    or d
    and h
    and h
    xor l
    ld e, a
    ld d, b
    nop
    adc b
    or e
    ld a, a
    or d
    or e
    xor [hl]
    or c
    and h
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
    ld c, [hl]
    and h
    xor l
    and h
    or c
    and [hl]
    cp b
    ld a, a
    or h
    xor l
    and e
    and h
    or c
    ld a, a
    or l
    and h
    or c
    cp b
    ld c, [hl]
    and a
    xor b
    and [hl]
    and a
    ld a, a
    xor a
    or c
    and h
    or d
    or d
    or h
    or c
    and h
    add sp, $49
    adc b
    or e
    ld a, a
    xor [hl]
    and l
    or e
    and h
    xor l
    ld a, a
    and h
    or a
    xor a
    xor e
    xor [hl]
    and e
    and h
    or d
    ld c, [hl]
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor e
    xor b
    or e
    or e
    xor e
    and h
    ld a, a
    xor [hl]
    or c
    ld a, a
    xor l
    xor [hl]
    ld c, [hl]
    xor a
    or c
    xor [hl]
    or l
    xor [hl]
    and d
    and b
    or e
    xor b
    xor [hl]
    xor l
    ld e, a
    ld d, b
    nop
    add b
    ld a, a
    or e
    xor b
    xor h
    xor b
    and e
    ld a, a
    and l
    and b
    xor b
    or c
    cp b
    ld c, [hl]
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
    ld c, [hl]
    or c
    and b
    or c
    and h
    xor e
    cp b
    ld a, a
    or d
    and h
    and h
    xor l
    add sp, $7f
    adc b
    or e
    ld c, c
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    or c
    or h
    xor l
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and a
    xor b
    and e
    and h
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    xor h
    xor [hl]
    xor h
    and h
    xor l
    or e
    ld a, a
    xor b
    or e
    ld c, [hl]
    or d
    and h
    xor l
    or d
    and h
    or d
    ld a, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld e, a
    ld d, b
    nop
    sub [hl]
    and a
    and h
    or c
    and h
    ld a, a
    or e
    or [hl]
    xor [hl]
    ld a, a
    xor d
    xor b
    xor l
    and e
    or d
    ld c, [hl]
    xor [hl]
    and l
    ld a, a
    xor a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    ld a, a
    and [hl]
    and b
    or d
    and h
    or d
    ld c, [hl]
    xor h
    and h
    and h
    or e
    db $f4
    ld a, a
    ld hl, sp+$7f
    adc d
    adc [hl]
    add l
    add l
    adc b
    adc l
    add [hl]
    or d
    ld c, c
    and d
    and b
    xor l
    ld a, a
    and l
    or h
    or d
    and h
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld a, a
    and b
    ld c, [hl]
    sub [hl]
    add h
    add h
    sbc c
    adc b
    adc l
    add [hl]
    ld a, a
    xor [hl]
    or l
    and h
    or c
    ld a, a
    xor h
    and b
    xor l
    cp b
    ld c, [hl]
    cp b
    and h
    and b
    or c
    or d
    ld e, a
    ld d, b
    nop
    add b
    xor e
    or e
    and a
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and l
    or h
    or c
    ld c, [hl]
    and a
    and b
    or d
    ld a, a
    xor h
    and b
    xor l
    cp b
    ld a, a
    and b
    and e
    xor h
    xor b
    or c
    and h
    or c
    or d
    db $f4
    ld c, [hl]
    xor b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    or e
    xor [hl]
    ld c, c
    or c
    and b
    xor b
    or d
    and h
    ld a, a
    and b
    or d
    ld a, a
    and b
    ld a, a
    xor a
    and h
    or e
    ld c, [hl]
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
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    and l
    xor b
    and d
    xor d
    xor e
    and h
    ld a, a
    xor h
    and h
    and b
    xor l
    xor l
    and h
    or d
    or d
    ld e, a
    ld d, b
    nop
    sub e
    and a
    and h
    ld a, a
    and c
    xor [hl]
    xor l
    and h
    ld a, a
    xor b
    or e
    ld a, a
    and a
    xor [hl]
    xor e
    and e
    or d
    ld c, [hl]
    xor b
    or d
    ld a, a
    xor b
    or e
    or d
    ld a, a
    xor d
    and h
    cp b
    ld a, a
    or [hl]
    and h
    and b
    xor a
    xor [hl]
    xor l
    add sp, $4e
    adc b
    or e
    ld a, a
    or e
    and a
    or c
    xor [hl]
    or [hl]
    or d
    ld a, a
    or e
    and a
    and h
    ld c, c
    and c
    xor [hl]
    xor l
    and h
    ld a, a
    or d
    xor d
    xor b
    xor e
    xor e
    and l
    or h
    xor e
    xor e
    cp b
    ld c, [hl]
    xor e
    xor b
    xor d
    and h
    ld a, a
    and b
    ld a, a
    and c
    xor [hl]
    xor [hl]
    xor h
    and h
    or c
    and b
    xor l
    and [hl]
    ld c, [hl]
    or e
    xor [hl]
    ld a, a
    adc d
    adc [hl]
    ld a, a
    or e
    and b
    or c
    and [hl]
    and h
    or e
    or d
    ld e, a
    ld d, b
    nop
    add c
    and h
    and d
    and b
    or h
    or d
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    and b
    and c
    xor b
    xor e
    xor b
    or e
    cp b
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    xor e
    xor b
    xor a
    ld c, [hl]
    or e
    and a
    or c
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    and c
    xor e
    xor [hl]
    and d
    xor d
    ld c, c
    or [hl]
    and b
    xor e
    xor e
    or d
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    or d
    and b
    xor b
    and e
    ld c, [hl]
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    and b
    xor l
    db $e3
    ld c, [hl]
    xor [hl]
    or e
    and a
    and h
    or c
    ld a, a
    and e
    xor b
    xor h
    and h
    xor l
    or d
    xor b
    xor [hl]
    xor l
    ld e, a
    ld d, b
    nop
    sub h
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and b
    and c
    xor b
    xor e
    xor b
    or e
    cp b
    ld c, [hl]
    or e
    xor [hl]
    ld a, a
    or c
    and h
    and b
    and e
    ld a, a
    xor h
    xor b
    xor l
    and e
    or d
    db $f4
    ld a, a
    xor b
    or e
    ld c, [hl]
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    xor b
    and e
    and h
    xor l
    or e
    xor b
    and l
    cp b
    ld c, c
    xor b
    xor h
    xor a
    and h
    xor l
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    and e
    and b
    xor l
    and [hl]
    and h
    or c
    ld c, [hl]
    and b
    xor l
    and e
    ld a, a
    sub e
    add h
    adc e
    add h
    adc a
    adc [hl]
    sub c
    sub e
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    or d
    and b
    and l
    and h
    or e
    cp b
    ld e, a
    ld d, b
    nop
    adc b
    or e
    or d
    ld a, a
    and c
    or c
    and b
    xor b
    xor l
    ld a, a
    and d
    and b
    xor l
    ld a, a
    xor [hl]
    or h
    or e
    db $e3
    ld c, [hl]
    xor a
    and h
    or c
    and l
    xor [hl]
    or c
    xor h
    ld a, a
    and b
    ld a, a
    or d
    or h
    xor a
    and h
    or c
    db $e3
    ld c, [hl]
    and d
    xor [hl]
    xor h
    xor a
    or h
    or e
    and h
    or c
    add sp, $49
    adc b
    or e
    or d
    ld a, a
    xor b
    xor l
    or e
    and h
    xor e
    xor e
    xor b
    and [hl]
    and h
    xor l
    and d
    and h
    ld c, [hl]
    or b
    or h
    xor [hl]
    or e
    xor b
    and h
    xor l
    or e
    ld a, a
    xor b
    or d
    ld a, a
    or d
    and b
    xor b
    and e
    ld c, [hl]
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld a, a
    ei
    db $f4
    or $f6
    or $5f
    ld d, b
    nop
    sub l
    and h
    or c
    cp b
    ld a, a
    xor a
    or c
    xor [hl]
    or e
    and h
    and d
    or e
    xor b
    or l
    and h
    ld c, [hl]
    xor [hl]
    and l
    ld a, a
    xor b
    or e
    or d
    ld a, a
    or d
    xor a
    or c
    and b
    or [hl]
    xor e
    xor b
    xor l
    and [hl]
    ld c, [hl]
    or e
    and h
    or c
    or c
    xor b
    or e
    xor [hl]
    or c
    xor b
    and b
    xor e
    ld a, a
    and b
    or c
    and h
    and b
    db $f4
    ld c, c
    or e
    and a
    xor b
    or d
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
    ld c, [hl]
    and l
    xor b
    and h
    or c
    and d
    and h
    xor e
    cp b
    ld a, a
    xor a
    and h
    and d
    xor d
    ld a, a
    and b
    or e
    ld c, [hl]
    and b
    xor l
    cp b
    ld a, a
    xor b
    xor l
    or e
    or c
    or h
    and e
    and h
    or c
    ld e, a
    ld d, b
    nop
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    and a
    or h
    xor l
    or e
    xor b
    xor l
    and [hl]
    db $f4
    ld a, a
    xor b
    or e
    ld c, [hl]
    or d
    xor d
    xor b
    xor h
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    or h
    or c
    and l
    and b
    and d
    and h
    ld c, [hl]
    xor [hl]
    and l
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    ld a, a
    and b
    or e
    ld a, a
    and a
    xor b
    and [hl]
    and a
    ld c, c
    or d
    xor a
    and h
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor a
    xor b
    and d
    xor d
    ld a, a
    xor [hl]
    and l
    and l
    ld c, [hl]
    or h
    xor l
    or [hl]
    and b
    or c
    cp b
    ld a, a
    xor a
    or c
    and h
    cp b
    ld a, a
    or d
    or h
    and d
    and a
    ld c, [hl]
    and b
    or d
    ld a, a
    adc h
    add b
    add [hl]
    adc b
    adc d
    add b
    sub c
    adc a
    ld e, a
    ld d, b
    nop
    adc b
    or e
    or d
    ld a, a
    and d
    and h
    xor l
    or e
    or c
    and b
    xor e
    ld a, a
    and d
    xor [hl]
    or c
    and h
    ld c, [hl]
    and [hl]
    xor e
    xor [hl]
    or [hl]
    or d
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    or d
    and h
    or l
    and h
    xor l
    ld a, a
    and d
    xor [hl]
    xor e
    xor [hl]
    or c
    or d
    ld a, a
    xor [hl]
    and l
    ld c, c
    or e
    and a
    and h
    ld a, a
    or c
    and b
    xor b
    xor l
    and c
    xor [hl]
    or [hl]
    add sp, $7f
    sub d
    xor [hl]
    xor h
    and h
    ld c, [hl]
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld a, a
    or l
    and b
    xor e
    or h
    and h
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    and d
    xor [hl]
    or c
    and h
    ld a, a
    and b
    or d
    ld a, a
    and b
    ld a, a
    and [hl]
    and h
    xor h
    ld e, a
    ld d, b
    nop
    add b
    ld a, a
    or d
    or e
    or c
    and b
    xor l
    and [hl]
    and h
    ld a, a
    or d
    and h
    and h
    and e
    ld a, a
    or [hl]
    and b
    or d
    ld c, [hl]
    xor a
    xor e
    and b
    xor l
    or e
    and h
    and e
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    and c
    and b
    and d
    xor d
    ld a, a
    and b
    or e
    ld a, a
    and c
    xor b
    or c
    or e
    and a
    add sp, $49
    sub e
    and a
    and h
    ld a, a
    xor a
    xor e
    and b
    xor l
    or e
    ld a, a
    or d
    xor a
    or c
    xor [hl]
    or h
    or e
    or d
    ld c, [hl]
    and b
    xor l
    and e
    ld a, a
    and [hl]
    or c
    xor [hl]
    or [hl]
    or d
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld c, [hl]
    or e
    and a
    xor b
    or d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld e, a
    ld d, b
    nop
    sub e
    and a
    and h
    ld a, a
    xor a
    xor e
    and b
    xor l
    or e
    ld a, a
    and c
    xor e
    xor [hl]
    xor [hl]
    xor h
    or d
    ld c, [hl]
    or [hl]
    and a
    and h
    xor l
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    or d
    ld c, [hl]
    and b
    and c
    or d
    xor [hl]
    or c
    and c
    xor b
    xor l
    and [hl]
    ld a, a
    or d
    xor [hl]
    xor e
    and b
    or c
    ld c, c
    and h
    xor l
    and h
    or c
    and [hl]
    cp b
    add sp, $7f
    adc b
    or e
    ld a, a
    or d
    or e
    and b
    cp b
    or d
    ld c, [hl]
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    or d
    and h
    and h
    xor d
    ld a, a
    or d
    or h
    xor l
    xor e
    xor b
    and [hl]
    and a
    or e
    ld e, a
    ld d, b
    nop
    sub e
    and a
    and h
    ld a, a
    or e
    and h
    xor l
    or e
    and b
    and d
    xor e
    and h
    or d
    ld a, a
    and b
    or c
    and h
    ld c, [hl]
    xor l
    xor [hl]
    or c
    xor h
    and b
    xor e
    xor e
    cp b
    ld a, a
    xor d
    and h
    xor a
    or e
    ld c, [hl]
    or d
    and a
    xor [hl]
    or c
    or e
    add sp, $7f
    adc [hl]
    xor l
    ld a, a
    and a
    or h
    xor l
    or e
    or d
    db $f4
    ld c, c
    or e
    and a
    and h
    cp b
    ld a, a
    and b
    or c
    and h
    ld a, a
    and h
    or a
    or e
    and h
    xor l
    and e
    and h
    and e
    ld c, [hl]
    or e
    xor [hl]
    ld a, a
    and h
    xor l
    or d
    xor l
    and b
    or c
    and h
    ld a, a
    and b
    xor l
    and e
    ld c, [hl]
    xor b
    xor h
    xor h
    xor [hl]
    and c
    xor b
    xor e
    xor b
    cp c
    and h
    ld a, a
    xor a
    or c
    and h
    cp b
    ld e, a
    ld d, b
    nop
    adc b
    or e
    or d
    ld a, a
    or e
    and b
    xor b
    xor e
    ld a, a
    and l
    xor b
    xor l
    ld c, [hl]
    and c
    xor b
    xor e
    xor e
    xor [hl]
    or [hl]
    or d
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    and b
    xor l
    ld c, [hl]
    and h
    xor e
    and h
    and [hl]
    and b
    xor l
    or e
    ld a, a
    and c
    and b
    xor e
    xor e
    or c
    xor [hl]
    xor [hl]
    xor h
    ld c, c
    and e
    or c
    and h
    or d
    or d
    db $f4
    ld a, a
    and [hl]
    xor b
    or l
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    or e
    ld c, [hl]
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
    ld a, a
    xor [hl]
    and l
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    sub [hl]
    and b
    or e
    and h
    or c
    ld a, a
    sub b
    or h
    and h
    and h
    xor l
    ld e, a
    ld d, b
    nop
    adc b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    and b
    or h
    or e
    or h
    xor h
    xor l
    ld c, [hl]
    or d
    xor a
    and b
    or [hl]
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    or d
    and h
    and b
    or d
    xor [hl]
    xor l
    db $f4
    ld c, [hl]
    or e
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
    or d
    and h
    and h
    xor l
    ld c, c
    or d
    or [hl]
    xor b
    xor h
    xor h
    xor b
    xor l
    and [hl]
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    db $e3
    ld c, [hl]
    and l
    or h
    xor e
    xor e
    cp b
    ld a, a
    or h
    xor a
    ld a, a
    or c
    xor b
    or l
    and h
    or c
    or d
    ld c, [hl]
    and b
    xor l
    and e
    ld a, a
    and d
    or c
    and h
    and h
    xor d
    or d
    ld e, a
    ld d, b
    nop
    adc b
    or e
    or d
    ld a, a
    and a
    xor [hl]
    xor [hl]
    or l
    and h
    or d
    ld a, a
    and b
    or c
    and h
    ld a, a
    rst $30
    or $4e
    or e
    xor b
    xor h
    and h
    or d
    ld a, a
    and a
    and b
    or c
    and e
    and h
    or c
    ld a, a
    or e
    and a
    and b
    xor l
    ld c, [hl]
    and e
    xor b
    and b
    xor h
    xor [hl]
    xor l
    and e
    or d
    add sp, $7f
    adc b
    or e
    ld a, a
    and d
    and b
    xor l
    ld c, c
    or e
    or c
    and b
    xor h
    xor a
    xor e
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
    ld c, [hl]
    and d
    xor [hl]
    xor h
    xor a
    xor e
    and h
    or e
    and h
    xor e
    cp b
    ld a, a
    and l
    xor e
    and b
    or e
    ld c, [hl]
    xor b
    xor l
    ld a, a
    xor e
    xor b
    or e
    or e
    xor e
    and h
    ld a, a
    or e
    xor b
    xor h
    and h
    ld e, a
    ld d, b
    nop
    sub l
    and h
    or c
    cp b
    ld a, a
    and d
    xor [hl]
    xor h
    xor a
    and h
    or e
    xor b
    or e
    xor b
    or l
    and h
    db $f4
    ld c, [hl]
    or e
    and a
    xor b
    or d
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
    ld c, [hl]
    and d
    and a
    and b
    or d
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
    ld c, c
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    or d
    ld a, a
    and l
    and b
    or d
    or e
    ld c, [hl]
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    and a
    xor [hl]
    xor a
    and h
    or d
    ld a, a
    xor [hl]
    and l
    ld c, [hl]
    or c
    and b
    and d
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    or e
    ld e, a
    ld d, b
    nop
    add c
    xor b
    or e
    and h
    or d
    ld a, a
    and b
    xor l
    cp b
    or e
    and a
    xor b
    xor l
    and [hl]
    ld c, [hl]
    or [hl]
    and a
    and h
    xor l
    ld a, a
    xor b
    or e
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    or d
    add sp, $4e
    sub d
    xor h
    and b
    xor e
    xor e
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or l
    and h
    or c
    cp b
    ld c, c
    or b
    or h
    xor b
    and d
    xor d
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    and b
    ld c, [hl]
    and d
    xor [hl]
    xor h
    xor h
    xor [hl]
    xor l
    ld a, a
    or d
    xor b
    and [hl]
    and a
    or e
    ld a, a
    xor b
    xor l
    ld c, [hl]
    xor h
    and b
    xor l
    cp b
    ld a, a
    xor a
    xor e
    and b
    and d
    and h
    or d
    ld e, a
    ld d, b
    nop
    adc b
    or e
    ld a, a
    or h
    or d
    and h
    or d
    ld a, a
    xor b
    or e
    or d
    ld a, a
    or [hl]
    and a
    xor b
    or d
    db $e3
    ld c, [hl]
    xor d
    and h
    or c
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    and b
    xor b
    xor l
    or e
    and b
    xor b
    xor l
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    and c
    and b
    xor e
    and b
    xor l
    and d
    and h
    add sp, $49
    adc b
    or e
    ld a, a
    and b
    xor a
    xor a
    and b
    or c
    and h
    xor l
    or e
    xor e
    cp b
    ld c, [hl]
    or d
    xor e
    xor [hl]
    or [hl]
    or d
    ld a, a
    and e
    xor [hl]
    or [hl]
    xor l
    ld a, a
    xor b
    and l
    ld c, [hl]
    or e
    and a
    and h
    cp b
    ld a, a
    and b
    or c
    and h
    ld a, a
    and d
    or h
    or e
    ld a, a
    xor [hl]
    and l
    and l
    ld e, a
    ld d, b
    nop
    add b
    xor l
    ld a, a
    and b
    and [hl]
    and [hl]
    or c
    and h
    or d
    or d
    xor b
    or l
    and h
    ld c, [hl]
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
    ld c, [hl]
    or b
    or h
    xor b
    and d
    xor d
    ld a, a
    or e
    xor [hl]
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    add sp, $49
    sub e
    and a
    and h
    ld a, a
    and a
    xor [hl]
    or c
    xor l
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    and a
    and h
    and b
    and e
    ld a, a
    or d
    and h
    and d
    or c
    and h
    or e
    and h
    or d
    ld a, a
    and b
    ld c, [hl]
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    and l
    or h
    xor e
    ld a, a
    or l
    and h
    xor l
    xor [hl]
    xor h
    ld e, a
    ld d, b
    nop
    sub e
    and a
    and h
    ld a, a
    and l
    and h
    xor h
    and b
    xor e
    and h
    cp l
    ld a, a
    and a
    xor [hl]
    or c
    xor l
    ld c, [hl]
    and e
    and h
    or l
    and h
    xor e
    xor [hl]
    xor a
    or d
    ld a, a
    or d
    xor e
    xor [hl]
    or [hl]
    xor e
    cp b
    add sp, $4e
    adc a
    or c
    and h
    and l
    and h
    or c
    or d
    ld a, a
    xor a
    and a
    cp b
    or d
    xor b
    and d
    and b
    xor e
    ld c, c
    and b
    or e
    or e
    and b
    and d
    xor d
    or d
    ld a, a
    or d
    or h
    and d
    and a
    ld a, a
    and b
    or d
    ld c, [hl]
    and d
    xor e
    and b
    or [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    xor l
    and e
    ld c, [hl]
    and c
    xor b
    or e
    xor b
    xor l
    and [hl]
    ld e, a
    ld d, b
    nop
    add l
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    xor b
    xor l
    ld a, a
    and l
    xor b
    and h
    xor e
    and e
    or d
    ld c, [hl]
    and b
    xor l
    and e
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
    add sp, $4e
    adc h
    xor b
    or d
    or e
    and b
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    xor h
    ld c, c
    and l
    xor [hl]
    or c
    ld a, a
    and c
    xor [hl]
    or h
    xor e
    and e
    and h
    or c
    or d
    db $f4
    ld c, [hl]
    xor a
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
    or d
    or e
    and h
    xor a
    ld c, [hl]
    xor [hl]
    or c
    ld a, a
    or e
    or c
    xor b
    xor a
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    xor h
    ld e, a
    ld d, b
    nop
    add b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or e
    and a
    and b
    or e
    ld c, [hl]
    and d
    xor [hl]
    xor l
    or d
    xor b
    or d
    or e
    or d
    ld a, a
    and h
    xor l
    or e
    xor b
    or c
    and h
    xor e
    cp b
    ld c, [hl]
    xor [hl]
    and l
    ld a, a
    xor a
    or c
    xor [hl]
    and [hl]
    or c
    and b
    xor h
    xor h
    xor b
    xor l
    and [hl]
    ld c, c
    and d
    xor [hl]
    and e
    and h
    add sp, $7f
    add d
    and b
    xor a
    and b
    and c
    xor e
    and h
    ld a, a
    xor [hl]
    and l
    ld c, [hl]
    xor h
    xor [hl]
    or l
    xor b
    xor l
    and [hl]
    ld a, a
    and l
    or c
    and h
    and h
    xor e
    cp b
    ld a, a
    xor b
    xor l
    ld c, [hl]
    and d
    cp b
    and c
    and h
    or c
    or d
    xor a
    and b
    and d
    and h
    ld e, a
    ld d, b
    nop
    add b
    ld a, a
    and l
    and h
    or c
    xor [hl]
    and d
    xor b
    xor [hl]
    or h
    or d
    db $f4
    ld a, a
    xor a
    or c
    and h
    db $e3
    ld c, [hl]
    and a
    xor b
    or d
    or e
    xor [hl]
    or c
    xor b
    and d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, [hl]
    or e
    and a
    and b
    or e
    ld a, a
    and [hl]
    xor [hl]
    and h
    or d
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    or e
    and a
    and h
    ld c, c
    and h
    xor l
    and h
    xor h
    cp b
    cp l
    ld a, a
    or e
    and a
    or c
    xor [hl]
    and b
    or e
    ld c, [hl]
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor b
    or e
    or d
    ld a, a
    or d
    and h
    or c
    or c
    and b
    or e
    and h
    and e
    ld c, [hl]
    or d
    and b
    or [hl]
    db $e3
    xor e
    xor b
    xor d
    and h
    ld a, a
    and l
    and b
    xor l
    and [hl]
    or d
    ld e, a
    ld d, b
    nop
    sub h
    or d
    and h
    or d
    ld a, a
    and b
    xor l
    or e
    xor b
    db $e3
    and [hl]
    or c
    and b
    or l
    xor b
    or e
    cp b
    ld c, [hl]
    or e
    xor [hl]
    ld a, a
    or d
    or e
    and b
    cp b
    ld a, a
    or d
    or h
    or d
    xor a
    and h
    xor l
    and e
    and h
    and e
    add sp, $4e
    add b
    xor a
    xor a
    and h
    and b
    or c
    or d
    ld a, a
    or [hl]
    xor b
    or e
    and a
    xor [hl]
    or h
    or e
    ld c, c
    or [hl]
    and b
    or c
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or h
    or d
    and h
    or d
    ld c, [hl]
    sub e
    add a
    sub h
    adc l
    add e
    add h
    sub c
    ld a, a
    sub [hl]
    add b
    sub l
    add h
    ld a, a
    and b
    xor l
    and e
    ld c, [hl]
    or d
    xor b
    xor h
    xor b
    xor e
    and b
    or c
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    or d
    ld e, a
    ld d, b
    nop
    adc [hl]
    and c
    or l
    xor b
    xor [hl]
    or h
    or d
    xor e
    cp b
    ld a, a
    xor a
    or c
    and h
    and l
    and h
    or c
    or d
    ld c, [hl]
    and a
    xor [hl]
    or e
    ld a, a
    xor a
    xor e
    and b
    and d
    and h
    or d
    add sp, $7f
    sub [hl]
    and a
    and h
    xor l
    ld c, [hl]
    xor b
    or e
    ld a, a
    or c
    and b
    xor b
    xor l
    or d
    db $f4
    ld a, a
    or d
    or e
    and h
    and b
    xor h
    ld c, c
    xor b
    or d
    ld a, a
    or d
    and b
    xor b
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    xor a
    xor [hl]
    or h
    or e
    ld c, [hl]
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    or e
    and a
    and h
    ld a, a
    or e
    xor b
    xor a
    ld a, a
    xor [hl]
    and l
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    or e
    and b
    xor b
    xor e
    ld e, a
    ld d, b
    nop
    add b
    and l
    or e
    and h
    or c
    ld a, a
    and c
    xor b
    or c
    or e
    and a
    db $f4
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    and c
    and b
    and d
    xor d
    ld a, a
    or d
    or [hl]
    and h
    xor e
    xor e
    or d
    ld a, a
    and b
    xor l
    and e
    ld c, [hl]
    and a
    and b
    or c
    and e
    and h
    xor l
    or d
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld a, a
    and b
    ld c, c
    or d
    and a
    and h
    xor e
    xor e
    add sp, $7f
    adc a
    xor [hl]
    or [hl]
    and h
    or c
    and l
    or h
    xor e
    xor e
    cp b
    ld c, [hl]
    or d
    xor a
    or c
    and b
    cp b
    or d
    ld a, a
    and l
    xor [hl]
    and b
    xor h
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    xor h
    xor [hl]
    or h
    or e
    and a
    ld e, a
    ld d, b
    nop
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    xor b
    or e
    ld a, a
    or d
    or [hl]
    xor b
    xor l
    and [hl]
    or d
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    and c
    or h
    or c
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and b
    xor b
    xor e
    db $f4
    ld c, [hl]
    xor b
    or e
    ld a, a
    and h
    xor e
    and h
    or l
    and b
    or e
    and h
    or d
    ld a, a
    or e
    and a
    and h
    ld c, c
    or e
    and h
    xor h
    xor a
    and h
    or c
    and b
    or e
    or h
    or c
    and h
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    or h
    xor l
    and c
    and h
    and b
    or c
    and b
    and c
    xor e
    cp b
    ld a, a
    and a
    xor b
    and [hl]
    and a
    ld c, [hl]
    xor e
    and h
    or l
    and h
    xor e
    or d
    ld e, a
    ld d, b
    nop
    adc [hl]
    and l
    or e
    and h
    xor l
    ld a, a
    and a
    xor b
    and e
    and h
    or d
    ld a, a
    xor b
    xor l
    ld c, [hl]
    or [hl]
    and b
    or e
    and h
    or c
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    or e
    and b
    xor e
    xor d
    ld c, [hl]
    or h
    xor l
    or [hl]
    and b
    or c
    cp b
    ld a, a
    xor a
    or c
    and h
    cp b
    add sp, $7f
    add l
    xor [hl]
    or c
    ld c, c
    or d
    or [hl]
    xor b
    xor h
    xor h
    xor b
    xor l
    and [hl]
    ld a, a
    and l
    and b
    or d
    or e
    db $f4
    ld a, a
    xor b
    or e
    ld c, [hl]
    xor h
    xor [hl]
    or l
    and h
    or d
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and h
    and b
    or c
    or d
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    xor h
    and b
    xor b
    xor l
    or e
    and b
    xor b
    xor l
    ld a, a
    and c
    and b
    xor e
    and b
    xor l
    and d
    and h
    ld e, a
    ld d, b
    nop
    sub d
    xor a
    xor b
    or e
    or d
    ld a, a
    and l
    xor b
    or c
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld c, [hl]
    xor b
    or d
    ld a, a
    and a
    xor [hl]
    or e
    ld a, a
    and h
    xor l
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    xor h
    and h
    xor e
    or e
    ld a, a
    and c
    xor [hl]
    or h
    xor e
    and e
    and h
    or c
    or d
    add sp, $49
    adc d
    xor l
    xor [hl]
    or [hl]
    xor l
    ld a, a
    or e
    xor [hl]
    ld a, a
    and d
    and b
    or h
    or d
    and h
    ld c, [hl]
    and l
    xor [hl]
    or c
    and h
    or d
    or e
    ld a, a
    and l
    xor b
    or c
    and h
    or d
    ld c, [hl]
    or h
    xor l
    xor b
    xor l
    or e
    and h
    xor l
    or e
    xor b
    xor [hl]
    xor l
    and b
    xor e
    xor e
    cp b
    ld e, a
    ld d, b
    nop
    add e
    or h
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    and e
    and b
    cp b
    db $f4
    ld c, [hl]
    xor b
    or e
    ld a, a
    xor d
    and h
    and h
    xor a
    or d
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and l
    and b
    and d
    and h
    ld c, [hl]
    and c
    or h
    or c
    xor b
    and h
    and e
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, c
    and [hl]
    or c
    xor [hl]
    or h
    xor l
    and e
    add sp, $7f
    add b
    or e
    ld a, a
    xor l
    xor b
    and [hl]
    and a
    or e
    db $f4
    ld c, [hl]
    xor b
    or e
    ld a, a
    or [hl]
    and b
    xor l
    and e
    and h
    or c
    or d
    ld a, a
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
    ld c, [hl]
    or d
    xor [hl]
    or [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    or e
    or d
    ld a, a
    or d
    and h
    and h
    and e
    or d
    ld e, a
    ld d, b
    nop
    sub e
    and a
    and h
    ld a, a
    and l
    xor e
    or h
    xor b
    and e
    ld a, a
    or e
    and a
    and b
    or e
    ld c, [hl]
    xor [hl]
    xor [hl]
    cp c
    and h
    or d
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    xor h
    xor [hl]
    or h
    or e
    and a
    ld a, a
    xor b
    or d
    xor l
    cp [hl]
    ld a, a
    and e
    or c
    xor [hl]
    xor [hl]
    xor e
    add sp, $49
    adc b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    and b
    ld a, a
    xor l
    and h
    and d
    or e
    and b
    or c
    ld c, [hl]
    or e
    and a
    and b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    or h
    or d
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    and b
    or e
    or e
    or c
    and b
    and d
    or e
    ld a, a
    xor a
    or c
    and h
    cp b
    ld e, a
    ld d, b
    nop
    sub e
    and a
    and h
    ld a, a
    xor e
    and b
    or c
    and [hl]
    and h
    or c
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    xor a
    and h
    or e
    and b
    xor e
    or d
    db $f4
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld c, [hl]
    or e
    xor [hl]
    or a
    xor b
    and d
    ld a, a
    xor a
    xor [hl]
    xor e
    xor e
    and h
    xor l
    ld a, a
    xor b
    or e
    ld c, c
    and d
    xor [hl]
    xor l
    or e
    and b
    xor b
    xor l
    or d
    add sp, $7f
    adc b
    or e
    or d
    ld a, a
    and c
    xor b
    and [hl]
    ld c, [hl]
    and a
    and h
    and b
    and e
    ld a, a
    xor b
    or d
    ld a, a
    and a
    and h
    and b
    or l
    cp b
    ld a, a
    and b
    xor l
    and e
    ld c, [hl]
    and a
    and b
    or c
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and a
    xor [hl]
    xor e
    and e
    ld a, a
    or h
    xor a
    ld e, a
    ld d, b
    nop
    add b
    ld a, a
    and d
    and b
    or c
    xor l
    xor b
    or l
    xor [hl]
    or c
    xor [hl]
    or h
    or d
    ld c, [hl]
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
    or c
    and b
    xor a
    or d
    ld c, [hl]
    and b
    xor l
    and e
    ld a, a
    and h
    and b
    or e
    or d
    ld a, a
    and c
    or h
    and [hl]
    or d
    add sp, $49
    adc b
    or e
    ld a, a
    or h
    or d
    and h
    or d
    ld a, a
    xor b
    or e
    or d
    ld a, a
    or c
    xor [hl]
    xor [hl]
    or e
    ld c, [hl]
    and l
    and h
    and h
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    xor [hl]
    and b
    xor d
    ld a, a
    or h
    xor a
    ld c, [hl]
    xor l
    and h
    and h
    and e
    and h
    and e
    ld a, a
    xor h
    xor [hl]
    xor b
    or d
    or e
    or h
    or c
    and h
    ld e, a
    ld d, b
    nop
    adc b
    or e
    ld a, a
    or d
    xor a
    xor b
    or e
    or d
    ld a, a
    xor [hl]
    or h
    or e
    ld c, [hl]
    adc a
    adc [hl]
    adc b
    sub d
    adc [hl]
    adc l
    adc a
    adc [hl]
    sub [hl]
    add e
    add h
    sub c
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    xor b
    xor h
    xor h
    xor [hl]
    and c
    xor b
    xor e
    xor b
    cp c
    and h
    ld a, a
    or e
    and a
    and h
    ld c, c
    and h
    xor l
    and h
    xor h
    cp b
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or e
    and a
    and h
    xor l
    ld c, [hl]
    and l
    xor b
    xor l
    xor b
    or d
    and a
    and h
    or d
    ld a, a
    xor b
    or e
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld c, [hl]
    and b
    ld a, a
    or d
    xor a
    or c
    and b
    cp b
    ld a, a
    xor [hl]
    and l
    ld a, a
    add b
    add d
    adc b
    add e
    ld e, a
    ld d, b
    nop
    sub d
    and b
    xor b
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor e
    xor b
    or l
    and h
    ld a, a
    xor b
    xor l
    ld c, [hl]
    and a
    or h
    and [hl]
    and h
    ld a, a
    and d
    xor [hl]
    xor e
    xor [hl]
    xor l
    xor b
    and h
    or d
    ld c, [hl]
    and e
    and h
    and h
    xor a
    ld a, a
    xor b
    xor l
    ld a, a
    xor c
    or h
    xor l
    and [hl]
    xor e
    and h
    or d
    db $f4
    ld c, c
    and b
    xor e
    or e
    and a
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    xor l
    xor [hl]
    ld a, a
    xor [hl]
    xor l
    and h
    ld c, [hl]
    and a
    and b
    or d
    ld a, a
    and h
    or l
    and h
    or c
    ld a, a
    or c
    and h
    or e
    or h
    or c
    xor l
    and h
    and e
    ld c, [hl]
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    or e
    and a
    and h
    or c
    and h
    ld e, a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
