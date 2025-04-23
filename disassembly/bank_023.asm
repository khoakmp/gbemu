; Disassembly of "Pokemon Red (UE) [S][!].gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $023", ROMX[$4000], BANK[$23]

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
    ld a, a
    or e
    and a
    and h
    xor l
    db $f4
    ld c, a
    ld d, b
    ld d, b
    nop
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
    or e
    and a
    xor b
    or d
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
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    xor [hl]
    xor l
    and h
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
    cp b
    xor [hl]
    or h
    add sp, $57
    nop
    adc b
    ld a, a
    and d
    and b
    xor l
    cp [hl]
    ld a, a
    and b
    and d
    and d
    and h
    xor a
    or e
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
    ld d, l
    xor d
    xor l
    xor [hl]
    or [hl]
    or d
    ld a, a
    and b
    xor l
    ld a, a
    add a
    adc h
    ld a, a
    xor h
    xor [hl]
    or l
    and h
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
    ld a, a
    add a
    and h
    or c
    and h
    cp l
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
    rst $20
    ld e, b
    nop
    add a
    and h
    cp b
    db $f4
    ld a, a
    cp b
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
    ldh a, [$e7]
    ld d, a
    nop
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
    xor e
    xor [hl]
    or d
    and h
    ld c, a
    or e
    and a
    xor b
    xor l
    and [hl]
    or d
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and b
    or e
    ld d, l
    sub h
    adc l
    add e
    add h
    sub c
    add [hl]
    sub c
    adc [hl]
    sub h
    adc l
    add e
    ld a, a
    adc a
    add b
    sub e
    add a
    add sp, $57
    nop
    adc b
    ld a, a
    and a
    and h
    and b
    or c
    and e
    ld a, a
    and b
    ld a, a
    or d
    xor e
    and h
    and h
    xor a
    cp b
    ld c, a
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
    ld d, l
    xor l
    and h
    and b
    or c
    ld a, a
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
    add sp, $57
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
    or d
    and a
    xor [hl]
    xor a
    ld a, a
    and b
    or e
    ld c, a
    or e
    and a
    and h
    ld a, a
    and e
    and h
    xor a
    or e
    add sp, $7f
    or d
    or e
    xor [hl]
    or c
    and h
    ld d, l
    xor b
    xor l
    ld a, a
    add d
    add h
    adc e
    add b
    add e
    adc [hl]
    adc l
    ld a, a
    and c
    or h
    or e
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
    or d
    xor [hl]
    ld a, a
    xor h
    and b
    xor l
    cp b
    ld c, a
    or c
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    xor b
    xor l
    and [hl]
    ld d, l
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld a, a
    or e
    and a
    and h
    or c
    and h
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
    ld a, a
    and a
    and b
    and e
    ld a, a
    and b
    ld c, a
    or d
    and h
    and d
    or c
    and h
    or e
    ld a, a
    and a
    xor b
    and e
    and h
    xor [hl]
    or h
    or e
    ld a, a
    xor b
    xor l
    ld d, l
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
    and $57
    nop
    sbc b
    xor [hl]
    or h
    db $e4
    and h
    ld a, a
    and a
    and h
    or c
    and h
    ld a, a
    or e
    xor [hl]
    ld c, a
    or d
    and a
    xor [hl]
    xor a
    ld a, a
    xor b
    xor l
    ld a, a
    add d
    add h
    adc e
    add b
    add e
    adc [hl]
    adc l
    and $51
    adc c
    or h
    or d
    or e
    ld a, a
    or d
    or e
    and h
    xor a
    ld a, a
    xor [hl]
    or h
    or e
    or d
    xor b
    and e
    and h
    ld c, a
    and b
    xor l
    and e
    ld a, a
    and a
    and h
    and b
    and e
    ld a, a
    or [hl]
    and h
    or d
    or e
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    sub h
    adc l
    add e
    add h
    sub c
    add [hl]
    sub c
    adc [hl]
    sub h
    adc l
    add e
    ld c, a
    adc a
    add b
    sub e
    add a
    ld a, a
    and [hl]
    xor [hl]
    and h
    or d
    ld a, a
    and c
    and h
    xor l
    and h
    and b
    or e
    and a
    ld d, l
    sub d
    add b
    add l
    add l
    sub c
    adc [hl]
    adc l
    ld a, a
    and b
    xor l
    and e
    ld a, a
    xor e
    and h
    and b
    and e
    or d
    ld d, l
    or e
    xor [hl]
    ld a, a
    adc e
    add b
    sub l
    add h
    adc l
    add e
    add h
    sub c
    add sp, $51
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    db $e4
    and h
    ld a, a
    and a
    and h
    and b
    and e
    xor b
    xor l
    and [hl]
    ld c, a
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
    db $f4
    ld a, a
    and [hl]
    xor [hl]
    ld d, l
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    and c
    or h
    xor b
    xor e
    and e
    xor b
    xor l
    and [hl]
    ld d, l
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
    or c
    xor [hl]
    and b
    and e
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    and e
    and h
    xor a
    or e
    add sp, $7f
    or d
    or e
    xor [hl]
    or c
    and h
    ld c, a
    xor b
    xor l
    ld a, a
    add d
    add h
    adc e
    add b
    add e
    adc [hl]
    adc l
    ld a, a
    and a
    and b
    or d
    ld a, a
    and b
    ld d, l
    and [hl]
    or c
    and h
    and b
    or e
    ld a, a
    or d
    and h
    xor e
    and h
    and d
    or e
    xor b
    xor [hl]
    xor l
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
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
    ld c, a
    xor [hl]
    and l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor h
    and b
    xor d
    and h
    ld d, l
    or e
    and a
    and h
    xor h
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
    or e
    and a
    and b
    xor l
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    or e
    cp b
    xor a
    and h
    or d
    ld d, l
    and b
    xor l
    and e
    ld a, a
    or [hl]
    and h
    and b
    xor d
    and h
    or c
    ld a, a
    or e
    and a
    and b
    xor l
    ld d, l
    xor [hl]
    or e
    and a
    and h
    or c
    or d
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    or d
    xor [hl]
    xor e
    and e
    ld a, a
    and b
    ld a, a
    or h
    or d
    and h
    xor e
    and h
    or d
    or d
    ld c, a
    adc l
    sub h
    add [hl]
    add [hl]
    add h
    sub e
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
    sub e
    and a
    xor b
    or d
    ld a, a
    or e
    or h
    xor l
    xor l
    and h
    xor e
    ld a, a
    and [hl]
    xor [hl]
    and h
    or d
    ld c, a
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
    and a
    rst $20
    ld c, a
    sbc b
    xor [hl]
    or h
    ld a, a
    or [hl]
    xor b
    xor l
    rst $20
    ld e, b
    nop
    sub [hl]
    and b
    or e
    and d
    and a
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    adc [hl]
    adc l
    adc b
    sub a
    rst $20
    ld c, a
    adc b
    or e
    ld a, a
    and d
    and b
    xor l
    ld a, a
    xor a
    or h
    or e
    ld a, a
    or e
    and a
    and h
    ld d, l
    or d
    or b
    or h
    and h
    and h
    cp c
    and h
    ld a, a
    xor [hl]
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, a
    nop
    add a
    xor h
    xor h
    add sp, $7f
    adc h
    and b
    cp b
    and c
    and h
    ld a, a
    adc b
    push hl
    ld c, a
    xor e
    xor [hl]
    or d
    or e
    ld a, a
    xor b
    xor l
    ld a, a
    and a
    and h
    or c
    and h
    add sp, -$18
    add sp, $57
    nop
    add h
    and b
    or d
    and h
    ld a, a
    or h
    xor a
    rst $20
    ld c, a
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
    and $55
    sub [hl]
    and a
    xor b
    and d
    and a
    ld a, a
    or [hl]
    and b
    cp b
    ld a, a
    xor b
    or d
    ld a, a
    xor [hl]
    or h
    or e
    and $58
    nop
    sub e
    and a
    and b
    or e
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
    xor [hl]
    xor l
    ld a, a
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld d, l
    rst $30
    ld hl, sp+$7f
    and l
    xor [hl]
    or c
    and d
    and h
    and e
    ld a, a
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    ld d, l
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
    and e
    and h
    or e
    xor [hl]
    or h
    or c
    add sp, $57
    nop
    adc [hl]
    or h
    or e
    or d
    xor b
    and e
    and h
    or c
    or d
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
    xor l
    and h
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    and a
    xor [hl]
    or [hl]
    ld d, l
    xor h
    and h
    ld a, a
    or d
    xor [hl]
    xor h
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
    adc b
    ld a, a
    and [hl]
    xor b
    or l
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
    or e
    and b
    xor e
    and h
    xor l
    or e
    and h
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
    and a
    xor b
    xor d
    and h
    rst $20
    ld d, a
    nop
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and l
    xor b
    and [hl]
    and a
    or e
    rst $20
    ld c, a
    sub c
    and h
    and b
    and e
    cp b
    db $f4
    ld a, a
    and [hl]
    xor [hl]
    rst $20
    ld d, a
    nop
    add [hl]
    and b
    xor h
    and h
    ld c, a
    xor [hl]
    or l
    and h
    or c
    rst $20
    ld e, b
    nop
    adc [hl]
    and a
    ld a, a
    or [hl]
    and h
    xor e
    xor e
    db $f4
    ld a, a
    adc b
    cp h
    xor e
    ld a, a
    and [hl]
    and h
    or e
    ld c, a
    and b
    ld a, a
    sbc c
    sub h
    add c
    add b
    sub e
    ld a, a
    and b
    or d
    ld a, a
    adc b
    ld a, a
    and [hl]
    xor [hl]
    rst $20
    ld d, a
    nop
    add h
    and h
    xor d
    rst $20
    ld a, a
    add e
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    or e
    or c
    cp b
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
    and l
    or h
    xor l
    xor l
    cp b
    ld a, a
    xor b
    xor l
    ld d, l
    or e
    and a
    and h
    ld a, a
    and e
    and b
    or c
    xor d
    rst $20
    ld d, a
    nop
    adc b
    or e
    ld c, a
    or [hl]
    and b
    or d
    ld a, a
    or e
    xor [hl]
    xor [hl]
    ld a, a
    and e
    and b
    or c
    xor d
    rst $20
    ld e, b
    nop
    adc b
    ld a, a
    or d
    and b
    or [hl]
    ld a, a
    and b
    ld a, a
    adc h
    add b
    add d
    add a
    adc [hl]
    adc a
    ld c, a
    xor b
    xor l
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    or e
    or h
    xor l
    xor l
    and h
    xor e
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
    and a
    xor b
    or d
    ld a, a
    and l
    and b
    or c
    ld c, a
    and l
    xor [hl]
    or c
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
    ld c, a
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld e, b
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    and h
    and e
    ld a, a
    and d
    or h
    or e
    and h
    ld c, a
    and b
    xor l
    and e
    ld a, a
    and a
    and b
    or c
    xor h
    xor e
    and h
    or d
    or d
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
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld c, a
    adc e
    and h
    or e
    cp l
    ld a, a
    or d
    or e
    and b
    or c
    or e
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    ld c, a
    xor a
    xor e
    and b
    cp b
    ld a, a
    and a
    and b
    or c
    and e
    rst $20
    ld e, b
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
    and b
    xor e
    xor e
    ld c, a
    or d
    or [hl]
    and h
    and b
    or e
    cp b
    ld a, a
    xor l
    xor [hl]
    or [hl]
    rst $20
    ld d, a
    nop
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
    add d
    adc b
    sub e
    sbc b
    ld a, a
    db $e3
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
    ld d, a
    nop
    add c
    cp c
    cp c
    cp c
    or e
    rst $20
    ld d, a
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
    ld c, a
    xor e
    xor [hl]
    or e
    or d
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
    xor b
    or d
    xor l
    cp [hl]
    ld a, a
    xor b
    or e
    ld a, a
    and a
    and b
    or c
    and e
    ld a, a
    or e
    xor [hl]
    ld d, l
    or e
    and a
    xor b
    xor l
    xor d
    ld a, a
    or h
    xor a
    ld a, a
    xor l
    and b
    xor h
    and h
    or d
    and $51
    adc b
    xor l
    ld a, a
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
    db $f4
    ld c, a
    or e
    and a
    and h
    or c
    and h
    cp l
    ld a, a
    and b
    ld a, a
    xor h
    and b
    xor l
    ld a, a
    or [hl]
    and a
    xor [hl]
    ld d, l
    or c
    and b
    or e
    and h
    or d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    xor l
    xor b
    and d
    xor d
    xor l
    and b
    xor h
    and h
    or d
    add sp, $51
    add a
    and h
    cp h
    xor e
    ld a, a
    and a
    and h
    xor e
    xor a
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    or c
    and h
    xor l
    and b
    xor h
    and h
    ld a, a
    or e
    and a
    and h
    xor h
    ld a, a
    or e
    xor [hl]
    xor [hl]
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
    xor b
    or e
    and h
    xor h
    or d
    ld a, a
    xor [hl]
    xor l
    ld c, a
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
    or e
    and a
    and b
    or e
    ld d, l
    and d
    and b
    xor l
    cp [hl]
    ld a, a
    and c
    and h
    ld a, a
    or d
    and h
    and h
    xor l
    add sp, $51
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
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld c, a
    and e
    and h
    or e
    and h
    and d
    or e
    ld a, a
    and b
    xor l
    ld a, a
    xor b
    or e
    and h
    xor h
    ld d, l
    and d
    xor e
    xor [hl]
    or d
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $51
    adc b
    or e
    ld a, a
    and d
    and b
    xor l
    cp [hl]
    ld a, a
    xor a
    xor b
    xor l
    xor a
    xor [hl]
    xor b
    xor l
    or e
    ld c, a
    xor b
    or e
    db $f4
    ld a, a
    or d
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
    ld d, l
    or e
    xor [hl]
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    or d
    and h
    xor e
    and l
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
    add sp, $51
    add b
    ld a, a
    and c
    xor b
    and [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor b
    or d
    ld c, a
    and b
    or d
    xor e
    and h
    and h
    xor a
    ld a, a
    xor [hl]
    xor l
    ld a, a
    and b
    ld a, a
    or c
    xor [hl]
    and b
    and e
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
    add sp, $51
    adc b
    or e
    cp l
    ld a, a
    and b
    ld a, a
    and c
    and h
    and b
    or h
    or e
    xor b
    and l
    or h
    xor e
    ld c, a
    or l
    xor b
    and h
    or [hl]
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
    add sp, $51
    sub e
    and a
    and h
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    or [hl]
    and b
    cp b
    ld a, a
    or e
    xor [hl]
    ld c, a
    and [hl]
    and h
    or e
    ld a, a
    and l
    or c
    xor [hl]
    xor h
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
    add d
    adc b
    sub e
    sbc b
    ld a, a
    or e
    xor [hl]
    ld a, a
    adc e
    add b
    sub l
    add h
    adc l
    add e
    add h
    sub c
    ld d, l
    xor b
    or d
    ld a, a
    and c
    cp b
    ld a, a
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
    sub [hl]
    and a
    and b
    or e
    ld a, a
    and b
    ld a, a
    or d
    or h
    or c
    xor a
    or c
    xor b
    or d
    and h
    rst $20
    ld c, a
    add e
    adc b
    add [hl]
    adc e
    add h
    sub e
    sub e
    or d
    ld a, a
    and e
    or h
    and [hl]
    ld a, a
    or e
    and a
    xor b
    or d
    ld d, l
    xor e
    xor [hl]
    xor l
    and [hl]
    ld a, a
    or e
    or h
    xor l
    xor l
    and h
    xor e
    rst $20
    ld d, c
    adc b
    or e
    ld a, a
    and [hl]
    xor [hl]
    and h
    or d
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
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
    add d
    adc b
    sub e
    sbc b
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
    and b
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    xor [hl]
    or h
    or e
    ld c, a
    or d
    xor a
    xor [hl]
    or e
    ld a, a
    or h
    xor a
    or d
    or e
    and b
    xor b
    or c
    or d
    add sp, $57
    nop
    adc h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    cp l
    ld c, a
    and b
    or d
    and a
    and h
    or d
    ld a, a
    and b
    or c
    and h
    ld a, a
    or d
    or e
    xor [hl]
    or c
    and h
    and e
    ld d, l
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
    sub e
    adc h
    add sp, $7f
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
    ld d, l
    xor b
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
    add sp, -$18
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
    ld sp, hl
    rst $38
    rst $20
    ld d, b
    ld d, b
    nop
    sub e
    adc h
    ld sp, hl
    rst $38
    ld a, a
    xor b
    or d
    ld a, a
    and b
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    ld c, a
    and d
    and b
    xor e
    xor e
    and h
    and e
    ld a, a
    sub d
    sub [hl]
    adc b
    add l
    sub e
    add sp, $51
    adc b
    or e
    cp l
    ld a, a
    or l
    and h
    or c
    cp b
    ld a, a
    and b
    and d
    and d
    or h
    or c
    and b
    or e
    and h
    db $f4
    ld c, a
    or d
    xor [hl]
    ld a, a
    or h
    or d
    and h
    ld a, a
    xor b
    or e
    ld a, a
    and e
    or h
    or c
    xor b
    xor l
    and [hl]
    ld d, l
    and c
    and b
    or e
    or e
    xor e
    and h
    or d
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    cp [hl]
    ld d, l
    and b
    and l
    and l
    xor [hl]
    or c
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor e
    xor [hl]
    or d
    and h
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
    add sp, $51
    add b
    ld a, a
    xor h
    and b
    xor l
    ld a, a
    and l
    xor b
    or d
    and a
    xor b
    xor l
    and [hl]
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
    add sp, $51
    adc b
    or e
    cp l
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
    sub h
    or d
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    sub d
    sub h
    adc a
    add h
    sub c
    ld a, a
    sub c
    adc [hl]
    add e
    ld c, a
    xor b
    xor l
    ld a, a
    and b
    xor l
    cp b
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    rst $20
    ld d, l
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
    or e
    and d
    and a
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
    ld d, l
    xor [hl]
    and l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    sub e
    or c
    cp b
    ld a, a
    and l
    xor b
    or d
    and a
    xor b
    xor l
    and [hl]
    ld c, a
    or [hl]
    and a
    and h
    or c
    and h
    or l
    and h
    or c
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    rst $20
    ld d, a
    nop
    adc [hl]
    and a
    ld a, a
    xor l
    xor [hl]
    rst $20
    ld d, c
    adc b
    ld a, a
    and a
    and b
    and e
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
    cp b
    xor [hl]
    or h
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
    and a
    and b
    or l
    and h
    ld d, l
    xor l
    xor [hl]
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
    xor b
    or e
    rst $20
    ld d, a
    nop
    add b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor d
    xor b
    xor l
    and [hl]
    ld c, a
    xor [hl]
    xor l
    ld a, a
    and b
    ld a, a
    ld d, h
    add e
    add h
    sub a
    and $51
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$72
    add b
    adc d
    cp l
    ld a, a
    add b
    adc b
    add e
    add h
    ld c, a
    and d
    and b
    xor h
    and h
    ld a, a
    and c
    cp b
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $57
    nop
    add h
    sub a
    adc a
    add sp, -$80
    adc e
    adc e
    ld a, a
    and [hl]
    xor b
    or l
    and h
    or d
    ld c, a
    add h
    sub a
    adc a
    ld a, a
    xor a
    xor [hl]
    xor b
    xor l
    or e
    or d
    ld a, a
    or e
    xor [hl]
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
    or [hl]
    xor b
    or e
    and a
    ld d, l
    cp b
    xor [hl]
    or h
    db $f4
    ld a, a
    and h
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
    ld d, l
    and e
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    and l
    xor b
    and [hl]
    and a
    or e
    add sp, $51
    adc b
    or e
    ld a, a
    and e
    xor [hl]
    and h
    or d
    db $f4
    ld a, a
    and a
    xor [hl]
    or [hl]
    and h
    or l
    and h
    or c
    db $f4
    ld c, a
    or c
    and h
    and e
    or h
    and d
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    and b
    xor h
    xor [hl]
    or h
    xor l
    or e
    ld d, l
    xor [hl]
    and l
    ld a, a
    add h
    sub a
    adc a
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and h
    and b
    and d
    and a
    ld d, l
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
    and e
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    xor l
    and h
    and h
    and e
    ld c, a
    xor b
    or e
    db $f4
    ld a, a
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
    ld d, l
    or d
    or e
    xor [hl]
    or c
    and h
    ld a, a
    xor b
    or e
    ld a, a
    or l
    xor b
    and b
    ld a, a
    adc a
    add d
    add sp, $57
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
    add sp, $51
    adc b
    or e
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    or d
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    and b
    ld c, a
    or d
    xor h
    and b
    xor e
    xor e
    ld a, a
    xor b
    or d
    xor e
    and b
    xor l
    and e
    rst $20
    ld d, a
    nop
    adc l
    xor [hl]
    ld a, a
    xor a
    and h
    and e
    and h
    or d
    or e
    or c
    xor b
    and b
    xor l
    or d
    ld c, a
    and b
    or c
    and h
    ld a, a
    and b
    xor e
    xor e
    xor [hl]
    or [hl]
    and h
    and e
    ld a, a
    xor [hl]
    xor l
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
    xor b
    or d
    ld a, a
    and b
    ld c, a
    and e
    xor [hl]
    or [hl]
    xor l
    and a
    xor b
    xor e
    xor e
    ld a, a
    and d
    xor [hl]
    or h
    or c
    or d
    and h
    ld d, l
    and c
    cp b
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    and h
    and b
    add sp, $7f
    adc b
    or e
    cp l
    ld d, l
    and b
    ld a, a
    and [hl]
    or c
    and h
    and b
    or e
    ld a, a
    or c
    xor b
    and e
    and h
    add sp, $57
    nop
    add h
    or a
    and d
    or h
    or d
    and h
    ld a, a
    xor h
    and h
    rst $20
    ld a, a
    sub [hl]
    and b
    xor b
    or e
    ld c, a
    or h
    xor a
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
    add a
    xor [hl]
    or [hl]
    cp e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    xor b
    xor l
    and $4f
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and h
    and l
    and l
    xor [hl]
    or c
    or e
    rst $20
    ld d, a
    nop
    adc b
    push hl
    ld a, a
    and [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and b
    ld c, a
    or c
    xor b
    and e
    and h
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor h
    cp b
    ld a, a
    and [hl]
    xor b
    or c
    xor e
    ld d, l
    and l
    or c
    xor b
    and h
    xor l
    and e
    rst $20
    ld d, a
    nop
    sub [hl]
    and h
    db $e4
    and h
    ld a, a
    and [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    ld c, a
    or c
    xor b
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    and [hl]
    and h
    or e
    and a
    and h
    or c
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
    add sp, $51
    adc b
    or e
    cp l
    ld a, a
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
    add sp, $4f
    sub d
    sub e
    adc [hl]
    sub c
    add h
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
    add sp, $51
    sub e
    and a
    and h
    or c
    and h
    cp l
    ld a, a
    and b
    ld a, a
    xor e
    xor [hl]
    xor l
    and [hl]
    ld c, a
    xor a
    and b
    or e
    and a
    ld a, a
    xor [hl]
    or l
    and h
    or c
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
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
    ld a, a
    and l
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    xor h
    cp b
    ld c, a
    or d
    and h
    and d
    or c
    and h
    or e
    ld a, a
    or c
    and h
    or e
    or c
    and h
    and b
    or e
    rst $20
    ld d, c
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    and e
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    or e
    and h
    xor e
    xor e
    ld c, a
    and b
    xor l
    cp b
    xor [hl]
    xor l
    and h
    ld a, a
    adc b
    push hl
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $55
    adc b
    cp h
    xor e
    ld a, a
    xor h
    and b
    xor d
    and h
    ld a, a
    xor b
    or e
    ld a, a
    or h
    xor a
    ld d, l
    or e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
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
    add a
    adc h
    or $f8
    rst $20
    ld d, b
    ld d, b
    nop
    add a
    adc h
    or $f8
    ld a, a
    xor b
    or d
    ld a, a
    add l
    adc e
    sbc b
    add sp, $4f
    adc b
    or e
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    or e
    and b
    xor d
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, l
    and c
    and b
    and d
    xor d
    ld a, a
    or e
    xor [hl]
    ld a, a
    and b
    xor l
    cp b
    ld a, a
    or e
    xor [hl]
    or [hl]
    xor l
    add sp, $51
    adc a
    or h
    or e
    ld a, a
    xor b
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld c, a
    or h
    or d
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
    ld a, a
    and b
    xor l
    cp b
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
    add l
    add h
    add b
    sub c
    adc [hl]
    sub [hl]
    sbc h
    ld a, a
    adc d
    cp b
    or h
    and h
    and h
    xor l
    rst $20
    ld d, a
    nop
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
    add c
    adc b
    add d
    sbc b
    add d
    adc e
    add h
    ld c, a
    and l
    xor [hl]
    or c
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
    rst $20
    ld d, a
    nop
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
    xor b
    or d
    ld c, a
    and b
    xor e
    xor e
    ld a, a
    or h
    xor a
    and a
    xor b
    xor e
    xor e
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld d, l
    and a
    and h
    or c
    and h
    add sp, $57
    nop
    add h
    or a
    and d
    or h
    or d
    and h
    ld a, a
    xor h
    and h
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
    add sp, $51
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
    ld a, a
    xor b
    or d
    ld a, a
    xor b
    xor l
    ld c, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    and h
    or d
    or e
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
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld c, a
    or d
    or [hl]
    xor b
    xor h
    xor h
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    adc [hl]
    xor l
    xor e
    cp b
    ld a, a
    or e
    or c
    or h
    xor e
    cp b
    ld a, a
    or d
    xor d
    xor b
    xor e
    xor e
    and h
    and e
    ld c, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    or d
    ld a, a
    and b
    or c
    and h
    ld d, l
    and b
    xor e
    xor e
    xor [hl]
    or [hl]
    and h
    and e
    ld a, a
    or e
    and a
    or c
    xor [hl]
    or h
    and [hl]
    and a
    add sp, $51
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
    or e
    and a
    and h
    ld c, a
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
    ld a, a
    cp b
    and h
    or e
    rst $20
    ld d, b
    ld d, b
    nop
    ld d, c
    sub e
    and a
    and h
    ld a, a
    or c
    or h
    xor e
    and h
    or d
    ld a, a
    and b
    or c
    and h
    ld c, a
    or c
    or h
    xor e
    and h
    or d
    add sp, $7f
    adc b
    ld a, a
    and d
    and b
    xor l
    cp [hl]
    ld d, l
    xor e
    and h
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor a
    and b
    or d
    or d
    add sp, $57
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
    ld a, a
    or e
    and a
    and h
    ld c, a
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
    ld d, l
    add [hl]
    xor [hl]
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    ld a, a
    and b
    and a
    and h
    and b
    and e
    rst $20
    ld d, b
    ld d, b
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
    sub l
    adc b
    add d
    sub e
    adc [hl]
    sub c
    sbc b
    ld a, a
    sub c
    adc [hl]
    add b
    add e
    ld a, a
    xor b
    or d
    ld c, a
    or e
    and a
    and h
    ld a, a
    and l
    xor b
    xor l
    and b
    xor e
    ld a, a
    or e
    and h
    or d
    or e
    ld d, l
    and l
    xor [hl]
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
    rst $20
    ld d, a
    nop
    add b
    xor b
    cp b
    and b
    and a
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
    and [hl]
    and h
    or e
    ld a, a
    or d
    or e
    or h
    and d
    xor d
    db $f4
    ld c, a
    or e
    or c
    cp b
    ld a, a
    xor h
    xor [hl]
    or l
    xor b
    xor l
    and [hl]
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld d, l
    and c
    xor [hl]
    or h
    xor e
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
    rst $20
    ld d, a
    nop
    add b
    and a
    db $f4
    ld a, a
    or d
    xor [hl]
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
    and $57
    nop
    sbc b
    xor [hl]
    or h
    ld c, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    xor h
    and h
    rst $20
    ld e, b
    nop
    ld d, e
    ld a, a
    and b
    xor e
    or d
    xor [hl]
    ld a, a
    and d
    and b
    xor h
    and h
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
    ld d, a
    nop
    add d
    xor [hl]
    xor h
    and h
    ld a, a
    xor [hl]
    xor l
    rst $20
    ld c, a
    adc b
    cp h
    xor e
    ld a, a
    or [hl]
    and a
    xor b
    xor a
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld c, a
    or [hl]
    and a
    xor b
    xor a
    xor a
    and h
    and e
    rst $20
    ld e, b
    nop
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
    or c
    xor b
    and [hl]
    and a
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld a, a
    xor [hl]
    xor l
    ld d, l
    sub l
    adc b
    add d
    sub e
    adc [hl]
    sub c
    sbc b
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
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and [hl]
    and h
    or e
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
    xor [hl]
    ld a, a
    xor h
    and h
    and h
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
    ld d, a
    nop
    adc l
    xor [hl]
    rst $20
    ld c, a
    sub h
    xor l
    and c
    and h
    xor e
    xor b
    and h
    or l
    and b
    and c
    xor e
    and h
    rst $20
    ld e, b
    nop
    adc b
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and c
    and h
    and b
    or e
    ld a, a
    cp b
    xor [hl]
    or h
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
    xor d
    xor l
    xor [hl]
    or [hl]
    xor e
    and h
    and e
    and [hl]
    and h
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
    rst $20
    ld d, a
    nop
    adc b
    or d
    ld a, a
    sub l
    adc b
    add d
    sub e
    adc [hl]
    sub c
    sbc b
    ld a, a
    sub c
    adc [hl]
    add b
    add e
    ld c, a
    or e
    xor [hl]
    xor [hl]
    ld a, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    and $57
    nop
    sub [hl]
    and h
    xor e
    xor e
    ld c, a
    and e
    xor [hl]
    xor l
    and h
    rst $20
    ld e, b
    nop
    adc h
    and b
    xor l
    cp b
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
    and [hl]
    xor b
    or l
    and h
    ld c, a
    or h
    xor a
    ld a, a
    or e
    and a
    and h
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
    ld d, l
    and a
    and h
    or c
    and h
    add sp, $57
    nop
    add a
    xor b
    cp b
    and b
    rst $20
    ld a, a
    adc b
    push hl
    ld a, a
    and b
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, -$18
    add sp, $55
    add sp, -$18
    add sp, -$73
    xor [hl]
    ld a, a
    adc b
    push hl
    ld a, a
    xor l
    xor [hl]
    or e
    rst $20
    ld d, c
    add d
    and b
    xor e
    xor e
    ld a, a
    xor h
    and h
    ld a, a
    add c
    adc b
    adc e
    adc e
    rst $20
    ld c, a
    adc b
    push hl
    ld a, a
    and b
    ld a, a
    or e
    or c
    or h
    and h
    ld a, a
    and c
    xor e
    or h
    and h
    ld d, l
    ld d, h
    adc h
    add b
    adc l
    adc b
    add b
    add d
    rst $20
    ld a, a
    add a
    and h
    cp b
    rst $20
    ld d, l
    sub [hl]
    and a
    and b
    or e
    cp l
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    or e
    and a
    and b
    or e
    ld d, l
    or d
    xor d
    and h
    xor a
    or e
    xor b
    and d
    and b
    xor e
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    and $51
    adc b
    push hl
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    xor c
    xor [hl]
    or d
    and a
    xor b
    xor l
    and [hl]
    ld c, a
    cp b
    xor [hl]
    or h
    db $f4
    ld a, a
    adc b
    ld a, a
    or d
    and d
    or c
    and h
    or [hl]
    and h
    and e
    ld a, a
    or h
    xor a
    ld d, l
    and b
    xor l
    ld a, a
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
    ld a, a
    and b
    xor l
    and e
    ld d, l
    and [hl]
    xor [hl]
    or e
    ld a, a
    and d
    xor [hl]
    xor h
    and c
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
    and b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, c
    sub d
    xor [hl]
    db $f4
    ld a, a
    and a
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
    and $4f
    add a
    and h
    xor e
    xor a
    ld a, a
    xor h
    and h
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    and a
    and h
    or c
    and h
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    adc b
    push hl
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
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
    db $f4
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    or e
    xor [hl]
    ld d, l
    xor h
    cp b
    ld a, a
    adc a
    add d
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or c
    or h
    xor l
    ld a, a
    or e
    and a
    and h
    ld d, l
    add d
    and h
    xor e
    xor e
    ld a, a
    sub d
    and h
    xor a
    and b
    or c
    and b
    or e
    xor b
    xor [hl]
    xor l
    ld d, l
    sub d
    cp b
    or d
    or e
    and h
    xor h
    rst $20
    ld d, a
    nop
    adc l
    xor [hl]
    rst $20
    and $7f
    add d
    xor [hl]
    xor h
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
    and [hl]
    xor [hl]
    or e
    or e
    and b
    ld a, a
    and a
    and h
    xor e
    xor a
    ld a, a
    and b
    ld a, a
    and [hl]
    or h
    cp b
    ld d, l
    xor b
    xor l
    ld a, a
    and e
    and h
    and h
    xor a
    ld a, a
    or e
    or c
    xor [hl]
    or h
    and c
    xor e
    and h
    rst $20
    ld d, c
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
    db $f4
    ld c, a
    and d
    and a
    xor b
    and h
    and l
    and $7f
    adc a
    xor e
    and h
    and b
    or d
    and h
    and $55
    adc [hl]
    adc d
    and $7f
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
    ld e, b
    nop
    add c
    adc b
    adc e
    adc e
    sbc h
    ld a, a
    sbc b
    and h
    and h
    and a
    and b
    and a
    rst $20
    ld c, a
    sub e
    and a
    and b
    xor l
    xor d
    or d
    db $f4
    ld a, a
    and c
    or h
    and e
    rst $20
    ld a, a
    adc b
    ld d, l
    xor [hl]
    or [hl]
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor [hl]
    xor l
    and h
    rst $20
    ld d, c
    sub d
    xor [hl]
    db $f4
    ld a, a
    and e
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
    or e
    xor [hl]
    ld a, a
    or d
    and h
    and h
    ld a, a
    xor h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
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
    and $55
    sbc b
    xor [hl]
    or h
    ld a, a
    and e
    xor b
    and e
    xor l
    cp [hl]
    and $55
    sub e
    and a
    and b
    or e
    cp l
    ld a, a
    and b
    ld a, a
    and c
    or h
    xor h
    xor h
    and h
    or c
    add sp, $51
    adc b
    cp a
    and h
    ld a, a
    and [hl]
    xor [hl]
    or e
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
    add sp, -$18
    add sp, $7f
    adc [hl]
    and a
    ld a, a
    and a
    and h
    or c
    and h
    db $f4
    ld d, l
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
    cp h
    xor e
    ld a, a
    and e
    xor [hl]
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
    xor l
    ld a, a
    ld d, b
    ld bc, $cf4b
    nop
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
    or e
    xor [hl]
    xor [hl]
    ld c, a
    xor h
    or h
    and d
    and a
    ld a, a
    or d
    or e
    or h
    and l
    and l
    db $f4
    ld a, a
    and c
    or h
    and e
    rst $20
    ld d, a
    nop
    sub e
    and a
    and b
    or e
    ld a, a
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
    db $f4
    ld c, a
    sub d
    add sp, -$6e
    add sp, -$80
    adc l
    adc l
    add h
    db $f4
    ld a, a
    xor b
    or d
    ld a, a
    xor b
    xor l
    ld d, l
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
    add sp, $55
    adc b
    or e
    or d
    ld a, a
    xor a
    and b
    or d
    or d
    and h
    xor l
    and [hl]
    and h
    or c
    or d
    ld d, l
    and b
    or c
    and h
    ld a, a
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
    rst $20
    ld d, c
    sub e
    and a
    and h
    cp b
    ld a, a
    xor b
    xor l
    or l
    xor b
    or e
    and h
    and e
    ld a, a
    xor h
    and h
    ld c, a
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    xor b
    or c
    ld a, a
    xor a
    and b
    or c
    or e
    cp b
    db $f4
    ld d, l
    and c
    or h
    or e
    ld a, a
    adc b
    ld a, a
    and d
    and b
    xor l
    cp [hl]
    ld a, a
    or d
    or e
    and b
    xor l
    and e
    ld d, l
    and l
    and b
    xor l
    and d
    cp b
    ld a, a
    and e
    xor [hl]
    cp l
    add sp, $7f
    sub [hl]
    and a
    cp b
    ld d, l
    and e
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and [hl]
    xor [hl]
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
    xor h
    and h
    and $57
    nop
    add c
    adc b
    adc e
    adc e
    sbc h
    ld a, a
    adc e
    xor [hl]
    xor [hl]
    xor d
    db $f4
    ld a, a
    and c
    or h
    and e
    db $f4
    ld c, a
    xor c
    or h
    or d
    or e
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
    ld d, l
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor h
    cp b
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
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor h
    cp b
    ld a, a
    adc a
    add d
    rst $20
    ld d, a
    nop
    add a
    xor b
    rst $20
    ld a, a
    adc b
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor d
    ld a, a
    and b
    or e
    ld a, a
    and b
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    adc h
    add b
    sub c
    sub e
    add sp, $51
    adc b
    or e
    cp l
    ld a, a
    and b
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
    ld c, a
    or d
    and a
    xor [hl]
    xor a
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    xor a
    xor e
    and h
    and b
    or d
    and h
    ld d, l
    or l
    xor b
    or d
    xor b
    or e
    ld a, a
    or h
    or d
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
    add d
    adc b
    sub e
    sbc b
    add sp, $51
    adc b
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    db $f4
    ld a, a
    adc b
    cp h
    xor e
    ld a, a
    and [hl]
    xor b
    or l
    and h
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    ld a, a
    or d
    and b
    xor h
    xor a
    xor e
    and h
    rst $20
    ld d, l
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
    and [hl]
    xor [hl]
    or e
    ld c, a
    ld d, b
    ld bc, $cf4b
    nop
    rst $20
    ld d, b
    ld d, b
    nop
    sub [hl]
    and h
    ld a, a
    and b
    xor e
    or d
    xor [hl]
    ld a, a
    and d
    and b
    or c
    or c
    cp b
    ld c, a
    ld d, h
    ld a, a
    add c
    add b
    adc e
    adc e
    or d
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
    sub d
    and h
    and h
    ld a, a
    or e
    and a
    xor [hl]
    or d
    and h
    ld a, a
    xor e
    and h
    and e
    and [hl]
    and h
    or d
    ld c, a
    and b
    xor e
    xor [hl]
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    or c
    xor [hl]
    and b
    and e
    and $51
    adc b
    or e
    cp l
    ld a, a
    and b
    ld a, a
    and c
    xor b
    or e
    ld a, a
    or d
    and d
    and b
    or c
    cp b
    db $f4
    ld c, a
    and c
    or h
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    xor c
    or h
    xor h
    xor a
    ld d, l
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    or e
    and a
    and h
    xor h
    add sp, $51
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    and c
    and b
    and d
    xor d
    ld c, a
    or e
    xor [hl]
    ld a, a
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
    ld d, l
    or b
    or h
    xor b
    and d
    xor d
    and h
    or c
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    or [hl]
    and b
    cp b
    add sp, $57
    nop
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    rst $30
    ld c, a
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
    ld a, a
    db $e3
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
    ld d, a
    nop
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    ld hl, sp+$4f
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
    db $e3
    ld d, l
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
    ld d, a
    nop
    add e
    adc b
    add [hl]
    adc e
    add h
    sub e
    sub e
    cp l
    ld a, a
    add d
    add b
    sub l
    add h
    ld d, a
    nop
    sub [hl]
    and a
    and h
    or [hl]
    add sp, -$18
    add sp, $7f
    adc b
    ld a, a
    and c
    and h
    or e
    or e
    and h
    or c
    ld c, a
    or e
    and b
    xor d
    and h
    ld a, a
    and b
    ld a, a
    or c
    and h
    or d
    or e
    add sp, -$18
    add sp, $55
    add [hl]
    or c
    xor [hl]
    and b
    xor l
    add sp, -$18
    add sp, $51
    sub e
    and a
    and b
    or e
    ld a, a
    or e
    or h
    xor l
    xor l
    and h
    xor e
    ld a, a
    and l
    or c
    xor [hl]
    xor h
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
    or e
    and b
    xor d
    and h
    or d
    ld a, a
    and b
    ld d, l
    xor e
    xor [hl]
    or e
    ld a, a
    xor [hl]
    or h
    or e
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
    add a
    and h
    cp b
    rst $20
    ld a, a
    adc b
    ld a, a
    xor h
    and h
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor b
    xor l
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
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    ld c, a
    and c
    and h
    and b
    or e
    ld a, a
    xor h
    and h
    ld a, a
    and b
    and [hl]
    and b
    xor b
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
    and b
    or c
    and h
    ld a, a
    xor [hl]
    or e
    and a
    and h
    or c
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
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    or e
    and a
    and b
    xor l
    ld a, a
    or e
    and a
    xor [hl]
    or d
    and h
    ld a, a
    and l
    xor [hl]
    or h
    xor l
    and e
    ld d, l
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    xor [hl]
    or c
    and h
    or d
    or e
    rst $20
    ld d, a
    nop
    add a
    xor b
    rst $20
    ld a, a
    adc b
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    or d
    and a
    xor [hl]
    or c
    or e
    or d
    rst $20
    ld c, a
    sub e
    and a
    and h
    cp b
    db $e4
    and h
    ld a, a
    and d
    xor [hl]
    xor h
    and l
    cp b
    ld a, a
    and b
    xor l
    and e
    ld d, l
    and h
    and b
    or d
    cp b
    ld a, a
    or e
    xor [hl]
    ld a, a
    or [hl]
    and h
    and b
    or c
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
    xor b
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
    or e
    xor [hl]
    or c
    xor b
    xor l
    and [hl]
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
    xor [hl]
    xor l
    ld d, l
    adc a
    add d
    and $7f
    add h
    and b
    and d
    and a
    ld a, a
    add c
    adc [hl]
    sub a
    ld a, a
    and d
    and b
    xor l
    ld d, l
    and a
    xor [hl]
    xor e
    and e
    ld a, a
    ld hl, sp-$0a
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
    xor e
    xor [hl]
    xor [hl]
    xor d
    and h
    and e
    ld a, a
    and b
    or e
    ld a, a
    xor h
    and h
    db $f4
    ld c, a
    and e
    xor b
    and e
    xor l
    cp [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    and $57
    nop
    sbc b
    xor [hl]
    or h
    db $e4
    and h
    ld c, a
    xor h
    and h
    and b
    xor l
    rst $20
    ld e, b
    nop
    sub b
    or h
    xor b
    or e
    ld a, a
    or d
    or e
    and b
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    and l
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    and e
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld d, l
    and l
    xor b
    and [hl]
    and a
    or e
    rst $20
    ld d, a
    nop
    add b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
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
    and $4f
    adc e
    and h
    or e
    cp l
    ld a, a
    and l
    xor b
    and [hl]
    and a
    or e
    rst $20
    ld d, a
    nop
    adc b
    and l
    ld a, a
    adc b
    ld c, a
    and a
    and b
    and e
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
    adc b
    ld d, l
    or [hl]
    xor [hl]
    or h
    xor e
    and e
    cp a
    and h
    ld a, a
    or [hl]
    xor [hl]
    xor l
    rst $20
    ld e, b
    nop
    adc b
    and l
    ld a, a
    and b
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
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc a
    add d
    ld a, a
    and [hl]
    and h
    or e
    or d
    ld d, l
    and l
    or h
    xor e
    xor e
    db $f4
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    or d
    or [hl]
    xor b
    or e
    and d
    and a
    ld d, l
    or e
    xor [hl]
    ld a, a
    and b
    xor l
    xor [hl]
    or e
    and a
    and h
    or c
    ld a, a
    add c
    adc [hl]
    sub a
    rst $20
    ld d, a
    nop
    sub e
    and a
    and b
    or e
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and [hl]
    and b
    or l
    and h
    ld a, a
    xor h
    and h
    db $f4
    ld a, a
    xor b
    or e
    cp l
    ld a, a
    or d
    xor [hl]
    ld d, l
    xor b
    xor l
    or e
    or c
    xor b
    and [hl]
    or h
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    add c
    and h
    ld a, a
    xor l
    xor b
    and d
    and h
    rst $20
    ld e, b
    nop
    add b
    or l
    xor [hl]
    xor b
    and e
    ld a, a
    and l
    xor b
    and [hl]
    and a
    or e
    or d
    ld a, a
    and c
    cp b
    ld c, a
    xor l
    xor [hl]
    or e
    ld a, a
    xor e
    and h
    or e
    or e
    xor b
    xor l
    and [hl]
    ld d, l
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld a, a
    or d
    and h
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, a
    nop
    add a
    and h
    cp b
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    db $e4
    and h
    ld a, a
    xor l
    xor [hl]
    or e
    ld c, a
    or [hl]
    and h
    and b
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    or d
    and a
    xor [hl]
    or c
    or e
    or d
    rst $20
    ld d, a
    nop
    adc e
    xor [hl]
    or d
    or e
    rst $20
    ld c, a
    adc e
    xor [hl]
    or d
    or e
    rst $20
    ld a, a
    adc e
    xor [hl]
    or d
    or e
    rst $20
    ld e, b
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
    or [hl]
    and h
    and b
    or c
    ld c, a
    or d
    and a
    xor [hl]
    or c
    or e
    or d
    db $f4
    ld a, a
    and h
    or l
    and h
    xor l
    ld a, a
    xor b
    xor l
    ld d, l
    or [hl]
    xor b
    xor l
    or e
    and h
    or c
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
    and l
    xor b
    and [hl]
    and a
    or e
    ld a, a
    xor h
    cp b
    ld c, a
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
    add e
    xor [hl]
    xor l
    and h
    ld c, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    and e
    xor b
    xor l
    xor l
    and h
    or c
    rst $20
    ld e, b
    nop
    sub e
    or c
    and b
    xor b
    xor l
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
    ld d, l
    or e
    and a
    and h
    ld a, a
    or [hl]
    xor b
    xor e
    and e
    ld a, a
    xor [hl]
    xor l
    and h
    or d
    rst $20
    ld d, a
    nop
    add h
    and h
    xor d
    rst $20
    ld a, a
    add e
    xor b
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    or e
    xor [hl]
    or h
    and d
    and a
    ld a, a
    xor h
    and h
    and $57
    nop
    sub e
    and a
    and b
    or e
    cp l
    ld a, a
    xor b
    or e
    and $58
    nop
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    ld a, [$a87f]
    or d
    ld a, a
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld c, a
    and l
    xor [hl]
    xor [hl]
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    adc h
    sub e
    add sp, -$74
    adc [hl]
    adc [hl]
    adc l
    add sp, $57
    nop
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    ld sp, hl
    ld c, a
    adc h
    sub e
    add sp, -$74
    adc [hl]
    adc [hl]
    adc l
    ld a, a
    add b
    add a
    add h
    add b
    add e
    ld d, a
    nop
    adc [hl]
    or h
    and d
    and a
    rst $20
    ld a, a
    adc b
    ld a, a
    or e
    or c
    xor b
    xor a
    xor a
    and h
    and e
    ld c, a
    xor [hl]
    or l
    and h
    or c
    ld a, a
    and b
    ld a, a
    or c
    xor [hl]
    and d
    xor d
    cp b
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    db $f4
    ld a, a
    add [hl]
    add h
    adc [hl]
    add e
    sub h
    add e
    add h
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
    and [hl]
    and h
    or e
    ld a, a
    xor h
    cp b
    ld c, a
    xor h
    or h
    or d
    and a
    or c
    xor [hl]
    xor [hl]
    xor h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, a
    nop
    adc [hl]
    and a
    rst $20
    ld a, a
    adc h
    cp b
    ld a, a
    and d
    or h
    or e
    and h
    ld c, a
    xor h
    or h
    or d
    and a
    or c
    xor [hl]
    xor [hl]
    xor h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld e, b
    nop
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
    xor l
    xor [hl]
    or e
    ld c, a
    and c
    and h
    ld a, a
    and b
    xor l
    cp b
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld d, l
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
    and a
    and h
    or c
    and h
    add sp, $51
    adc b
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
    ld a, a
    adc b
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld c, a
    or e
    and a
    and h
    xor h
    ld a, a
    and b
    xor e
    xor e
    add sp, $57
    nop
    adc h
    sub e
    add sp, -$74
    adc [hl]
    adc [hl]
    adc l
    ld c, a
    sub e
    or h
    xor l
    xor l
    and h
    xor e
    ld a, a
    add h
    xor l
    or e
    or c
    and b
    xor l
    and d
    and h
    ld d, a
    nop
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    ld a, [$8c4f]
    sub e
    add sp, -$74
    adc [hl]
    adc [hl]
    adc l
    ld a, a
    db $e3
    ld d, l
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
    ld d, a
    nop
    sub h
    adc l
    add e
    add h
    sub c
    add [hl]
    sub c
    adc [hl]
    sub h
    adc l
    add e
    ld a, a
    adc a
    add b
    sub e
    add a
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
    add d
    adc b
    sub e
    sbc b
    ld a, a
    db $e3
    ld d, l
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
    ld d, a
    nop
    sub [hl]
    and a
    xor [hl]
    cp l
    ld a, a
    or e
    and a
    and h
    or c
    and h
    and $4f
    sub b
    or h
    xor b
    or e
    ld a, a
    xor e
    xor b
    or d
    or e
    and h
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    xor l
    ld d, l
    xor [hl]
    xor l
    ld a, a
    or h
    or d
    rst $20
    ld d, a
    nop
    adc b
    ld c, a
    xor c
    or h
    or d
    or e
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
    ld e, b
    nop
    sub [hl]
    and a
    xor b
    or d
    xor a
    and h
    or c
    add sp, -$18
    add sp, $4f
    or [hl]
    and a
    xor b
    or d
    xor a
    and h
    or c
    add sp, -$18
    add sp, $57
    nop
    add h
    or a
    and d
    or h
    or d
    and h
    ld a, a
    xor h
    and h
    rst $20
    ld a, a
    sub e
    and a
    xor b
    or d
    ld c, a
    xor b
    or d
    ld a, a
    and b
    ld a, a
    xor a
    or c
    xor b
    or l
    and b
    or e
    and h
    ld d, l
    and d
    xor [hl]
    xor l
    or l
    and h
    or c
    or d
    and b
    or e
    xor b
    xor [hl]
    xor l
    rst $20
    ld d, a
    nop
    sub h
    and [hl]
    and a
    rst $20
    ld c, a
    adc b
    ld a, a
    and a
    and b
    or e
    and h
    ld a, a
    xor e
    xor [hl]
    or d
    xor b
    xor l
    and [hl]
    rst $20
    ld e, b
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
    and c
    or h
    and [hl]
    or d
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $57
    nop
    adc l
    xor [hl]
    rst $20
    ld c, a
    sbc b
    xor [hl]
    or h
    db $e4
    and h
    ld a, a
    xor d
    xor b
    and e
    and e
    xor b
    xor l
    and [hl]
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
    and c
    or h
    and [hl]
    or d
    db $f4
    ld a, a
    or d
    xor [hl]
    ld c, a
    adc b
    push hl
    ld a, a
    and [hl]
    xor [hl]
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
    add a
    or h
    and a
    and $7f
    sbc b
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
    and b
    xor e
    xor d
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    and h
    and $57
    nop
    adc b
    ld c, a
    and e
    xor b
    and e
    xor l
    cp [hl]
    ld a, a
    or d
    or e
    and b
    or c
    or e
    ld a, a
    xor b
    or e
    rst $20
    ld e, b
    nop
    adc b
    ld a, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and d
    and b
    or c
    or c
    cp b
    ld c, a
    xor h
    xor [hl]
    or c
    and h
    ld a, a
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
    xor h
    and h
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    or d
    and b
    and l
    and h
    or e
    cp b
    add sp, $57
    nop
    adc h
    and h
    and $7f
    sub [hl]
    and h
    xor e
    xor e
    db $f4
    ld a, a
    adc [hl]
    adc d
    add sp, $4f
    adc b
    cp h
    xor e
    ld a, a
    xor a
    xor e
    and b
    cp b
    rst $20
    ld d, a
    nop
    adc c
    or h
    or d
    or e
    ld c, a
    and e
    xor b
    and e
    xor l
    cp [hl]
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor d
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
    and h
    or e
    ld c, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    and h
    or c
    rst $20
    ld a, a
    sub [hl]
    and a
    and b
    or e
    cp l
    ld d, l
    cp b
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
    and $57
    nop
    adc b
    cp a
    and h
    ld a, a
    xor l
    and h
    or l
    and h
    or c
    ld a, a
    or d
    and h
    and h
    xor l
    ld c, a
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
    ld d, l
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
    xor [hl]
    and e
    and $57
    nop
    sbc b
    xor [hl]
    or h
    ld c, a
    and b
    or c
    and h
    ld a, a
    or e
    xor [hl]
    xor [hl]
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    rst $20
    ld e, b
    nop
    add b
    or c
    and h
    ld a, a
    xor h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    or [hl]
    and h
    and b
    xor d
    and $7f
    adc [hl]
    or c
    db $f4
    ld a, a
    and b
    xor h
    ld a, a
    adc b
    ld d, l
    xor c
    or h
    or d
    or e
    ld a, a
    and c
    and b
    and e
    and $57
    nop
    sub h
    adc l
    add e
    add h
    sub c
    add [hl]
    sub c
    adc [hl]
    sub h
    adc l
    add e
    ld a, a
    adc a
    add b
    sub e
    add a
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
    add d
    adc b
    sub e
    sbc b
    ld a, a
    db $e3
    ld d, l
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
    ld d, a
    nop
    sub h
    adc l
    add e
    add h
    sub c
    add [hl]
    sub c
    adc [hl]
    sub h
    adc l
    add e
    ld a, a
    adc a
    add b
    sub e
    add a
    ld c, a
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
    ld a, a
    db $e3
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
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and b
    or e
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    db $f4
    ld a, a
    and c
    or h
    or e
    ld d, l
    and a
    xor [hl]
    or [hl]
    cp l
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    and d
    and a
    and h
    xor h
    and $57
    nop
    adc [hl]
    or [hl]
    rst $20
    ld c, a
    adc h
    and h
    xor e
    or e
    and e
    xor [hl]
    or [hl]
    xor l
    rst $20
    ld e, b
    nop
    adc b
    ld a, a
    and b
    xor h
    ld a, a
    and c
    and h
    or e
    or e
    and h
    or c
    ld a, a
    and b
    or e
    ld c, a
    or d
    and d
    and a
    xor [hl]
    xor [hl]
    xor e
    ld a, a
    or e
    and a
    and b
    xor l
    ld a, a
    or e
    and a
    xor b
    or d
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
    or c
    xor [hl]
    xor e
    xor e
    ld a, a
    or e
    and a
    and h
    ld a, a
    and e
    xor b
    and d
    and h
    rst $20
    ld d, a
    nop
    add e
    or c
    and b
    or e
    rst $20
    ld c, a
    add d
    and b
    xor h
    and h
    ld a, a
    or h
    xor a
    ld a, a
    or d
    and a
    xor [hl]
    or c
    or e
    rst $20
    ld e, b
    nop
    adc e
    and b
    and e
    cp b
    ld a, a
    adc e
    or h
    and d
    xor d
    cp l
    ld a, a
    xor l
    xor [hl]
    or e
    ld c, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    and e
    and b
    cp b
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    xor l
    and h
    and h
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
    ld c, a
    or e
    xor [hl]
    ld a, a
    or [hl]
    xor b
    xor l
    ld a, a
    and b
    or e
    ld a, a
    or e
    and a
    xor b
    or d
    rst $20
    ld d, a
    nop
    adc b
    or e
    cp l
    ld c, a
    xor l
    xor [hl]
    or e
    ld a, a
    xor e
    xor [hl]
    and [hl]
    xor b
    and d
    and b
    xor e
    rst $20
    ld e, b
    nop
    add [hl]
    xor [hl]
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    add [hl]
    sub c
    adc b
    adc h
    add h
    sub c
    ld c, a
    and l
    xor b
    or c
    or d
    or e
    add sp, -$18
    add sp, -$60
    xor l
    and e
    add sp, -$18
    add sp, $55
    add sp, -$18
    add sp, -$60
    xor l
    and e
    add sp, -$18
    add sp, -$4d
    and a
    and h
    xor l
    add sp, -$18
    add sp, $57
    nop
    adc b
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    adc l
    adc b
    add e
    adc [hl]
    sub c
    add b
    adc l
    db $f4
    ld a, a
    or d
    xor [hl]
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
    ld d, a
    nop
    sub [hl]
    and a
    cp b
    and $7f
    sub [hl]
    and a
    cp b
    and $e6
    ld e, b
    nop
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and [hl]
    or c
    xor [hl]
    or [hl]
    ld c, a
    or h
    xor a
    ld a, a
    or e
    and a
    and h
    cp b
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    or h
    and [hl]
    xor e
    cp b
    rst $20
    ld d, l
    sub e
    and a
    and h
    cp b
    ld a, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    xor l
    cp [hl]
    ld d, l
    and h
    or l
    xor [hl]
    xor e
    or l
    and h
    rst $20
    ld d, a
    nop
    sub d
    and d
    and a
    xor [hl]
    xor [hl]
    xor e
    ld a, a
    xor b
    or d
    ld a, a
    and l
    or h
    xor l
    db $f4
    ld a, a
    and c
    or h
    or e
    ld c, a
    or d
    xor [hl]
    ld a, a
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
    adc b
    cp h
    xor e
    ld c, a
    or d
    or e
    and b
    cp b
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    or d
    and d
    and a
    xor [hl]
    xor [hl]
    xor e
    add sp, $58
    nop
    sub [hl]
    and h
    db $e4
    and h
    ld a, a
    or d
    or e
    or h
    and d
    xor d
    ld a, a
    and a
    and h
    or c
    and h
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
    or e
    and a
    and h
    ld d, l
    and [hl]
    and b
    or e
    and h
    or d
    ld a, a
    and b
    or e
    ld a, a
    sub d
    add b
    add l
    add l
    sub c
    adc [hl]
    adc l
    add sp, $57
    nop
    adc h
    add h
    adc [hl]
    sub [hl]
    sub e
    add a
    ld a, a
    xor b
    or d
    ld a, a
    or d
    xor [hl]
    ld a, a
    and d
    or h
    or e
    and h
    db $f4
    ld c, a
    xor h
    and h
    xor [hl]
    or [hl]
    db $f4
    ld a, a
    xor h
    and h
    xor [hl]
    or [hl]
    db $f4
    ld a, a
    xor h
    and h
    xor [hl]
    or [hl]
    rst $20
    ld d, a
    nop
    adc h
    and h
    xor [hl]
    or [hl]
    rst $20
    ld e, b
    nop
    adc b
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
    ld a, a
    adc a
    adc b
    add e
    add [hl]
    add h
    sbc b
    ld c, a
    and b
    xor l
    and e
    ld a, a
    sub c
    add b
    sub e
    sub e
    add b
    sub e
    add b
    ld d, l
    and b
    or c
    and h
    ld a, a
    and d
    or h
    or e
    and h
    ld a, a
    or e
    xor [hl]
    xor [hl]
    rst $20
    ld d, a
    nop
    sub [hl]
    and h
    ld a, a
    xor h
    or h
    or d
    or e
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld c, a
    or d
    xor b
    xor e
    xor e
    cp b
    ld a, a
    or d
    or e
    and b
    xor l
    and e
    xor b
    xor l
    and [hl]
    ld d, l
    and a
    and h
    or c
    and h
    ld a, a
    xor e
    xor b
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
    adc e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    or [hl]
    and a
    and b
    or e
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    and e
    xor b
    and e
    rst $20
    ld e, b
    nop
    sub d
    add b
    add l
    add l
    sub c
    adc [hl]
    adc l
    cp l
    ld a, a
    and [hl]
    and b
    or e
    and h
    ld c, a
    xor d
    and h
    and h
    xor a
    and h
    or c
    ld a, a
    or [hl]
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    xor e
    and h
    or e
    ld d, l
    or h
    or d
    ld a, a
    or e
    and a
    or c
    xor [hl]
    or h
    and [hl]
    and a
    add sp, $55
    add a
    and h
    cp l
    ld a, a
    or d
    xor [hl]
    ld a, a
    xor h
    and h
    and b
    xor l
    rst $20
    ld d, a
    nop
    adc b
    push hl
    ld a, a
    and b
    ld a, a
    or c
    and b
    xor h
    and c
    xor e
    xor b
    xor l
    and [hl]
    db $f4
    ld c, a
    and [hl]
    and b
    xor h
    and c
    xor e
    xor b
    xor l
    and [hl]
    ld a, a
    and e
    or h
    and e
    and h
    rst $20
    ld d, a
    nop
    adc h
    xor b
    or d
    or d
    and h
    and e
    ld c, a
    or e
    and a
    and h
    ld a, a
    and c
    xor b
    and [hl]
    ld a, a
    or d
    and d
    xor [hl]
    or c
    and h
    rst $20
    ld e, b
    nop
    add [hl]
    and b
    xor h
    and c
    xor e
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    xor l
    and e
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
    xor e
    xor b
    xor d
    and h
    ld d, l
    and h
    and b
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    xor a
    and h
    and b
    xor l
    or h
    or e
    or d
    rst $20
    ld d, l
    adc c
    or h
    or d
    or e
    ld a, a
    and d
    and b
    xor l
    cp [hl]
    ld a, a
    or d
    or e
    xor [hl]
    xor a
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    and b
    or e
    cp l
    ld a, a
    and b
    ld a, a
    and d
    or h
    or e
    and h
    db $f4
    ld c, a
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
    and l
    xor e
    or h
    and l
    and l
    cp b
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    and $57
    nop
    sub d
    or e
    xor [hl]
    xor a
    rst $20
    ld d, c
    add e
    xor [hl]
    xor l
    cp [hl]
    ld a, a
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
    ld c, a
    or e
    xor [hl]
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
    rst $20
    ld e, b
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
    add d
    adc e
    add h
    add l
    add b
    adc b
    sub c
    sbc b
    ld a, a
    and h
    or l
    xor [hl]
    xor e
    or l
    and h
    or d
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
    and h
    or a
    xor a
    xor [hl]
    or d
    and h
    and e
    ld d, l
    or e
    xor [hl]
    ld a, a
    and b
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
    add sp, $57
    nop
    sub h
    adc l
    add e
    add h
    sub c
    add [hl]
    sub c
    adc [hl]
    sub h
    adc l
    add e
    ld a, a
    adc a
    add b
    sub e
    add a
    ld c, a
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
    ld a, a
    db $e3
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
    ld d, h
    adc h
    adc [hl]
    adc l
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
    ld d, l
    sbc b
    xor [hl]
    or h
    db $e4
    and h
    ld a, a
    xor h
    xor b
    xor l
    and h
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    ld c, a
    and e
    and h
    and d
    and h
    xor b
    or l
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
    xor l
    and h
    and h
    and e
    ld a, a
    xor e
    xor b
    and [hl]
    and a
    or e
    ld a, a
    or e
    xor [hl]
    ld c, a
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
    ld a, a
    or e
    and a
    and b
    or e
    ld d, l
    and e
    and b
    or c
    xor d
    ld a, a
    or e
    or h
    xor l
    xor l
    and h
    xor e
    ld a, a
    and b
    and a
    and h
    and b
    and e
    add sp, $57
    nop
    sub [hl]
    and a
    xor [hl]
    cp l
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    or [hl]
    and b
    xor e
    xor d
    xor b
    xor l
    and [hl]
    ld c, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    or e
    and a
    xor [hl]
    or d
    and h
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld d, l
    xor e
    xor [hl]
    xor [hl]
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    and $57
    nop
    adc [hl]
    or h
    or e
    ld c, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    and b
    ld a, a
    xor e
    xor b
    and [hl]
    and a
    or e
    rst $20
    ld e, b
    nop
    adc d
    and h
    and h
    xor a
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
    adc b
    push hl
    ld a, a
    or e
    and b
    xor d
    xor b
    xor l
    and [hl]
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
    ld a, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    xor [hl]
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
    add sp, -$18
    add sp, $57
    nop
    add d
    and b
    xor l
    cp [hl]
    ld c, a
    xor h
    and h
    and b
    or d
    or h
    or c
    and h
    ld a, a
    or h
    xor a
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
    xor [hl]
    and l
    and l
    ld a, a
    or e
    xor [hl]
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
    xor [hl]
    and $57
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
    and e
    and b
    or c
    and h
    ld c, a
    and d
    xor [hl]
    xor l
    and e
    and h
    or d
    and d
    and h
    xor l
    and e
    ld a, a
    xor h
    and h
    rst $20
    ld d, a
    nop
    adc l
    xor [hl]
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
    ld e, b
    nop
    sbc b
    xor [hl]
    or h
    db $e4
    and h
    ld a, a
    xor [hl]
    and c
    or l
    xor b
    xor [hl]
    or h
    or d
    xor e
    cp b
    ld c, a
    or e
    and b
    xor e
    and h
    xor l
    or e
    and h
    and e
    rst $20
    ld a, a
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld d, l
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
    ld d, a
    nop
    add c
    or [hl]
    and b
    and a
    and b
    and a
    and b
    rst $20
    ld c, a
    add [hl]
    or c
    and h
    and b
    or e
    rst $20
    ld a, a
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld d, l
    and c
    xor [hl]
    or c
    and h
    and e
    db $f4
    ld a, a
    and h
    and a
    rst $20
    ld d, a
    nop
    adc d
    and h
    and h
    xor a
    ld a, a
    xor b
    or e
    ld c, a
    and d
    xor [hl]
    xor h
    xor b
    xor l
    and [hl]
    db $f4
    ld a, a
    and h
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
    add sp, $7f
    adc b
    push hl
    ld a, a
    xor [hl]
    or h
    or e
    ld c, a
    xor [hl]
    and l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld e, b
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    or d
    or h
    or c
    and h
    ld a, a
    and a
    and b
    and e
    ld a, a
    and [hl]
    or h
    or e
    or d
    ld c, a
    or d
    or e
    and b
    xor l
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    or h
    xor a
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    and h
    ld d, l
    or e
    and a
    and h
    or c
    and h
    db $f4
    ld a, a
    and h
    and a
    and $57
    nop
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
    xor l
    cp [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    ld d, l
    xor e
    xor b
    or e
    or e
    xor e
    and h
    ld a, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    xor b
    and h
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    and b
    or e
    cp l
    ld c, a
    or e
    and a
    and b
    or e
    and $58
    nop
    add a
    and b
    and a
    and b
    and a
    and b
    rst $20
    ld a, a
    adc d
    xor b
    and e
    or d
    ld c, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and c
    and h
    ld a, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    or h
    xor a
    ld a, a
    and h
    and b
    or c
    xor e
    cp b
    ld c, a
    and h
    or l
    and h
    or c
    cp b
    ld a, a
    and e
    and b
    cp b
    ld a, a
    or e
    xor [hl]
    ld d, l
    or c
    and b
    xor b
    or d
    and h
    ld a, a
    xor h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    and d
    xor [hl]
    and d
    xor [hl]
    xor [hl]
    xor l
    or d
    rst $20
    ld d, a
    nop
    sub [hl]
    add a
    add b
    sub e
    and $51
    sub [hl]
    and a
    and b
    or e
    ld a, a
    and b
    ld a, a
    or e
    xor [hl]
    or e
    and b
    xor e
    ld c, a
    or [hl]
    and b
    or d
    or e
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    xor b
    xor h
    and h
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
    or e
    xor [hl]
    ld a, a
    and d
    xor [hl]
    xor e
    xor e
    and h
    and d
    or e
    ld c, a
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
    and c
    or h
    and [hl]
    or d
    ld a, a
    or e
    xor [hl]
    ld d, l
    and [hl]
    and h
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
    add sp, -$18
    add sp, $57
    nop
    add a
    and b
    and a
    and b
    and a
    and b
    and a
    and b
    rst $20
    ld c, a
    add d
    xor [hl]
    xor h
    and h
    ld a, a
    xor [hl]
    xor l
    db $f4
    ld a, a
    and e
    or h
    and e
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
    and a
    and b
    rst $20
    ld c, a
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
    and h
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
    and a
    and b
    rst $20
    ld c, a
    sub h
    or d
    ld a, a
    and a
    and h
    and b
    or c
    or e
    cp b
    ld a, a
    and [hl]
    or h
    cp b
    or d
    ld d, l
    and b
    xor e
    or [hl]
    and b
    cp b
    or d
    ld a, a
    xor e
    and b
    or h
    and [hl]
    and a
    rst $20
    ld d, a
    nop
    add [hl]
    xor [hl]
    db $f4
    ld a, a
    xor h
    cp b
    ld a, a
    or d
    or h
    xor a
    and h
    or c
    ld a, a
    and c
    or h
    and [hl]
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, a
    nop
    adc h
    cp b
    ld c, a
    and c
    or h
    and [hl]
    or d
    add sp, -$18
    add sp, $58
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
    xor e
    xor b
    xor d
    and h
    ld c, a
    and c
    or h
    and [hl]
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
    and c
    or h
    and [hl]
    ld a, a
    xor h
    and h
    rst $20
    ld d, a
    nop
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    rst $38
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
    add d
    adc b
    sub e
    sbc b
    db $e3
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
    ld d, a
    nop
    sub [hl]
    xor [hl]
    or [hl]
    db $f4
    ld a, a
    and b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    ld c, a
    ld d, h
    adc h
    add b
    adc l
    adc b
    add b
    add d
    ld a, a
    or e
    xor [hl]
    xor [hl]
    and $55
    sub [hl]
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
    ld a, a
    xor h
    cp b
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
    and $57
    nop
    add a
    or h
    xor h
    xor a
    and a
    add sp, $4f
    adc b
    push hl
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    and b
    xor l
    and [hl]
    or c
    cp b
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
    xor h
    xor [hl]
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
    and b
    or e
    ld a, a
    and a
    xor [hl]
    xor h
    and h
    rst $20
    ld d, a
    nop
    add a
    and b
    db $e3
    and a
    and b
    and a
    and b
    and a
    db $e3
    and b
    and a
    db $e3
    and a
    and b
    rst $20
    ld d, a
    nop
    add a
    and b
    db $e3
    and a
    and b
    and a
    and b
    rst $20
    ld c, a
    adc l
    xor [hl]
    or e
    ld a, a
    xor e
    and b
    or h
    and [hl]
    and a
    xor b
    xor l
    and [hl]
    rst $20
    ld d, l
    add a
    and b
    db $e3
    and a
    and b
    cp b
    ld a, a
    and l
    and h
    or l
    and h
    or c
    rst $20
    ld d, l
    add a
    and b
    and a
    and b
    db $e3
    and a
    and b
    db $e3
    and d
    and a
    xor [hl]
    xor [hl]
    rst $20
    ld e, b
    nop
    add a
    and b
    and a
    and b
    db $e3
    and a
    and b
    db $e3
    and d
    and a
    xor [hl]
    xor [hl]
    rst $20
    ld c, a
    add a
    and b
    db $e3
    and d
    and a
    xor [hl]
    xor [hl]
    rst $20
    ld d, l
    sub d
    xor l
    xor [hl]
    or c
    or e
    rst $20
    ld a, a
    sub d
    xor l
    xor b
    or l
    and h
    xor e
    rst $20
    ld d, a
    nop
    add a
    xor b
    ld a, a
    xor d
    xor b
    and e
    db $f4
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
    ld d, h
    adc h
    adc [hl]
    adc l
    and $57
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
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld e, b
    nop
    adc b
    ld a, a
    and e
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and l
    xor [hl]
    or c
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
    and b
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add [hl]
    sbc b
    adc h
    ld a, a
    and b
    ld a, a
    and l
    and h
    or [hl]
    ld d, l
    or e
    xor b
    xor h
    and h
    or d
    add sp, $7f
    add c
    or h
    or e
    db $f4
    ld a, a
    adc b
    ld d, l
    xor e
    xor [hl]
    or d
    or e
    ld a, a
    and h
    and b
    and d
    and a
    ld a, a
    or e
    xor b
    xor h
    and h
    add sp, $57
    nop
    adc [hl]
    and a
    and a
    rst $20
    ld c, a
    add c
    xor e
    and h
    or [hl]
    ld a, a
    xor b
    or e
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    rst $20
    ld e, b
    nop
    adc b
    ld a, a
    xor l
    xor [hl]
    or e
    xor b
    and d
    and h
    and e
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld c, a
    ld d, h
    adc h
    add b
    adc l
    adc b
    add b
    add d
    or d
    ld d, l
    xor a
    or c
    xor [hl]
    or [hl]
    xor e
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
    add b
    and a
    rst $20
    ld a, a
    sub e
    and a
    xor b
    or d
    ld a, a
    xor h
    xor [hl]
    or h
    xor l
    or e
    and b
    xor b
    xor l
    ld c, a
    and b
    xor b
    or c
    ld a, a
    xor b
    or d
    ld a, a
    and e
    and h
    xor e
    xor b
    and d
    xor b
    xor [hl]
    or h
    or d
    rst $20
    ld d, a
    nop
    sub e
    and a
    and b
    or e
    ld c, a
    and d
    xor e
    and h
    and b
    or c
    and h
    and e
    ld a, a
    xor h
    cp b
    ld a, a
    and a
    and h
    and b
    and e
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
    and c
    xor e
    xor [hl]
    and b
    or e
    and h
    and e
    ld a, a
    xor [hl]
    xor l
    ld c, a
    xor h
    xor [hl]
    or h
    xor l
    or e
    and b
    xor b
    xor l
    ld a, a
    and b
    xor b
    or c
    rst $20
    ld d, a
    nop
    adc b
    push hl
    ld a, a
    and l
    and h
    and h
    xor e
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    ld a, a
    and c
    xor b
    or e
    ld c, a
    and l
    and b
    xor b
    xor l
    or e
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    or e
    and a
    xor b
    or d
    ld d, l
    or e
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    and a
    xor b
    xor d
    and h
    add sp, $57
    nop
    adc b
    push hl
    ld c, a
    xor l
    xor [hl]
    or e
    ld a, a
    or h
    xor a
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor b
    or e
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
    and a
    and h
    or c
    and h
    ld c, a
    and b
    or c
    and h
    ld a, a
    or d
    xor [hl]
    ld a, a
    and d
    and a
    or h
    xor l
    xor d
    cp b
    rst $20
    ld d, l
    sub e
    and a
    and h
    or c
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
    ld a, a
    and b
    ld d, l
    xor a
    xor b
    xor l
    xor d
    ld a, a
    xor [hl]
    xor l
    and h
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and b
    ld d, l
    and l
    xor e
    xor [hl]
    or c
    and b
    xor e
    ld a, a
    xor a
    and b
    or e
    or e
    and h
    or c
    xor l
    rst $20
    ld d, a
    nop
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
    ld d, a
    nop
    adc a
    adc [hl]
    sub [hl]
    add h
    sub c
    ld a, a
    adc a
    adc e
    add b
    adc l
    sub e
    ld d, a
    nop
    sub [hl]
    xor b
    xor l
    db $f4
    ld a, a
    xor e
    xor [hl]
    or d
    and h
    ld a, a
    xor [hl]
    or c
    ld a, a
    and e
    or c
    and b
    or [hl]
    rst $20
    ld d, a
    nop
    add b
    or e
    and d
    and a
    and b
    rst $20
    ld c, a
    add e
    xor b
    and e
    xor l
    cp [hl]
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    xor h
    cp b
    ld a, a
    or [hl]
    and b
    cp b
    rst $20
    ld e, b
    nop
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor b
    or d
    ld a, a
    xor e
    xor b
    and l
    and h
    rst $20
    ld c, a
    add b
    xor l
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
    or d
    ld a, a
    or e
    xor [hl]
    ld d, l
    and [hl]
    and b
    xor h
    and c
    xor e
    and h
    rst $20
    ld d, a
    nop
    add d
    xor [hl]
    xor h
    xor a
    and h
    or e
    xor b
    or e
    xor b
    xor [hl]
    xor l
    rst $20
    ld a, a
    adc b
    ld c, a
    and d
    and b
    xor l
    cp [hl]
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
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
    and a
    and b
    and e
    ld c, a
    and b
    ld a, a
    and d
    and a
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
    ld a, a
    and d
    and b
    xor l
    cp [hl]
    ld a, a
    and c
    and h
    ld a, a
    and b
    ld c, a
    and d
    xor [hl]
    or [hl]
    and b
    or c
    and e
    ld a, a
    xor b
    xor l
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
    ld d, a
    nop
    adc e
    and h
    or e
    cp l
    ld a, a
    and [hl]
    xor [hl]
    db $f4
    ld a, a
    and c
    or h
    or e
    ld c, a
    and e
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    and d
    and a
    and h
    and b
    or e
    rst $20
    ld d, a
    nop
    add a
    or h
    and a
    and $4f
    sub e
    and a
    and b
    or e
    cp l
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    rst $20
    ld e, b
    nop
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
    ld a, a
    adc b
    ld c, a
    and a
    and b
    or l
    and h
    ld a, a
    xor l
    xor [hl]
    ld a, a
    or c
    and h
    and [hl]
    or c
    and h
    or e
    or d
    rst $20
    ld d, a
    nop
    add d
    and b
    or c
    and h
    and l
    or h
    xor e
    rst $20
    ld c, a
    adc b
    push hl
    ld a, a
    xor e
    and b
    cp b
    xor b
    xor l
    and [hl]
    ld a, a
    and e
    xor [hl]
    or [hl]
    xor l
    ld d, l
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    and d
    and b
    and c
    xor e
    and h
    or d
    rst $20
    ld d, a
    nop
    sub e
    and a
    and b
    or e
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
    ld e, b
    nop
    sub d
    xor a
    or c
    and h
    and b
    and e
    ld a, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    xor [hl]
    or c
    and e
    ld c, a
    or e
    xor [hl]
    ld a, a
    or d
    and b
    or l
    and h
    ld a, a
    and h
    xor l
    and h
    or c
    and [hl]
    cp b
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
    and c
    and h
    and d
    and b
    xor h
    and h
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
    rst $20
    ld a, a
    add c
    or h
    or e
    db $f4
    ld a, a
    adc b
    ld d, l
    or e
    and a
    xor b
    xor l
    xor d
    ld a, a
    adc b
    ld a, a
    and d
    and b
    xor l
    ld a, a
    or [hl]
    xor b
    xor l
    rst $20
    ld d, a
    nop
    adc h
    cp b
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    xor l
    cp [hl]
    rst $20
    ld e, b
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
    adc e
    and h
    and b
    or l
    and h
    ld a, a
    xor h
    and h
    ld a, a
    and b
    xor e
    xor [hl]
    xor l
    and h
    rst $20
    ld d, a
    nop
    add l
    or [hl]
    and b
    and a
    and b
    and a
    and b
    rst $20
    ld a, a
    adc b
    ld a, a
    and a
    and b
    or l
    and h
    ld c, a
    xor l
    and h
    or l
    and h
    or c
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    rst $20
    ld d, a
    nop
    adc h
    cp b
    ld c, a
    and l
    xor b
    or c
    or d
    or e
    ld a, a
    xor e
    xor [hl]
    or d
    or d
    rst $20
    ld e, b
    nop
    adc e
    or h
    and d
    xor d
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld a, a
    and e
    or c
    and b
    or [hl]
    rst $20
    ld c, a
    adc c
    or h
    or d
    or e
    ld a, a
    xor e
    or h
    and d
    xor d
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    xor l
    and h
    or l
    and h
    or c
    ld a, a
    or [hl]
    xor [hl]
    xor l
    ld c, a
    and c
    and h
    and l
    xor [hl]
    or c
    and h
    add sp, -$18
    add sp, $57
    nop
    adc b
    ld a, a
    or d
    and b
    or [hl]
    ld c, a
    or e
    and a
    xor b
    or d
    ld a, a
    and d
    xor [hl]
    xor h
    xor b
    xor l
    and [hl]
    add sp, -$18
    add sp, $58
    nop
    adc b
    or e
    cp l
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    xor e
    or h
    and d
    xor d
    add sp, $4f
    adc e
    or h
    and d
    xor d
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld a, a
    and e
    or c
    and b
    or [hl]
    add sp, $57
    nop
    adc b
    push hl
    ld a, a
    or e
    and a
    and h
    ld a, a
    and c
    and h
    or d
    or e
    ld a, a
    xor b
    xor l
    ld c, a
    xor h
    cp b
    ld a, a
    and d
    xor e
    and b
    or d
    or d
    rst $20
    ld d, a
    nop
    add e
    and b
    or c
    xor l
    rst $20
    ld c, a
    adc b
    ld a, a
    xor l
    and h
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    and b
    xor d
    and h
    ld a, a
    xor h
    cp b
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
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
    ld e, b
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
    and l
    and b
    or e
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
    ld d, l
    and d
    xor [hl]
    xor h
    and h
    or d
    ld a, a
    and e
    xor [hl]
    or [hl]
    xor l
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld d, l
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
    xor b
    and l
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    xor b
    or e
    add sp, $57
    nop
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
    ld c, a
    xor e
    xor b
    or l
    and h
    ld a, a
    or [hl]
    xor b
    or c
    and h
    or d
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
