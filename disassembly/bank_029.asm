; Disassembly of "Pokemon Red (UE) [S][!].gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $029", ROMX[$4000], BANK[$29]

    nop
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
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    rst $20
    ld d, a
    nop
    sub [hl]
    and h
    db $e4
    and h
    ld a, a
    xor h
    and b
    xor d
    xor b
    xor l
    and [hl]
    ld c, a
    xor a
    or c
    and h
    xor a
    and b
    or c
    and b
    or e
    xor b
    xor [hl]
    xor l
    or d
    add sp, $55
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
    add sp, $57
    ld bc, $cd6d
    nop
    ld a, a
    or h
    or d
    and h
    and e
    ld c, a
    sub d
    sub e
    sub c
    add h
    adc l
    add [hl]
    sub e
    add a
    add sp, $50
    ld d, b
    ld bc, $cd6d
    nop
    ld a, a
    and d
    and b
    xor l
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
    add sp, $58
    nop
    sub e
    and a
    and h
    ld a, a
    and d
    or h
    or c
    or c
    and h
    xor l
    or e
    ld a, a
    xor b
    or d
    ld c, a
    xor h
    or h
    and d
    and a
    ld a, a
    or e
    xor [hl]
    xor [hl]
    ld a, a
    and l
    and b
    or d
    or e
    rst $20
    ld e, b
    nop
    add d
    cp b
    and d
    xor e
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    or d
    ld a, a
    and l
    or h
    xor l
    rst $20
    ld c, a
    add l
    xor [hl]
    or c
    and [hl]
    and h
    or e
    ld a, a
    sub d
    sub h
    sub c
    add l
    xor b
    xor l
    and [hl]
    rst $20
    ld e, b
    nop
    add b
    ld a, a
    and c
    xor e
    xor b
    xor l
    and e
    xor b
    xor l
    and [hl]
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
    or e
    and a
    and h
    ld a, a
    and b
    or c
    and h
    and b
    rst $20
    ld e, b
    nop
    sub [hl]
    and b
    or c
    xor a
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor e
    and b
    or d
    or e
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
    add sp, $57
    ld bc, $cd6d
    nop
    ld a, a
    and d
    and b
    xor l
    cp [hl]
    ld c, a
    or h
    or d
    and h
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
    xor l
    xor [hl]
    or [hl]
    add sp, $58
    ld bc, $cd6d
    nop
    ld a, a
    and d
    and b
    xor l
    cp [hl]
    ld c, a
    add l
    adc e
    sbc b
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $58
    nop
    adc l
    xor [hl]
    or e
    ld a, a
    and a
    and h
    and b
    xor e
    or e
    and a
    cp b
    ld c, a
    and h
    xor l
    xor [hl]
    or h
    and [hl]
    and a
    add sp, $58
    nop
    adc l
    xor [hl]
    rst $20
    ld a, a
    add b
    ld a, a
    xor l
    and h
    or [hl]
    ld a, a
    add c
    add b
    add e
    add [hl]
    add h
    ld c, a
    xor b
    or d
    ld a, a
    or c
    and h
    or b
    or h
    xor b
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
    or h
    or d
    and h
    ld a, a
    xor b
    or e
    and h
    xor h
    or d
    ld c, a
    and a
    and h
    or c
    and h
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
    and [hl]
    and h
    or e
    ld a, a
    xor [hl]
    and l
    and l
    ld c, a
    and a
    and h
    or c
    and h
    add sp, $58
    nop
    ld d, d
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld c, a
    ld d, b
    ld bc, $cd6d
    nop
    rst $20
    ld d, b
    ld d, b
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
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, l
    ld d, b
    ld bc, $de06
    nop
    ld a, a
    or [hl]
    and b
    or d
    ld d, l
    or d
    and h
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    add c
    adc [hl]
    sub a
    ld a, a
    ld d, b
    ld bc, $cf4b
    nop
    ld a, a
    xor [hl]
    xor l
    ld a, a
    adc a
    add d
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
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, c
    sub e
    and a
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add c
    adc [hl]
    sub a
    ld c, a
    xor b
    or d
    ld a, a
    and l
    or h
    xor e
    xor e
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and d
    and b
    xor l
    cp [hl]
    ld d, l
    and b
    and d
    and d
    and h
    xor a
    or e
    ld a, a
    and b
    xor l
    cp b
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    rst $20
    ld d, c
    add d
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
    add c
    adc [hl]
    sub a
    ld a, a
    and b
    or e
    ld c, a
    and b
    ld a, a
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
    ld d, a
    nop
    adc [hl]
    add b
    adc d
    sbc h
    ld a, a
    add a
    and h
    cp b
    rst $20
    ld a, a
    sub [hl]
    and b
    xor b
    or e
    rst $20
    ld c, a
    add e
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    xor [hl]
    or h
    or e
    rst $20
    ld d, b
    ld d, b
    nop
    adc [hl]
    add b
    adc d
    sbc h
    ld a, a
    adc b
    or e
    cp l
    ld a, a
    or h
    xor l
    or d
    and b
    and l
    and h
    rst $20
    ld c, a
    sub [hl]
    xor b
    xor e
    and e
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
    xor b
    xor l
    ld a, a
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
    sbc b
    xor [hl]
    or h
    ld a, a
    xor l
    and h
    and h
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
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
    and l
    xor [hl]
    or c
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld d, l
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
    add sp, $55
    adc b
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    rst $20
    ld d, c
    add a
    and h
    or c
    and h
    db $f4
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld c, a
    xor h
    and h
    rst $20
    ld d, a
    nop
    adc b
    push hl
    ld a, a
    or c
    and b
    xor b
    or d
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
    xor [hl]
    rst $20
    ld d, c
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    or e
    and a
    and h
    cp b
    ld a, a
    and [hl]
    and h
    or e
    ld c, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    db $f4
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
    xor a
    or c
    xor [hl]
    or e
    and h
    and d
    or e
    ld a, a
    xor h
    and h
    rst $20
    ld d, a
    nop
    sub e
    and h
    and d
    and a
    xor l
    xor [hl]
    xor e
    xor [hl]
    and [hl]
    cp b
    ld a, a
    xor b
    or d
    ld c, a
    xor b
    xor l
    and d
    or c
    and h
    and e
    xor b
    and c
    xor e
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
    xor l
    xor [hl]
    or [hl]
    ld a, a
    or d
    or e
    xor [hl]
    or c
    and h
    ld c, a
    and b
    xor l
    and e
    ld a, a
    or c
    and h
    and d
    and b
    xor e
    xor e
    ld a, a
    xor b
    or e
    and h
    xor h
    or d
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
    and b
    or d
    ld d, l
    and e
    and b
    or e
    and b
    ld a, a
    or l
    xor b
    and b
    ld a, a
    adc a
    add d
    rst $20
    ld d, a
    nop
    adc [hl]
    add b
    adc d
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
    adc e
    add b
    add c
    ld d, a
    nop
    adc a
    add b
    adc e
    adc e
    add h
    sub e
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    adc l
    ld c, a
    sub d
    and a
    and b
    and e
    and h
    or d
    ld a, a
    xor [hl]
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld d, l
    xor c
    xor [hl]
    or h
    or c
    xor l
    and h
    cp b
    ld a, a
    and b
    or [hl]
    and b
    xor b
    or e
    rst $20
    ld d, a
    nop
    ld d, d
    cp l
    ld a, a
    and a
    xor [hl]
    or h
    or d
    and h
    ld a, a
    ld d, a
    nop
    ld d, e
    cp l
    ld a, a
    and a
    xor [hl]
    or h
    or d
    and h
    ld a, a
    ld d, a
    nop
    sub e
    and a
    xor [hl]
    or d
    and h
    ld a, a
    ld d, h
    ld a, a
    add c
    add b
    adc e
    adc e
    or d
    ld c, a
    and b
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    or [hl]
    and b
    xor b
    or d
    or e
    rst $20
    ld d, l
    sbc b
    xor [hl]
    or h
    ld a, a
    and a
    and b
    or l
    and h
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
    and [hl]
    or c
    and h
    and b
    or e
    ld a, a
    or e
    and a
    and b
    or e
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
    or c
    or c
    cp b
    ld a, a
    and b
    xor l
    and e
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
    and b
    xor l
    cp b
    or [hl]
    and a
    and h
    or c
    and h
    rst $20
    ld d, a
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
    add [hl]
    sbc b
    adc h
    ld c, a
    xor b
    or d
    ld a, a
    and b
    xor e
    or [hl]
    and b
    cp b
    or d
    ld a, a
    and d
    xor e
    xor [hl]
    or d
    and h
    and e
    add sp, $51
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
    xor [hl]
    ld a, a
    or e
    and a
    and h
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
    and $57
    nop
    sub l
    adc b
    sub c
    adc b
    add e
    adc b
    add b
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
    xor [hl]
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
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
    ld hl, sp+$7f
    xor d
    xor b
    xor l
    and e
    or d
    ld d, l
    xor [hl]
    and l
    ld a, a
    and d
    and b
    or e
    and h
    or c
    xor a
    xor b
    xor e
    xor e
    and b
    or c
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    and $57
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    adc [hl]
    adc d
    ld a, a
    or e
    and a
    and h
    xor l
    rst $20
    ld d, a
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
    and a
    and b
    or d
    ld a, a
    xor l
    xor [hl]
    ld c, a
    xor a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    db $f4
    ld a, a
    and c
    or h
    or e
    ld d, l
    sub [hl]
    add h
    add h
    add e
    adc e
    add h
    ld a, a
    and e
    xor [hl]
    and h
    or d
    add sp, $51
    sub [hl]
    and b
    or e
    and d
    and a
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor b
    or e
    or d
    ld c, a
    adc a
    adc [hl]
    adc b
    sub d
    adc [hl]
    adc l
    ld a, a
    sub d
    sub e
    adc b
    adc l
    add [hl]
    rst $20
    ld d, a
    nop
    adc [hl]
    and a
    ld a, a
    add [hl]
    or c
    and b
    xor l
    and e
    xor a
    and b
    rst $20
    ld a, a
    add e
    xor [hl]
    xor l
    cp [hl]
    ld c, a
    and c
    and h
    ld a, a
    or d
    xor [hl]
    ld a, a
    xor h
    and h
    and b
    xor l
    rst $20
    ld d, l
    add a
    and h
    ld a, a
    and a
    and b
    or d
    xor l
    cp [hl]
    ld a, a
    and a
    and b
    and e
    ld a, a
    and a
    xor b
    or d
    ld d, l
    and d
    xor [hl]
    and l
    and l
    and h
    and h
    ld a, a
    cp b
    and h
    or e
    add sp, $57
    nop
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    adc b
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    or d
    and a
    xor [hl]
    xor a
    ld a, a
    xor b
    xor l
    ld c, a
    adc a
    add h
    sub [hl]
    sub e
    add h
    sub c
    ld a, a
    add d
    adc b
    sub e
    sbc b
    db $f4
    ld a, a
    adc b
    ld d, l
    and a
    and b
    or l
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and b
    xor d
    and h
    ld a, a
    or e
    and a
    and h
    ld d, l
    or [hl]
    xor b
    xor l
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    or c
    and b
    xor b
    xor e
    ld a, a
    xor b
    xor l
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
    add l
    adc [hl]
    sub c
    add h
    sub d
    sub e
    add sp, $57
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
    and [hl]
    xor [hl]
    ld c, a
    or e
    and a
    or c
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    and a
    and h
    or c
    and h
    rst $20
    ld d, c
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    xor a
    or c
    xor b
    or l
    and b
    or e
    and h
    ld c, a
    xor a
    or c
    xor [hl]
    xor a
    and h
    or c
    or e
    cp b
    rst $20
    ld d, a
    nop
    sbc b
    and b
    or [hl]
    xor l
    rst $20
    ld c, a
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
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    or h
    xor l
    add sp, $51
    adc b
    ld a, a
    and a
    and b
    and e
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    and e
    or c
    and h
    and b
    xor h
    ld c, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    and b
    ld a, a
    add e
    sub c
    adc [hl]
    sub [hl]
    sbc c
    add h
    add h
    ld d, l
    and h
    and b
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    xor h
    cp b
    ld a, a
    and e
    or c
    and h
    and b
    xor h
    add sp, $55
    sub [hl]
    and a
    and b
    or e
    cp l
    ld a, a
    or e
    and a
    xor b
    or d
    and $55
    sub [hl]
    and a
    and h
    or c
    and h
    ld a, a
    and e
    xor b
    and e
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    sub e
    adc h
    ld d, l
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    and $51
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    or d
    xor a
    xor [hl]
    xor [hl]
    xor d
    cp b
    rst $20
    ld c, a
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
    ld d, l
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
    sub e
    adc h
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
    sub e
    adc h
    ld a, [$e7f8]
    ld d, b
    ld d, b
    nop
    sub e
    adc h
    ld a, [$7ff8]
    and d
    xor [hl]
    xor l
    or e
    and b
    xor b
    xor l
    or d
    ld c, a
    add e
    sub c
    add h
    add b
    adc h
    ld a, a
    add h
    add b
    sub e
    add h
    sub c
    add sp, -$18
    add sp, $55
    add sp, -$18
    add sp, -$6e
    xor l
    xor [hl]
    or c
    and h
    add sp, -$18
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
    or e
    xor [hl]
    xor [hl]
    ld a, a
    xor h
    or h
    and d
    and a
    ld c, a
    or d
    or e
    or h
    and l
    and l
    ld a, a
    and b
    xor e
    or c
    and h
    and b
    and e
    cp b
    add sp, $57
    nop
    add b
    and a
    and a
    db $f4
    ld a, a
    adc b
    cp a
    and h
    ld a, a
    and a
    and b
    and e
    ld a, a
    xor h
    cp b
    ld c, a
    and d
    xor [hl]
    and l
    and l
    and h
    and h
    ld a, a
    xor l
    xor [hl]
    or [hl]
    ld a, a
    and b
    xor l
    and e
    ld a, a
    adc b
    ld d, l
    and l
    and h
    and h
    xor e
    ld a, a
    and [hl]
    or c
    and h
    and b
    or e
    rst $20
    ld d, c
    sub d
    or h
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and [hl]
    xor [hl]
    ld c, a
    or e
    and a
    or c
    xor [hl]
    or h
    and [hl]
    and a
    rst $20
    ld d, c
    add b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor b
    xor l
    ld a, a
    and b
    ld c, a
    and a
    or h
    or c
    or c
    cp b
    and $57
    nop
    adc b
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
    ld a, a
    or h
    or d
    xor b
    xor l
    and [hl]
    ld c, a
    and b
    ld a, a
    ld d, h
    add e
    add h
    sub a
    add sp, $51
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    or e
    and d
    and a
    ld a, a
    and b
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    db $f4
    ld a, a
    ld d, h
    add e
    add h
    sub a
    ld d, l
    xor b
    or d
    ld a, a
    and b
    or h
    or e
    xor [hl]
    xor h
    and b
    or e
    xor b
    and d
    and b
    xor e
    xor e
    cp b
    ld d, l
    or h
    xor a
    and e
    and b
    or e
    and h
    and e
    add sp, $51
    sub [hl]
    and a
    and b
    or e
    and $7f
    add e
    xor [hl]
    xor l
    cp [hl]
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
    and a
    xor [hl]
    or [hl]
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
    and $51
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
    ld c, a
    and a
    xor [hl]
    or [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    xor l
    add sp, $57
    nop
    sub e
    xor b
    xor h
    and h
    ld a, a
    xor b
    or d
    ld a, a
    xor h
    xor [hl]
    xor l
    and h
    cp b
    add sp, -$18
    add sp, $4f
    add [hl]
    xor [hl]
    ld a, a
    and b
    xor e
    xor [hl]
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    xor l
    add sp, $57
    nop
    add l
    xor b
    or c
    or d
    or e
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
    or e
    xor [hl]
    ld a, a
    or [hl]
    and h
    and b
    xor d
    and h
    xor l
    ld a, a
    or e
    and a
    and h
    ld d, l
    or e
    and b
    or c
    and [hl]
    and h
    or e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
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
    ld a, a
    ld c, a
    sub e
    and a
    and h
    ld a, a
    add h
    or e
    and h
    or c
    xor l
    and b
    xor e
    xor e
    cp b
    ld d, l
    add [hl]
    or c
    and h
    and h
    xor l
    ld a, a
    adc a
    and b
    or c
    and b
    and e
    xor b
    or d
    and h
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
    add d
    and b
    or e
    and d
    and a
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    and b
    xor l
    and e
    ld a, a
    and h
    or a
    xor a
    and b
    xor l
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld d, l
    and d
    xor [hl]
    xor e
    xor e
    and h
    and d
    or e
    xor b
    xor [hl]
    xor l
    rst $20
    ld d, c
    sub e
    and a
    and h
    ld a, a
    xor h
    xor [hl]
    or c
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
    db $f4
    ld c, a
    or e
    and a
    and h
    ld a, a
    and h
    and b
    or d
    xor b
    and h
    or c
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    or d
    ld d, l
    or e
    xor [hl]
    ld a, a
    and l
    xor b
    and [hl]
    and a
    or e
    rst $20
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
    and c
    and b
    or e
    or e
    xor e
    and h
    ld a, a
    xor h
    xor [hl]
    or l
    and h
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
    and b
    or c
    and h
    ld d, l
    xor e
    xor b
    xor h
    xor b
    or e
    and h
    and e
    ld a, a
    and c
    cp b
    ld a, a
    or e
    and a
    and h
    xor b
    or c
    ld d, l
    adc a
    adc [hl]
    sub [hl]
    add h
    sub c
    ld a, a
    adc a
    adc [hl]
    adc b
    adc l
    sub e
    or d
    db $f4
    ld a, a
    adc a
    adc a
    add sp, $51
    sub e
    xor [hl]
    ld a, a
    or c
    and h
    xor a
    xor e
    and h
    xor l
    xor b
    or d
    and a
    ld a, a
    adc a
    adc a
    db $f4
    ld c, a
    or c
    and h
    or d
    or e
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
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    or e
    ld a, a
    and b
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
    rst $20
    ld d, a
    nop
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
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add [hl]
    sbc b
    adc h
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    add [hl]
    sbc b
    adc h
    cp l
    ld a, a
    and e
    xor [hl]
    xor [hl]
    or c
    or d
    ld c, a
    and b
    or c
    and h
    ld a, a
    xor e
    xor [hl]
    and d
    xor d
    and h
    and e
    add sp, -$18
    add sp, $57
    nop
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
    add d
    adc e
    add h
    add l
    add b
    adc b
    sub c
    sbc b
    or d
    ld a, a
    and d
    and b
    xor h
    and h
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
    xor h
    xor [hl]
    xor [hl]
    xor l
    rst $20
    ld d, c
    sub e
    and a
    and h
    cp b
    ld a, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    and h
    and e
    ld a, a
    ld c, a
    and b
    and l
    or e
    and h
    or c
    ld a, a
    adc h
    adc [hl]
    adc [hl]
    adc l
    ld a, a
    sub d
    sub e
    adc [hl]
    adc l
    add h
    ld d, l
    and l
    and h
    xor e
    xor e
    ld a, a
    xor [hl]
    xor l
    ld a, a
    adc h
    sub e
    add sp, -$74
    adc [hl]
    adc [hl]
    adc l
    add sp, $57
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
    xor l
    cp [hl]
    ld a, a
    xor h
    and b
    xor l
    cp b
    ld c, a
    or d
    and h
    or c
    xor b
    xor [hl]
    or h
    or d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
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
    cp b
    db $e4
    and h
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld c, a
    add c
    sub h
    add [hl]
    ld a, a
    add d
    add b
    sub e
    add d
    add a
    add h
    sub c
    or d
    db $f4
    ld d, l
    and c
    or h
    or e
    ld a, a
    adc a
    add h
    sub [hl]
    sub e
    add h
    sub c
    ld a, a
    add [hl]
    sbc b
    adc h
    cp l
    ld d, l
    add c
    sub c
    adc [hl]
    add d
    adc d
    ld a, a
    xor b
    or d
    ld a, a
    or e
    xor [hl]
    or e
    and b
    xor e
    xor e
    cp b
    ld d, l
    xor b
    xor l
    or e
    xor [hl]
    ld a, a
    xor b
    or e
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
    and d
    and a
    and h
    and d
    xor d
    ld a, a
    xor [hl]
    or h
    or e
    ld c, a
    or e
    and a
    and h
    ld a, a
    adc h
    sub h
    sub d
    add h
    sub h
    adc h
    and $57
    nop
    sub [hl]
    and h
    or c
    and h
    xor l
    cp [hl]
    ld a, a
    or e
    and a
    xor [hl]
    or d
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
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    adc h
    sub e
    add sp, $55
    adc h
    adc [hl]
    adc [hl]
    adc l
    ld a, a
    and b
    xor h
    and b
    cp c
    xor b
    xor l
    and [hl]
    and $57
    nop
    sub c
    and h
    and b
    xor e
    xor e
    cp b
    and $4f
    sbc b
    xor [hl]
    or h
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
    rst $20
    ld d, a
    nop
    adc b
    or e
    cp l
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    ld a, a
    and a
    and h
    or c
    and h
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
    or e
    xor [hl]
    ld a, a
    xor a
    and b
    cp b
    ld d, l
    or e
    xor [hl]
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    xor b
    xor l
    db $f4
    ld a, a
    and c
    or h
    or e
    ld d, l
    xor b
    or e
    cp l
    ld a, a
    or [hl]
    xor [hl]
    or c
    or e
    and a
    ld a, a
    xor b
    or e
    rst $20
    ld d, l
    sub d
    and h
    and h
    ld a, a
    cp b
    xor [hl]
    or h
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
    adc a
    or d
    or d
    or d
    or d
    or e
    rst $20
    ld c, a
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
    and b
    or e
    ld d, l
    adc b
    push hl
    ld a, a
    and e
    xor [hl]
    xor b
    xor l
    and [hl]
    and $57
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
    ld c, a
    adc b
    or e
    cp l
    ld a, a
    and a
    and b
    or c
    and e
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor d
    rst $20
    ld d, a
    nop
    adc b
    push hl
    ld a, a
    or d
    xor a
    or c
    and b
    cp b
    xor b
    xor l
    and [hl]
    ld a, a
    sub c
    add h
    adc a
    add h
    adc e
    ld c, a
    or e
    xor [hl]
    ld a, a
    xor d
    and h
    and h
    xor a
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor h
    cp b
    ld a, a
    and [hl]
    and b
    or c
    and e
    and h
    xor l
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    db $e4
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
    ld c, a
    or c
    xor b
    and [hl]
    and a
    or e
    and $7f
    add c
    sub c
    adc [hl]
    add d
    adc d
    cp l
    ld d, l
    xor e
    xor [hl]
    xor [hl]
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor l
    and h
    or [hl]
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
    or c
    or d
    rst $20
    ld d, l
    add l
    xor [hl]
    xor e
    xor e
    xor [hl]
    or [hl]
    ld a, a
    xor h
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
    and a
    and h
    ld c, a
    or c
    xor b
    and [hl]
    and a
    or e
    ld a, a
    or d
    or e
    or h
    and l
    and l
    db $f4
    ld a, a
    and [hl]
    xor [hl]
    ld d, l
    or e
    and b
    xor d
    and h
    ld a, a
    xor [hl]
    xor l
    ld a, a
    add c
    sub c
    adc [hl]
    add d
    adc d
    rst $20
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
    add b
    xor l
    cp b
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
    ld c, a
    or e
    and b
    xor d
    and h
    or d
    ld a, a
    xor a
    and b
    or c
    or e
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
    db $f4
    ld a, a
    and a
    xor [hl]
    or [hl]
    and h
    or l
    and h
    or c
    ld d, l
    or d
    and a
    xor [hl]
    or c
    or e
    db $f4
    ld a, a
    and h
    and b
    or c
    xor l
    or d
    ld a, a
    add h
    sub a
    adc a
    rst $20
    ld d, a
    nop
    adc l
    adc [hl]
    sub e
    adc b
    add d
    add h
    rst $20
    ld d, c
    sub e
    and a
    xor b
    and h
    or l
    and h
    or d
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
    or d
    or e
    and h
    and b
    xor e
    xor b
    xor l
    and [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    and l
    xor [hl]
    or d
    or d
    xor b
    xor e
    or d
    ld a, a
    and b
    or e
    ld a, a
    adc h
    sub e
    add sp, $55
    adc h
    adc [hl]
    adc [hl]
    adc l
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
    and b
    xor e
    xor e
    ld d, l
    adc a
    add h
    sub [hl]
    sub e
    add h
    sub c
    ld a, a
    adc a
    adc [hl]
    adc e
    adc b
    add d
    add h
    ld d, l
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and b
    xor l
    cp b
    ld a, a
    xor b
    xor l
    and l
    xor [hl]
    rst $20
    ld d, a
    nop
    adc a
    add h
    sub [hl]
    sub e
    add h
    sub c
    ld a, a
    adc h
    sub h
    sub d
    add h
    sub h
    adc h
    ld c, a
    adc [hl]
    add l
    ld a, a
    sub d
    add d
    adc b
    add h
    adc l
    add d
    add h
    ld d, a
    nop
    adc a
    add h
    sub [hl]
    sub e
    add h
    sub c
    ld a, a
    add d
    adc b
    sub e
    sbc b
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
    add c
    sub c
    adc [hl]
    add d
    adc d
    ld d, c
    sub e
    and a
    and h
    ld a, a
    sub c
    xor [hl]
    and d
    xor d
    ld a, a
    sub d
    xor [hl]
    xor e
    xor b
    and e
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    sub e
    or c
    and b
    xor b
    xor l
    and h
    or c
    rst $20
    ld d, a
    nop
    adc a
    add h
    sub [hl]
    sub e
    add h
    sub c
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld c, a
    add b
    ld a, a
    sub d
    or e
    xor [hl]
    xor l
    and h
    ld a, a
    add [hl]
    or c
    and b
    cp b
    ld d, l
    add d
    xor b
    or e
    cp b
    ld d, a
    nop
    ld d, e
    sbc h
    ld a, a
    sbc b
    xor [hl]
    rst $20
    ld c, a
    ld d, d
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
    ld c, a
    or d
    or e
    or c
    or h
    and [hl]
    and [hl]
    xor e
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    xor e
    xor [hl]
    xor l
    and [hl]
    ld d, l
    and c
    and b
    and d
    xor d
    ld a, a
    and a
    and h
    or c
    and h
    and $51
    adc b
    push hl
    ld a, a
    and e
    xor [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    and [hl]
    or c
    and h
    and b
    or e
    rst $20
    ld c, a
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
    ld a, a
    and c
    or h
    xor l
    and d
    and a
    ld d, l
    xor [hl]
    and l
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
    or d
    xor h
    and b
    or c
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
    or c
    and h
    db $f4
    ld a, a
    xor e
    and h
    or e
    ld a, a
    xor h
    and h
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
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    or h
    and [hl]
    and a
    or e
    db $f4
    ld d, l
    ld d, d
    rst $20
    ld d, a
    nop
    add a
    and h
    cp b
    rst $20
    ld c, a
    sub e
    and b
    xor d
    and h
    ld a, a
    xor b
    or e
    ld a, a
    and h
    and b
    or d
    cp b
    rst $20
    ld d, l
    sbc b
    xor [hl]
    or h
    ld a, a
    or [hl]
    xor [hl]
    xor l
    ld a, a
    and b
    xor e
    or c
    and h
    and b
    and e
    cp b
    rst $20
    ld e, b
    nop
    add a
    and h
    and a
    rst $20
    ld c, a
    sbc b
    xor [hl]
    or h
    db $e4
    and h
    ld a, a
    xor l
    xor [hl]
    ld a, a
    xor h
    and b
    or e
    and d
    and a
    ld d, l
    and l
    xor [hl]
    or c
    ld a, a
    xor h
    cp b
    ld a, a
    and [hl]
    and h
    xor l
    xor b
    or h
    or d
    rst $20
    ld e, b
    nop
    ld d, e
    sbc h
    ld a, a
    add a
    and h
    cp b
    db $f4
    ld c, a
    and [hl]
    or h
    and h
    or d
    or d
    ld a, a
    or [hl]
    and a
    and b
    or e
    and $51
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
    add c
    adc b
    adc e
    adc e
    cp l
    ld c, a
    and b
    xor l
    and e
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    and a
    xor b
    xor h
    ld a, a
    or e
    xor [hl]
    ld d, l
    or d
    and a
    xor [hl]
    or [hl]
    ld a, a
    xor h
    and h
    ld a, a
    and a
    xor b
    or d
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
    rst $20
    ld d, c
    sub e
    and a
    and b
    or e
    ld a, a
    and b
    and e
    and e
    and h
    and e
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
    xor a
    and b
    and [hl]
    and h
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    cp b
    ld d, l
    ld d, h
    add e
    add h
    sub a
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
    db $f4
    ld a, a
    add c
    adc b
    adc e
    adc e
    cp l
    ld c, a
    or [hl]
    xor [hl]
    or c
    xor e
    and e
    ld a, a
    and l
    and b
    xor h
    xor [hl]
    or h
    or d
    ld a, a
    and b
    or d
    ld a, a
    and b
    ld d, l
    ld d, h
    adc h
    add b
    adc l
    adc b
    add b
    add d
    rst $20
    ld d, c
    add a
    and h
    ld a, a
    xor b
    xor l
    or l
    and h
    xor l
    or e
    and h
    and e
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
    sub d
    or e
    xor [hl]
    or c
    and b
    and [hl]
    and h
    ld d, l
    sub d
    cp b
    or d
    or e
    and h
    xor h
    ld a, a
    xor [hl]
    xor l
    ld a, a
    adc a
    add d
    rst $20
    ld d, c
    sub d
    xor b
    xor l
    and d
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    db $e4
    and h
    ld a, a
    or h
    or d
    xor b
    xor l
    and [hl]
    ld c, a
    and a
    xor b
    or d
    ld a, a
    or d
    cp b
    or d
    or e
    and h
    xor h
    db $f4
    ld a, a
    and [hl]
    xor [hl]
    ld d, l
    or e
    and a
    and b
    xor l
    xor d
    ld a, a
    and a
    xor b
    xor h
    rst $20
    ld d, c
    sub [hl]
    and h
    xor e
    xor e
    db $f4
    ld a, a
    adc b
    ld a, a
    and c
    and h
    or e
    or e
    and h
    or c
    ld c, a
    and [hl]
    and h
    or e
    ld a, a
    or c
    xor [hl]
    xor e
    xor e
    xor b
    xor l
    and [hl]
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
    ld a, a
    xor e
    and b
    or e
    and h
    or c
    rst $20
    ld d, a
    nop
    add a
    and h
    cp b
    rst $20
    ld a, a
    sub d
    or e
    and b
    cp b
    ld a, a
    xor [hl]
    or h
    or e
    rst $20
    ld c, a
    adc b
    or e
    cp l
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld d, l
    cp b
    and b
    or c
    and e
    rst $20
    ld a, a
    add a
    or h
    and a
    and $7f
    adc h
    and h
    and $51
    adc b
    push hl
    ld a, a
    and b
    xor l
    ld a, a
    xor b
    xor l
    xor l
    xor [hl]
    and d
    and h
    xor l
    or e
    ld c, a
    and c
    cp b
    or d
    or e
    and b
    xor l
    and e
    and h
    or c
    rst $20
    ld a, a
    add e
    xor [hl]
    xor l
    cp [hl]
    ld d, l
    cp b
    xor [hl]
    or h
    ld a, a
    and c
    and h
    xor e
    xor b
    and h
    or l
    and h
    ld a, a
    xor h
    and h
    and $57
    nop
    ld d, d
    ld a, a
    or c
    and h
    and d
    xor [hl]
    or l
    and h
    or c
    and h
    and e
    ld c, a
    sub e
    adc h
    ld hl, sp-$02
    rst $20
    ld d, b
    ld d, b
    nop
    ld d, c
    adc b
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
    xor h
    xor [hl]
    or l
    xor b
    xor l
    and [hl]
    rst $20
    ld a, a
    add c
    cp b
    and h
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
    ld d, c
    adc b
    ld a, a
    and d
    and b
    xor l
    cp [hl]
    ld a, a
    or c
    or h
    xor l
    ld a, a
    or h
    xor l
    or e
    xor b
    xor e
    ld c, a
    adc b
    ld a, a
    and [hl]
    xor b
    or l
    and h
    ld a, a
    xor b
    or e
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
    sub d
    or e
    xor [hl]
    xor a
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
    ld a, a
    adc b
    cp h
    xor e
    ld d, l
    xor e
    and h
    and b
    or l
    and h
    ld a, a
    or b
    or h
    xor b
    and h
    or e
    xor e
    cp b
    rst $20
    ld e, b
    nop
    adc [hl]
    adc d
    rst $20
    ld a, a
    adc b
    cp h
    xor e
    ld a, a
    or c
    and h
    or e
    or h
    or c
    xor l
    ld c, a
    or e
    and a
    and h
    ld a, a
    sub e
    adc h
    ld a, a
    adc b
    ld a, a
    or d
    or e
    xor [hl]
    xor e
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
    and b
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    ld c, a
    or e
    xor [hl]
    xor [hl]
    and $7f
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
    db $f4
    ld d, l
    and l
    xor b
    and [hl]
    and a
    or e
    xor b
    xor l
    and [hl]
    db $f4
    ld a, a
    xor b
    or e
    cp l
    ld a, a
    and b
    ld d, l
    or e
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    xor e
    xor b
    and l
    and h
    add sp, $57
    nop
    sub e
    and a
    and b
    or e
    ld a, a
    and c
    or h
    or d
    and a
    ld a, a
    xor b
    xor l
    ld c, a
    and l
    or c
    xor [hl]
    xor l
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    and a
    xor [hl]
    xor a
    ld d, l
    xor b
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
    cp b
    add sp, $51
    sub e
    and a
    and h
    or c
    and h
    ld a, a
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
    ld c, a
    or [hl]
    and b
    cp b
    ld a, a
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
    add sp, $57
    nop
    sbc b
    xor [hl]
    or h
    db $e4
    and h
    ld a, a
    xor h
    and b
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    xor l
    ld c, a
    and h
    xor l
    and d
    cp b
    and d
    xor e
    xor [hl]
    xor a
    and h
    and e
    xor b
    and b
    ld a, a
    xor [hl]
    xor l
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    and $7f
    sub e
    and a
    and b
    or e
    ld d, l
    or d
    xor [hl]
    or h
    xor l
    and e
    or d
    ld a, a
    and b
    xor h
    or h
    or d
    xor b
    xor l
    and [hl]
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld a, a
    and a
    and h
    or c
    and h
    ld c, a
    or [hl]
    and h
    or c
    and h
    ld a, a
    or c
    xor [hl]
    and c
    and c
    and h
    and e
    add sp, $51
    adc b
    or e
    cp l
    ld a, a
    xor [hl]
    and c
    or l
    xor b
    xor [hl]
    or h
    or d
    ld a, a
    or e
    and a
    and b
    or e
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
    ld a, a
    xor b
    or d
    ld d, l
    and c
    and h
    and a
    xor b
    xor l
    and e
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    xor h
    xor [hl]
    or d
    or e
    ld d, l
    and a
    and h
    xor b
    xor l
    xor [hl]
    or h
    or d
    ld a, a
    and d
    or c
    xor b
    xor h
    and h
    rst $20
    ld d, c
    add h
    or l
    and h
    xor l
    ld a, a
    xor [hl]
    or h
    or c
    ld a, a
    adc a
    adc [hl]
    adc e
    adc b
    add d
    add h
    ld c, a
    and l
    xor [hl]
    or c
    and d
    and h
    ld a, a
    and a
    and b
    or d
    ld a, a
    or e
    or c
    xor [hl]
    or h
    and c
    xor e
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
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub e
    or d
    rst $20
    ld d, a
    nop
    adc [hl]
    adc d
    rst $20
    ld a, a
    sub d
    adc e
    adc [hl]
    sub [hl]
    add c
    sub c
    adc [hl]
    rst $20
    ld c, a
    sub h
    or d
    and h
    ld a, a
    sub d
    adc [hl]
    adc l
    adc b
    add d
    add c
    adc [hl]
    adc [hl]
    adc h
    rst $20
    ld d, l
    add d
    xor [hl]
    xor h
    and h
    ld a, a
    xor [hl]
    xor l
    db $f4
    ld a, a
    sub d
    adc e
    adc [hl]
    sub [hl]
    add c
    sub c
    adc [hl]
    ld d, l
    xor a
    and b
    cp b
    ld a, a
    and b
    or e
    or e
    and h
    xor l
    or e
    xor b
    xor [hl]
    xor l
    rst $20
    ld d, a
    nop
    sub d
    adc e
    adc [hl]
    sub [hl]
    add c
    sub c
    adc [hl]
    ld a, a
    xor a
    or h
    xor l
    and d
    and a
    rst $20
    ld c, a
    adc l
    xor [hl]
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    ld a, a
    and c
    xor e
    and h
    or [hl]
    ld a, a
    xor b
    or e
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
    adc e
    adc [hl]
    sub [hl]
    add c
    sub c
    adc [hl]
    db $f4
    ld a, a
    sub [hl]
    adc b
    sub e
    add a
    add e
    sub c
    add b
    sub [hl]
    rst $20
    ld c, a
    adc l
    xor [hl]
    rst $20
    ld a, a
    sub e
    and a
    and b
    or e
    cp l
    ld a, a
    or [hl]
    or c
    xor [hl]
    xor l
    and [hl]
    rst $20
    ld d, c
    adc b
    or e
    cp l
    ld a, a
    or d
    xor [hl]
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
    xor [hl]
    xor l
    or e
    or c
    xor [hl]
    xor e
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
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    cp l
    ld c, a
    xor [hl]
    and c
    and h
    and e
    xor b
    and h
    xor l
    and d
    and h
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
    sub d
    adc e
    adc [hl]
    sub [hl]
    add c
    sub c
    adc [hl]
    ld a, a
    or e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    and b
    ld c, a
    or d
    xor l
    xor [hl]
    xor [hl]
    cp c
    and h
    add sp, -$18
    add sp, $57
    nop
    sub d
    adc e
    adc [hl]
    sub [hl]
    add c
    sub c
    adc [hl]
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
    add sp, -$18
    add sp, $57
    nop
    sub d
    adc e
    adc [hl]
    sub [hl]
    add c
    sub c
    adc [hl]
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
    add sp, -$18
    add sp, $57
    nop
    sub d
    adc e
    adc [hl]
    sub [hl]
    add c
    sub c
    adc [hl]
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
    add sp, -$18
    add sp, $57
    nop
    adc b
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld a, a
    and b
    ld a, a
    and c
    or c
    xor b
    and [hl]
    and a
    or e
    ld c, a
    or c
    and h
    and e
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
    adc b
    cp h
    xor e
    ld a, a
    xor d
    and h
    and h
    xor a
    ld a, a
    xor b
    or e
    ld a, a
    and b
    or e
    ld c, a
    and a
    xor [hl]
    xor h
    and h
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    xor b
    or e
    ld a, a
    or [hl]
    xor [hl]
    xor l
    cp [hl]
    ld d, l
    and [hl]
    and h
    or e
    ld a, a
    and e
    xor b
    or c
    or e
    cp b
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
    add d
    add h
    sub c
    sub h
    adc e
    add h
    add b
    adc l
    ld c, a
    add d
    add b
    sub l
    add h
    rst $20
    ld a, a
    add a
    xor [hl]
    or c
    or c
    xor b
    and c
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
    ld d, l
    xor e
    xor b
    or l
    and h
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    or c
    and h
    rst $20
    ld d, c
    sub e
    and a
    and h
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
    ld c, a
    and d
    and a
    and b
    xor h
    xor a
    xor b
    xor [hl]
    xor l
    ld a, a
    xor b
    or d
    ld a, a
    or e
    and a
    and h
    ld d, l
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    xor a
    and h
    or c
    or d
    xor [hl]
    xor l
    ld a, a
    or [hl]
    and a
    xor [hl]
    ld d, l
    xor b
    or d
    ld a, a
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
    rst $20
    ld d, a
    nop
    add d
    add h
    sub c
    sub h
    adc e
    add h
    add b
    adc l
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld c, a
    add b
    ld a, a
    adc h
    cp b
    or d
    or e
    and h
    or c
    xor b
    xor [hl]
    or h
    or d
    db $f4
    ld d, l
    add c
    xor e
    or h
    and h
    ld a, a
    add b
    or h
    or c
    and b
    ld d, l
    sub d
    or h
    or c
    or c
    xor [hl]
    or h
    xor l
    and e
    or d
    ld a, a
    adc b
    or e
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
    xor b
    xor l
    and [hl]
    ld a, a
    add c
    ld a, a
    add c
    or h
    or e
    or e
    xor [hl]
    xor l
    ld c, a
    and e
    or h
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    and h
    or l
    xor [hl]
    xor e
    or h
    or e
    xor b
    xor [hl]
    xor l
    ld d, l
    and d
    and b
    xor l
    and d
    and h
    xor e
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    and a
    xor [hl]
    xor e
    and h
    ld d, l
    xor a
    or c
    xor [hl]
    and d
    and h
    or d
    or d
    add sp, $57
    nop
    add [hl]
    or c
    and b
    or d
    or d
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and d
    and b
    or l
    and h
    or d
    ld c, a
    and a
    and b
    xor l
    and e
    xor e
    and h
    and e
    ld a, a
    and h
    and b
    or d
    xor b
    xor e
    cp b
    rst $20
    ld d, l
    add c
    adc b
    adc d
    add h
    ld a, a
    sub d
    add a
    adc [hl]
    adc a
    ld d, a
    nop
    add d
    add h
    sub c
    sub h
    adc e
    add h
    add b
    adc l
    ld a, a
    add d
    adc b
    sub e
    sbc b
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
    adc h
    adc b
    sub d
    sub e
    sbc b
    ld d, c
    sub e
    and a
    and h
    ld a, a
    sub e
    xor [hl]
    xor h
    and c
    xor [hl]
    cp b
    xor b
    or d
    and a
    ld c, a
    adc h
    and h
    or c
    xor h
    and b
    xor b
    and e
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
    and c
    and h
    xor e
    xor b
    and h
    or l
    and h
    ld a, a
    xor b
    xor l
    ld c, a
    add [hl]
    add a
    adc [hl]
    sub d
    sub e
    or d
    and $57
    nop
    sub c
    and h
    and b
    xor e
    xor e
    cp b
    and $7f
    sub d
    xor [hl]
    ld a, a
    or e
    and a
    and h
    or c
    and h
    ld c, a
    and b
    or c
    and h
    ld a, a
    and c
    and h
    xor e
    xor b
    and h
    or l
    and h
    or c
    or d
    add sp, -$18
    add sp, $57
    nop
    add a
    and b
    and a
    and b
    and a
    and b
    db $f4
    ld a, a
    adc b
    ld a, a
    and [hl]
    or h
    and h
    or d
    or d
    ld c, a
    xor l
    xor [hl]
    or e
    add sp, $51
    sub e
    and a
    and b
    or e
    ld a, a
    or [hl]
    and a
    xor b
    or e
    and h
    ld a, a
    and a
    and b
    xor l
    and e
    ld c, a
    xor [hl]
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    and h
    or c
    db $f4
    ld d, l
    xor b
    or e
    cp l
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    or c
    and h
    and b
    xor e
    add sp, $57
    nop
    sub e
    and a
    xor b
    or d
    ld a, a
    or e
    xor [hl]
    or [hl]
    xor l
    ld a, a
    xor b
    or d
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    xor l
    ld c, a
    and b
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    and [hl]
    or c
    and b
    or l
    and h
    ld a, a
    or d
    xor b
    or e
    and h
    ld d, l
    xor [hl]
    and l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    adc h
    and h
    xor h
    xor [hl]
    or c
    xor b
    and b
    xor e
    ld a, a
    or d
    and h
    or c
    or l
    xor b
    and d
    and h
    or d
    ld c, a
    and b
    or c
    and h
    ld a, a
    and a
    and h
    xor e
    and e
    ld a, a
    xor b
    xor l
    ld d, l
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
    add sp, $57
    nop
    add [hl]
    add a
    adc [hl]
    sub d
    sub e
    or d
    ld a, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    and h
    and e
    ld c, a
    xor b
    xor l
    ld a, a
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
    and h
    cp b
    db $e4
    and h
    ld c, a
    or e
    and a
    and h
    ld a, a
    or d
    xor a
    xor b
    or c
    xor b
    or e
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
    or e
    and a
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld d, l
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub e
    or d
    ld a, a
    xor d
    xor b
    xor e
    xor e
    and h
    and e
    add sp, $57
    nop
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
    ld c, a
    sub e
    and a
    and h
    ld a, a
    adc l
    xor [hl]
    and c
    xor e
    and h
    ld a, a
    adc a
    or h
    or c
    xor a
    xor e
    and h
    ld d, l
    sub e
    xor [hl]
    or [hl]
    xor l
    ld d, a
    nop
    adc l
    and h
    or [hl]
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
    rst $20
    ld d, c
    adc h
    and b
    xor d
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc b
    xor l
    or l
    xor b
    or d
    xor b
    and c
    xor e
    and h
    ld c, a
    adc a
    xor e
    and b
    xor b
    xor l
    ld a, a
    or e
    xor [hl]
    ld a, a
    sub d
    and h
    and h
    rst $20
    ld d, c
    sub d
    adc b
    adc e
    adc a
    add a
    ld a, a
    add d
    adc [hl]
    add sp, $57
    nop
    adc e
    add b
    sub l
    add h
    adc l
    add e
    add h
    sub c
    ld a, a
    sub l
    adc [hl]
    adc e
    sub h
    adc l
    sub e
    add h
    add h
    sub c
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add a
    adc [hl]
    sub h
    sub d
    add h
    ld d, a
    nop
    adc h
    and b
    cp b
    ld a, a
    or e
    and a
    and h
    ld a, a
    sub d
    xor [hl]
    or h
    xor e
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
    sub c
    and h
    or d
    or e
    ld a, a
    add h
    and b
    or d
    cp b
    ld d, l
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
    ld d, a
    nop
    sub [hl]
    and h
    db $e4
    and h
    ld a, a
    and d
    and b
    or c
    and h
    and l
    or h
    xor e
    ld c, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    xor a
    xor [hl]
    xor e
    xor e
    or h
    or e
    xor b
    xor [hl]
    xor l
    rst $20
    ld d, c
    sub [hl]
    and h
    cp a
    and h
    ld a, a
    and a
    and h
    and b
    or c
    and e
    ld a, a
    add [hl]
    sub c
    adc b
    adc h
    add h
    sub c
    ld c, a
    xor h
    or h
    xor e
    or e
    xor b
    xor a
    xor e
    xor b
    and h
    or d
    ld a, a
    xor b
    xor l
    ld d, l
    or e
    xor [hl]
    or a
    xor b
    and d
    ld a, a
    or d
    xor e
    or h
    and e
    and [hl]
    and h
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
    or d
    and h
    and h
    ld a, a
    sub d
    add sp, -$6e
    add sp, $4f
    add b
    adc l
    adc l
    add h
    ld a, a
    xor h
    xor [hl]
    xor [hl]
    or c
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
    and a
    and b
    or c
    and c
    xor [hl]
    or c
    and $57
    nop
    sub d
    xor [hl]
    db $f4
    ld a, a
    sub d
    add sp, -$6e
    add sp, -$80
    adc l
    adc l
    add h
    ld a, a
    and a
    and b
    or d
    ld c, a
    and e
    and h
    xor a
    and b
    or c
    or e
    and h
    and e
    rst $20
    ld d, c
    sub d
    and a
    and h
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
    ld a, a
    xor b
    xor l
    ld c, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    and b
    ld a, a
    cp b
    and h
    and b
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
    sub d
    add sp, -$6e
    add sp, $4f
    add b
    adc l
    adc l
    add h
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
    sub d
    add sp, -$6e
    add sp, $4f
    add b
    adc l
    adc l
    add h
    rst $20
    ld d, c
    add h
    or a
    and d
    or h
    or d
    and h
    ld a, a
    xor h
    and h
    db $f4
    ld a, a
    and e
    xor [hl]
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
    and b
    ld a, a
    or e
    xor b
    and d
    xor d
    and h
    or e
    and $58
    nop
    ld d, d
    ld a, a
    and l
    xor e
    and b
    or d
    and a
    and h
    and e
    ld c, a
    or e
    and a
    and h
    ld a, a
    sub d
    add sp, -$6e
    add sp, -$6d
    adc b
    add d
    adc d
    add h
    sub e
    rst $20
    ld d, c
    add [hl]
    or c
    and h
    and b
    or e
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
    sub d
    add sp, -$6e
    add sp, -$80
    adc l
    adc l
    add h
    rst $20
    ld d, a
    nop
    ld d, d
    ld a, a
    and e
    xor [hl]
    and h
    or d
    xor l
    cp [hl]
    ld c, a
    and a
    and b
    or l
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor l
    and h
    and h
    and e
    and h
    and e
    ld d, l
    sub d
    add sp, -$6e
    add sp, -$6d
    adc b
    add d
    adc d
    add h
    sub e
    add sp, $51
    sub d
    xor [hl]
    or c
    or c
    cp b
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    xor l
    and h
    and h
    and e
    ld a, a
    and b
    ld a, a
    or e
    xor b
    and d
    xor d
    and h
    or e
    ld c, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    and b
    and c
    xor [hl]
    and b
    or c
    and e
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    or d
    and a
    xor b
    xor a
    ld a, a
    or d
    and h
    or e
    ld a, a
    or d
    and b
    xor b
    xor e
    add sp, $57
    nop
    adc b
    push hl
    ld a, a
    xor a
    or h
    or e
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    or h
    xor a
    ld a, a
    and b
    ld c, a
    and c
    or h
    xor b
    xor e
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    xor b
    or d
    ld d, l
    xor a
    xor e
    xor [hl]
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor e
    and b
    xor l
    and e
    add sp, $51
    adc h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor b
    or d
    ld c, a
    or e
    and b
    xor h
    xor a
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor e
    and b
    xor l
    and e
    add sp, $57
    nop
    adc h
    add b
    add d
    add a
    adc [hl]
    adc a
    sbc h
    ld a, a
    add [hl]
    or h
    xor [hl]
    and a
    rst $20
    ld c, a
    add [hl]
    xor [hl]
    and [hl]
    xor [hl]
    and [hl]
    xor [hl]
    and a
    rst $20
    ld d, b
    ld d, b
    nop
    ld d, c
    add b
    ld a, a
    adc h
    add b
    add d
    add a
    adc [hl]
    adc a
    ld a, a
    xor b
    or d
    ld c, a
    or d
    or e
    xor [hl]
    xor h
    xor a
    xor b
    xor l
    and [hl]
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
    and l
    xor e
    and b
    or e
    add sp, $57
    nop
    sub d
    add sp, -$6e
    add sp, -$80
    adc l
    adc l
    add h
    ld a, a
    xor b
    or d
    ld a, a
    and b
    ld c, a
    and l
    and b
    xor h
    xor [hl]
    or h
    or d
    ld a, a
    xor e
    or h
    or a
    or h
    or c
    cp b
    ld d, l
    and d
    or c
    or h
    xor b
    or d
    and h
    ld a, a
    or d
    and a
    xor b
    xor a
    add sp, $51
    sub [hl]
    and h
    ld a, a
    or l
    xor b
    or d
    xor b
    or e
    ld a, a
    sub l
    add h
    sub c
    adc h
    adc b
    adc e
    adc b
    adc [hl]
    adc l
    ld c, a
    xor [hl]
    xor l
    and d
    and h
    ld a, a
    and b
    ld a, a
    cp b
    and h
    and b
    or c
    add sp, $57
    nop
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
    add d
    adc b
    sub e
    sbc b
    ld c, a
    sub e
    and a
    and h
    ld a, a
    adc a
    xor [hl]
    or c
    or e
    ld a, a
    xor [hl]
    and l
    ld d, l
    add h
    or a
    or b
    or h
    xor b
    or d
    xor b
    or e
    and h
    ld a, a
    sub d
    or h
    xor l
    or d
    and h
    or e
    or d
    ld d, a
    nop
    adc l
    adc [hl]
    sub e
    adc b
    add d
    add h
    rst $20
    ld d, c
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    rst $30
    ld hl, sp+$7f
    xor h
    and b
    cp b
    ld a, a
    and c
    and h
    ld c, a
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
    ld a, a
    and c
    cp b
    ld a, a
    and b
    ld d, l
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
    add sp, $51
    add e
    and h
    or e
    xor [hl]
    or h
    or c
    ld a, a
    or e
    and a
    or c
    xor [hl]
    or h
    and [hl]
    and a
    ld c, a
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
    ld a, a
    or e
    xor [hl]
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
    adc a
    adc [hl]
    adc e
    adc b
    add d
    add h
    ld d, a
    nop
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add l
    add b
    adc l
    ld a, a
    add d
    adc e
    sub h
    add c
    ld c, a
    add b
    xor e
    xor e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and l
    and b
    xor l
    or d
    ld d, l
    or [hl]
    and h
    xor e
    and d
    xor [hl]
    xor h
    and h
    rst $20
    ld d, a
    nop
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
    add d
    adc b
    sub e
    sbc b
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
    adc e
    sub e
    add sp, -$6e
    sub h
    sub c
    add [hl]
    add h
    ld d, c
    sub e
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
    ld a, a
    ld c, a
    add b
    xor h
    and h
    or c
    xor b
    and d
    and b
    xor l
    rst $20
    ld d, a
    nop
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
    add a
    add b
    sub c
    add c
    adc [hl]
    sub c
    ld d, a
    nop
    adc b
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    xor h
    cp b
    ld a, a
    adc d
    adc [hl]
    add l
    add l
    adc b
    adc l
    add [hl]
    ld c, a
    xor b
    xor l
    ld a, a
    add d
    adc b
    adc l
    adc l
    add b
    add c
    add b
    sub c
    rst $20
    ld d, c
    adc b
    or e
    cp l
    ld a, a
    xor l
    xor b
    and d
    and h
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    xor b
    or e
    ld c, a
    and c
    or c
    and h
    and b
    or e
    and a
    and h
    or d
    ld a, a
    xor a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    ld d, l
    or [hl]
    and a
    and h
    xor l
    ld a, a
    xor b
    or e
    cp l
    ld a, a
    and b
    xor l
    and [hl]
    or c
    cp b
    rst $20
    ld d, a
    nop
    add a
    and h
    and a
    and h
    and a
    rst $20
    ld a, a
    sub e
    and a
    xor b
    or d
    ld a, a
    add [hl]
    sbc b
    adc h
    ld c, a
    xor b
    or d
    ld a, a
    and [hl]
    or c
    and h
    and b
    or e
    rst $20
    ld a, a
    adc b
    or e
    cp l
    ld d, l
    and l
    or h
    xor e
    xor e
    ld a, a
    xor [hl]
    and l
    ld a, a
    or [hl]
    xor [hl]
    xor h
    and h
    xor l
    rst $20
    ld d, a
    nop
    sub e
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
    ld c, a
    xor b
    or d
    ld a, a
    and c
    and b
    and e
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor [hl]
    or h
    or c
    ld d, l
    and d
    xor b
    or e
    cp b
    cp l
    ld a, a
    xor b
    xor h
    and b
    and [hl]
    and h
    rst $20
    ld d, a
    nop
    adc h
    xor [hl]
    and b
    xor l
    rst $20
    ld a, a
    adc b
    ld a, a
    and c
    xor e
    and h
    or [hl]
    ld a, a
    xor b
    or e
    ld c, a
    and b
    xor e
    xor e
    ld a, a
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
    ld d, c
    adc b
    ld a, a
    xor d
    xor l
    and h
    or [hl]
    ld a, a
    adc b
    ld a, a
    or d
    and a
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
    and d
    and b
    or d
    and a
    and h
    and e
    ld a, a
    xor b
    xor l
    ld a, a
    xor h
    cp b
    ld d, l
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
    or e
    and a
    and h
    or c
    and h
    rst $20
    ld d, c
    adc b
    cp a
    and h
    ld a, a
    or d
    and h
    and h
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    db $f4
    ld c, a
    and c
    or h
    or e
    ld a, a
    adc b
    ld a, a
    xor l
    and h
    or l
    and h
    or c
    ld a, a
    and a
    and b
    and e
    ld a, a
    and b
    ld d, l
    and d
    and a
    and b
    xor l
    and d
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and b
    xor e
    xor d
    rst $20
    ld d, c
    add a
    and h
    or c
    and h
    cp l
    ld a, a
    and b
    ld a, a
    and [hl]
    xor b
    and l
    or e
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    and e
    or c
    xor [hl]
    xor a
    xor a
    xor b
    xor l
    and [hl]
    ld a, a
    and c
    cp b
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
    ld a, [$7ff7]
    or e
    and h
    and b
    and d
    and a
    and h
    or d
    ld c, a
    sub d
    adc [hl]
    add l
    sub e
    add c
    adc [hl]
    adc b
    adc e
    add h
    add e
    rst $20
    ld d, c
    adc [hl]
    xor l
    xor e
    cp b
    ld a, a
    xor [hl]
    xor l
    and h
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
    or h
    or d
    and h
    ld a, a
    xor b
    or e
    rst $20
    ld d, c
    sub e
    and a
    and b
    or e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor b
    or d
    ld c, a
    add d
    add a
    add b
    adc l
    sub d
    add h
    sbc b
    rst $20
    ld d, a
    nop
    adc [hl]
    and a
    db $f4
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
    xor b
    or e
    and h
    xor h
    or d
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
    xor h
    cp b
    ld a, a
    or e
    or c
    or h
    or d
    or e
    and h
    and e
    ld c, a
    xor a
    and b
    xor e
    db $f4
    ld a, a
    adc a
    adc [hl]
    adc e
    adc b
    sub [hl]
    sub c
    add b
    sub e
    add a
    rst $20
    ld d, c
    adc b
    or e
    ld a, a
    and h
    or l
    xor [hl]
    xor e
    or l
    and h
    and e
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld c, a
    adc a
    adc [hl]
    adc e
    adc b
    sub [hl]
    add a
    adc b
    sub c
    adc e
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld a, a
    adc b
    ld d, l
    or h
    or d
    and h
    and e
    ld a, a
    sub [hl]
    add b
    sub e
    add h
    sub c
    ld a, a
    sub d
    sub e
    adc [hl]
    adc l
    add h
    rst $20
    ld d, a
    nop
    adc a
    adc [hl]
    adc e
    adc b
    sub [hl]
    sub c
    add b
    sub e
    add a
    sbc h
    ld a, a
    sub c
    xor b
    and c
    xor b
    ld c, a
    or c
    xor b
    and c
    xor b
    or e
    rst $20
    ld d, b
    ld d, b
    nop
    sub [hl]
    and a
    and b
    or e
    ld a, a
    and b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    or d
    or e
    and b
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    or e
    and $57
    nop
    adc d
    and h
    and h
    xor a
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    and l
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
    cp l
    ld a, a
    or [hl]
    and b
    cp b
    rst $20
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
    sub a
    ld a, a
    add b
    add d
    add d
    sub h
    sub c
    add b
    add d
    sbc b
    ld a, a
    and c
    xor [hl]
    xor [hl]
    or d
    or e
    or d
    ld c, a
    or e
    and a
    and h
    ld a, a
    and b
    and d
    and d
    or h
    or c
    and b
    and d
    cp b
    ld a, a
    xor [hl]
    and l
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
    ld d, c
    add e
    adc b
    sub c
    add h
    ld a, a
    add a
    adc b
    sub e
    ld a, a
    xor c
    and b
    and d
    xor d
    or d
    ld a, a
    or h
    xor a
    ld c, a
    or e
    and a
    and h
    ld a, a
    xor e
    xor b
    xor d
    and h
    xor e
    xor b
    and a
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor [hl]
    and l
    ld d, l
    and d
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
    or d
    rst $20
    ld d, c
    add [hl]
    and h
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor b
    or e
    and h
    xor h
    or d
    ld a, a
    and b
    or e
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
    rst $20
    ld d, a
    nop
    add d
    add h
    adc e
    add b
    add e
    adc [hl]
    adc l
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld c, a
    sub e
    and a
    and h
    ld a, a
    add d
    xor b
    or e
    cp b
    ld a, a
    xor [hl]
    and l
    ld d, l
    sub c
    and b
    xor b
    xor l
    and c
    xor [hl]
    or [hl]
    ld a, a
    add e
    or c
    and h
    and b
    xor h
    or d
    ld d, a
    nop
    add d
    add h
    adc e
    add b
    add e
    adc [hl]
    adc l
    ld a, a
    add d
    adc b
    sub e
    sbc b
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
    add h
    sub c
    adc b
    adc d
    add b
    ld d, c
    sub e
    and a
    and h
    ld a, a
    adc l
    and b
    or e
    or h
    or c
    and h
    ld a, a
    adc e
    xor [hl]
    or l
    xor b
    xor l
    and [hl]
    ld c, a
    adc a
    or c
    xor b
    xor l
    and d
    and h
    or d
    or d
    rst $20
    ld d, a
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
    ld d, a
    nop
    add l
    xor b
    xor l
    and e
    ld a, a
    or [hl]
    and a
    and b
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    xor l
    and h
    and h
    and e
    ld a, a
    and b
    or e
    ld a, a
    add d
    add h
    adc e
    add b
    add e
    adc [hl]
    adc l
    ld d, l
    add e
    add h
    adc a
    sub e
    add sp, $7f
    sub d
    sub e
    adc [hl]
    sub c
    add h
    rst $20
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
    add [hl]
    sub h
    add b
    sub c
    add e
    ld a, a
    sub d
    adc a
    add h
    add d
    add sp, $4f
    xor a
    or c
    xor [hl]
    or e
    and h
    and d
    or e
    or d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    and b
    and [hl]
    and b
    xor b
    xor l
    or d
    or e
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
    ld d, l
    and l
    xor b
    or c
    and h
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
    rst $20
    ld d, c
    add [hl]
    and h
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor b
    or e
    and h
    xor h
    or d
    ld a, a
    and b
    or e
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
    rst $20
    ld d, a
    nop
    add d
    xor [hl]
    xor b
    xor l
    or d
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
    rst $20
    ld d, l
    adc a
    sub c
    adc b
    sbc c
    add h
    ld a, a
    add h
    sub a
    add d
    add a
    add b
    adc l
    add [hl]
    add h
    ld d, a
    nop
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub e
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
    ld c, a
    sub e
    and a
    and h
    ld a, a
    xor a
    xor e
    and b
    cp b
    and [hl]
    or c
    xor [hl]
    or h
    xor l
    and e
    ld d, l
    and l
    xor [hl]
    or c
    ld a, a
    and [hl]
    or c
    xor [hl]
    or [hl]
    xor l
    db $e3
    or h
    xor a
    or d
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
    or e
    or c
    cp b
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
    add [hl]
    add b
    adc h
    add h
    and $7f
    sub d
    xor [hl]
    xor h
    and h
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
    xor [hl]
    xor l
    xor e
    cp b
    ld d, l
    and c
    and h
    ld a, a
    and d
    and b
    or h
    and [hl]
    and a
    or e
    ld a, a
    or e
    and a
    and h
    or c
    and h
    add sp, $57
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
    and b
    ld c, a
    cp c
    xor [hl]
    xor [hl]
    ld a, a
    xor b
    xor l
    ld a, a
    and l
    or c
    xor [hl]
    xor l
    or e
    ld a, a
    xor [hl]
    and l
    ld d, l
    or e
    and a
    and h
    ld a, a
    and h
    xor l
    or e
    or c
    and b
    xor l
    and d
    and h
    add sp, $51
    adc [hl]
    or h
    or e
    ld a, a
    and c
    and b
    and d
    xor d
    ld a, a
    xor b
    or d
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
    add [hl]
    add b
    adc h
    add h
    ld a, a
    and l
    xor [hl]
    or c
    ld d, l
    and d
    and b
    or e
    and d
    and a
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
    add h
    sub c
    adc b
    adc d
    sbc h
    ld a, a
    sub [hl]
    and a
    and h
    or c
    and h
    cp l
    ld c, a
    sub d
    add b
    sub c
    add b
    and $7f
    adc b
    ld a, a
    or d
    and b
    xor b
    and e
    ld a, a
    adc b
    cp e
    ld d, l
    xor h
    and h
    and h
    or e
    ld a, a
    and a
    and h
    or c
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $57
    nop
    sub e
    and a
    and b
    or e
    ld a, a
    xor b
    or e
    and h
    xor h
    ld a, a
    and c
    and b
    xor e
    xor e
    ld a, a
    xor b
    xor l
    ld c, a
    or e
    and a
    and h
    or c
    and h
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
    ld a, a
    and b
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    rst $20
    ld d, a
    nop
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
    ld c, a
    add c
    and h
    and a
    xor [hl]
    xor e
    and e
    rst $20
    ld a, a
    adc b
    or e
    cp l
    ld d, l
    adc a
    and b
    or d
    or d
    xor b
    xor [hl]
    xor l
    ld a, a
    adc a
    xor b
    xor l
    xor d
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
    add [hl]
    add b
    adc h
    add h
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    db $e3
    sub h
    db $e3
    add d
    add b
    sub e
    add d
    add a
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
    ld c, a
    sub [hl]
    add b
    sub c
    add e
    add h
    adc l
    cp l
    ld a, a
    add a
    adc [hl]
    adc h
    add h
    ld d, a
    nop
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    adc a
    add b
    sub c
    add b
    add e
    adc b
    sub d
    add h
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
    ld d, a
    nop
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
    adc d
    adc [hl]
    add [hl]
    add b
    ld d, c
    sub e
    and a
    and h
    ld a, a
    adc a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    xor [hl]
    or h
    or d
    ld c, a
    adc l
    xor b
    xor l
    xor c
    and b
    ld a, a
    adc h
    and b
    or d
    or e
    and h
    or c
    ld d, a
    nop
    adc l
    and b
    xor h
    and h
    sbc h
    ld a, a
    add d
    add a
    add b
    adc l
    sub d
    add h
    sbc b
    ld d, c
    add d
    and b
    or e
    and d
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    xor l
    and h
    ld a, a
    xor b
    or d
    ld c, a
    and b
    xor e
    xor e
    ld a, a
    or h
    xor a
    ld a, a
    or e
    xor [hl]
    ld a, a
    and d
    and a
    and b
    xor l
    and d
    and h
    add sp, $58
    nop
    adc l
    and b
    xor h
    and h
    sbc h
    ld a, a
    sub l
    adc [hl]
    adc e
    sub e
    adc [hl]
    sub c
    add c
    ld d, c
    sub e
    and a
    and h
    ld a, a
    or l
    and h
    or c
    cp b
    ld a, a
    xor b
    xor h
    and b
    and [hl]
    and h
    ld a, a
    xor [hl]
    and l
    ld c, a
    and b
    ld a, a
    ld d, h
    ld a, a
    add c
    add b
    adc e
    adc e
    add sp, $58
    nop
    adc l
    and b
    xor h
    and h
    sbc h
    ld a, a
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
    ld d, c
    add b
    ld a, a
    xor h
    and b
    or e
    and h
    or c
    xor l
    and b
    xor e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
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
    or d
    ld a, a
    xor b
    or e
    or d
    ld d, l
    cp b
    xor [hl]
    or h
    xor l
    and [hl]
    ld a, a
    xor b
    xor l
    ld a, a
    and b
    ld a, a
    xor a
    xor [hl]
    or h
    and d
    and a
    ld d, l
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
    add sp, $58
    nop
    adc l
    and b
    xor h
    and h
    sbc h
    ld a, a
    sub d
    adc e
    adc [hl]
    sub [hl]
    adc a
    adc [hl]
    adc d
    add h
    ld d, c
    add l
    or c
    xor b
    and h
    xor l
    and e
    xor e
    cp b
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or l
    and h
    or c
    cp b
    ld c, a
    or d
    xor e
    xor [hl]
    or [hl]
    ld a, a
    xor h
    xor [hl]
    or l
    xor b
    xor l
    and [hl]
    add sp, $58
    nop
    adc l
    and b
    xor h
    and h
    sbc h
    ld a, a
    adc e
    add b
    adc a
    sub c
    add b
    sub d
    ld d, c
    add b
    add sp, -$76
    add sp, -$80
    add sp, $7f
    or e
    and a
    and h
    ld a, a
    xor d
    xor b
    xor l
    and [hl]
    ld c, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    and h
    and b
    or d
    add sp, $58
    nop
    adc l
    and b
    xor h
    and h
    sbc h
    ld a, a
    adc [hl]
    adc h
    add b
    adc l
    sbc b
    sub e
    add h
    ld d, c
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
    ld c, a
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
    ld d, l
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
    add sp, $58
    nop
    adc l
    and b
    xor h
    and h
    sbc h
    ld a, a
    adc d
    add b
    add c
    sub h
    sub e
    adc [hl]
    ld d, c
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
    ld c, a
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
    ld d, l
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
    add sp, $58
    nop
    add sp, -$18
    add sp, $57
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
    xor b
    or d
    ld c, a
    xor e
    xor [hl]
    and d
    xor d
    and h
    and e
    add sp, -$18
    add sp, $57
    nop
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
    cp l
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
    xor l
    ld a, a
    xor [hl]
    and e
    and e
    ld d, l
    xor h
    and b
    xor l
    ld a, a
    or [hl]
    and a
    xor [hl]
    ld a, a
    and a
    and b
    or d
    ld a, a
    xor e
    xor b
    or l
    and h
    and e
    ld d, l
    and a
    and h
    or c
    and h
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and e
    and h
    and d
    and b
    and e
    and h
    or d
    add sp, $57
    nop
    sub d
    and d
    xor b
    and h
    xor l
    or e
    xor b
    or d
    or e
    or d
    ld a, a
    and d
    xor [hl]
    xor l
    and e
    or h
    and d
    or e
    ld c, a
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
    ld a, a
    xor b
    xor l
    ld d, l
    or e
    and a
    and h
    ld a, a
    and c
    or h
    or c
    xor l
    and h
    and e
    ld a, a
    xor [hl]
    or h
    or e
    ld d, l
    and c
    or h
    xor b
    xor e
    and e
    xor b
    xor l
    and [hl]
    add sp, $57
    nop
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
    ld c, a
    sub e
    and a
    and h
    ld a, a
    add l
    xor b
    and h
    or c
    cp b
    ld a, a
    sub e
    xor [hl]
    or [hl]
    xor l
    ld a, a
    xor [hl]
    and l
    ld d, l
    add c
    or h
    or c
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    add e
    and h
    or d
    xor b
    or c
    and h
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
    ld d, a
    nop
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
    add c
    adc e
    add b
    adc b
    adc l
    add h
    ld d, c
    sub e
    and a
    and h
    ld a, a
    add a
    xor [hl]
    or e
    db $e3
    add a
    and h
    and b
    and e
    and h
    and e
    ld c, a
    sub b
    or h
    xor b
    cp c
    ld a, a
    adc h
    and b
    or d
    or e
    and h
    or c
    rst $20
    ld d, a
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
    add [hl]
    and h
    or e
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    rst $20
    ld d, a
    nop
    add c
    adc [hl]
    sub d
    sub d
    ld a, a
    or d
    and b
    xor b
    and e
    ld a, a
    and a
    and h
    cp h
    xor e
    ld c, a
    or e
    and b
    xor d
    and h
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    or e
    xor [hl]
    or [hl]
    xor l
    rst $20
    ld d, a
    nop
    add [hl]
    and h
    or e
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld c, a
    or [hl]
    and b
    cp b
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
    and c
    and h
    xor e
    xor [hl]
    xor l
    and [hl]
    or d
    ld c, a
    or e
    xor [hl]
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
    add c
    and h
    xor b
    xor l
    and [hl]
    ld a, a
    and h
    or l
    xor b
    xor e
    ld a, a
    xor h
    and b
    xor d
    and h
    or d
    ld c, a
    xor h
    and h
    ld a, a
    and l
    and h
    and h
    xor e
    ld a, a
    or d
    xor [hl]
    ld a, a
    and b
    xor e
    xor b
    or l
    and h
    rst $20
    ld d, a
    nop
    adc [hl]
    or [hl]
    rst $20
    ld a, a
    sub [hl]
    and b
    or e
    and d
    and a
    ld a, a
    or [hl]
    and a
    and h
    or c
    and h
    ld c, a
    cp b
    xor [hl]
    or h
    db $e4
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
    xor b
    or e
    and a
    ld a, a
    sub d
    adc b
    adc e
    adc a
    add a
    ld a, a
    or h
    xor l
    and e
    and h
    or c
    ld c, a
    and d
    xor [hl]
    xor l
    or e
    or c
    xor [hl]
    xor e
    db $f4
    ld a, a
    or [hl]
    and h
    ld a, a
    and d
    and b
    xor l
    ld d, l
    and h
    or a
    xor a
    xor e
    xor [hl]
    xor b
    or e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
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
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor e
    and e
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
    and b
    xor e
    xor e
    ld a, a
    and b
    xor e
    xor [hl]
    xor l
    and h
    and $55
    sub e
    and a
    and b
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
    rst $20
    ld d, a
    nop
    sbc b
    and h
    and b
    and a
    rst $20
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
    xor b
    or d
    ld a, a
    and [hl]
    xor [hl]
    xor l
    and h
    rst $20
    ld d, l
    adc b
    or e
    cp l
    ld a, a
    or d
    and b
    and l
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    xor [hl]
    ld d, l
    xor [hl]
    or h
    or e
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    rst $20
    ld d, a
    nop
    adc a
    and h
    xor [hl]
    xor a
    xor e
    and h
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
    and l
    xor e
    xor [hl]
    and d
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    and c
    and b
    and d
    xor d
    ld a, a
    or e
    xor [hl]
    ld d, l
    sub d
    add b
    add l
    add l
    sub c
    adc [hl]
    adc l
    ld a, a
    xor l
    xor [hl]
    or [hl]
    add sp, $57
    nop
    adc b
    ld a, a
    and l
    xor e
    and h
    or [hl]
    ld a, a
    and a
    and h
    or c
    and h
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor h
    cp b
    ld c, a
    adc a
    adc b
    add e
    add [hl]
    add h
    adc [hl]
    sub e
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld a, a
    adc b
    ld d, l
    or c
    and h
    and b
    and e
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    sub d
    adc b
    adc e
    adc a
    add a
    add sp, $51
    adc b
    or e
    cp l
    ld a, a
    and b
    xor e
    or c
    and h
    and b
    and e
    cp b
    ld a, a
    xor [hl]
    or l
    and h
    or c
    and $4f
    adc b
    ld a, a
    xor h
    xor b
    or d
    or d
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld d, l
    xor h
    and h
    and e
    xor b
    and b
    ld a, a
    and b
    and d
    or e
    xor b
    xor [hl]
    xor l
    add sp, $57
    nop
    adc a
    adc b
    add e
    add [hl]
    add h
    adc [hl]
    sub e
    sbc h
    ld a, a
    add c
    xor b
    ld a, a
    and c
    xor b
    and c
    xor b
    xor b
    rst $20
    ld d, b
    ld d, b
    nop
    adc b
    ld a, a
    or d
    and b
    or [hl]
    ld a, a
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub e
    ld c, a
    add c
    adc [hl]
    sub d
    sub d
    ld a, a
    and h
    or d
    and d
    and b
    xor a
    xor b
    xor l
    and [hl]
    ld d, l
    sub d
    adc b
    adc e
    adc a
    add a
    cp l
    ld a, a
    and c
    or h
    xor b
    xor e
    and e
    xor b
    xor l
    and [hl]
    add sp, $57
    nop
    adc b
    push hl
    ld a, a
    and b
    ld a, a
    or d
    and h
    and d
    or h
    or c
    xor b
    or e
    cp b
    ld c, a
    and [hl]
    or h
    and b
    or c
    and e
    add sp, $51
    sub d
    or h
    or d
    xor a
    xor b
    and d
    xor b
    xor [hl]
    or h
    or d
    ld a, a
    xor d
    xor b
    and e
    or d
    ld a, a
    adc b
    ld c, a
    and e
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    and b
    xor e
    xor e
    xor [hl]
    or [hl]
    ld a, a
    xor b
    xor l
    rst $20
    ld d, a
    nop
    add sp, -$18
    add sp, $4f
    sub d
    xor l
    xor [hl]
    or c
    and h
    add sp, -$18
    add sp, $51
    add a
    and b
    and a
    rst $20
    ld a, a
    add a
    and h
    cp l
    ld a, a
    or e
    and b
    xor d
    xor b
    xor l
    and [hl]
    ld c, a
    and b
    ld a, a
    or d
    xor l
    xor [hl]
    xor [hl]
    cp c
    and h
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
    add d
    adc b
    sub e
    sbc b
    ld c, a
    sub d
    and a
    xor b
    xor l
    xor b
    xor l
    and [hl]
    db $f4
    ld a, a
    add [hl]
    xor [hl]
    xor e
    and e
    and h
    xor l
    ld d, l
    adc e
    and b
    xor l
    and e
    ld a, a
    xor [hl]
    and l
    ld a, a
    add d
    xor [hl]
    xor h
    xor h
    and h
    or c
    and d
    and h
    ld d, a
    nop
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
    add d
    adc b
    sub e
    sbc b
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
    sub d
    add b
    add c
    sub c
    adc b
    adc l
    add b
    ld d, c
    sub e
    and a
    and h
    ld a, a
    adc h
    and b
    or d
    or e
    and h
    or c
    ld a, a
    xor [hl]
    and l
    ld c, a
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
    rst $20
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
    add l
    sub h
    adc e
    adc e
    ld a, a
    add a
    add h
    add b
    adc e
    ld a, a
    and d
    or h
    or c
    and h
    or d
    ld c, a
    and b
    xor e
    xor e
    ld a, a
    and b
    xor b
    xor e
    xor h
    and h
    xor l
    or e
    or d
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld d, l
    or d
    xor e
    and h
    and h
    xor a
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and c
    or h
    or c
    xor l
    or d
    add sp, $51
    adc b
    or e
    ld a, a
    and d
    xor [hl]
    or d
    or e
    or d
    ld a, a
    and b
    ld a, a
    and c
    xor b
    or e
    ld c, a
    xor h
    xor [hl]
    or c
    and h
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
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    and d
    xor [hl]
    xor l
    or l
    and h
    xor l
    xor b
    and h
    xor l
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
    adc l
    and h
    or [hl]
    ld a, a
    add [hl]
    sub c
    add h
    add b
    sub e
    ld a, a
    add c
    add b
    adc e
    adc e
    ld c, a
    xor [hl]
    and l
    and l
    and h
    or c
    or d
    ld a, a
    xor b
    xor h
    xor a
    or c
    xor [hl]
    or l
    and h
    and e
    ld d, l
    and d
    and b
    xor a
    or e
    or h
    or c
    and h
    ld a, a
    or c
    and b
    or e
    and h
    or d
    add sp, $51
    sub e
    or c
    cp b
    ld a, a
    xor b
    or e
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    xor [hl]
    or d
    and h
    ld c, a
    and a
    and b
    or c
    and e
    db $e3
    or e
    xor [hl]
    db $e3
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
    add sp, $4f
    adc [hl]
    add l
    add l
    adc b
    add d
    add h
    ld a, a
    add c
    sub h
    adc b
    adc e
    add e
    adc b
    adc l
    add [hl]
    ld d, a
    nop
    adc h
    sub c
    add sp, -$71
    sub d
    sbc b
    add d
    add a
    adc b
    add d
    cp l
    ld c, a
    add a
    adc [hl]
    sub h
    sub d
    add h
    ld d, a
    nop
    sub d
    adc b
    adc e
    adc a
    add a
    cp l
    ld a, a
    xor e
    and b
    or e
    and h
    or d
    or e
    ld c, a
    xor a
    or c
    xor [hl]
    and e
    or h
    and d
    or e
    rst $20
    ld d, c
    sub c
    and h
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld c, a
    and e
    and h
    or e
    and h
    or c
    xor h
    xor b
    xor l
    and h
    and e
    add sp, -$18
    add sp, $57
    nop
    adc b
    or e
    ld a, a
    and e
    xor [hl]
    and e
    and [hl]
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld c, a
    or e
    and a
    or c
    xor [hl]
    or [hl]
    xor l
    ld a, a
    add c
    add b
    adc e
    adc e
    rst $20
    ld d, c
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
    and d
    and b
    xor l
    cp [hl]
    ld a, a
    and c
    and h
    ld a, a
    and d
    and b
    or h
    and [hl]
    and a
    or e
    rst $20
    ld e, b
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    xor h
    xor b
    or d
    or d
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
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
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    and c
    or c
    xor [hl]
    xor d
    and h
    ld a, a
    and l
    or c
    and h
    and h
    rst $20
    ld e, b
    nop
    add b
    or [hl]
    or [hl]
    rst $20
    ld a, a
    adc b
    or e
    ld a, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    and h
    and e
    ld c, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld a, a
    and d
    and b
    or h
    and [hl]
    and a
    or e
    rst $20
    ld a, a
    ld e, b
    nop
    sub d
    and a
    xor [hl]
    xor [hl]
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
    or d
    xor [hl]
    ld c, a
    and d
    xor e
    xor [hl]
    or d
    and h
    ld a, a
    or e
    xor [hl]
    xor [hl]
    rst $20
    ld e, b
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
    ld c, a
    ld d, b
    ld bc, $cfda
    nop
    ld a, a
    or [hl]
    and b
    or d
    ld d, l
    and d
    and b
    or h
    and [hl]
    and a
    or e
    rst $20
    ld d, b
    ld d, b
    ld bc, $de06
    nop
    ld a, a
    or [hl]
    and b
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
    ld a, a
    or e
    xor [hl]
    ld d, l
    add c
    adc b
    adc e
    adc e
    cp l
    ld a, a
    adc a
    add d
    rst $20
    ld e, b
    ld bc, $de06
    nop
    ld a, a
    or [hl]
    and b
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
    ld a, a
    or e
    xor [hl]
    ld d, l
    or d
    xor [hl]
    xor h
    and h
    xor [hl]
    xor l
    and h
    cp l
    ld a, a
    adc a
    add d
    rst $20
    ld e, b
    nop
    adc l
    and h
    or [hl]
    ld a, a
    ld d, h
    add e
    add h
    sub a
    ld a, a
    and e
    and b
    or e
    and b
    ld c, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and c
    and h
    ld a, a
    and b
    and e
    and e
    and h
    and e
    ld a, a
    and l
    xor [hl]
    or c
    ld d, l
    ld d, b
    ld bc, $cfda
    nop
    rst $20
    ld d, b
    ld d, b
    nop
    ld d, d
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    xor [hl]
    xor l
    ld c, a
    ld d, b
    ld bc, $cd6d
    nop
    rst $20
    ld e, b
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
    xor a
    xor e
    and b
    and d
    and h
    ld c, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    xor [hl]
    and l
    and l
    rst $20
    ld e, b
    ld bc, $cd6d
    nop
    cp l
    ld c, a
    ld d, b
    ld bc, $cf4b
    nop
    ld a, a
    or c
    xor [hl]
    or d
    and h
    add sp, $58
    nop
    adc b
    or e
    ld a, a
    or [hl]
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
    xor l
    cp b
    ld c, a
    and h
    and l
    and l
    and h
    and d
    or e
    add sp, $58
    nop
    ld d, d
    ld a, a
    or e
    and a
    or c
    and h
    or [hl]
    ld c, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    add c
    add b
    adc b
    sub e
    add sp, $57
    nop
    ld d, d
    ld a, a
    or e
    and a
    or c
    and h
    or [hl]
    ld a, a
    and b
    ld c, a
    sub c
    adc [hl]
    add d
    adc d
    add sp, $57
    nop
    adc a
    xor e
    and b
    cp b
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld a, a
    ld d, h
    ld c, a
    add l
    adc e
    sub h
    sub e
    add h
    add sp, $51
    adc l
    xor [hl]
    or [hl]
    db $f4
    ld a, a
    or e
    and a
    and b
    or e
    cp l
    ld a, a
    and b
    ld c, a
    and d
    and b
    or e
    and d
    and a
    cp b
    ld a, a
    or e
    or h
    xor l
    and h
    rst $20
    ld e, b
    nop
    add b
    xor e
    xor e
    ld a, a
    or d
    xor e
    and h
    and h
    xor a
    xor b
    xor l
    and [hl]
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or [hl]
    xor [hl]
    xor d
    and h
    ld a, a
    or h
    xor a
    add sp, $58
    nop
    ld d, d
    ld a, a
    xor a
    xor e
    and b
    cp b
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld c, a
    ld d, h
    ld a, a
    add l
    adc e
    sub h
    sub e
    add h
    add sp, $50
    ld d, b
    nop
    add d
    xor [hl]
    xor b
    xor l
    or d
    ld c, a
    ld d, b
    ld [bc], a
    and h
    push de
    jp nz, Jump_029_7f00

    ld e, b
    nop
    sbc b
    and h
    or d
    rst $20
    ld a, a
    adc b
    sub e
    add h
    adc h
    add l
    adc b
    adc l
    add e
    add h
    sub c
    ld c, a
    xor b
    xor l
    and e
    xor b
    and d
    and b
    or e
    and h
    or d
    ld a, a
    or e
    and a
    and h
    or c
    and h
    cp l
    ld d, l
    and b
    xor l
    ld a, a
    xor b
    or e
    and h
    xor h
    ld a, a
    xor l
    and h
    and b
    or c
    and c
    cp b
    add sp, $58
    nop
    adc l
    xor [hl]
    xor a
    and h
    rst $20
    ld a, a
    adc b
    sub e
    add h
    adc h
    add l
    adc b
    adc l
    add e
    add h
    sub c
    ld c, a
    xor b
    or d
    xor l
    cp [hl]
    ld a, a
    or c
    and h
    or d
    xor a
    xor [hl]
    xor l
    and e
    xor b
    xor l
    and [hl]
    add sp, $58
    nop
    sub c
    and b
    xor b
    or d
    and h
    ld a, a
    adc a
    adc a
    ld a, a
    xor [hl]
    and l
    ld a, a
    or [hl]
    and a
    xor b
    and d
    and a
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
    and $57
    nop
    sub c
    and h
    or d
    or e
    xor [hl]
    or c
    and h
    ld a, a
    adc a
    adc a
    ld a, a
    xor [hl]
    and l
    ld c, a
    or [hl]
    and a
    xor b
    and d
    and a
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
    and $57
    ld bc, $cf4b
    nop
    cp l
    ld a, a
    adc a
    adc a
    ld c, a
    xor b
    or d
    ld a, a
    xor h
    and b
    or a
    and h
    and e
    ld a, a
    xor [hl]
    or h
    or e
    add sp, $58
    ld bc, $cf4b
    nop
    cp l
    ld a, a
    adc a
    adc a
    ld c, a
    xor b
    xor l
    and d
    or c
    and h
    and b
    or d
    and h
    and e
    add sp, $58
    nop
    adc a
    adc a
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    or c
    and h
    or d
    or e
    xor [hl]
    or c
    and h
    and e
    add sp, $58
    nop
    add c
    xor [hl]
    xor [hl]
    or e
    and h
    and e
    ld a, a
    or h
    xor a
    ld a, a
    and b
    ld a, a
    sub e
    adc h
    rst $20
    ld e, b
    nop
    add c
    xor [hl]
    xor [hl]
    or e
    and h
    and e
    ld a, a
    or h
    xor a
    ld a, a
    and b
    xor l
    ld a, a
    add a
    adc h
    rst $20
    ld e, b
    nop
    adc b
    or e
    ld a, a
    and d
    xor [hl]
    xor l
    or e
    and b
    xor b
    xor l
    and h
    and e
    ld c, a
    ld d, b
    ld bc, $cf4b
    nop
    rst $20
    ld d, c
    sub e
    and h
    and b
    and d
    and a
    ld a, a
    ld d, b
    ld bc, $cf4b
    nop
    ld c, a
    or e
    xor [hl]
    ld a, a
    and b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    and $57
    ld bc, $cd6d
    nop
    ld a, a
    xor b
    or d
    ld a, a
    xor l
    xor [hl]
    or e
    ld c, a
    and d
    xor [hl]
    xor h
    xor a
    and b
    or e
    xor b
    and c
    xor e
    and h
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld d, l
    ld d, b
    ld bc, $cf4b
    nop
    add sp, $51
    adc b
    or e
    ld a, a
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
    ld c, a
    ld d, b
    ld bc, $cf4b
    nop
    add sp, $58
    nop
    adc [hl]
    add b
    adc d
    sbc h
    ld a, a
    ld d, d
    rst $20
    ld c, a
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    xor l
    cp [hl]
    ld a, a
    or e
    and a
    and h
    ld d, l
    or e
    xor b
    xor h
    and h
    ld a, a
    or e
    xor [hl]
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
    ld a, a
    ld e, b
    nop
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    xor l
    cp [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    or d
    ld c, a
    or e
    xor [hl]
    ld a, a
    or h
    or d
    and h
    rst $20
    ld e, b
    nop
    adc b
    or e
    ld a, a
    or [hl]
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
    xor l
    cp b
    ld c, a
    and h
    and l
    and l
    and h
    and d
    or e
    add sp, $58
    nop
    sub e
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
    ld c, a
    and c
    xor e
    xor [hl]
    and d
    xor d
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld a, a
    add c
    add b
    adc e
    adc e
    rst $20
    ld e, b
    nop
    add e
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    and c
    and h
    ld a, a
    and b
    ld a, a
    or e
    and a
    xor b
    and h
    and l
    rst $20
    ld e, b
    nop
    adc l
    xor [hl]
    ld a, a
    and d
    cp b
    and d
    xor e
    xor b
    xor l
    and [hl]
    ld c, [hl]
    and b
    xor e
    xor e
    xor [hl]
    or [hl]
    and h
    and e
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $58
    nop
    adc l
    xor [hl]
    ld a, a
    sub d
    sub h
    sub c
    add l
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    xor l
    ld c, a
    ld d, b
    ld bc, $cd6d
    nop
    ld a, a
    and a
    and h
    or c
    and h
    rst $20
    ld e, b
    nop
    sub e
    and a
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add c
    adc [hl]
    sub a
    ld c, a
    xor b
    or d
    ld a, a
    and l
    or h
    xor e
    xor e
    rst $20
    ld a, a
    add d
    and b
    xor l
    cp [hl]
    ld d, l
    or h
    or d
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor b
    or e
    and h
    xor h
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

Jump_029_7f00:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
