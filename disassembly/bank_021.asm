; Disassembly of "Pokemon Red (UE) [S][!].gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $021", ROMX[$4000], BANK[$21]

    nop
    adc [hl]
    and a
    ld c, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    xor l
    and h
    or d
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
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    xor [hl]
    xor l
    ld a, a
    ei
    add l
    add sp, $4f
    adc b
    or e
    cp l
    ld a, a
    and b
    ld a, a
    xor e
    xor [hl]
    xor l
    and [hl]
    ld a, a
    or [hl]
    and b
    cp b
    ld d, l
    or e
    xor [hl]
    ld a, a
    xor h
    cp b
    ld a, a
    add c
    adc [hl]
    sub d
    sub d
    rst $20
    ld d, a
    nop
    sub d
    and a
    xor [hl]
    or [hl]
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
    ld c, a
    and b
    ld a, a
    xor e
    xor b
    or e
    or e
    xor e
    and h
    ld a, a
    or c
    and h
    or d
    xor a
    and h
    and d
    or e
    rst $20
    ld d, a
    nop
    add d
    xor [hl]
    or h
    and [hl]
    and a
    add sp, -$18
    add sp, $4f
    add d
    xor [hl]
    or h
    and [hl]
    and a
    add sp, -$18
    add sp, $58
    nop
    sub [hl]
    and a
    xor b
    and d
    and a
    ld a, a
    or c
    and h
    xor h
    xor b
    xor l
    and e
    or d
    ld a, a
    xor h
    and h
    add sp, $51
    adc d
    adc [hl]
    add l
    add l
    adc b
    adc l
    add [hl]
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
    sub [hl]
    add h
    add h
    sbc c
    adc b
    adc l
    add [hl]
    rst $20
    ld d, a
    nop
    adc b
    or e
    cp l
    ld a, a
    and b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    sub c
    add h
    adc a
    adc [hl]
    sub c
    sub e
    rst $20
    ld d, c
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    adc e
    add b
    add c
    ld c, a
    and d
    or c
    and h
    and b
    or e
    and h
    and e
    ld a, a
    adc a
    adc [hl]
    sub c
    sbc b
    add [hl]
    adc [hl]
    adc l
    db $f4
    ld d, l
    or e
    and a
    and h
    ld a, a
    and l
    xor b
    or c
    or d
    or e
    ld a, a
    or l
    xor b
    or c
    or e
    or h
    and b
    xor e
    ld d, l
    or c
    and h
    and b
    xor e
    xor b
    or e
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    adc b
    or e
    cp l
    ld a, a
    and b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    sub c
    add h
    adc a
    adc [hl]
    sub c
    sub e
    rst $20
    ld d, c
    adc [hl]
    or l
    and h
    or c
    ld a, a
    rst $30
    db $fc
    or $7f
    ld d, h
    adc h
    adc [hl]
    adc l
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
    and a
    and b
    or l
    and h
    ld d, l
    and c
    and h
    and h
    xor l
    ld a, a
    and d
    xor [hl]
    xor l
    and l
    xor b
    or c
    xor h
    and h
    and e
    add sp, $57
    nop
    adc b
    or e
    cp l
    ld a, a
    and b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    sub c
    add h
    adc a
    adc [hl]
    sub c
    sub e
    rst $20
    ld d, c
    ld a, [$547f]
    adc h
    adc [hl]
    adc l
    ld a, a
    and h
    or l
    xor [hl]
    xor e
    or l
    and h
    ld c, a
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
    or e
    or c
    and b
    and e
    and h
    and e
    ld d, l
    and c
    cp b
    ld a, a
    xor e
    xor b
    xor l
    xor d
    db $e3
    and d
    and b
    and c
    xor e
    and h
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub e
    or d
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
    or e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    xor [hl]
    or l
    and h
    or c
    ld a, a
    or e
    and a
    and h
    ld d, l
    and c
    or h
    xor b
    xor e
    and e
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    sub [hl]
    and h
    xor e
    xor e
    db $f4
    ld a, a
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
    ld c, a
    and c
    and b
    and d
    xor d
    ld a, a
    or e
    xor [hl]
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor d
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
    db $f4
    ld a, a
    xor [hl]
    and a
    ld a, a
    and e
    and h
    and b
    or c
    add sp, $4f
    add a
    and h
    xor e
    xor a
    ld a, a
    xor h
    and h
    ld a, a
    xor a
    xor e
    and h
    and b
    or d
    and h
    rst $20
    ld d, a
    nop
    sub [hl]
    and h
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    and h
    xor l
    and [hl]
    and b
    and [hl]
    and h
    and e
    rst $20
    ld c, a
    add a
    and h
    and a
    and h
    and a
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
    and a
    xor b
    xor h
    rst $20
    ld a, a
    add a
    and h
    cp l
    ld c, a
    or d
    or h
    and d
    and a
    ld a, a
    and b
    ld a, a
    and d
    xor [hl]
    or [hl]
    and b
    or c
    and e
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    and l
    and h
    and h
    xor e
    ld a, a
    or d
    xor [hl]
    ld a, a
    or d
    xor [hl]
    or c
    or c
    cp b
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    and a
    xor b
    xor h
    db $f4
    ld a, a
    adc b
    ld a, a
    and a
    and b
    or l
    and h
    ld d, l
    or e
    xor [hl]
    ld a, a
    xor h
    and b
    or c
    or c
    cp b
    ld a, a
    and a
    xor b
    xor h
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
    and d
    xor [hl]
    xor l
    or b
    or h
    and h
    or c
    ld d, l
    or e
    and a
    and h
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor e
    and e
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
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
    or c
    and b
    xor l
    ld c, a
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
    cp b
    xor [hl]
    or h
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    cp b
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
    or e
    and b
    or c
    and [hl]
    and h
    or e
    and h
    and e
    ld a, a
    sub d
    adc b
    adc e
    adc a
    add a
    ld d, l
    and l
    xor [hl]
    or c
    ld a, a
    xor [hl]
    or h
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    xor a
    or c
    xor [hl]
    and e
    or h
    and d
    or e
    or d
    add sp, $57
    nop
    add d
    xor [hl]
    xor h
    and h
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor d
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    sub d
    adc b
    adc e
    adc a
    add a
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
    and [hl]
    and h
    or e
    ld a, a
    xor [hl]
    xor e
    and e
    and h
    or c
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    and b
    xor h
    ld a, a
    xor [hl]
    xor l
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld a, a
    ld a, [$914f]
    adc [hl]
    add d
    adc d
    add h
    sub e
    ld a, a
    add c
    sub c
    adc [hl]
    sub e
    add a
    add h
    sub c
    sub d
    rst $20
    ld d, a
    nop
    add l
    xor e
    and b
    xor h
    and h
    ld c, a
    xor [hl]
    or h
    or e
    rst $20
    ld e, b
    nop
    adc l
    xor [hl]
    ld a, a
    xor h
    and b
    or e
    or e
    and h
    or c
    rst $20
    ld c, a
    adc h
    cp b
    ld a, a
    and c
    or c
    xor [hl]
    or e
    and a
    and h
    or c
    or d
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld d, l
    and b
    or l
    and h
    xor l
    and [hl]
    and h
    ld a, a
    xor h
    and h
    rst $20
    ld d, a
    nop
    sub e
    and a
    and b
    or e
    ld a, a
    or c
    xor [hl]
    or e
    or e
    and h
    xor l
    ld c, a
    adc a
    sub c
    add h
    sub d
    adc b
    add e
    add h
    adc l
    sub e
    rst $20
    ld d, c
    add a
    and h
    ld a, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    xor l
    cp [hl]
    ld a, a
    and a
    and b
    or l
    and h
    ld c, a
    or d
    and h
    xor l
    or e
    ld a, a
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
    sub e
    adc b
    adc d
    sub d
    adc b
    ld a, a
    add c
    sub c
    add b
    adc l
    add d
    add a
    rst $20
    ld d, a
    nop
    sub d
    and a
    xor [hl]
    xor [hl]
    or e
    rst $20
    ld e, b
    nop
    sub e
    adc b
    adc d
    sub d
    adc b
    ld a, a
    add c
    sub c
    add b
    adc l
    add d
    add a
    and $4f
    adc b
    or e
    cp l
    ld a, a
    xor b
    xor l
    ld a, a
    sub c
    or h
    or d
    or d
    xor b
    and b
    xor l
    ld d, l
    xor l
    xor [hl]
    ld a, a
    xor h
    and b
    xor l
    cp l
    ld a, a
    xor e
    and b
    xor l
    and e
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and e
    and b
    or c
    and h
    ld a, a
    and c
    and h
    or e
    or c
    and b
    cp b
    ld c, a
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
    and $57
    nop
    sbc b
    xor [hl]
    or h
    ld c, a
    or e
    or c
    and b
    xor b
    or e
    xor [hl]
    or c
    rst $20
    ld e, b
    nop
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or d
    or e
    and b
    xor l
    and e
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    xor c
    or h
    or d
    or e
    xor b
    and d
    and h
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, l
    and c
    and h
    or e
    or c
    and b
    cp b
    ld a, a
    and h
    or l
    xor b
    xor e
    rst $20
    ld d, a
    nop
    adc [hl]
    and a
    rst $20
    ld a, a
    add a
    xor b
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    db $e4
    and h
    ld c, a
    xor l
    xor [hl]
    or e
    ld a, a
    and b
    ld a, a
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub e
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    ld d, l
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
    or h
    or d
    and $55
    sub [hl]
    and a
    cp b
    db $f4
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
    ld d, c
    adc b
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or e
    xor [hl]
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
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    and l
    xor [hl]
    or c
    ld a, a
    or d
    and b
    or l
    xor b
    xor l
    and [hl]
    ld a, a
    or h
    or d
    add sp, $58
    nop
    adc b
    or e
    cp l
    ld a, a
    adc e
    add b
    adc a
    sub c
    add b
    sub d
    add sp, $7f
    adc b
    or e
    cp l
    ld c, a
    or l
    and h
    or c
    cp b
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
    or e
    add sp, $51
    sub [hl]
    and h
    ld a, a
    xor d
    and h
    xor a
    or e
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    xor l
    ld a, a
    xor [hl]
    or h
    or c
    ld c, a
    xor e
    and b
    and c
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    xor b
    or e
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld d, l
    and c
    and h
    ld a, a
    xor h
    or h
    and d
    and a
    ld a, a
    and c
    and h
    or e
    or e
    and h
    or c
    ld d, l
    xor [hl]
    and l
    and l
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
    ld d, c
    adc b
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
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld c, a
    and c
    and h
    ld a, a
    and b
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
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
    and l
    xor [hl]
    or c
    ld a, a
    adc e
    add b
    adc a
    sub c
    add b
    sub d
    rst $20
    ld d, c
    adc b
    or e
    cp l
    ld a, a
    and b
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld c, a
    or d
    or [hl]
    xor b
    xor h
    xor h
    and h
    or c
    add sp, $7f
    adc b
    or e
    cp h
    xor e
    ld d, l
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
    xor e
    xor b
    and l
    or e
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
    cp l
    ld c, a
    add c
    adc [hl]
    sub d
    sub d
    ld a, a
    or [hl]
    and h
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld d, l
    and c
    xor [hl]
    and b
    or c
    and e
    or c
    xor [hl]
    xor [hl]
    xor h
    rst $20
    ld a, a
    adc b
    or d
    ld a, a
    xor [hl]
    or h
    or c
    ld d, l
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
    adc [hl]
    adc d
    and $57
    nop
    sub d
    and b
    or l
    and h
    and e
    ld a, a
    and b
    or e
    ld a, a
    xor e
    and b
    or d
    or e
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
    or [hl]
    and b
    or d
    ld c, a
    and b
    and l
    or e
    and h
    or c
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc h
    add b
    sub d
    sub e
    add h
    sub c
    ld d, l
    add c
    add b
    adc e
    adc e
    ld a, a
    or [hl]
    and a
    xor b
    and d
    and a
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld d, l
    and d
    and b
    or e
    and d
    and a
    ld a, a
    and b
    xor l
    cp b
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
    ld a, a
    and d
    and b
    xor l
    and d
    and h
    xor e
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld c, a
    adc h
    add b
    sub d
    sub e
    add h
    sub c
    ld a, a
    add c
    add b
    adc e
    adc e
    ld d, l
    xor a
    or c
    xor [hl]
    xor c
    and h
    and d
    or e
    ld a, a
    and c
    and h
    and d
    and b
    or h
    or d
    and h
    ld d, l
    xor [hl]
    and l
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
    and c
    and b
    and e
    ld c, a
    xor b
    and l
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
    ld d, l
    or e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    xor [hl]
    or l
    and h
    or c
    ld a, a
    sub d
    adc b
    adc e
    adc a
    add a
    ld d, l
    xor [hl]
    or c
    ld a, a
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
    sub [hl]
    xor [hl]
    or [hl]
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and a
    and b
    or d
    and h
    and e
    ld c, a
    xor [hl]
    and l
    and l
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
    ld d, l
    and b
    xor e
    xor e
    ld a, a
    and c
    cp b
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    or d
    and h
    xor e
    and l
    and $57
    nop
    sbc b
    xor [hl]
    or h
    rst $20
    ld a, a
    adc b
    or e
    cp l
    ld a, a
    or c
    and h
    and b
    xor e
    xor e
    cp b
    ld c, a
    and e
    and b
    xor l
    and [hl]
    and h
    or c
    xor [hl]
    or h
    or d
    ld a, a
    and a
    and h
    or c
    and h
    rst $20
    ld d, l
    sbc b
    xor [hl]
    or h
    ld a, a
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
    ld d, l
    xor h
    and h
    and $7f
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    cp [hl]
    rst $20
    ld d, a
    nop
    sub d
    and b
    and l
    and h
    ld a, a
    and b
    or e
    ld a, a
    xor e
    and b
    or d
    or e
    rst $20
    ld c, a
    adc [hl]
    and a
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
    ld d, a
    nop
    adc [hl]
    and a
    ld a, a
    and a
    xor [hl]
    rst $20
    ld a, a
    adc b
    ld a, a
    or d
    xor h
    and h
    xor e
    xor e
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
    or c
    and b
    or e
    rst $20
    ld d, a
    nop
    adc e
    xor b
    and [hl]
    and a
    or e
    or d
    ld c, a
    xor [hl]
    or h
    or e
    rst $20
    ld e, b
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    or [hl]
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    and l
    xor b
    xor l
    and e
    ld a, a
    xor h
    cp b
    ld c, a
    add c
    adc [hl]
    sub d
    sub d
    ld a, a
    and c
    cp b
    ld a, a
    xor c
    or h
    or d
    or e
    ld d, l
    or d
    and d
    or h
    or c
    or c
    cp b
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
    rst $20
    ld d, a
    nop
    add a
    and h
    and a
    and h
    and a
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    xor h
    xor b
    or d
    or e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    xor h
    and h
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    and b
    ld a, a
    sub d
    adc b
    adc e
    adc a
    add a
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor d
    and h
    or c
    and $57
    nop
    adc b
    push hl
    ld c, a
    and e
    xor [hl]
    xor l
    and h
    rst $20
    ld e, b
    nop
    add e
    and h
    or d
    xor a
    xor b
    or e
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    and b
    and [hl]
    and h
    db $f4
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    or c
    and h
    ld a, a
    and b
    ld a, a
    or d
    xor d
    xor b
    xor e
    xor e
    and h
    and e
    ld d, l
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
    ld a, a
    and b
    xor h
    ld a, a
    xor [hl]
    xor l
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld a, a
    ld a, [$914f]
    adc [hl]
    add d
    adc d
    add h
    sub e
    ld a, a
    add c
    sub c
    adc [hl]
    sub e
    add a
    add h
    sub c
    sub d
    rst $20
    ld d, a
    nop
    add b
    and b
    and d
    xor d
    rst $20
    ld c, a
    add c
    or c
    xor [hl]
    or e
    and a
    and h
    or c
    or d
    db $f4
    ld a, a
    adc b
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    rst $20
    ld e, b
    nop
    add e
    xor [hl]
    and h
    or d
    xor l
    cp [hl]
    ld a, a
    xor h
    and b
    or e
    or e
    and h
    or c
    add sp, $4f
    adc h
    cp b
    ld a, a
    and c
    or c
    xor [hl]
    or e
    and a
    and h
    or c
    or d
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld d, l
    or c
    and h
    xor a
    and b
    cp b
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    and b
    or l
    xor [hl]
    or c
    rst $20
    ld d, a
    nop
    add b
    ld a, a
    and d
    and a
    xor b
    xor e
    and e
    ld a, a
    xor b
    xor l
    or e
    or c
    or h
    and e
    and h
    or c
    and $4f
    sub e
    and a
    and b
    or e
    ld a, a
    xor h
    or h
    or d
    or e
    ld a, a
    and c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, a
    nop
    add l
    xor b
    xor l
    and h
    rst $20
    ld c, a
    adc b
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    rst $20
    ld e, b
    nop
    add [hl]
    xor [hl]
    ld a, a
    xor [hl]
    xor l
    ld a, a
    and a
    xor [hl]
    xor h
    and h
    ld c, a
    and c
    and h
    and l
    xor [hl]
    or c
    and h
    ld a, a
    xor h
    cp b
    ld a, a
    add c
    adc [hl]
    sub d
    sub d
    ld d, l
    and [hl]
    and h
    or e
    or d
    ld a, a
    or e
    xor b
    and d
    xor d
    and h
    and e
    ld a, a
    xor [hl]
    and l
    and l
    rst $20
    ld d, a
    nop
    ld d, e
    sbc h
    ld a, a
    sub [hl]
    and a
    and b
    or e
    ld c, a
    xor d
    and h
    xor a
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    ld d, d
    and $57
    nop
    ld d, e
    sbc h
    ld a, a
    add a
    and b
    and a
    and b
    and a
    and b
    rst $20
    ld c, a
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
    cp b
    xor [hl]
    or h
    cp e
    ld d, l
    or e
    or h
    or c
    xor l
    ld a, a
    or h
    xor a
    ld a, a
    xor b
    and l
    ld a, a
    adc b
    ld d, l
    or [hl]
    and b
    xor b
    or e
    and h
    and e
    ld a, a
    and a
    and h
    or c
    and h
    rst $20
    ld d, c
    adc b
    ld a, a
    and [hl]
    or h
    and h
    or d
    or d
    ld a, a
    sub e
    add h
    add b
    adc h
    ld c, a
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub e
    ld a, a
    or d
    xor e
    xor [hl]
    or [hl]
    and h
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, l
    and e
    xor [hl]
    or [hl]
    xor l
    rst $20
    ld a, a
    adc l
    xor [hl]
    or e
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    adc b
    ld d, l
    and d
    and b
    or c
    and h
    rst $20
    ld d, c
    adc b
    ld a, a
    or d
    and b
    or [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor b
    xor l
    ld c, a
    sub d
    add b
    add l
    add l
    sub c
    adc [hl]
    adc l
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    adc b
    ld d, l
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
    or d
    and h
    and h
    ld a, a
    xor b
    and l
    ld d, l
    cp b
    xor [hl]
    or h
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    and c
    and h
    or e
    or e
    and h
    or c
    rst $20
    ld d, a
    nop
    adc [hl]
    and a
    ld a, a
    and a
    xor [hl]
    rst $20
    ld c, a
    sub d
    xor [hl]
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    or c
    and h
    ld a, a
    or c
    and h
    and b
    and e
    cp b
    ld d, l
    and l
    xor [hl]
    or c
    ld a, a
    add c
    adc [hl]
    sub d
    sub d
    ld a, a
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub e
    rst $20
    ld e, b
    nop
    ld d, e
    sbc h
    ld a, a
    add a
    xor [hl]
    or [hl]
    ld a, a
    and d
    and b
    xor l
    ld c, a
    adc b
    ld a, a
    xor a
    or h
    or e
    ld a, a
    or e
    and a
    xor b
    or d
    and $51
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
    or e
    xor [hl]
    ld a, a
    xor a
    xor e
    and b
    cp b
    ld d, l
    or [hl]
    xor b
    or e
    and a
    ld a, a
    or h
    or d
    ld a, a
    and c
    xor b
    and [hl]
    ld a, a
    and c
    xor [hl]
    cp b
    or d
    rst $20
    ld e, b
    nop
    sub [hl]
    and h
    xor e
    xor e
    db $f4
    ld a, a
    ld d, d
    rst $20
    ld d, c
    adc b
    push hl
    ld a, a
    xor h
    xor [hl]
    or l
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or h
    xor a
    ld c, a
    and b
    xor l
    and e
    ld a, a
    and b
    and a
    and h
    and b
    and e
    rst $20
    ld d, c
    add c
    cp b
    ld a, a
    and d
    and a
    and h
    and d
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    xor h
    cp b
    ld c, a
    ld d, h
    add e
    add h
    sub a
    db $f4
    ld a, a
    adc b
    push hl
    ld d, l
    or d
    or e
    and b
    or c
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    and h
    and h
    ld d, l
    or [hl]
    and a
    and b
    or e
    cp l
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
    and a
    xor [hl]
    or [hl]
    ld a, a
    or e
    and a
    and h
    cp b
    ld a, a
    and h
    or l
    xor [hl]
    xor e
    or l
    and h
    rst $20
    ld d, c
    adc b
    push hl
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
    and a
    and h
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
    or e
    xor [hl]
    ld a, a
    and c
    xor [hl]
    xor [hl]
    or e
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    or e
    and a
    and h
    ld d, l
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
    rst $20
    ld d, c
    adc b
    cp h
    xor e
    ld a, a
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    or e
    and a
    and h
    ld c, a
    or [hl]
    xor [hl]
    or c
    xor e
    and e
    cp l
    ld a, a
    xor h
    xor [hl]
    or d
    or e
    ld d, l
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
    or c
    and b
    xor b
    xor l
    and h
    or c
    rst $20
    ld d, c
    ld d, d
    db $f4
    ld a, a
    or [hl]
    and h
    xor e
    xor e
    ld c, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor e
    or h
    and d
    xor d
    ld a, a
    or e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, l
    add e
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    or d
    or [hl]
    and h
    and b
    or e
    ld a, a
    xor b
    or e
    rst $20
    ld d, l
    sub d
    xor h
    and h
    xor e
    xor e
    ld a, a
    cp b
    and b
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    or [hl]
    xor [hl]
    xor l
    and e
    and h
    or c
    ld a, a
    xor b
    and l
    ld a, a
    sub d
    adc b
    adc e
    adc a
    add a
    ld c, a
    xor b
    or d
    ld a, a
    and l
    xor b
    xor l
    xor b
    or d
    and a
    and h
    and e
    add sp, -$18
    add sp, $57
    nop
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
    or d
    and b
    or l
    xor b
    xor l
    and [hl]
    ld c, a
    or h
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
    and b
    or d
    ld a, a
    and l
    and b
    or c
    ld a, a
    and b
    or d
    ld c, a
    cp b
    xor [hl]
    or h
    cp h
    xor e
    ld a, a
    and [hl]
    xor [hl]
    rst $20
    ld d, a
    nop
    adc l
    xor [hl]
    or e
    ld c, a
    and h
    xor l
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    and [hl]
    or c
    xor b
    or e
    rst $20
    ld e, b
    nop
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and e
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    or e
    or h
    or c
    xor l
    ld c, a
    and c
    and b
    and d
    xor d
    db $f4
    ld a, a
    adc b
    cp h
    xor e
    ld a, a
    and d
    and b
    xor e
    xor e
    ld d, l
    and l
    xor [hl]
    or c
    ld a, a
    and c
    and b
    and d
    xor d
    or h
    xor a
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    db $e4
    and h
    ld a, a
    and d
    and b
    or h
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    or h
    or d
    ld c, a
    xor a
    or c
    xor [hl]
    and c
    xor e
    and h
    xor h
    or d
    rst $20
    ld d, a
    nop
    add a
    or h
    and a
    and $4f
    adc b
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    and $58
    nop
    sub d
    xor [hl]
    db $f4
    ld a, a
    or [hl]
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
    ld c, a
    or e
    and a
    xor b
    xor l
    xor d
    ld a, a
    xor [hl]
    and l
    ld a, a
    sub d
    adc b
    adc e
    adc a
    add a
    ld d, l
    add c
    sub h
    adc b
    adc e
    add e
    adc b
    adc l
    add [hl]
    cp l
    ld a, a
    xor h
    and b
    cp c
    and h
    and $57
    nop
    adc b
    ld a, a
    and b
    xor h
    ld a, a
    xor [hl]
    xor l
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld a, a
    ld a, [$914f]
    adc [hl]
    add d
    adc d
    add h
    sub e
    ld a, a
    add c
    sub c
    adc [hl]
    sub e
    add a
    add h
    sub c
    sub d
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    xor [hl]
    xor [hl]
    rst $20
    ld c, a
    adc [hl]
    and a
    ld a, a
    and c
    or c
    xor [hl]
    or e
    and a
    and h
    or c
    or d
    rst $20
    ld e, b
    nop
    adc b
    cp h
    xor e
    ld a, a
    xor e
    and h
    and b
    or l
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or h
    xor a
    ld c, a
    or e
    xor [hl]
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
    or d
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    or e
    xor b
    or c
    and h
    and e
    rst $20
    ld c, a
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
    or e
    and b
    xor d
    and h
    ld a, a
    and b
    ld d, l
    or b
    or h
    xor b
    and d
    xor d
    ld a, a
    xor l
    and b
    xor a
    rst $20
    ld e, b
    nop
    add e
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    and [hl]
    xor b
    or l
    and h
    ld a, a
    or h
    xor a
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
    or d
    xor [hl]
    ld c, a
    xor h
    or h
    and d
    and a
    rst $20
    ld d, a
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
    ld a, a
    or d
    and h
    and h
    xor h
    ld c, a
    or e
    xor [hl]
    ld a, a
    and b
    and e
    xor [hl]
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    db $f4
    ld a, a
    xor d
    xor b
    and e
    rst $20
    ld d, a
    nop
    add [hl]
    and a
    and b
    and b
    and b
    and a
    rst $20
    ld e, b
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
    or d
    or e
    and b
    or c
    or e
    and h
    and e
    ld c, a
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
    ld a, a
    and b
    or e
    ld d, l
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    and b
    and [hl]
    and h
    add sp, -$18
    add sp, $57
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
    ld a, a
    and a
    and b
    or l
    and h
    ld c, a
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
    rst $20
    ld a, a
    adc b
    ld d, l
    and d
    and b
    xor l
    ld a, a
    xor l
    and b
    xor b
    xor e
    ld a, a
    or e
    and a
    and h
    xor h
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    ld c, a
    and a
    and b
    xor h
    xor h
    and h
    or c
    and h
    and e
    ld a, a
    xor h
    and h
    rst $20
    ld e, b
    nop
    add h
    or a
    xor a
    xor e
    xor [hl]
    xor b
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    or [hl]
    and h
    and b
    xor d
    ld c, a
    or d
    xor a
    xor [hl]
    or e
    or d
    ld a, a
    and e
    xor [hl]
    and h
    or d
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor d
    rst $20
    ld d, l
    sub e
    and a
    xor b
    xor l
    xor d
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld d, l
    and h
    xor e
    and h
    xor h
    and h
    xor l
    or e
    ld a, a
    or e
    cp b
    xor a
    and h
    or d
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    and b
    xor h
    ld a, a
    xor [hl]
    xor l
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld a, a
    ld a, [$914f]
    adc [hl]
    add d
    adc d
    add h
    sub e
    ld a, a
    add c
    sub c
    adc [hl]
    sub e
    add a
    add h
    sub c
    sub d
    rst $20
    ld d, a
    nop
    sub [hl]
    and b
    or c
    and [hl]
    rst $20
    ld c, a
    add c
    or c
    xor [hl]
    or e
    and a
    and h
    or c
    or d
    db $f4
    ld a, a
    adc b
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    rst $20
    ld e, b
    nop
    adc h
    cp b
    ld a, a
    and c
    or c
    xor [hl]
    or e
    and a
    and h
    or c
    or d
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld c, a
    and b
    or l
    and h
    xor l
    and [hl]
    and h
    ld a, a
    xor h
    and h
    rst $20
    ld d, a
    nop
    sub [hl]
    and b
    and b
    and b
    and b
    and b
    rst $20
    ld d, l
    adc b
    push hl
    ld a, a
    or d
    and d
    and b
    or c
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
    ld a, a
    xor d
    and h
    and h
    xor a
    ld a, a
    or b
    or h
    xor b
    and h
    or e
    ld c, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    xor h
    cp b
    ld a, a
    and d
    or c
    cp b
    xor b
    xor l
    and [hl]
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
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld c, a
    rst $30
    or $85
    rst $20
    ld a, a
    sub d
    xor [hl]
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor [hl]
    and l
    ld d, l
    cp b
    xor [hl]
    or h
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor c
    xor [hl]
    xor b
    xor l
    ld a, a
    xor h
    and h
    rst $20
    ld d, a
    nop
    adc b
    push hl
    ld c, a
    or d
    or e
    or h
    xor l
    xor l
    and h
    and e
    rst $20
    ld e, b
    nop
    adc l
    xor b
    and d
    and h
    ld a, a
    or e
    or c
    cp b
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    or e
    and a
    and h
    ld c, a
    and c
    xor [hl]
    and b
    or c
    and e
    or c
    xor [hl]
    xor [hl]
    xor h
    ld a, a
    xor b
    or d
    ld a, a
    or h
    xor a
    ld d, l
    xor [hl]
    xor l
    and h
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    and l
    xor e
    xor [hl]
    xor [hl]
    or c
    rst $20
    ld d, a
    nop
    add h
    xor l
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    xor [hl]
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld c, a
    or d
    xor b
    xor e
    xor e
    cp b
    ld a, a
    and [hl]
    and b
    xor h
    and h
    or d
    rst $20
    ld d, a
    nop
    adc l
    xor [hl]
    ld c, a
    and d
    xor [hl]
    xor l
    or e
    xor b
    xor l
    or h
    and h
    or d
    ld a, a
    xor e
    and h
    and l
    or e
    rst $20
    ld e, b
    nop
    add b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or d
    and b
    or e
    xor b
    or d
    and l
    xor b
    and h
    and e
    ld c, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and c
    and h
    and b
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    xor h
    and h
    and $55
    sub e
    and a
    and h
    xor l
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    xor [hl]
    xor l
    ld a, a
    and a
    xor [hl]
    xor h
    and h
    rst $20
    ld d, a
    nop
    adc a
    sub c
    add h
    sub d
    adc b
    add e
    add h
    adc l
    sub e
    sbc h
    ld a, a
    sub e
    and a
    and b
    xor l
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
    or d
    and b
    or l
    xor b
    xor l
    and [hl]
    ld d, l
    sub d
    adc b
    adc e
    adc a
    add a
    rst $20
    ld d, c
    adc b
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
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
    and [hl]
    and h
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or d
    and b
    or l
    and h
    and e
    ld d, l
    or h
    or d
    ld a, a
    xor b
    xor l
    ld a, a
    xor [hl]
    or h
    or c
    ld a, a
    xor h
    xor [hl]
    xor h
    and h
    xor l
    or e
    ld d, l
    xor [hl]
    and l
    ld a, a
    xor a
    and h
    or c
    xor b
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
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and b
    xor l
    xor d
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor b
    xor l
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    or [hl]
    and b
    cp b
    rst $20
    ld d, c
    add c
    and h
    and d
    and b
    or h
    or d
    and h
    ld a, a
    adc b
    ld a, a
    and b
    xor h
    ld a, a
    or c
    xor b
    and d
    and a
    db $f4
    ld c, a
    adc b
    ld a, a
    and d
    and b
    xor l
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
    and b
    xor l
    cp b
    or e
    and a
    xor b
    xor l
    and [hl]
    rst $20
    ld d, c
    add a
    and h
    or c
    and h
    db $f4
    ld a, a
    xor h
    and b
    cp b
    and c
    and h
    ld a, a
    or e
    and a
    xor b
    or d
    ld c, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and e
    xor [hl]
    rst $20
    ld e, b
    nop
    ld d, d
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    and b
    ld c, a
    ld d, b
    ld bc, $cf4b
    nop
    rst $20
    ld d, b
    ld d, b
    nop
    adc a
    sub c
    add h
    sub d
    adc b
    add e
    add h
    adc l
    sub e
    sbc h
    ld a, a
    sbc b
    xor [hl]
    or h
    ld c, a
    and d
    and b
    xor l
    cp [hl]
    ld a, a
    and c
    or h
    cp b
    ld a, a
    or e
    and a
    and b
    or e
    ld d, l
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
    adc b
    or e
    cp l
    ld a, a
    xor [hl]
    or h
    or c
    ld a, a
    or d
    and h
    and d
    or c
    and h
    or e
    ld c, a
    xor a
    or c
    xor [hl]
    or e
    xor [hl]
    or e
    cp b
    xor a
    and h
    ld a, a
    adc h
    add b
    sub d
    sub e
    add h
    sub c
    ld d, l
    add c
    add b
    adc e
    adc e
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
    and d
    and b
    or e
    and d
    and a
    ld a, a
    and b
    xor l
    cp b
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
    xor [hl]
    or h
    or e
    ld d, l
    and l
    and b
    xor b
    xor e
    rst $20
    ld d, c
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
    and c
    and h
    ld c, a
    or b
    or h
    xor b
    and h
    or e
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    or h
    or d
    xor b
    xor l
    and [hl]
    ld d, l
    xor b
    or e
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
    sub d
    add h
    add d
    sub c
    add h
    sub e
    add b
    sub c
    sbc b
    sbc h
    ld a, a
    sub e
    and a
    and b
    xor l
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
    or c
    and h
    or d
    and d
    or h
    xor b
    xor l
    and [hl]
    ld d, l
    and b
    xor e
    xor e
    ld a, a
    xor [hl]
    and l
    ld a, a
    or h
    or d
    rst $20
    ld d, c
    sub [hl]
    and h
    ld a, a
    and b
    and e
    xor h
    xor b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld c, a
    and d
    xor [hl]
    or h
    or c
    and b
    and [hl]
    and h
    add sp, $57
    nop
    add b
    and a
    ld a, a
    ld d, d
    rst $20
    ld c, a
    sub d
    xor [hl]
    ld a, a
    or [hl]
    and h
    ld a, a
    xor h
    and h
    and h
    or e
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
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
    and b
    xor l
    and e
    ld c, a
    adc b
    ld a, a
    and b
    or c
    and h
    ld a, a
    and e
    xor b
    or d
    and d
    or h
    or d
    or d
    xor b
    xor l
    and [hl]
    ld d, l
    and b
    ld a, a
    or l
    xor b
    or e
    and b
    xor e
    ld a, a
    and c
    or h
    or d
    xor b
    xor l
    and h
    or d
    or d
    ld d, l
    xor a
    or c
    xor [hl]
    xor a
    xor [hl]
    or d
    xor b
    or e
    xor b
    xor [hl]
    xor l
    add sp, $51
    adc d
    and h
    and h
    xor a
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor l
    xor [hl]
    or d
    and h
    ld c, a
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    and [hl]
    or c
    xor [hl]
    or [hl]
    xor l
    db $e3
    or h
    xor a
    ld d, l
    xor h
    and b
    or e
    or e
    and h
    or c
    or d
    add sp, -$18
    add sp, $51
    adc [hl]
    or c
    db $f4
    ld a, a
    and h
    or a
    xor a
    and h
    or c
    xor b
    and h
    xor l
    and d
    and h
    ld a, a
    and b
    ld c, a
    or [hl]
    xor [hl]
    or c
    xor e
    and e
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor a
    and b
    xor b
    xor l
    rst $20
    ld d, a
    nop
    add b
    or c
    or c
    and [hl]
    and a
    rst $20
    rst $20
    ld c, a
    adc b
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    rst $20
    and $58
    nop
    add c
    xor e
    and b
    or d
    or e
    ld a, a
    xor b
    or e
    ld a, a
    and b
    xor e
    xor e
    rst $20
    ld c, a
    sbc b
    xor [hl]
    or h
    ld a, a
    or c
    or h
    xor b
    xor l
    and h
    and e
    ld a, a
    xor [hl]
    or h
    or c
    ld d, l
    xor a
    xor e
    and b
    xor l
    or d
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    sub d
    adc b
    adc e
    adc a
    add a
    rst $20
    ld d, c
    add c
    or h
    or e
    db $f4
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
    ld c, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    xor l
    and h
    or l
    and h
    or c
    ld a, a
    and l
    and b
    xor e
    xor e
    rst $20
    ld d, c
    ld d, d
    rst $20
    ld a, a
    adc l
    and h
    or l
    and h
    or c
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
    and b
    or e
    ld a, a
    and b
    xor e
    xor e
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and h
    or a
    xor b
    or d
    or e
    ld d, l
    and l
    xor [hl]
    or c
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
    ld d, c
    adc b
    ld a, a
    xor h
    or h
    or d
    or e
    ld a, a
    and [hl]
    xor [hl]
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
    or c
    and h
    or e
    or h
    or c
    xor l
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
    ld c, a
    add e
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    rst $20
    ld d, a
    nop
    add e
    xor [hl]
    xor l
    cp [hl]
    add sp, -$18
    add sp, $4f
    adc a
    xor e
    and h
    and b
    or d
    and h
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
    or [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld c, a
    or d
    and h
    and h
    ld a, a
    xor h
    cp b
    ld a, a
    add c
    adc [hl]
    sub d
    sub d
    and $57
    nop
    add a
    and b
    xor e
    or e
    rst $20
    ld a, a
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
    ld c, a
    and b
    xor l
    ld a, a
    and b
    xor a
    xor a
    xor [hl]
    xor b
    xor l
    or e
    xor h
    and h
    xor l
    or e
    ld d, l
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor h
    cp b
    ld a, a
    add c
    adc [hl]
    sub d
    sub d
    and $57
    nop
    add [hl]
    and b
    and b
    and a
    rst $20
    ld c, a
    add e
    and h
    xor h
    xor [hl]
    xor e
    xor b
    or d
    and a
    and h
    and e
    rst $20
    ld e, b
    nop
    sub [hl]
    and b
    or e
    and d
    and a
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    or d
    or e
    and h
    xor a
    db $f4
    ld c, a
    xor h
    cp b
    ld a, a
    add c
    adc [hl]
    sub d
    sub d
    ld a, a
    xor e
    xor b
    xor d
    and h
    or d
    ld a, a
    and a
    xor b
    or d
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    xor h
    xor [hl]
    xor l
    xor b
    or e
    xor [hl]
    or c
    ld a, a
    and a
    and b
    or d
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor b
    or e
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    and d
    and b
    xor l
    cp [hl]
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    xor [hl]
    or h
    or e
    rst $20
    ld c, a
    sub e
    and a
    xor b
    or d
    ld a, a
    xor [hl]
    xor e
    and e
    ld a, a
    xor a
    xor e
    and b
    and d
    and h
    ld a, a
    xor b
    or d
    ld d, l
    xor [hl]
    xor l
    and h
    ld a, a
    and c
    xor b
    and [hl]
    ld a, a
    xor a
    or h
    cp c
    cp c
    xor e
    and h
    rst $20
    ld d, a
    nop
    adc [hl]
    and a
    ld a, a
    xor l
    xor [hl]
    rst $20
    ld c, a
    adc h
    cp b
    ld a, a
    and c
    and b
    and [hl]
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    or e
    rst $20
    ld e, b
    nop
    sub d
    or [hl]
    xor b
    or e
    and d
    and a
    and h
    or d
    ld a, a
    xor [hl]
    xor a
    and h
    xor l
    ld a, a
    and b
    xor l
    and e
    ld c, a
    and d
    xor e
    xor [hl]
    or d
    and h
    ld a, a
    and b
    xor e
    or e
    and h
    or c
    xor l
    and b
    or e
    xor b
    xor l
    and [hl]
    ld d, l
    or d
    and h
    or e
    or d
    ld a, a
    xor [hl]
    and l
    ld a, a
    and e
    xor [hl]
    xor [hl]
    or c
    or d
    rst $20
    ld d, a
    nop
    add e
    xor b
    and b
    or c
    cp b
    sbc h
    ld a, a
    adc c
    or h
    xor e
    cp b
    ld a, a
    ei
    ld c, a
    add [hl]
    or h
    cp b
    and b
    xor l
    and b
    db $f4
    ld d, l
    sub d
    xor [hl]
    or h
    or e
    and a
    ld a, a
    add b
    xor h
    and h
    or c
    xor b
    and d
    and b
    ld d, c
    add b
    ld a, a
    xor l
    and h
    or [hl]
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
    ld a, a
    and e
    and h
    and h
    xor a
    ld d, l
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor c
    or h
    xor l
    and [hl]
    xor e
    and h
    add sp, $57
    nop
    add e
    xor b
    and b
    or c
    cp b
    sbc h
    ld a, a
    adc c
    or h
    xor e
    cp b
    ld a, a
    rst $30
    or $4f
    sub [hl]
    and h
    ld a, a
    and d
    and a
    or c
    xor b
    or d
    or e
    and h
    xor l
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld d, l
    xor l
    and h
    or [hl]
    xor e
    cp b
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
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    db $f4
    ld a, a
    adc h
    add h
    sub [hl]
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
    sub e
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
    ld c, a
    xor e
    xor b
    xor d
    and h
    db $f4
    ld a, a
    and a
    or h
    and [hl]
    and h
    rst $20
    ld d, a
    nop
    add b
    cp b
    and b
    and a
    rst $20
    ld e, b
    nop
    adc b
    ld a, a
    or [hl]
    xor [hl]
    xor l
    and e
    and h
    or c
    ld a, a
    or [hl]
    and a
    and h
    or c
    and h
    ld c, a
    xor h
    cp b
    ld a, a
    xor a
    and b
    or c
    or e
    xor l
    and h
    or c
    ld a, a
    or [hl]
    and h
    xor l
    or e
    add sp, $57
    nop
    adc h
    cp b
    ld a, a
    xor h
    and h
    xor l
    or e
    xor [hl]
    or c
    ld a, a
    xor [hl]
    xor l
    and d
    and h
    ld c, a
    xor e
    xor b
    or l
    and h
    and e
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $57
    nop
    sub [hl]
    and a
    and h
    or [hl]
    rst $20
    ld c, a
    adc [hl]
    or l
    and h
    or c
    or [hl]
    and a
    and h
    xor e
    xor h
    xor b
    xor l
    and [hl]
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
    db $e4
    and h
    ld a, a
    or d
    or e
    or h
    and d
    xor d
    and $4f
    sub e
    or c
    cp b
    ld a, a
    xor c
    or h
    xor h
    xor a
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    and l
    and l
    ld d, l
    xor [hl]
    or l
    and h
    or c
    ld a, a
    or e
    and a
    and h
    or c
    and h
    rst $20
    ld d, a
    nop
    add e
    xor b
    and b
    or c
    cp b
    sbc h
    ld a, a
    add l
    and h
    and c
    add sp, $7f
    db $fc
    ld c, a
    adc h
    add h
    sub [hl]
    ld a, a
    and [hl]
    and b
    or l
    and h
    ld a, a
    and c
    xor b
    or c
    or e
    and a
    add sp, $51
    sub [hl]
    and h
    ld a, a
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
    xor l
    and h
    or [hl]
    and c
    xor [hl]
    or c
    xor l
    ld a, a
    adc h
    add h
    sub [hl]
    sub e
    sub [hl]
    adc [hl]
    add sp, $57
    nop
    sub h
    and a
    db $e3
    xor [hl]
    and a
    add sp, $7f
    sub [hl]
    and a
    and h
    or c
    and h
    ld a, a
    and b
    xor h
    ld c, a
    adc b
    ld a, a
    xor l
    xor [hl]
    or [hl]
    and $57
    nop
    add b
    or [hl]
    xor [hl]
    xor [hl]
    and a
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
    ld a, a
    and l
    xor b
    xor l
    and e
    ld a, a
    or d
    or e
    or h
    and l
    and l
    ld c, a
    xor e
    cp b
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
    add sp, $57
    nop
    sub e
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
    ld c, a
    xor b
    and e
    and h
    and b
    xor e
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and b
    ld a, a
    xor e
    and b
    and c
    add sp, $57
    nop
    sub [hl]
    and a
    and b
    or e
    ld c, a
    or [hl]
    and b
    or d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    and l
    xor [hl]
    or c
    and $58
    nop
    adc b
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    xor b
    or e
    ld a, a
    and a
    and h
    or c
    and h
    rst $20
    ld c, a
    adc b
    or e
    cp l
    ld a, a
    and d
    xor [hl]
    xor l
    and e
    or h
    and d
    xor b
    or l
    and h
    ld a, a
    or e
    xor [hl]
    ld d, l
    xor h
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
    ld d, a
    nop
    add e
    xor b
    and b
    or c
    cp b
    sbc l
    ld a, a
    sub d
    and h
    xor a
    or e
    add sp, $7f
    rst $30
    ld c, a
    adc h
    add h
    sub [hl]
    sub e
    sub [hl]
    adc [hl]
    ld a, a
    xor b
    or d
    ld a, a
    and l
    and b
    or c
    ld a, a
    or e
    xor [hl]
    xor [hl]
    ld d, l
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    and l
    or h
    xor e
    add sp, $51
    sub [hl]
    and h
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    and l
    and b
    xor b
    xor e
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld c, a
    and d
    or h
    or c
    and c
    ld a, a
    xor b
    or e
    or d
    ld a, a
    or l
    xor b
    and d
    xor b
    xor [hl]
    or h
    or d
    ld d, l
    or e
    and h
    xor l
    and e
    and h
    xor l
    and d
    xor b
    and h
    or d
    add sp, -$18
    add sp, $57
    nop
    sub c
    add h
    sub d
    sub e
    ld a, a
    add a
    adc [hl]
    sub h
    sub d
    add h
    ld d, a
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
    sub e
    and a
    and h
    ld a, a
    or c
    and h
    xor h
    and b
    xor b
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor b
    xor h
    and h
    ld c, a
    and e
    and h
    and d
    xor e
    xor b
    xor l
    and h
    or d
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld d, l
    or [hl]
    and a
    xor b
    xor e
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and b
    xor e
    xor d
    rst $20
    ld d, a
    nop
    add d
    add h
    adc l
    sub e
    add h
    sub c
    ld a, a
    add b
    sub c
    add h
    add b
    ld c, a
    adc l
    adc [hl]
    sub c
    sub e
    add a
    sbc h
    ld a, a
    add b
    sub c
    add h
    add b
    ld a, a
    ld hl, sp+$57
    nop
    sub c
    add h
    sub d
    sub e
    ld a, a
    add a
    adc [hl]
    sub h
    sub d
    add h
    ld d, a
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
    sub e
    and a
    and h
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
    ld c, a
    xor b
    or d
    ld a, a
    or d
    or e
    xor b
    xor e
    xor e
    ld a, a
    and b
    and a
    and h
    and b
    and e
    rst $20
    ld d, a
    nop
    add b
    sub c
    add h
    add b
    ld a, a
    ld hl, sp+$57
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
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and a
    xor b
    and e
    and h
    ld a, a
    xor b
    xor l
    ld c, a
    or e
    and b
    xor e
    xor e
    ld a, a
    and [hl]
    or c
    and b
    or d
    or d
    rst $20
    ld d, c
    sbc c
    xor b
    and [hl]
    cp c
    and b
    and [hl]
    ld a, a
    or e
    and a
    or c
    xor [hl]
    or h
    and [hl]
    and a
    ld c, a
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
    ld a, a
    or e
    xor [hl]
    ld d, l
    and l
    xor e
    or h
    or d
    and a
    ld a, a
    or e
    and a
    and h
    xor h
    ld a, a
    xor [hl]
    or h
    or e
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
    sub [hl]
    xor b
    xor l
    ld a, a
    and b
    ld a, a
    and l
    or c
    and h
    and h
    ld a, a
    add a
    adc h
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    and l
    xor b
    xor l
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    ld d, l
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
    rst $20
    ld d, a
    nop
    sub c
    add h
    sub d
    sub e
    ld a, a
    add a
    adc [hl]
    sub h
    sub d
    add h
    ld d, a
    nop
    sub c
    add h
    sub b
    sub h
    add h
    sub d
    sub e
    ld a, a
    adc l
    adc [hl]
    sub e
    adc b
    add d
    add h
    ld d, c
    adc a
    xor e
    and h
    and b
    or d
    and h
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
    sub d
    add b
    add l
    add b
    sub c
    adc b
    ld a, a
    sub [hl]
    add b
    sub c
    add e
    add h
    adc l
    cp l
    ld d, l
    xor e
    xor [hl]
    or d
    or e
    ld a, a
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
    add sp, $55
    sub e
    and a
    and h
    cp b
    db $e4
    and h
    ld a, a
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
    ld d, l
    and a
    and h
    or c
    and h
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    or [hl]
    and a
    and h
    or c
    and h
    add sp, $51
    sub c
    and h
    or [hl]
    and b
    or c
    and e
    ld a, a
    xor [hl]
    and l
    and l
    and h
    or c
    and h
    and e
    rst $20
    ld c, a
    add d
    xor [hl]
    xor l
    or e
    and b
    and d
    or e
    sbc h
    ld a, a
    sub [hl]
    add b
    sub c
    add e
    add h
    adc l
    ld d, a
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
    sbc c
    xor [hl]
    xor l
    and h
    ld a, a
    add h
    or a
    xor a
    xor e
    xor [hl]
    or c
    and b
    or e
    xor b
    xor [hl]
    xor l
    ld c, a
    add d
    and b
    xor h
    xor a
    and b
    xor b
    and [hl]
    xor l
    rst $20
    ld d, c
    sub e
    and a
    and h
    ld a, a
    sub d
    and h
    and b
    or c
    and d
    and a
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    or e
    and a
    and h
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
    rst $20
    ld d, a
    nop
    add b
    sub c
    add h
    add b
    ld a, a
    ld sp, hl
    ld c, a
    add h
    add b
    sub d
    sub e
    sbc h
    ld a, a
    add d
    add h
    adc l
    sub e
    add h
    sub c
    ld a, a
    add b
    sub c
    add h
    add b
    ld d, a
    nop
    sub c
    add h
    sub d
    sub e
    ld a, a
    add a
    adc [hl]
    sub h
    sub d
    add h
    ld d, a
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
    adc a
    or c
    and h
    or d
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    sub d
    sub e
    add b
    sub c
    sub e
    ld c, a
    add c
    or h
    or e
    or e
    xor [hl]
    xor l
    ld a, a
    or e
    xor [hl]
    ld a, a
    and d
    and a
    and h
    and d
    xor d
    ld d, l
    or c
    and h
    xor h
    and b
    xor b
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor b
    xor h
    and h
    rst $20
    ld d, a
    nop
    sub d
    add b
    sub c
    add b
    sbc h
    ld a, a
    sub [hl]
    and a
    and h
    or c
    and h
    ld a, a
    and e
    xor b
    and e
    ld c, a
    xor h
    cp b
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
    db $f4
    ld d, l
    add h
    sub c
    adc b
    adc d
    db $f4
    ld a, a
    and [hl]
    xor [hl]
    and $57
    nop
    adc b
    push hl
    ld a, a
    and d
    and b
    or e
    and d
    and a
    xor b
    xor l
    and [hl]
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and b
    xor d
    and h
    ld d, l
    and a
    xor [hl]
    xor h
    and h
    ld a, a
    and b
    or d
    ld a, a
    and [hl]
    xor b
    and l
    or e
    or d
    rst $20
    ld d, a
    nop
    add b
    and a
    rst $20
    ld a, a
    add l
    xor b
    xor l
    and b
    xor e
    xor e
    cp b
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
    and l
    xor b
    or c
    or d
    or e
    ld c, a
    xor a
    and h
    or c
    or d
    xor [hl]
    xor l
    ld a, a
    or e
    xor [hl]
    ld a, a
    or c
    and h
    and b
    and d
    and a
    ld d, l
    or e
    and a
    and h
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
    rst $20
    ld d, c
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
    or [hl]
    xor [hl]
    or c
    or c
    xor b
    and h
    and e
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor l
    xor [hl]
    ld d, l
    xor [hl]
    xor l
    and h
    ld a, a
    or [hl]
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    or [hl]
    xor b
    xor l
    ld a, a
    xor [hl]
    or h
    or c
    ld d, l
    and d
    and b
    xor h
    xor a
    and b
    xor b
    and [hl]
    xor l
    ld a, a
    xor a
    or c
    xor b
    cp c
    and h
    add sp, $51
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
    or [hl]
    xor [hl]
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
    add a
    adc h
    or $f9
    ld a, a
    xor b
    or d
    ld a, a
    sub d
    sub h
    sub c
    add l
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
    and c
    and h
    ld c, a
    and b
    and c
    xor e
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and l
    and h
    or c
    or c
    cp b
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, l
    and b
    and d
    or c
    xor [hl]
    or d
    or d
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    rst $20
    ld d, c
    add b
    xor l
    and e
    db $f4
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    add a
    adc h
    ld a, a
    xor b
    or d
    xor l
    cp [hl]
    ld c, a
    and e
    xor b
    or d
    xor a
    xor [hl]
    or d
    and b
    and c
    xor e
    and h
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    ld d, l
    and d
    and b
    xor l
    ld a, a
    or h
    or d
    and h
    ld a, a
    xor b
    or e
    ld a, a
    xor [hl]
    or l
    and h
    or c
    ld d, l
    and b
    xor l
    and e
    ld a, a
    xor [hl]
    or l
    and h
    or c
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    db $e4
    and h
    ld a, a
    or d
    or h
    xor a
    and h
    or c
    ld a, a
    xor e
    or h
    and d
    xor d
    cp b
    ld c, a
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
    ld a, a
    or e
    and a
    xor b
    or d
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
    rst $20
    ld d, a
    nop
    sub e
    xor [hl]
    or d
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    sub c
    adc [hl]
    add d
    adc d
    or d
    ld a, a
    and b
    or e
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor h
    xor b
    and [hl]
    and a
    or e
    ld d, l
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
    or c
    or h
    xor l
    db $f4
    ld d, l
    and c
    or h
    or e
    ld a, a
    or e
    and a
    and h
    cp b
    cp h
    xor e
    ld a, a
    and c
    and h
    ld d, l
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
    add sp, $57
    nop
    sub h
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    add c
    add b
    adc b
    sub e
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
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
    add sp, $57
    nop
    adc b
    ld a, a
    and a
    xor b
    xor d
    and h
    and e
    ld a, a
    and b
    ld a, a
    xor e
    xor [hl]
    or e
    db $f4
    ld a, a
    and c
    or h
    or e
    ld c, a
    adc b
    ld a, a
    and e
    xor b
    and e
    xor l
    cp [hl]
    ld a, a
    or d
    and h
    and h
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
    adc b
    ld a, a
    or [hl]
    and b
    xor l
    or e
    and h
    and e
    add sp, $57
    nop
    add a
    xor [hl]
    or [hl]
    ld a, a
    xor h
    and b
    xor l
    cp b
    ld a, a
    and e
    xor b
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and d
    and b
    or e
    and d
    and a
    and $7f
    adc b
    push hl
    ld a, a
    and c
    or h
    or d
    and a
    and h
    and e
    ld d, l
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor d
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    and d
    and b
    or h
    and [hl]
    and a
    or e
    ld a, a
    and b
    ld c, a
    add d
    add a
    add b
    adc l
    sub d
    add h
    sbc b
    rst $20
    ld d, c
    sub e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    xor d
    and h
    or d
    ld a, a
    or e
    and a
    xor b
    or d
    ld c, a
    and b
    xor e
    xor e
    ld a, a
    or [hl]
    xor [hl]
    or c
    or e
    and a
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
    or [hl]
    rst $20
    ld a, a
    adc b
    push hl
    ld a, a
    or e
    xor b
    or c
    and h
    and e
    ld c, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
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
    xor d
    and h
    and h
    xor a
    ld a, a
    and b
    xor l
    cp b
    ld c, a
    xor b
    or e
    and h
    xor h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and l
    xor b
    xor l
    and e
    ld a, a
    xor [hl]
    xor l
    ld d, l
    or e
    and a
    and h
    ld a, a
    and [hl]
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
    add sp, $51
    add c
    or h
    or e
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    cp h
    xor e
    ld a, a
    or c
    or h
    xor l
    ld c, a
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
    ld a, a
    xor b
    and l
    ld d, l
    cp b
    xor [hl]
    or h
    ld a, a
    or e
    or c
    cp b
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and b
    xor e
    xor e
    ld d, l
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    xor h
    ld a, a
    and b
    or e
    ld a, a
    xor [hl]
    xor l
    and d
    and h
    rst $20
    ld d, a
    nop
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
    and e
    and h
    and h
    xor a
    and h
    or d
    or e
    ld c, a
    xor a
    and b
    or c
    or e
    ld a, a
    xor [hl]
    and l
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
    add sp, $7f
    sbc b
    xor [hl]
    or h
    ld d, l
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    or [hl]
    xor b
    xor l
    ld a, a
    and b
    ld a, a
    xor a
    or c
    xor b
    cp c
    and h
    rst $20
    ld d, a
    nop
    adc h
    cp b
    ld a, a
    add h
    add h
    sub l
    add h
    add h
    ld a, a
    and h
    or l
    xor [hl]
    xor e
    or l
    and h
    and e
    ld c, a
    xor b
    xor l
    or e
    xor [hl]
    ld a, a
    add l
    adc e
    add b
    sub c
    add h
    adc [hl]
    adc l
    rst $20
    ld d, c
    add c
    or h
    or e
    db $f4
    ld a, a
    and b
    ld a, a
    and l
    or c
    xor b
    and h
    xor l
    and e
    cp l
    ld c, a
    add h
    add h
    sub l
    add h
    add h
    ld a, a
    or e
    or h
    or c
    xor l
    and h
    and e
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld d, l
    and b
    ld a, a
    sub l
    add b
    adc a
    adc [hl]
    sub c
    add h
    adc [hl]
    adc l
    rst $20
    ld d, l
    adc b
    ld a, a
    or [hl]
    xor [hl]
    xor l
    and e
    and h
    or c
    ld a, a
    or [hl]
    and a
    cp b
    and $57
    nop
    adc h
    and h
    or [hl]
    rst $20
    ld d, b
    ld d, b
    nop
    adc b
    ld a, a
    or [hl]
    xor [hl]
    xor l
    and e
    and h
    or c
    ld a, a
    xor b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and b
    or c
    and h
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
    ld d, a
    nop
    adc b
    ld c, a
    xor e
    xor [hl]
    or d
    or e
    ld a, a
    xor [hl]
    or h
    or e
    rst $20
    ld e, b
    nop
    adc b
    ld a, a
    xor l
    and h
    or l
    and h
    or c
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
    ld c, a
    xor e
    xor [hl]
    or d
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and b
    xor l
    cp b
    and c
    xor [hl]
    and e
    cp b
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    and d
    and b
    xor l
    ld a, a
    or d
    and h
    and h
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
    adc e
    and h
    or e
    ld a, a
    xor h
    and h
    ld a, a
    or d
    and h
    and h
    ld d, l
    and h
    or a
    and b
    and d
    or e
    xor e
    cp b
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    rst $20
    ld d, a
    nop
    adc b
    ld c, a
    and a
    and b
    and e
    ld a, a
    and b
    ld a, a
    and d
    and a
    and b
    xor l
    and d
    and h
    add sp, -$18
    add sp, $58
    nop
    adc b
    ld a, a
    and d
    xor [hl]
    xor l
    and d
    and h
    and e
    and h
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    db $e4
    and h
    ld c, a
    and c
    and h
    or e
    or e
    and h
    or c
    ld a, a
    or e
    and a
    and b
    xor l
    ld a, a
    xor h
    and h
    rst $20
    ld d, a
    nop
    add b
    and a
    rst $20
    ld a, a
    adc b
    ld a, a
    and a
    and h
    and b
    or c
    and e
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    ld d, d
    rst $20
    ld d, c
    adc b
    ld a, a
    xor e
    and h
    and b
    and e
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
    ld c, a
    add l
    adc [hl]
    sub h
    sub c
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld d, l
    and d
    and b
    xor e
    xor e
    ld a, a
    xor h
    and h
    ld a, a
    adc e
    add b
    adc l
    add d
    add h
    ld a, a
    or e
    and a
    and h
    ld d, l
    and e
    or c
    and b
    and [hl]
    xor [hl]
    xor l
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
    and e
    or c
    and b
    and [hl]
    xor [hl]
    xor l
    or d
    ld a, a
    and b
    or c
    and h
    ld d, l
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
    rst $20
    ld d, c
    sub e
    and a
    and h
    cp b
    db $e4
    and h
    ld a, a
    and a
    and b
    or c
    and e
    ld a, a
    or e
    xor [hl]
    ld c, a
    and d
    and b
    or e
    and d
    and a
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or c
    and b
    xor b
    or d
    and h
    db $f4
    ld d, l
    and c
    or h
    or e
    ld a, a
    or e
    and a
    and h
    xor b
    or c
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    or d
    ld d, l
    and b
    or c
    and h
    ld a, a
    or d
    or h
    xor a
    and h
    or c
    xor b
    xor [hl]
    or c
    rst $20
    ld d, c
    sub e
    and a
    and h
    cp b
    db $e4
    and h
    ld a, a
    or l
    xor b
    or c
    or e
    or h
    and b
    xor e
    xor e
    cp b
    ld c, a
    xor b
    xor l
    and e
    and h
    or d
    or e
    or c
    or h
    and d
    or e
    xor b
    and c
    xor e
    and h
    rst $20
    ld d, c
    sub [hl]
    and h
    xor e
    xor e
    db $f4
    ld a, a
    and b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    or c
    and h
    and b
    and e
    cp b
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor e
    xor [hl]
    or d
    and h
    and $51
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    adc e
    add h
    add b
    add [hl]
    sub h
    add h
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
    and h
    xor l
    and e
    or d
    ld d, l
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor h
    and h
    db $f4
    ld a, a
    ld d, d
    rst $20
    ld d, a
    nop
    sub e
    and a
    and b
    or e
    cp l
    ld a, a
    xor b
    or e
    rst $20
    ld d, c
    adc b
    ld a, a
    and a
    and b
    or e
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and b
    and e
    xor h
    xor b
    or e
    ld c, a
    xor b
    or e
    db $f4
    ld a, a
    and c
    or h
    or e
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
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor h
    and b
    or d
    or e
    and h
    or c
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
    and d
    and b
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
    xor h
    cp b
    ld d, l
    and e
    or c
    and b
    and [hl]
    xor [hl]
    xor l
    or d
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    ld a, a
    or e
    xor [hl]
    ld d, l
    cp b
    xor [hl]
    or h
    db $f4
    ld a, a
    ld d, d
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
    or [hl]
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
    adc e
    add h
    add b
    add [hl]
    sub h
    add h
    ld d, l
    and d
    and a
    and b
    xor h
    xor a
    xor b
    xor [hl]
    xor l
    rst $20
    ld d, c
    add sp, -$18
    add sp, -$72
    or c
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    xor [hl]
    or h
    xor e
    and e
    ld c, a
    and a
    and b
    or l
    and h
    ld a, a
    and c
    and h
    and h
    xor l
    db $f4
    ld a, a
    and c
    or h
    or e
    ld d, l
    cp b
    xor [hl]
    or h
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    xor [hl]
    xor l
    and h
    ld a, a
    xor h
    xor [hl]
    or c
    and h
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
    and b
    and a
    and h
    and b
    and e
    add sp, $51
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
    and b
    xor l
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
    rst $20
    ld d, l
    add a
    xor b
    or d
    ld a, a
    xor l
    and b
    xor h
    and h
    ld a, a
    xor b
    or d
    add sp, -$18
    add sp, $51
    ld d, e
    rst $20
    ld c, a
    add a
    and h
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
    and c
    and h
    and l
    xor [hl]
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, c
    add a
    and h
    ld a, a
    xor b
    or d
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
    and d
    and a
    and b
    xor h
    xor a
    xor b
    xor [hl]
    xor l
    rst $20
    ld d, b
    ld d, b
    nop
    adc [hl]
    add b
    adc d
    sbc h
    ld a, a
    add h
    or c
    db $e3
    and a
    and h
    xor h
    rst $20
    ld c, a
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
    ld d, l
    ld d, d
    rst $20
    ld d, c
    sub e
    and a
    xor b
    or d
    ld a, a
    and l
    xor e
    xor [hl]
    xor [hl]
    or c
    ld a, a
    xor b
    or d
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
    add a
    add b
    adc e
    adc e
    ld a, a
    adc [hl]
    add l
    ld d, l
    add l
    add b
    adc h
    add h
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
    ld c, a
    and d
    and a
    and b
    xor h
    xor a
    xor b
    xor [hl]
    xor l
    or d
    ld a, a
    and b
    or c
    and h
    ld d, l
    and a
    xor [hl]
    xor l
    xor [hl]
    or c
    and h
    and e
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    or e
    and a
    and h
    xor b
    or c
    ld d, l
    and h
    or a
    xor a
    xor e
    xor [hl]
    xor b
    or e
    or d
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
    xor b
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
    ld c, a
    and b
    xor e
    or d
    xor [hl]
    ld a, a
    or c
    and h
    and d
    xor [hl]
    or c
    and e
    and h
    and e
    ld a, a
    xor b
    xor l
    ld d, l
    or e
    and a
    and h
    ld a, a
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
    rst $20
    ld d, c
    ld d, d
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    ld a, a
    and a
    and b
    or l
    and h
    ld c, a
    and h
    xor l
    and e
    and h
    and b
    or l
    xor [hl]
    or c
    and h
    and e
    ld a, a
    and a
    and b
    or c
    and e
    ld d, l
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
    or e
    and a
    and h
    ld a, a
    xor l
    and h
    or [hl]
    ld d, l
    adc e
    add h
    add b
    add [hl]
    sub h
    add h
    ld a, a
    and d
    and a
    and b
    xor h
    xor a
    xor b
    xor [hl]
    xor l
    rst $20
    ld d, c
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
    db $f4
    ld c, a
    ld d, d
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    xor l
    and e
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
    ld a, a
    and b
    or c
    and h
    ld d, l
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
    sub c
    or d
    rst $20
    ld d, a
    nop
    ld d, e
    sbc h
    ld a, a
    add a
    and h
    cp b
    rst $20
    ld d, c
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    xor b
    xor l
    and [hl]
    ld c, a
    and l
    xor [hl]
    or c
    or [hl]
    and b
    or c
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    and h
    and h
    xor b
    xor l
    and [hl]
    ld d, l
    cp b
    xor [hl]
    or h
    db $f4
    ld a, a
    ld d, d
    rst $20
    ld d, c
    adc h
    cp b
    ld a, a
    or c
    xor b
    or l
    and b
    xor e
    ld a, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld c, a
    and c
    and h
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor d
    and h
    and h
    xor a
    ld d, l
    xor h
    and h
    ld a, a
    or d
    and a
    and b
    or c
    xor a
    rst $20
    ld d, c
    sub [hl]
    and a
    xor b
    xor e
    and h
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    xor l
    ld c, a
    ld d, h
    add e
    add h
    sub a
    db $f4
    ld a, a
    adc b
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    and h
    and e
    ld d, l
    and b
    xor e
    xor e
    ld a, a
    xor [hl]
    or l
    and h
    or c
    ld a, a
    and l
    xor [hl]
    or c
    ld d, l
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    and l
    or h
    xor e
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
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    or e
    and a
    and b
    or e
    db $f4
    ld a, a
    adc b
    ld c, a
    and b
    or d
    or d
    and h
    xor h
    and c
    xor e
    and h
    and e
    ld a, a
    or e
    and h
    and b
    xor h
    or d
    ld d, l
    or e
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
    and c
    and h
    and b
    or e
    ld d, l
    and b
    xor l
    cp b
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
    rst $20
    ld d, c
    add b
    xor l
    and e
    ld a, a
    xor l
    xor [hl]
    or [hl]
    rst $20
    ld d, c
    adc b
    push hl
    ld a, a
    or e
    and a
    and h
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
    and d
    and a
    and b
    xor h
    xor a
    xor b
    xor [hl]
    xor l
    rst $20
    ld d, c
    ld d, d
    rst $20
    ld a, a
    add e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
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
    or e
    and a
    and b
    or e
    ld d, l
    xor h
    and h
    and b
    xor l
    or d
    and $51
    adc b
    cp h
    xor e
    ld a, a
    or e
    and h
    xor e
    xor e
    ld a, a
    cp b
    xor [hl]
    or h
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
    xor h
    xor [hl]
    or d
    or e
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
    ld d, a
    nop
    adc l
    adc [hl]
    rst $20
    ld c, a
    sub e
    and a
    and b
    or e
    ld a, a
    and d
    and b
    xor l
    cp [hl]
    ld a, a
    and c
    and h
    rst $20
    ld d, l
    sbc b
    xor [hl]
    or h
    ld a, a
    and c
    and h
    and b
    or e
    ld a, a
    xor h
    cp b
    ld a, a
    and c
    and h
    or d
    or e
    rst $20
    ld d, c
    add b
    and l
    or e
    and h
    or c
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    or [hl]
    xor [hl]
    or c
    xor d
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
    ld d, l
    adc e
    add h
    add b
    add [hl]
    sub h
    add h
    ld a, a
    and d
    and a
    and b
    xor h
    xor a
    and $51
    adc h
    cp b
    ld a, a
    or c
    and h
    xor b
    and [hl]
    xor l
    ld a, a
    xor b
    or d
    ld a, a
    xor [hl]
    or l
    and h
    or c
    ld c, a
    and b
    xor e
    or c
    and h
    and b
    and e
    cp b
    and $55
    adc b
    or e
    cp l
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    and l
    and b
    xor b
    or c
    rst $20
    ld e, b
    nop
    add a
    and b
    and a
    and b
    and a
    and b
    rst $20
    ld c, a
    adc b
    ld a, a
    or [hl]
    xor [hl]
    xor l
    db $f4
    ld a, a
    adc b
    ld a, a
    or [hl]
    xor [hl]
    xor l
    rst $20
    ld d, c
    adc b
    push hl
    ld a, a
    or e
    xor [hl]
    xor [hl]
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    cp b
    xor [hl]
    or h
    db $f4
    ld a, a
    ld d, d
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    and e
    xor b
    and e
    ld a, a
    or [hl]
    and h
    xor e
    xor e
    ld a, a
    or e
    xor [hl]
    ld c, a
    and h
    or l
    and h
    xor l
    ld a, a
    or c
    and h
    and b
    and d
    and a
    ld a, a
    xor h
    and h
    db $f4
    ld d, l
    ld d, e
    db $f4
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
    and [hl]
    and h
    xor l
    xor b
    or h
    or d
    rst $20
    ld d, c
    adc l
    xor b
    and d
    and h
    ld a, a
    or e
    or c
    cp b
    db $f4
    ld a, a
    xor e
    xor [hl]
    or d
    and h
    or c
    rst $20
    ld c, a
    add a
    and b
    and a
    and b
    and a
    and b
    rst $20
    ld e, b
    nop
    sub [hl]
    and a
    cp b
    and $4f
    sub [hl]
    and a
    cp b
    ld a, a
    and e
    xor b
    and e
    ld a, a
    adc b
    ld a, a
    xor e
    xor [hl]
    or d
    and h
    and $51
    adc b
    ld a, a
    xor l
    and h
    or l
    and h
    or c
    ld a, a
    xor h
    and b
    and e
    and h
    ld a, a
    and b
    xor l
    cp b
    ld c, a
    xor h
    xor b
    or d
    or e
    and b
    xor d
    and h
    or d
    ld a, a
    or c
    and b
    xor b
    or d
    xor b
    xor l
    and [hl]
    ld d, l
    xor h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, -$18
    add sp, $51
    add e
    and b
    or c
    xor l
    ld a, a
    xor b
    or e
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    db $e4
    and h
    ld c, a
    or e
    and a
    and h
    ld a, a
    xor l
    and h
    or [hl]
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
    and d
    and a
    and b
    xor h
    xor a
    xor b
    xor [hl]
    xor l
    rst $20
    ld d, c
    add b
    xor e
    or e
    and a
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    adc b
    ld a, a
    and e
    xor [hl]
    xor l
    cp [hl]
    ld c, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and b
    and e
    xor h
    xor b
    or e
    ld a, a
    xor b
    or e
    add sp, $57
    nop
    adc [hl]
    add b
    adc d
    sbc h
    ld a, a
    ld d, d
    rst $20
    ld d, a
    nop
    adc [hl]
    add b
    adc d
    sbc h
    ld a, a
    sub d
    xor [hl]
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    xor [hl]
    xor l
    rst $20
    ld c, a
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
    xor l
    and h
    or [hl]
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
    ld d, l
    and d
    and a
    and b
    xor h
    xor a
    xor b
    xor [hl]
    xor l
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    cp a
    and h
    ld a, a
    and [hl]
    or c
    xor [hl]
    or [hl]
    xor l
    ld a, a
    or h
    xor a
    ld a, a
    or d
    xor [hl]
    ld c, a
    xor h
    or h
    and d
    and a
    ld a, a
    or d
    xor b
    xor l
    and d
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, l
    and l
    xor b
    or c
    or d
    or e
    ld a, a
    xor e
    and h
    and l
    or e
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld d, l
    ld d, b
    ld bc, $cd6d
    nop
    rst $20
    ld d, c
    ld d, d
    db $f4
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
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    and b
    and [hl]
    and h
    rst $20
    ld d, a
    nop
    adc [hl]
    add b
    adc d
    sbc h
    ld a, a
    ld d, e
    rst $20
    ld a, a
    adc b
    push hl
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
    and h
    and e
    rst $20
    ld d, c
    adc b
    ld a, a
    and d
    and b
    xor h
    and h
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld a, a
    adc b
    ld c, a
    and a
    and h
    and b
    or c
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and c
    and h
    and b
    or e
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
    rst $20
    ld d, c
    add c
    or h
    or e
    db $f4
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld a, a
    adc b
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld c, a
    and a
    and h
    or c
    and h
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and a
    and b
    and e
    ld d, l
    and b
    xor e
    or c
    and h
    and b
    and e
    cp b
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    rst $20
    ld d, c
    ld d, e
    rst $20
    ld a, a
    add e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
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
    or [hl]
    and a
    cp b
    ld d, l
    cp b
    xor [hl]
    or h
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    and $51
    sbc b
    xor [hl]
    or h
    ld a, a
    and a
    and b
    or l
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
    ld c, a
    or e
    xor [hl]
    ld a, a
    or e
    or c
    and h
    and b
    or e
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
    or [hl]
    xor b
    or e
    and a
    ld d, l
    or e
    or c
    or h
    or d
    or e
    ld a, a
    and b
    xor l
    and e
    ld a, a
    xor e
    xor [hl]
    or l
    and h
    rst $20
    ld d, c
    sub [hl]
    xor b
    or e
    and a
    xor [hl]
    or h
    or e
    ld a, a
    or e
    and a
    and h
    xor h
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    xor l
    and h
    or l
    and h
    or c
    ld a, a
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    ld d, l
    and b
    ld a, a
    and d
    and a
    and b
    xor h
    xor a
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    rst $20
    ld d, a
    nop
    adc [hl]
    add b
    adc d
    sbc h
    ld a, a
    ld d, d
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
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
    ld c, a
    or e
    and a
    and b
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    or l
    xor b
    and d
    or e
    xor [hl]
    or c
    cp b
    ld d, l
    or [hl]
    and b
    or d
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld d, l
    xor [hl]
    or [hl]
    xor l
    ld a, a
    and e
    xor [hl]
    xor b
    xor l
    and [hl]
    rst $20
    ld d, c
    sub e
    and a
    and h
    ld a, a
    and c
    xor [hl]
    xor l
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or d
    and a
    and b
    or c
    and h
    ld c, a
    or [hl]
    xor b
    or e
    and a
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
    ld d, l
    xor b
    or d
    ld a, a
    xor h
    and b
    or c
    or l
    and h
    xor e
    xor [hl]
    or h
    or d
    rst $20
    ld d, c
    ld d, d
    rst $20
    ld c, a
    add d
    xor [hl]
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
    ld a, a
    or e
    xor [hl]
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
    ld d, c
    adc b
    ld a, a
    and b
    xor h
    ld a, a
    adc e
    adc [hl]
    sub c
    add h
    adc e
    add h
    adc b
    ld a, a
    xor [hl]
    and l
    ld c, a
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
    rst $20
    ld d, c
    adc l
    xor [hl]
    ld a, a
    xor [hl]
    xor l
    and h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and c
    and h
    or d
    or e
    ld c, a
    xor h
    and h
    ld a, a
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
    ld d, l
    or e
    xor [hl]
    ld a, a
    xor b
    and d
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, c
    add l
    or c
    and h
    and h
    cp c
    xor b
    xor l
    and [hl]
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    or d
    ld c, a
    and b
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
    and c
    and h
    ld a, a
    and b
    or e
    ld a, a
    xor h
    cp b
    ld a, a
    xor h
    and h
    or c
    and d
    cp b
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
    ld d, c
    add a
    and b
    and a
    and b
    and a
    and b
    rst $20
    ld c, a
    add b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or c
    and h
    and b
    and e
    cp b
    and $57
    nop
    add a
    xor [hl]
    or [hl]
    ld c, a
    and e
    and b
    or c
    and h
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
    db $e4
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
    and b
    xor l
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
    ld d, l
    add [hl]
    xor [hl]
    ld a, a
    xor [hl]
    xor l
    ld a, a
    and b
    and a
    and h
    and b
    and e
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    and b
    ld c, a
    or e
    and b
    or d
    or e
    and h
    ld a, a
    xor [hl]
    and l
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
    xor a
    xor [hl]
    or [hl]
    and h
    or c
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
    or l
    xor [hl]
    xor b
    and d
    and h
    sbc h
    ld c, a
    add e
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    or c
    or h
    xor l
    ld a, a
    and b
    or [hl]
    and b
    cp b
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    and b
    xor h
    ld a, a
    add c
    sub c
    sub h
    adc l
    adc [hl]
    ld a, a
    xor [hl]
    and l
    ld c, a
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
    rst $20
    ld d, c
    sub e
    and a
    or c
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    or c
    xor b
    and [hl]
    xor [hl]
    or c
    xor [hl]
    or h
    or d
    ld c, a
    or e
    or c
    and b
    xor b
    xor l
    xor b
    xor l
    and [hl]
    db $f4
    ld a, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld d, l
    and b
    xor l
    and e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and d
    and b
    xor l
    ld d, l
    and c
    and h
    and d
    xor [hl]
    xor h
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
    rst $20
    ld d, c
    adc b
    cp a
    and h
    ld a, a
    or [hl]
    and h
    xor b
    and [hl]
    and a
    or e
    ld c, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    and e
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld d, l
    xor h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, c
    ld d, d
    rst $20
    ld d, c
    sub [hl]
    and h
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and [hl]
    or c
    xor b
    xor l
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and e
    xor [hl]
    or [hl]
    xor l
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor [hl]
    or h
    or c
    ld d, l
    or d
    or h
    xor a
    and h
    or c
    xor b
    xor [hl]
    or c
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    rst $20
    ld d, c
    add a
    xor [hl]
    xor [hl]
    ld a, a
    and a
    and b
    and a
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    cp b
    and $4f
    add a
    xor [hl]
    or [hl]
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    adc b
    ld a, a
    xor e
    xor [hl]
    or d
    and h
    and $58
    nop
    adc h
    cp b
    ld a, a
    xor c
    xor [hl]
    and c
    ld a, a
    xor b
    or d
    ld a, a
    and e
    xor [hl]
    xor l
    and h
    rst $20
    ld c, a
    add [hl]
    xor [hl]
    ld a, a
    and l
    and b
    and d
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor l
    and h
    or a
    or e
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
    or l
    xor [hl]
    xor b
    and d
    and h
    sbc h
    ld c, a
    add e
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    or c
    or h
    xor l
    ld a, a
    and b
    or [hl]
    and b
    cp b
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    and b
    xor h
    ld a, a
    add b
    add [hl]
    add b
    sub e
    add a
    add b
    ld a, a
    xor [hl]
    and l
    ld c, a
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
    rst $20
    ld d, c
    adc [hl]
    add b
    adc d
    cp l
    ld a, a
    or e
    and b
    xor d
    and h
    xor l
    ld a, a
    and b
    ld a, a
    xor e
    xor [hl]
    or e
    ld c, a
    xor [hl]
    and l
    ld a, a
    xor b
    xor l
    or e
    and h
    or c
    and h
    or d
    or e
    ld a, a
    xor b
    xor l
    ld d, l
    cp b
    xor [hl]
    or h
    db $f4
    ld a, a
    and d
    and a
    xor b
    xor e
    and e
    rst $20
    ld d, c
    sub e
    and a
    and b
    or e
    ld a, a
    xor [hl]
    xor e
    and e
    ld a, a
    and e
    or h
    and l
    and l
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    xor [hl]
    xor l
    and d
    and h
    ld a, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    and b
    xor l
    and e
    ld d, l
    and a
    and b
    xor l
    and e
    or d
    xor [hl]
    xor h
    and h
    rst $20
    ld a, a
    sub e
    and a
    and b
    or e
    ld d, l
    or [hl]
    and b
    or d
    ld a, a
    and e
    and h
    and d
    and b
    and e
    and h
    or d
    ld a, a
    and b
    and [hl]
    xor [hl]
    rst $20
    ld d, c
    adc l
    xor [hl]
    or [hl]
    ld a, a
    and a
    and h
    ld a, a
    xor c
    or h
    or d
    or e
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
    and e
    and e
    xor e
    and h
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld d, l
    and a
    xor b
    or d
    ld a, a
    ld d, h
    add e
    add h
    sub a
    rst $20
    ld a, a
    add a
    and h
    cp l
    ld d, l
    or [hl]
    or c
    xor [hl]
    xor l
    and [hl]
    rst $20
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    and b
    or c
    and h
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
    xor b
    xor l
    and [hl]
    rst $20
    ld d, c
    ld d, d
    rst $20
    ld a, a
    adc b
    cp h
    xor e
    ld a, a
    or d
    and a
    xor [hl]
    or [hl]
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld a, a
    and b
    ld a, a
    or c
    and h
    and b
    xor e
    ld d, l
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    ld a, a
    and l
    xor b
    and [hl]
    and a
    or e
    or d
    rst $20
    ld d, a
    nop
    adc [hl]
    and a
    ld a, a
    and a
    xor [hl]
    rst $20
    ld c, a
    sbc b
    xor [hl]
    or h
    db $e4
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
    ld d, l
    or d
    xor a
    and h
    and d
    xor b
    and b
    xor e
    db $f4
    ld a, a
    and d
    and a
    xor b
    xor e
    and e
    rst $20
    ld e, b
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    or [hl]
    xor b
    xor l
    rst $20
    ld a, a
    adc b
    ld a, a
    or d
    and h
    and h
    ld c, a
    or [hl]
    and a
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor [hl]
    xor e
    and e
    ld a, a
    and e
    or h
    and l
    and l
    ld d, l
    or d
    and h
    and h
    or d
    ld a, a
    xor b
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor l
    xor [hl]
    or [hl]
    rst $20
    ld d, c
    adc b
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
    and h
    xor e
    or d
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    and b
    cp b
    rst $20
    ld a, a
    sub c
    or h
    xor l
    ld d, l
    and b
    xor e
    xor [hl]
    xor l
    and [hl]
    ld a, a
    xor l
    xor [hl]
    or [hl]
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
    xor [hl]
    xor h
    and h
    xor [hl]
    xor l
    and h
    cp l
    ld a, a
    or l
    xor [hl]
    xor b
    and d
    and h
    sbc h
    ld c, a
    add e
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    or c
    or h
    xor l
    ld a, a
    and b
    or [hl]
    and b
    cp b
    rst $20
    ld d, a
    nop
    add a
    xor b
    xor d
    and h
    or c
    or d
    ld a, a
    xor e
    and h
    and b
    or l
    and h
    ld a, a
    or e
    or [hl]
    xor b
    and [hl]
    or d
    ld c, a
    and b
    or d
    ld a, a
    or e
    or c
    and b
    xor b
    xor e
    ld a, a
    xor h
    and b
    or c
    xor d
    and h
    or c
    or d
    add sp, $57
    nop
    adc [hl]
    and a
    and a
    and a
    rst $20
    ld c, a
    adc b
    ld a, a
    and e
    xor b
    and e
    ld a, a
    xor h
    cp b
    ld a, a
    and c
    and h
    or d
    or e
    rst $20
    ld e, b
    nop
    adc b
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
    ld a, a
    ld c, a
    and a
    xor [hl]
    xor h
    and h
    rst $20
    ld d, a
    nop
    add a
    and b
    and a
    and b
    and a
    and b
    rst $20
    ld a, a
    add d
    and b
    xor l
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
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    and $57
    nop
    adc [hl]
    xor [hl]
    xor a
    or d
    rst $20
    ld c, a
    adc [hl]
    or h
    or e
    db $e3
    xor h
    or h
    or d
    and d
    xor e
    and h
    and e
    rst $20
    ld e, b
    nop
    adc b
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    ld c, a
    and c
    and h
    and d
    and b
    or h
    or d
    and h
    ld a, a
    adc b
    ld a, a
    and a
    and b
    or e
    and h
    ld d, l
    or e
    and a
    xor b
    xor l
    xor d
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
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
    and b
    ld c, a
    ld d, h
    add e
    add h
    sub a
    and $55
    adc b
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld a, a
    xor [hl]
    xor l
    and h
    ld a, a
    or e
    xor [hl]
    xor [hl]
    rst $20
    ld d, a
    nop
    sub d
    and a
    xor [hl]
    xor [hl]
    or e
    rst $20
    ld c, a
    adc b
    push hl
    ld a, a
    or d
    xor [hl]
    ld a, a
    xor c
    and h
    and b
    xor e
    xor [hl]
    or h
    or d
    rst $20
    ld e, b
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
    and l
    xor b
    xor l
    xor b
    or d
    and a
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    ld d, h
    add e
    add h
    sub a
    db $f4
    ld a, a
    and d
    and b
    xor l
    ld d, l
    adc b
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    xor b
    or e
    and $57
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
    and b
    and c
    xor [hl]
    or h
    or e
    ld c, a
    and d
    xor [hl]
    or d
    or e
    or h
    xor h
    and h
    ld a, a
    xor a
    xor e
    and b
    cp b
    and h
    or c
    or d
    and $57
    nop
    sub [hl]
    and h
    xor e
    xor e
    db $f4
    ld c, a
    or e
    and a
    and b
    or e
    cp l
    ld a, a
    or e
    and a
    and b
    or e
    add sp, $58
    nop
    add d
    xor [hl]
    or d
    or e
    or h
    xor h
    and h
    ld a, a
    xor a
    xor e
    and b
    cp b
    and h
    or c
    or d
    ld c, a
    and e
    or c
    and h
    or d
    or d
    ld a, a
    or h
    xor a
    ld a, a
    and b
    or d
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
    and l
    or h
    xor l
    add sp, $57
    nop
    adc h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
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
    or [hl]
    xor b
    xor e
    xor e
    ld d, l
    xor e
    and h
    and b
    or l
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    or c
    cp b
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    and [hl]
    xor b
    or l
    and h
    rst $20
    ld c, a
    sbc b
    xor [hl]
    or h
    db $e4
    and h
    ld a, a
    and b
    ld a, a
    and c
    and h
    or e
    or e
    and h
    or c
    ld d, l
    or e
    and h
    and d
    and a
    xor l
    xor b
    and d
    xor b
    and b
    xor l
    rst $20
    ld e, b
    nop
    adc b
    xor l
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
    db $f4
    ld c, a
    cp b
    xor [hl]
    or h
    cp h
    xor e
    ld a, a
    xor [hl]
    and l
    or e
    and h
    xor l
    ld a, a
    and l
    xor b
    xor l
    and e
    ld d, l
    or c
    xor [hl]
    and d
    xor d
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
    add sp, $57
    nop
    adc b
    ld a, a
    and e
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    xor [hl]
    and l
    or e
    and h
    xor l
    ld c, a
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    and a
    and h
    or c
    and h
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    adc b
    ld d, l
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and l
    xor b
    and [hl]
    and a
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $57
    nop
    adc [hl]
    and a
    rst $20
    ld c, a
    adc b
    ld a, a
    xor e
    xor [hl]
    or d
    or e
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
    or e
    xor b
    xor l
    cp b
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    db $f4
    ld a, a
    and c
    xor b
    and [hl]
    ld a, a
    xor [hl]
    xor l
    and h
    or d
    ld d, l
    and b
    or c
    and h
    ld a, a
    or e
    xor [hl]
    xor [hl]
    ld a, a
    or d
    and d
    and b
    or c
    cp b
    rst $20
    ld d, a
    nop
    add a
    xor b
    or e
    ld a, a
    xor h
    and h
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld c, a
    and c
    and h
    or d
    or e
    ld a, a
    or d
    and a
    xor [hl]
    or e
    rst $20
    ld d, a
    nop
    add l
    xor b
    or c
    and h
    and e
    ld c, a
    and b
    or [hl]
    and b
    cp b
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
