; Disassembly of "Pokemon Red (UE) [S][!].gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $025", ROMX[$4000], BANK[$25]

    nop
    adc b
    ld c, a
    or e
    and a
    xor [hl]
    or h
    and [hl]
    and a
    or e
    ld a, a
    xor l
    xor [hl]
    or e
    rst $20
    ld e, b
    nop
    adc b
    ld a, a
    and a
    xor b
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
    or e
    and a
    and h
    ld c, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld d, l
    and c
    or c
    xor b
    and e
    and [hl]
    and h
    ld a, a
    or d
    and d
    and b
    or c
    and h
    and e
    ld a, a
    xor h
    and h
    rst $20
    ld d, a
    nop
    adc [hl]
    adc d
    rst $20
    ld a, a
    adc b
    push hl
    ld a, a
    adc l
    xor [hl]
    add sp, $7f
    ei
    rst $20
    ld c, a
    adc b
    cp h
    xor e
    ld a, a
    or d
    or e
    xor [hl]
    xor h
    xor a
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    xor [hl]
    and b
    rst $20
    ld c, a
    sub e
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
    db $f4
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
    adc b
    push hl
    ld a, a
    adc l
    xor [hl]
    add sp, $7f
    ld a, [$4fe7]
    add [hl]
    and h
    or e
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor b
    or c
    and h
    and e
    and $57
    nop
    adc b
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    ld c, a
    or e
    xor [hl]
    xor [hl]
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
    db $f4
    ld a, a
    or d
    xor [hl]
    ld c, a
    adc b
    cp a
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
    add a
    and h
    or c
    and h
    cp l
    ld a, a
    adc l
    xor [hl]
    add sp, $7f
    ld sp, hl
    rst $20
    ld c, a
    adc b
    ld a, a
    or [hl]
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    and c
    and h
    ld a, a
    and h
    and b
    or d
    cp b
    rst $20
    ld d, a
    nop
    adc [hl]
    or [hl]
    rst $20
    ld c, a
    sub d
    or e
    xor [hl]
    xor h
    xor a
    and h
    and e
    ld a, a
    and l
    xor e
    and b
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
    db $f4
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
    adc b
    push hl
    ld a, a
    or d
    and h
    and d
    xor [hl]
    xor l
    and e
    rst $20
    ld c, a
    adc l
    xor [hl]
    or [hl]
    ld a, a
    xor b
    or e
    cp l
    ld a, a
    or d
    and h
    or c
    xor b
    xor [hl]
    or h
    or d
    rst $20
    ld d, a
    nop
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
    ld c, a
    xor e
    xor [hl]
    or d
    and h
    and $58
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
    db $f4
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
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    adc l
    sub h
    add [hl]
    add [hl]
    add h
    sub e
    ld c, a
    add c
    sub c
    adc b
    add e
    add [hl]
    add h
    rst $20
    ld a, a
    add c
    and h
    and b
    or e
    ld a, a
    or h
    or d
    ld a, a
    ei
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
    and b
    xor l
    and e
    ld a, a
    or [hl]
    xor b
    xor l
    ld d, l
    and b
    ld a, a
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
    ld d, c
    sub e
    and a
    xor b
    xor l
    xor d
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld c, a
    or [hl]
    and a
    and b
    or e
    ld a, a
    xor b
    or e
    ld a, a
    or e
    and b
    xor d
    and h
    or d
    and $57
    nop
    sub [hl]
    and a
    xor [hl]
    xor [hl]
    rst $20
    ld c, a
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    or d
    or e
    or h
    and l
    and l
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
    db $f4
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
    adc e
    xor [hl]
    and d
    and b
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
    ld a, a
    or e
    xor [hl]
    ld d, l
    xor a
    or c
    and b
    and d
    or e
    xor b
    and d
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
    and e
    and h
    and d
    and h
    xor l
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
    and a
    and b
    or l
    and h
    ld c, a
    or [hl]
    and h
    and b
    xor d
    xor l
    and h
    or d
    or d
    and h
    or d
    add sp, $7f
    adc b
    or e
    cp l
    ld d, l
    and c
    and h
    or d
    or e
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
    add sp, $57
    nop
    add e
    and b
    and e
    ld a, a
    or e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and b
    ld c, a
    and [hl]
    or c
    and h
    and b
    or e
    ld a, a
    xor a
    and b
    or c
    or e
    cp b
    ld a, a
    xor [hl]
    xor l
    ld d, l
    sub d
    add sp, -$6e
    add sp, -$80
    adc l
    adc l
    add h
    ld a, a
    and b
    or e
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
    rst $20
    ld d, a
    nop
    adc b
    push hl
    ld c, a
    xor l
    xor [hl]
    or e
    ld a, a
    xor h
    and b
    and e
    rst $20
    ld e, b
    nop
    adc [hl]
    xor l
    ld a, a
    sub d
    add sp, -$6e
    add sp, -$80
    adc l
    adc l
    add h
    db $f4
    ld a, a
    adc b
    ld c, a
    or d
    and b
    or [hl]
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
    and l
    or c
    xor [hl]
    xor h
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
    add sp, $57
    nop
    adc b
    push hl
    ld a, a
    and b
    ld a, a
    and d
    xor [hl]
    xor [hl]
    xor e
    ld a, a
    and [hl]
    or h
    cp b
    add sp, $4f
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
    add b
    or [hl]
    or [hl]
    db $f4
    ld c, a
    and e
    and b
    or c
    xor l
    add sp, -$18
    add sp, $58
    nop
    adc [hl]
    and a
    ld a, a
    or [hl]
    and h
    xor e
    xor e
    add sp, $7f
    adc h
    cp b
    ld a, a
    and [hl]
    xor b
    or c
    xor e
    ld c, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and d
    and a
    and h
    and h
    or c
    ld a, a
    xor h
    and h
    ld a, a
    or h
    xor a
    add sp, $57
    nop
    add a
    xor b
    rst $20
    ld a, a
    adc h
    cp b
    ld a, a
    and c
    xor [hl]
    cp b
    ld c, a
    and l
    or c
    xor b
    and h
    xor l
    and e
    ld a, a
    xor b
    or d
    ld a, a
    and d
    xor [hl]
    xor [hl]
    xor e
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    xor b
    xor l
    ld c, a
    and c
    and b
    and e
    ld a, a
    and d
    xor [hl]
    xor l
    and e
    xor b
    or e
    xor b
    xor [hl]
    xor l
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
    xor h
    cp b
    ld a, a
    and [hl]
    or h
    cp b
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    and b
    or d
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and b
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
    xor d
    xor l
    and h
    or [hl]
    ld a, a
    adc b
    ld a, a
    and a
    and b
    and e
    ld a, a
    or e
    xor [hl]
    ld c, a
    and l
    xor b
    and [hl]
    and a
    or e
    ld a, a
    cp b
    xor [hl]
    or h
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
    adc b
    cp e
    ld a, a
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
    adc b
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
    ld c, a
    and [hl]
    and h
    or e
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
    ld a, a
    xor [hl]
    or c
    ld d, l
    and l
    and b
    xor e
    xor e
    or d
    ld a, a
    and b
    or d
    xor e
    and h
    and h
    xor a
    db $f4
    ld d, l
    or d
    or [hl]
    xor b
    or e
    and d
    and a
    ld a, a
    xor b
    or e
    rst $20
    ld d, a
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
    ld a, a
    and a
    and b
    or d
    ld a, a
    and b
    ld c, a
    and d
    or h
    or e
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $55
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
    ld d, a
    nop
    adc b
    push hl
    ld c, a
    xor l
    xor [hl]
    or e
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
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor h
    and h
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    adc h
    sub e
    add sp, $4f
    adc h
    adc [hl]
    adc [hl]
    adc l
    and $7f
    adc h
    and b
    cp b
    ld a, a
    adc b
    ld a, a
    and a
    and b
    or l
    and h
    ld d, l
    and b
    ld a, a
    add d
    adc e
    add h
    add l
    add b
    adc b
    sub c
    sbc b
    and $57
    nop
    adc b
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    and e
    xor [hl]
    or [hl]
    xor l
    ld c, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    adc h
    sub e
    add sp, -$74
    adc [hl]
    adc [hl]
    adc l
    db $f4
    ld d, l
    and c
    or h
    or e
    ld a, a
    adc b
    push hl
    ld a, a
    or c
    and h
    and b
    and e
    cp b
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    ld c, a
    or [hl]
    xor [hl]
    or c
    xor d
    and h
    and e
    ld a, a
    and a
    and b
    or c
    and e
    rst $20
    ld e, b
    nop
    add e
    or c
    and b
    or e
    rst $20
    ld c, a
    add b
    ld a, a
    sbc c
    sub h
    add c
    add b
    sub e
    ld a, a
    and c
    xor b
    or e
    ld a, a
    xor h
    and h
    ld d, l
    and c
    and b
    and d
    xor d
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    or c
    and h
    add sp, $57
    nop
    adc b
    push hl
    ld a, a
    xor [hl]
    and l
    and l
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    and h
    and h
    ld a, a
    and b
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and d
    xor [hl]
    xor e
    xor e
    and h
    and d
    or e
    xor [hl]
    or c
    ld d, l
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    and d
    and b
    xor a
    and h
    rst $20
    ld d, a
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
    add sp, $58
    nop
    sub e
    and a
    and h
    ld a, a
    and d
    xor [hl]
    xor e
    xor e
    and h
    and d
    or e
    xor [hl]
    or c
    ld a, a
    and a
    and b
    or d
    ld c, a
    xor h
    and b
    xor l
    cp b
    ld a, a
    or c
    and b
    or c
    and h
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
    sbc b
    xor [hl]
    or h
    db $e4
    and h
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
    or d
    and h
    and h
    ld a, a
    add c
    adc b
    adc e
    adc e
    and $7f
    add l
    xor b
    or c
    or d
    or e
    db $f4
    ld d, l
    xor e
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
    sbc b
    xor [hl]
    or h
    db $e4
    and h
    ld c, a
    or d
    xor [hl]
    xor h
    and h
    or e
    and a
    xor b
    xor l
    and [hl]
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
    xor e
    ld a, a
    and c
    and h
    xor e
    xor [hl]
    or [hl]
    ld c, a
    xor b
    or d
    ld a, a
    and b
    ld a, a
    or d
    and a
    xor [hl]
    or c
    or e
    and d
    or h
    or e
    ld a, a
    or e
    xor [hl]
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
    add sp, $57
    nop
    sub d
    add h
    add b
    ld a, a
    add d
    adc [hl]
    sub e
    sub e
    add b
    add [hl]
    add h
    ld c, a
    add c
    adc b
    adc e
    adc e
    ld a, a
    xor e
    xor b
    or l
    and h
    or d
    ld a, a
    and a
    and h
    or c
    and h
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    and l
    xor b
    xor e
    and h
    ld a, a
    and e
    and b
    or e
    and b
    ld a, a
    xor b
    or d
    ld c, a
    and e
    and h
    or d
    or e
    or c
    xor [hl]
    cp b
    and h
    and e
    rst $20
    ld e, b
    nop
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
    sub d
    add b
    sub l
    add h
    ld a, a
    or e
    and a
    and h
    ld a, a
    and [hl]
    and b
    xor h
    and h
    and $57
    nop
    ld d, d
    ld a, a
    or d
    and b
    or l
    and h
    and e
    ld c, a
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
    sub e
    and a
    and h
    ld a, a
    xor [hl]
    xor e
    and e
    and h
    or c
    ld a, a
    and l
    xor b
    xor e
    and h
    ld c, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and c
    and h
    ld a, a
    and h
    or c
    and b
    or d
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld d, l
    or d
    and b
    or l
    and h
    add sp, $7f
    adc [hl]
    xor d
    and b
    cp b
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
    and d
    and a
    and b
    xor l
    and [hl]
    and h
    ld a, a
    and b
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add c
    adc [hl]
    sub a
    db $f4
    ld a, a
    and e
    and b
    or e
    and b
    ld d, l
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and c
    and h
    ld a, a
    or d
    and b
    or l
    and h
    and e
    add sp, $51
    adc b
    or d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor [hl]
    xor d
    and b
    cp b
    and $57
    nop
    add d
    and a
    xor [hl]
    xor [hl]
    or d
    and h
    ld a, a
    and b
    ld c, a
    ld c, d
    ld a, a
    add c
    adc [hl]
    sub a
    add sp, $50
    ld d, b
    ld bc, $cf4b
    nop
    ld a, a
    and h
    or l
    xor [hl]
    xor e
    or l
    and h
    and e
    ld d, a
    nop
    ld c, a
    xor b
    xor l
    or e
    xor [hl]
    ld a, a
    ld d, b
    ld bc, $cd6d
    nop
    rst $20
    ld d, a
    nop
    add a
    or h
    and a
    and $7f
    ld d, b
    ld bc, $cf4b
    nop
    ld c, a
    or d
    or e
    xor [hl]
    xor a
    xor a
    and h
    and e
    ld a, a
    and h
    or l
    xor [hl]
    xor e
    or l
    xor b
    xor l
    and [hl]
    rst $20
    ld e, b
    nop
    sub [hl]
    and a
    and b
    or e
    and $7f
    ld d, b
    ld bc, $cf4b
    nop
    ld c, a
    xor b
    or d
    ld a, a
    and h
    or l
    xor [hl]
    xor e
    or l
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    ld e, c
    ld c, a
    and l
    and h
    xor e
    xor e
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
    ld e, c
    cp l
    ld c, a
    and b
    xor e
    or c
    and h
    and b
    and e
    cp b
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
    ld e, c
    ld c, a
    or [hl]
    and b
    or d
    ld a, a
    xor a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    and h
    and e
    rst $20
    ld e, b
    nop
    ld e, c
    cp l
    ld c, a
    and c
    and b
    and e
    xor e
    cp b
    ld a, a
    xor a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    and h
    and e
    rst $20
    ld e, b
    nop
    ld e, c
    ld c, a
    or [hl]
    and b
    or d
    ld a, a
    and c
    or h
    or c
    xor l
    and h
    and e
    rst $20
    ld e, b
    nop
    ld e, c
    ld c, a
    or [hl]
    and b
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
    add l
    xor b
    or c
    and h
    ld a, a
    and e
    and h
    and l
    or c
    xor [hl]
    or d
    or e
    and h
    and e
    ld c, a
    ld e, c
    rst $20
    ld e, b
    nop
    ld e, d
    cp l
    ld c, a
    ld d, b
    ld bc, $cf4b
    nop
    ld d, b
    ld d, b
    nop
    ld c, h
    and [hl]
    or c
    and h
    and b
    or e
    xor e
    cp b
    ld d, b
    ld d, b
    nop
    ld a, a
    or c
    xor [hl]
    or d
    and h
    rst $20
    ld e, b
    nop
    ld e, c
    cp l
    ld c, a
    ld d, b
    ld bc, $cf4b
    nop
    ld d, b
    ld d, b
    nop
    ld c, h
    and [hl]
    or c
    and h
    and b
    or e
    xor e
    cp b
    ld d, b
    ld d, b
    nop
    ld a, a
    and l
    and h
    xor e
    xor e
    rst $20
    ld e, b
    nop
    ld e, d
    ld c, a
    or c
    and b
    xor l
    ld a, a
    and l
    or c
    xor [hl]
    xor h
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
    ld e, c
    ld c, a
    or c
    and b
    xor l
    ld a, a
    and b
    or [hl]
    and b
    cp b
    ld a, a
    or d
    and d
    and b
    or c
    and h
    and e
    rst $20
    ld e, b
    nop
    ld e, c
    ld c, a
    or [hl]
    and b
    or d
    ld a, a
    and c
    xor e
    xor [hl]
    or [hl]
    xor l
    ld a, a
    and b
    or [hl]
    and b
    cp b
    rst $20
    ld e, b
    nop
    ld e, d
    ld d, b
    ld d, b
    nop
    ld c, a
    xor h
    and b
    and e
    and h
    ld a, a
    and b
    ld a, a
    or [hl]
    and a
    xor b
    or c
    xor e
    or [hl]
    xor b
    xor l
    and e
    rst $20
    ld e, b
    nop
    ld c, a
    or e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    xor b
    xor l
    ld a, a
    or d
    or h
    xor l
    xor e
    xor b
    and [hl]
    and a
    or e
    rst $20
    ld e, b
    nop
    ld c, a
    xor e
    xor [hl]
    or [hl]
    and h
    or c
    and h
    and e
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and a
    and h
    and b
    and e
    rst $20
    ld e, b
    nop
    ld c, a
    xor b
    or d
    ld a, a
    and [hl]
    xor e
    xor [hl]
    or [hl]
    xor b
    xor l
    and [hl]
    rst $20
    ld e, b
    nop
    ld c, a
    and l
    xor e
    and h
    or [hl]
    ld a, a
    or h
    xor a
    ld a, a
    and a
    xor b
    and [hl]
    and a
    rst $20
    ld e, b
    nop
    ld c, a
    and e
    or h
    and [hl]
    ld a, a
    and b
    ld a, a
    and a
    xor [hl]
    xor e
    and h
    rst $20
    ld e, b
    nop
    ld e, c
    ld c, a
    and c
    and h
    and d
    and b
    xor h
    and h
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
    ld e, d
    ld c, a
    xor e
    and h
    and b
    or c
    xor l
    and h
    and e
    ld d, l
    ld d, b
    ld bc, $cd6d
    nop
    rst $20
    ld e, b
    nop
    ld e, c
    cp l
    ld c, a
    ld d, b
    ld bc, $cd6d
    nop
    ld a, a
    or [hl]
    and b
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
    adc l
    xor [hl]
    or e
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    and a
    and b
    xor a
    xor a
    and h
    xor l
    and h
    and e
    rst $20
    ld e, b
    nop
    adc l
    xor [hl]
    ld a, a
    and h
    and l
    and l
    and h
    and d
    or e
    rst $20
    ld e, b
    nop
    add c
    or h
    or e
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    and l
    and b
    xor b
    xor e
    and h
    and e
    rst $20
    ld a, a
    ld e, b
    nop
    adc b
    or e
    ld a, a
    and e
    xor b
    and e
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
    ld e, c
    ld c, a
    xor b
    or d
    ld a, a
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
    ld e, c
    cp l
    ld c, a
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
    ld a, a
    adc b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld d, l
    xor l
    xor [hl]
    or e
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    rst $20
    ld e, b
    nop
    adc b
    or e
    ld a, a
    and d
    or c
    and h
    and b
    or e
    and h
    and e
    ld a, a
    and b
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
    rst $20
    ld e, b
    nop
    ld e, d
    ld c, a
    and a
    and b
    or d
    ld a, a
    and b
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
    rst $20
    ld e, b
    nop
    sub e
    xor [hl]
    xor [hl]
    ld a, a
    or [hl]
    and h
    and b
    xor d
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    and b
    xor d
    and h
    ld c, a
    and b
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
    rst $20
    ld e, b
    nop
    add d
    xor [hl]
    xor b
    xor l
    or d
    ld a, a
    or d
    and d
    and b
    or e
    or e
    and h
    or c
    and h
    and e
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
    rst $20
    ld e, b
    nop
    ld e, d
    cp l
    ld c, a
    and [hl]
    and h
    or e
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    xor a
    or h
    xor h
    xor a
    and h
    and e
    rst $20
    ld e, b
    nop
    ld e, c
    ld c, a
    or [hl]
    and b
    or d
    ld a, a
    or d
    and h
    and h
    and e
    and h
    and e
    rst $20
    ld e, b
    nop
    ld e, c
    ld c, a
    and h
    or l
    and b
    and e
    and h
    and e
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    rst $20
    ld e, b
    nop
    ld e, d
    cp l
    ld c, a
    and a
    xor b
    or e
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    or c
    and h
    and d
    xor [hl]
    xor b
    xor e
    rst $20
    ld e, b
    nop
    add d
    xor [hl]
    xor l
    or l
    and h
    or c
    or e
    and h
    and e
    ld a, a
    or e
    cp b
    xor a
    and h
    ld a, a
    or e
    xor [hl]
    ld c, a
    ld e, c
    cp l
    rst $20
    ld e, b
    nop
    add b
    xor e
    xor e
    ld a, a
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
    ld c, a
    and b
    or c
    and h
    ld a, a
    and h
    xor e
    xor b
    xor h
    xor b
    xor l
    and b
    or e
    and h
    and e
    rst $20
    ld e, b
    nop
    ld e, d
    ld c, a
    or d
    or e
    and b
    or c
    or e
    and h
    and e
    ld a, a
    or d
    xor e
    and h
    and h
    xor a
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    ld e, d
    ld c, a
    and l
    and h
    xor e
    xor e
    ld a, a
    and b
    or d
    xor e
    and h
    and h
    xor a
    ld a, a
    and b
    xor l
    and e
    ld d, l
    and c
    and h
    and d
    and b
    xor h
    and h
    ld a, a
    and a
    and h
    and b
    xor e
    or e
    and a
    cp b
    rst $20
    ld d, a
    nop
    ld e, d
    ld c, a
    or c
    and h
    and [hl]
    and b
    xor b
    xor l
    and h
    and e
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
    ld e, d
    ld c, a
    or e
    or c
    and b
    xor l
    or d
    and l
    xor [hl]
    or c
    xor h
    and h
    and e
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld d, l
    ld d, b
    ld bc, $cd6d
    nop
    rst $20
    ld e, b
    nop
    ld e, d
    cp l
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
    and b
    xor e
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    or d
    rst $20
    ld e, b
    nop
    ld e, d
    ld c, a
    and [hl]
    and b
    xor b
    xor l
    and h
    and e
    ld a, a
    and b
    or c
    xor h
    xor [hl]
    or c
    rst $20
    ld e, b
    nop
    ld e, d
    cp l
    ld c, a
    or d
    and a
    or c
    xor [hl]
    or h
    and e
    and h
    and e
    ld a, a
    xor b
    xor l
    ld a, a
    xor h
    xor b
    or d
    or e
    rst $20
    ld e, b
    nop
    sub d
    or h
    and d
    xor d
    and h
    and e
    ld a, a
    and a
    and h
    and b
    xor e
    or e
    and a
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld c, a
    ld e, c
    rst $20
    ld e, b
    nop
    ld e, c
    cp l
    ld c, a
    and e
    or c
    and h
    and b
    xor h
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and h
    and b
    or e
    and h
    xor l
    rst $20
    ld e, b
    nop
    rst $20
    ld d, a
    nop
    rst $20
    ld d, a
    nop
    adc h
    adc [hl]
    adc h
    sbc h
    ld a, a
    sub c
    xor b
    and [hl]
    and a
    or e
    add sp, $4f
    add b
    xor e
    xor e
    ld a, a
    and c
    xor [hl]
    cp b
    or d
    ld a, a
    xor e
    and h
    and b
    or l
    and h
    ld d, l
    and a
    xor [hl]
    xor h
    and h
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    and e
    and b
    cp b
    add sp, $55
    adc b
    or e
    ld a, a
    or d
    and b
    xor b
    and e
    ld a, a
    or d
    xor [hl]
    ld a, a
    xor [hl]
    xor l
    ld a, a
    sub e
    sub l
    add sp, $51
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$72
    add b
    adc d
    db $f4
    ld a, a
    xor l
    and h
    or a
    or e
    ld c, a
    and e
    xor [hl]
    xor [hl]
    or c
    db $f4
    ld a, a
    xor b
    or d
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    xor b
    xor l
    and [hl]
    ld d, l
    and l
    xor [hl]
    or c
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $57
    nop
    adc h
    adc [hl]
    adc h
    sbc h
    ld a, a
    ld d, d
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
    or c
    and h
    or d
    or e
    add sp, $58
    nop
    adc h
    adc [hl]
    adc h
    sbc h
    ld a, a
    adc [hl]
    and a
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    rst $20
    ld c, a
    sbc b
    xor [hl]
    or h
    ld a, a
    and b
    xor l
    and e
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
    and b
    or c
    and h
    ld d, l
    xor e
    xor [hl]
    xor [hl]
    xor d
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
    ld d, l
    sub e
    and b
    xor d
    and h
    ld a, a
    and d
    and b
    or c
    and h
    ld a, a
    xor l
    xor [hl]
    or [hl]
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
    xor h
    xor [hl]
    or l
    xor b
    and h
    ld c, a
    xor [hl]
    xor l
    ld a, a
    sub e
    sub l
    add sp, $7f
    add l
    xor [hl]
    or h
    or c
    ld a, a
    and c
    xor [hl]
    cp b
    or d
    ld d, l
    and b
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
    ld a, a
    xor [hl]
    xor l
    ld d, l
    or c
    and b
    xor b
    xor e
    or c
    xor [hl]
    and b
    and e
    ld a, a
    or e
    or c
    and b
    and d
    xor d
    or d
    add sp, $51
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
    xor [hl]
    ld a, a
    or e
    xor [hl]
    xor [hl]
    add sp, $57
    nop
    adc [hl]
    xor [hl]
    xor a
    or d
    db $f4
    ld a, a
    or [hl]
    or c
    xor [hl]
    xor l
    and [hl]
    ld a, a
    or d
    xor b
    and e
    and h
    add sp, $57
    nop
    add a
    xor b
    ld a, a
    ld d, d
    rst $20
    ld c, a
    ld d, e
    ld a, a
    xor b
    or d
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    and b
    or e
    ld d, l
    add [hl]
    or c
    and b
    xor l
    and e
    xor a
    and b
    cp l
    ld a, a
    xor e
    and b
    and c
    add sp, $57
    nop
    add [hl]
    or c
    and b
    xor l
    and e
    xor a
    and b
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
    ld c, a
    or e
    xor [hl]
    ld a, a
    or c
    or h
    xor l
    ld a, a
    and b
    xor l
    ld a, a
    and h
    or c
    or c
    and b
    xor l
    and e
    and $55
    add a
    and h
    or c
    and h
    db $f4
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld d, l
    and a
    and h
    xor e
    xor a
    ld a, a
    cp b
    xor [hl]
    or h
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
    add sp, $57
    nop
    sub h
    or d
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    adc l
    ld a, a
    adc h
    add b
    adc a
    ld c, a
    or e
    xor [hl]
    ld a, a
    and l
    xor b
    xor l
    and e
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    or [hl]
    and a
    and h
    or c
    and h
    ld d, l
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    or c
    and h
    add sp, $57
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
    xor e
    xor b
    or l
    xor b
    xor l
    and [hl]
    ld c, a
    or e
    and a
    xor b
    xor l
    and [hl]
    or d
    rst $20
    ld a, a
    adc b
    and l
    ld a, a
    or e
    and a
    and h
    cp b
    ld d, l
    and [hl]
    and h
    or e
    ld a, a
    or e
    xor b
    or c
    and h
    and e
    db $f4
    ld a, a
    and [hl]
    xor b
    or l
    and h
    ld d, l
    or e
    and a
    and h
    xor h
    ld a, a
    and b
    ld a, a
    or c
    and h
    or d
    or e
    rst $20
    ld d, a
    nop
    adc b
    or e
    cp l
    ld a, a
    and b
    ld a, a
    and c
    xor b
    and [hl]
    ld a, a
    xor h
    and b
    xor a
    rst $20
    ld c, a
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    or h
    or d
    and h
    and l
    or h
    xor e
    rst $20
    ld d, a
    nop
    ld d, e
    sbc h
    ld a, a
    sbc b
    xor [hl]
    ld c, a
    ld d, d
    rst $20
    ld a, a
    add [hl]
    or c
    and b
    xor h
    xor a
    or d
    ld d, l
    xor b
    or d
    xor l
    cp [hl]
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
    ld d, e
    sbc h
    ld a, a
    add a
    and h
    and a
    db $f4
    ld a, a
    adc b
    ld c, a
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
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld d, l
    and [hl]
    or c
    and h
    and h
    and e
    cp b
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
    ld d, c
    add [hl]
    xor [hl]
    ld a, a
    and b
    and a
    and h
    and b
    and e
    ld a, a
    and b
    xor l
    and e
    ld c, a
    and d
    and a
    xor [hl]
    xor [hl]
    or d
    and h
    db $f4
    ld a, a
    ld d, d
    rst $20
    ld d, a
    nop
    ld d, e
    sbc h
    ld a, a
    adc h
    cp b
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    or d
    ld a, a
    and b
    ld d, l
    xor e
    xor [hl]
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
    add sp, $57
    nop
    sub e
    and a
    xor [hl]
    or d
    and h
    ld a, a
    and b
    or c
    and h
    ld a, a
    ld d, h
    ld c, a
    add c
    add b
    adc e
    adc e
    or d
    add sp, $7f
    sub e
    and a
    and h
    cp b
    ld d, l
    and d
    xor [hl]
    xor l
    or e
    and b
    xor b
    xor l
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
    rst $20
    ld a, a
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
    and l
    xor b
    or c
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    db $f4
    ld d, l
    add d
    add a
    add b
    sub c
    adc h
    add b
    adc l
    add e
    add h
    sub c
    and $57
    nop
    sub d
    xor [hl]
    rst $20
    ld a, a
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
    db $f4
    ld d, l
    sub d
    sub b
    sub h
    adc b
    sub c
    sub e
    adc e
    add h
    and $57
    nop
    sub d
    xor [hl]
    rst $20
    ld a, a
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
    xor e
    and b
    xor l
    or e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    db $f4
    ld d, l
    add c
    sub h
    adc e
    add c
    add b
    sub d
    add b
    sub h
    sub c
    and $57
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
    ld c, a
    or c
    and h
    and b
    xor e
    xor e
    cp b
    ld a, a
    and h
    xor l
    and h
    or c
    and [hl]
    and h
    or e
    xor b
    and d
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
    ld bc, $cd6d
    nop
    rst $20
    ld d, b
    ld d, b
    nop
    sub e
    and a
    and b
    or e
    cp l
    ld a, a
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$72
    add b
    adc d
    cp l
    ld c, a
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
    ld d, a
    nop
    adc [hl]
    add b
    adc d
    sbc h
    ld a, a
    adc l
    xor [hl]
    or [hl]
    db $f4
    ld a, a
    ld d, d
    db $f4
    ld c, a
    or [hl]
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
    ld d, l
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
    adc [hl]
    add b
    adc d
    sbc h
    ld a, a
    adc b
    and l
    ld a, a
    and b
    ld a, a
    or [hl]
    xor b
    xor e
    and e
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
    or d
    db $f4
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
    and d
    and b
    xor l
    ld d, l
    and l
    xor b
    and [hl]
    and a
    or e
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    or d
    or e
    ld a, a
    xor b
    or e
    rst $20
    ld d, a
    nop
    adc [hl]
    add b
    adc d
    sbc h
    ld a, a
    ld d, d
    db $f4
    ld c, a
    or c
    and b
    xor b
    or d
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    cp b
    xor [hl]
    or h
    xor l
    and [hl]
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and c
    cp b
    ld a, a
    xor h
    and b
    xor d
    xor b
    xor l
    and [hl]
    ld d, l
    xor b
    or e
    ld a, a
    and l
    xor b
    and [hl]
    and a
    or e
    rst $20
    ld d, a
    nop
    adc [hl]
    add b
    adc d
    sbc h
    ld a, a
    adc [hl]
    and a
    db $f4
    ld a, a
    ld d, d
    rst $20
    ld d, c
    add a
    xor [hl]
    or [hl]
    ld a, a
    xor b
    or d
    ld a, a
    xor h
    cp b
    ld a, a
    xor [hl]
    xor e
    and e
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    and $51
    sub [hl]
    and h
    xor e
    xor e
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    or d
    and h
    and h
    xor h
    or d
    ld a, a
    or e
    xor [hl]
    ld c, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    ld a, a
    xor e
    xor [hl]
    or e
    add sp, $51
    sbc b
    xor [hl]
    or h
    ld a, a
    xor h
    or h
    or d
    or e
    ld a, a
    and c
    and h
    ld c, a
    or e
    and b
    xor e
    and h
    xor l
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
    sub [hl]
    and a
    and b
    or e
    and $7f
    sbc b
    xor [hl]
    or h
    ld a, a
    and a
    and b
    or l
    and h
    ld c, a
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
    ld a, a
    xor h
    and h
    and $51
    ld d, d
    ld a, a
    and e
    and h
    xor e
    xor b
    or l
    and h
    or c
    and h
    and e
    ld c, a
    adc [hl]
    add b
    adc d
    cp l
    ld a, a
    adc a
    add b
    sub c
    add d
    add h
    adc e
    add sp, $50
    ld d, b
    nop
    ld d, c
    add b
    and a
    rst $20
    ld a, a
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    or e
    and a
    and h
    ld c, a
    and d
    or h
    or d
    or e
    xor [hl]
    xor h
    ld a, a
    ld d, h
    ld a, a
    add c
    add b
    adc e
    adc e
    ld d, l
    adc b
    ld a, a
    xor [hl]
    or c
    and e
    and h
    or c
    and h
    and e
    rst $20
    ld d, l
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
    ld d, h
    adc h
    adc [hl]
    adc l
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
    ld c, a
    or [hl]
    xor [hl]
    or c
    xor e
    and e
    ld a, a
    or [hl]
    and b
    xor b
    or e
    ld a, a
    and l
    xor [hl]
    or c
    ld d, l
    cp b
    xor [hl]
    or h
    db $f4
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
    ld c, a
    and e
    and h
    or e
    and b
    xor b
    xor e
    and h
    and e
    ld a, a
    and e
    and b
    or e
    and b
    ld a, a
    xor [hl]
    xor l
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
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
    and h
    and h
    xor b
    xor l
    and [hl]
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
    xor h
    or h
    or d
    or e
    ld a, a
    and d
    and b
    or e
    and d
    and a
    ld c, a
    or e
    and a
    and h
    xor h
    rst $20
    ld a, a
    sub h
    or d
    and h
    ld a, a
    or e
    and a
    and h
    or d
    and h
    ld d, l
    or e
    xor [hl]
    ld a, a
    and d
    and b
    xor a
    or e
    or h
    or c
    and h
    ld a, a
    or [hl]
    xor b
    xor e
    and e
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    ld d, d
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    ei
    ld c, a
    ld d, h
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
    and a
    and h
    xor l
    ld a, a
    and b
    ld a, a
    or [hl]
    xor b
    xor e
    and e
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
    or d
    db $f4
    ld d, l
    xor b
    or e
    cp l
    ld a, a
    and l
    and b
    xor b
    or c
    ld a, a
    and [hl]
    and b
    xor h
    and h
    add sp, $51
    adc c
    or h
    or d
    or e
    ld a, a
    or e
    and a
    or c
    xor [hl]
    or [hl]
    ld a, a
    and b
    ld a, a
    ld d, h
    ld c, a
    add c
    add b
    adc e
    adc e
    ld a, a
    and b
    or e
    ld a, a
    xor b
    or e
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or e
    or c
    cp b
    ld c, a
    or e
    xor [hl]
    ld a, a
    and d
    and b
    or e
    and d
    and a
    ld a, a
    xor b
    or e
    rst $20
    ld d, c
    sub e
    and a
    xor b
    or d
    ld a, a
    or [hl]
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    and b
    xor e
    or [hl]
    and b
    cp b
    or d
    ld c, a
    or [hl]
    xor [hl]
    or c
    xor d
    db $f4
    ld a, a
    or e
    and a
    xor [hl]
    or h
    and [hl]
    and a
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
    and d
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and h
    or d
    and d
    and b
    xor a
    and h
    add sp, $7f
    sbc b
    xor [hl]
    or h
    ld d, l
    and a
    and b
    or l
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld a, a
    xor e
    or h
    and d
    xor d
    cp b
    rst $20
    ld d, a
    nop
    adc [hl]
    add b
    adc d
    sbc h
    ld a, a
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
    ld c, a
    or d
    xor [hl]
    xor h
    and h
    or e
    xor b
    xor h
    and h
    or d
    add sp, $51
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
    xor d
    xor l
    xor [hl]
    or [hl]
    ld a, a
    and a
    xor [hl]
    or [hl]
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
    ld a, a
    xor b
    or d
    ld d, l
    and d
    xor [hl]
    xor h
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    xor e
    xor [hl]
    xor l
    and [hl]
    add sp, $57
    nop
    adc [hl]
    add b
    adc d
    sbc h
    ld a, a
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    and h
    and h
    ld a, a
    ld c, a
    cp b
    xor [hl]
    or h
    rst $20
    ld a, a
    add a
    xor [hl]
    or [hl]
    ld a, a
    xor b
    or d
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    ld d, l
    ld d, h
    add e
    add h
    sub a
    ld a, a
    and d
    xor [hl]
    xor h
    xor b
    xor l
    and [hl]
    and $7f
    ld d, l
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
    or e
    and b
    xor d
    and h
    ld d, l
    and b
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    rst $20
    ld e, b
    nop
    adc b
    or e
    cp l
    ld a, a
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
    db $e3
    ld c, a
    xor e
    xor b
    xor d
    and h
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    or e
    and a
    and h
    ld d, l
    xor a
    and b
    and [hl]
    and h
    or d
    ld a, a
    and b
    or c
    and h
    ld a, a
    and c
    xor e
    and b
    xor l
    xor d
    rst $20
    ld d, a
    nop
    and $57
    nop
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$72
    add b
    adc d
    ld a, a
    xor b
    or d
    ld a, a
    or e
    and a
    and h
    ld c, a
    and b
    or h
    or e
    and a
    xor [hl]
    or c
    xor b
    or e
    cp b
    ld a, a
    xor [hl]
    xor l
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, c
    adc h
    and b
    xor l
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
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
    and a
    xor [hl]
    xor e
    and e
    ld a, a
    and a
    xor b
    xor h
    ld d, l
    xor b
    xor l
    ld a, a
    and a
    xor b
    and [hl]
    and a
    ld a, a
    or c
    and h
    and [hl]
    and b
    or c
    and e
    rst $20
    ld d, a
    nop
    ld d, e
    sbc h
    ld a, a
    add [hl]
    or c
    and b
    xor h
    xor a
    or d
    rst $20
    ld c, a
    adc b
    push hl
    ld a, a
    and l
    and h
    and e
    ld a, a
    or h
    xor a
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld d, l
    or [hl]
    and b
    xor b
    or e
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    adc [hl]
    add b
    adc d
    sbc h
    ld a, a
    ld d, e
    and $4f
    adc e
    and h
    or e
    ld a, a
    xor h
    and h
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
    add sp, -$18
    add sp, $51
    adc [hl]
    and a
    db $f4
    ld a, a
    or e
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
    db $f4
    ld c, a
    adc b
    ld a, a
    or e
    xor [hl]
    xor e
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or e
    xor [hl]
    ld d, l
    and d
    xor [hl]
    xor h
    and h
    rst $20
    ld a, a
    adc c
    or h
    or d
    or e
    ld a, a
    or [hl]
    and b
    xor b
    or e
    rst $20
    ld d, c
    add a
    and h
    or c
    and h
    db $f4
    ld a, a
    ld d, d
    rst $20
    ld d, c
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
    ld sp, hl
    ld c, a
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
    ld d, c
    add a
    and b
    and a
    and b
    rst $20
    ld d, c
    sub e
    and a
    and h
    cp b
    ld a, a
    and b
    or c
    and h
    ld a, a
    xor b
    xor l
    or d
    xor b
    and e
    and h
    ld c, a
    or e
    and a
    and h
    ld a, a
    ld d, h
    ld a, a
    add c
    add b
    adc e
    adc e
    or d
    add sp, $51
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
    cp b
    xor [hl]
    or h
    xor l
    and [hl]
    db $f4
    ld c, a
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and b
    ld a, a
    or d
    and h
    or c
    xor b
    xor [hl]
    or h
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
    and h
    or c
    rst $20
    ld d, c
    adc b
    xor l
    ld a, a
    xor h
    cp b
    ld a, a
    xor [hl]
    xor e
    and e
    ld a, a
    and b
    and [hl]
    and h
    db $f4
    ld a, a
    adc b
    ld c, a
    and a
    and b
    or l
    and h
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    ld sp, hl
    ld a, a
    xor e
    and h
    and l
    or e
    db $f4
    ld d, l
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
    and a
    and b
    or l
    and h
    ld d, l
    xor [hl]
    xor l
    and h
    rst $20
    ld a, a
    add d
    and a
    xor [hl]
    xor [hl]
    or d
    and h
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
    ld c, a
    add [hl]
    or c
    and b
    xor h
    xor a
    or d
    rst $20
    ld a, a
    sub [hl]
    and a
    and b
    or e
    ld d, l
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    xor h
    and h
    and $57
    nop
    adc [hl]
    add b
    adc d
    sbc h
    ld a, a
    add c
    and h
    ld a, a
    xor a
    and b
    or e
    xor b
    and h
    xor l
    or e
    rst $20
    ld c, a
    ld d, e
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
    add e
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    and [hl]
    xor [hl]
    ld c, a
    and b
    or [hl]
    and b
    cp b
    ld a, a
    cp b
    and h
    or e
    rst $20
    ld d, a
    nop
    ld d, e
    sbc h
    ld a, a
    adc b
    cp h
    xor e
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
    xor [hl]
    xor l
    and h
    db $f4
    ld a, a
    or e
    and a
    and h
    xor l
    rst $20
    ld d, a
    nop
    ld d, e
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
    ld bc, $cd6d
    nop
    rst $20
    ld d, b
    ld d, b
    nop
    ld d, e
    sbc h
    ld a, a
    sub [hl]
    and b
    xor b
    or e
    ld c, a
    ld d, d
    rst $20
    ld d, l
    adc e
    and h
    or e
    cp l
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
    add d
    xor [hl]
    xor h
    and h
    ld a, a
    xor [hl]
    xor l
    db $f4
    ld a, a
    adc b
    cp h
    xor e
    ld a, a
    or e
    and b
    xor d
    and h
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor [hl]
    xor l
    rst $20
    ld d, a
    nop
    sub [hl]
    add a
    add b
    sub e
    and $4f
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
    ld d, l
    adc b
    ld a, a
    xor a
    xor b
    and d
    xor d
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld d, l
    or [hl]
    or c
    xor [hl]
    xor l
    and [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld e, b
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
    ld d, e
    sbc h
    ld a, a
    adc [hl]
    xor d
    and b
    cp b
    rst $20
    ld c, a
    adc b
    cp h
    xor e
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
    and l
    xor b
    and [hl]
    and a
    or e
    ld a, a
    or e
    xor [hl]
    ld d, l
    or e
    xor [hl]
    or h
    and [hl]
    and a
    and h
    xor l
    ld a, a
    xor b
    or e
    ld a, a
    or h
    xor a
    rst $20
    ld d, c
    ld d, d
    rst $20
    ld a, a
    add [hl]
    or c
    and b
    xor h
    xor a
    or d
    rst $20
    ld c, a
    sub d
    xor h
    and h
    xor e
    xor e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor e
    and b
    or e
    and h
    or c
    rst $20
    ld d, a
    nop
    ld d, e
    sbc h
    ld a, a
    add [hl]
    or c
    and b
    xor h
    xor a
    or d
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
    ld a, a
    and e
    xor b
    and e
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor e
    xor e
    ld a, a
    xor h
    and h
    ld a, a
    and l
    xor [hl]
    or c
    and $57
    nop
    adc [hl]
    add b
    adc d
    sbc h
    ld a, a
    adc [hl]
    and a
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
    and a
    and b
    or l
    and h
    ld a, a
    and b
    ld a, a
    or c
    and h
    or b
    or h
    and h
    or d
    or e
    ld d, l
    xor [hl]
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or e
    or [hl]
    xor [hl]
    add sp, $57
    nop
    adc [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    and e
    and h
    or d
    xor d
    ld a, a
    or e
    and a
    and h
    or c
    and h
    ld c, a
    xor b
    or d
    ld a, a
    xor h
    cp b
    ld a, a
    xor b
    xor l
    or l
    and h
    xor l
    or e
    xor b
    xor [hl]
    xor l
    db $f4
    ld d, l
    ld d, h
    add e
    add h
    sub a
    rst $20
    ld d, c
    adc b
    or e
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
    ld c, a
    or c
    and h
    and d
    xor [hl]
    or c
    and e
    or d
    ld a, a
    and e
    and b
    or e
    and b
    ld a, a
    xor [hl]
    xor l
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    cp b
    xor [hl]
    or h
    cp a
    and h
    ld d, l
    or d
    and h
    and h
    xor l
    ld a, a
    xor [hl]
    or c
    ld a, a
    and d
    and b
    or h
    and [hl]
    and a
    or e
    rst $20
    ld d, c
    adc b
    or e
    cp l
    ld a, a
    and b
    ld a, a
    and a
    xor b
    db $e3
    or e
    and h
    and d
    and a
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
    rst $20
    ld d, a
    nop
    adc [hl]
    add b
    adc d
    sbc h
    ld a, a
    ld d, d
    ld a, a
    and b
    xor l
    and e
    ld c, a
    ld d, e
    rst $20
    ld a, a
    sub e
    and b
    xor d
    and h
    ld d, l
    or e
    and a
    and h
    or d
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
    rst $20
    ld d, c
    ld d, d
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld c, a
    ld d, h
    add e
    add h
    sub a
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    adc [hl]
    add b
    adc d
    rst $20
    ld d, b
    ld d, b
    nop
    sub e
    xor [hl]
    ld a, a
    xor h
    and b
    xor d
    and h
    ld a, a
    and b
    ld a, a
    and d
    xor [hl]
    xor h
    xor a
    xor e
    and h
    or e
    and h
    ld c, a
    and [hl]
    or h
    xor b
    and e
    and h
    ld a, a
    xor [hl]
    xor l
    ld a, a
    and b
    xor e
    xor e
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
    add sp, -$18
    add sp, $51
    sub e
    and a
    and b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    xor h
    cp b
    ld a, a
    and e
    or c
    and h
    and b
    xor h
    rst $20
    ld d, c
    add c
    or h
    or e
    db $f4
    ld a, a
    adc b
    push hl
    ld a, a
    or e
    xor [hl]
    xor [hl]
    ld a, a
    xor [hl]
    xor e
    and e
    rst $20
    ld c, a
    adc b
    ld a, a
    and d
    and b
    xor l
    cp [hl]
    ld a, a
    and e
    xor [hl]
    ld a, a
    xor b
    or e
    rst $20
    ld d, c
    sub d
    xor [hl]
    db $f4
    ld a, a
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
    or [hl]
    xor [hl]
    ld c, a
    or e
    xor [hl]
    ld a, a
    and l
    or h
    xor e
    and l
    xor b
    xor e
    xor e
    ld a, a
    xor h
    cp b
    ld d, l
    and e
    or c
    and h
    and b
    xor h
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor h
    and h
    rst $20
    ld d, c
    add [hl]
    and h
    or e
    ld a, a
    xor h
    xor [hl]
    or l
    xor b
    xor l
    and [hl]
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    or e
    or [hl]
    xor [hl]
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
    and b
    ld a, a
    and [hl]
    or c
    and h
    and b
    or e
    ld c, a
    or h
    xor l
    and e
    and h
    or c
    or e
    and b
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    xor l
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and a
    xor b
    or d
    or e
    xor [hl]
    or c
    cp b
    rst $20
    ld d, a
    nop
    ld d, e
    sbc h
    ld a, a
    add b
    xor e
    or c
    xor b
    and [hl]
    and a
    or e
    ld c, a
    add [hl]
    or c
    and b
    xor h
    xor a
    or d
    rst $20
    ld a, a
    adc e
    and h
    and b
    or l
    and h
    ld a, a
    xor b
    or e
    ld d, l
    and b
    xor e
    xor e
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    and h
    rst $20
    ld d, c
    ld d, d
    db $f4
    ld a, a
    adc b
    ld a, a
    and a
    and b
    or e
    and h
    ld a, a
    or e
    xor [hl]
    ld c, a
    or d
    and b
    cp b
    ld a, a
    xor b
    or e
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    adc b
    ld d, l
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
    cp b
    xor [hl]
    or h
    rst $20
    ld d, c
    adc b
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    rst $20
    ld a, a
    adc b
    cp h
    xor e
    ld c, a
    and c
    xor [hl]
    or c
    or c
    xor [hl]
    or [hl]
    ld a, a
    and b
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    adc l
    ld a, a
    adc h
    add b
    adc a
    ld d, l
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    xor h
    cp b
    ld a, a
    or d
    xor b
    or d
    rst $20
    ld d, c
    adc b
    cp h
    xor e
    ld a, a
    or e
    and h
    xor e
    xor e
    ld a, a
    and a
    and h
    or c
    ld a, a
    xor l
    xor [hl]
    or e
    ld c, a
    or e
    xor [hl]
    ld a, a
    xor e
    and h
    xor l
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor [hl]
    xor l
    and h
    db $f4
    ld d, l
    ld d, d
    rst $20
    ld a, a
    add a
    and b
    and a
    and b
    and a
    and b
    rst $20
    ld d, a
    nop
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
    ld a, a
    and b
    or d
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
    add b
    adc b
    add e
    add h
    add sp, $57
    nop
    ld d, h
    add e
    add h
    sub a
    ld a, a
    and d
    xor [hl]
    xor h
    xor a
    db $e3
    ld c, a
    xor e
    and h
    or e
    xor b
    xor [hl]
    xor l
    ld a, a
    xor b
    or d
    sbc h
    ld d, c
    ld d, b
    add hl, bc
    db $db
    rst $38
    inc de
    nop
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or d
    and h
    and h
    xor l
    ld c, a
    ld d, b
    add hl, bc
    call c, Call_000_13ff
    nop
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor [hl]
    or [hl]
    xor l
    and h
    and e
    ld d, c
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$72
    add b
    adc d
    cp l
    ld c, a
    sub c
    and b
    or e
    xor b
    xor l
    and [hl]
    sbc h
    ld e, b
    nop
    sbc b
    xor [hl]
    or h
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
    ld c, a
    xor e
    xor [hl]
    or e
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    and e
    xor [hl]
    add sp, $55
    adc e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    xor b
    xor l
    ld a, a
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
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    db $e4
    and h
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
    or e
    or c
    and b
    and d
    xor d
    rst $20
    ld a, a
    ld d, l
    add [hl]
    and h
    or e
    ld a, a
    and b
    ld a, a
    add l
    adc e
    add b
    sub d
    add a
    ld a, a
    add a
    adc h
    ld d, l
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    xor h
    cp b
    ld a, a
    add b
    adc b
    add e
    add h
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    or d
    or e
    xor b
    xor e
    xor e
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
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, l
    sub e
    or c
    cp b
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
    xor [hl]
    or e
    and a
    and h
    or c
    ld a, a
    or d
    xor a
    and h
    and d
    xor b
    and h
    or d
    rst $20
    ld d, a
    nop
    add [hl]
    xor [hl]
    xor [hl]
    and e
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    db $e4
    and h
    ld c, a
    or e
    or c
    cp b
    xor b
    xor l
    and [hl]
    ld a, a
    and a
    and b
    or c
    and e
    rst $20
    ld d, l
    add [hl]
    and h
    or e
    ld a, a
    and b
    xor l
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
    ld d, l
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    xor h
    cp b
    ld a, a
    add b
    adc b
    add e
    add h
    rst $20
    ld d, a
    nop
    adc e
    xor [hl]
    xor [hl]
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    rst $20
    ld c, a
    add [hl]
    xor [hl]
    ld a, a
    and l
    xor b
    xor l
    and e
    ld a, a
    xor h
    cp b
    ld a, a
    add b
    adc b
    add e
    add h
    ld d, l
    or [hl]
    and a
    and h
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    ei
    or $e7
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and l
    xor b
    xor l
    and b
    xor e
    xor e
    cp b
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    and b
    or e
    ld c, a
    xor e
    and h
    and b
    or d
    or e
    ld a, a
    ei
    or $7f
    or d
    xor a
    and h
    and d
    xor b
    and h
    or d
    rst $20
    ld d, l
    add c
    and h
    ld a, a
    or d
    or h
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
    add h
    sub a
    adc a
    add sp, -$80
    adc e
    adc e
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    xor h
    cp b
    ld d, l
    add b
    adc b
    add e
    add h
    rst $20
    ld d, a
    nop
    add a
    xor [hl]
    rst $20
    ld a, a
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    and [hl]
    and h
    or e
    xor b
    xor l
    and [hl]
    ld c, a
    and h
    or l
    and h
    xor l
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
    sub l
    and h
    or c
    cp b
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    rst $20
    ld c, a
    add [hl]
    xor [hl]
    ld a, a
    and l
    xor b
    or d
    and a
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld d, l
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
    rst $20
    ld d, a
    nop
    sub [hl]
    xor [hl]
    xor l
    and e
    and h
    or c
    and l
    or h
    xor e
    rst $20
    ld c, a
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
    ld d, l
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
    xor b
    xor l
    and [hl]
    or d
    and $57
    nop
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
    rst $20
    ld c, a
    adc b
    or e
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
    ld d, l
    and e
    xor b
    and l
    and l
    xor b
    and d
    or h
    xor e
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and e
    xor [hl]
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and l
    xor b
    xor l
    and b
    xor e
    xor e
    cp b
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    and b
    or e
    ld c, a
    xor e
    and h
    and b
    or d
    or e
    ld a, a
    rst $30
    or $f6
    ld a, a
    or d
    xor a
    and h
    and d
    xor b
    and h
    or d
    rst $20
    ld d, l
    adc b
    ld a, a
    and d
    and b
    xor l
    cp [hl]
    ld a, a
    and c
    and h
    xor e
    xor b
    and h
    or l
    and h
    ld d, l
    and a
    xor [hl]
    or [hl]
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    or c
    and h
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and h
    or l
    and h
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
    and h
    or l
    xor [hl]
    xor e
    or l
    and h
    and e
    ld a, a
    and l
    xor [hl]
    or c
    xor h
    or d
    ld a, a
    xor [hl]
    and l
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld a, a
    sub d
    or h
    xor a
    and h
    or c
    rst $20
    ld d, a
    nop
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
    ld a, a
    sub e
    or c
    and b
    and e
    and h
    ld c, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and l
    or c
    xor b
    and h
    xor l
    and e
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
    xor [hl]
    xor h
    and h
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    rst $20
    ld d, a
    nop
    adc [hl]
    or h
    or e
    or d
    or e
    and b
    xor l
    and e
    xor b
    xor l
    and [hl]
    rst $20
    ld c, a
    sbc b
    xor [hl]
    or h
    cp a
    and h
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
    or c
    and h
    and b
    xor e
    ld a, a
    xor a
    or c
    xor [hl]
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
    xor e
    and h
    and l
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    and b
    cp b
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
    ld d, l
    and b
    or h
    or e
    and a
    xor [hl]
    or c
    xor b
    or e
    cp b
    ld a, a
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
    ld d, h
    add e
    add h
    sub a
    ld a, a
    xor b
    or d
    ld c, a
    and h
    xor l
    or e
    xor b
    or c
    and h
    xor e
    cp b
    ld a, a
    and d
    xor [hl]
    xor h
    xor a
    xor e
    and h
    or e
    and h
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
    or h
    or d
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    adc a
    add d
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    and d
    xor [hl]
    or c
    xor l
    and h
    or c
    add sp, $51
    sub e
    and a
    and h
    ld a, a
    or c
    and h
    and d
    and h
    xor a
    or e
    xor b
    xor [hl]
    xor l
    xor b
    or d
    or e
    ld c, a
    or e
    xor [hl]
    xor e
    and e
    ld a, a
    xor h
    and h
    add sp, $7f
    sub d
    xor [hl]
    ld a, a
    xor d
    xor b
    xor l
    and e
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
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    add d
    add h
    adc l
    sub e
    add h
    sub c
    ld a, a
    xor b
    xor l
    ld a, a
    and h
    or l
    and h
    or c
    cp b
    ld d, l
    or e
    xor [hl]
    or [hl]
    xor l
    ld a, a
    and b
    and a
    and h
    and b
    and e
    add sp, $51
    sub e
    and a
    and h
    cp b
    ld a, a
    and e
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    and d
    and a
    and b
    or c
    and [hl]
    and h
    ld c, a
    and b
    xor l
    cp b
    ld a, a
    xor h
    xor [hl]
    xor l
    and h
    cp b
    ld a, a
    and h
    xor b
    or e
    and a
    and h
    or c
    rst $20
    ld d, a
    nop
    adc [hl]
    xor d
    and b
    cp b
    rst $20
    ld a, a
    sub d
    and b
    cp b
    ld a, a
    and a
    xor b
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
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor h
    and h
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
    ld a, a
    and d
    and b
    xor h
    and h
    ld a, a
    and l
    or c
    xor [hl]
    xor h
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
    adc a
    sub c
    adc [hl]
    add l
    add sp, $4f
    adc [hl]
    add b
    adc d
    db $f4
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    and $51
    add a
    xor b
    or d
    ld a, a
    xor [hl]
    or c
    and e
    and h
    or c
    ld a, a
    and d
    and b
    xor h
    and h
    ld a, a
    xor b
    xor l
    add sp, $4f
    sub [hl]
    xor b
    xor e
    xor e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or e
    and b
    xor d
    and h
    ld a, a
    xor b
    or e
    ld d, l
    or e
    xor [hl]
    ld a, a
    and a
    xor b
    xor h
    and $51
    ld d, d
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld c, a
    adc [hl]
    add b
    adc d
    cp l
    ld a, a
    adc a
    add b
    sub c
    add d
    add h
    adc e
    rst $20
    ld d, b
    ld d, b
    nop
    sub e
    and a
    xor b
    or d
    ld a, a
    or d
    and a
    xor [hl]
    xor a
    ld a, a
    or d
    and h
    xor e
    xor e
    or d
    ld c, a
    xor h
    and b
    xor l
    cp b
    ld a, a
    add b
    adc l
    sub e
    adc b
    add e
    adc [hl]
    sub e
    add h
    or d
    add sp, $57
    nop
    adc l
    xor [hl]
    rst $20
    ld a, a
    adc a
    adc [hl]
    sub e
    adc b
    adc [hl]
    adc l
    or d
    ld a, a
    and b
    or c
    and h
    ld c, a
    and b
    xor e
    xor e
    ld a, a
    or d
    xor [hl]
    xor e
    and e
    ld a, a
    xor [hl]
    or h
    or e
    add sp, $57
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
    or c
    cp b
    xor b
    xor l
    and [hl]
    ld c, a
    or e
    xor [hl]
    ld a, a
    xor h
    and h
    xor h
    xor [hl]
    or c
    xor b
    cp c
    and h
    ld a, a
    and b
    xor e
    xor e
    ld d, l
    xor h
    cp b
    ld a, a
    xor l
    xor [hl]
    or e
    and h
    or d
    add sp, $57
    nop
    adc [hl]
    xor d
    and b
    cp b
    rst $20
    ld d, c
    add c
    and h
    ld a, a
    or d
    or h
    or c
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or c
    and h
    and b
    and e
    ld c, a
    or e
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
    ld d, a
    nop
    add d
    xor [hl]
    xor h
    xor b
    xor l
    and [hl]
    ld a, a
    or h
    xor a
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld c, a
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
    xor b
    or d
    ld a, a
    and l
    or h
    xor l
    db $f4
    ld d, l
    and c
    or h
    or e
    ld a, a
    and a
    and b
    or c
    and e
    add sp, $51
    sub d
    xor b
    xor h
    xor a
    xor e
    and h
    ld a, a
    xor l
    and b
    xor h
    and h
    or d
    ld a, a
    and b
    or c
    and h
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
    or d
    or e
    ld a, a
    or e
    xor [hl]
    ld d, l
    or c
    and h
    xor h
    and h
    xor h
    and c
    and h
    or c
    add sp, $57
    nop
    adc h
    cp b
    ld a, a
    add e
    and b
    and e
    and e
    cp b
    ld a, a
    xor e
    xor [hl]
    or l
    and h
    or d
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or e
    xor [hl]
    xor [hl]
    add sp, $57
    nop
    sub d
    adc a
    add h
    add b
    sub c
    sbc b
    sbc h
    ld a, a
    sub e
    and h
    or e
    or [hl]
    and h
    and h
    or e
    rst $20
    ld d, a
    nop
    sub d
    adc a
    add h
    add b
    sub c
    adc [hl]
    sub [hl]
    ld c, a
    adc l
    and b
    xor h
    and h
    sbc h
    ld a, a
    sub d
    adc a
    add h
    add b
    sub c
    sbc b
    ld d, a
    nop
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
    ld a, a
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld c, a
    xor h
    cp b
    ld a, a
    and a
    xor b
    and e
    and h
    xor [hl]
    or h
    or e
    rst $20
    ld d, c
    adc b
    ld a, a
    xor a
    xor e
    and b
    xor l
    xor l
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld c, a
    or c
    and h
    or d
    or h
    or c
    or c
    and h
    and d
    or e
    ld a, a
    sub e
    add h
    add b
    adc h
    ld d, l
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub e
    ld a, a
    and a
    and h
    or c
    and h
    rst $20
    ld d, c
    add c
    or h
    or e
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
    and b
    or h
    and [hl]
    and a
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
    ld d, l
    sub d
    xor [hl]
    ld a, a
    and c
    and h
    ld a, a
    xor b
    or e
    rst $20
    ld a, a
    sub e
    and a
    xor b
    or d
    ld d, l
    or e
    xor b
    xor h
    and h
    db $f4
    ld a, a
    adc b
    push hl
    ld a, a
    xor l
    xor [hl]
    or e
    ld d, l
    and a
    xor [hl]
    xor e
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    and c
    and b
    and d
    xor d
    rst $20
    ld d, c
    adc [hl]
    xor l
    and d
    and h
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
    or d
    and a
    and b
    xor e
    xor e
    ld a, a
    and l
    and b
    and d
    and h
    ld d, l
    add [hl]
    adc b
    adc [hl]
    sub l
    add b
    adc l
    adc l
    adc b
    db $f4
    ld a, a
    or e
    and a
    and h
    ld d, l
    and [hl]
    or c
    and h
    and b
    or e
    and h
    or d
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
    ld d, a
    nop
    add a
    and b
    rst $20
    ld c, a
    sub e
    and a
    and b
    or e
    ld a, a
    or [hl]
    and b
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
    xor l
    or e
    and h
    xor l
    or d
    and h
    ld a, a
    and l
    xor b
    and [hl]
    and a
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
    or [hl]
    xor [hl]
    xor l
    rst $20
    ld d, l
    add b
    or d
    ld a, a
    xor a
    or c
    xor [hl]
    xor [hl]
    and l
    db $f4
    ld a, a
    and a
    and h
    or c
    and h
    ld a, a
    xor b
    or d
    ld d, l
    or e
    and a
    and h
    ld a, a
    add h
    add b
    sub c
    sub e
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
    add a
    and b
    or l
    xor b
    xor l
    and [hl]
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    db $f4
    ld a, a
    adc b
    ld c, a
    and d
    and b
    xor l
    xor l
    xor [hl]
    or e
    ld a, a
    and l
    and b
    and d
    and h
    ld a, a
    xor h
    cp b
    ld d, l
    or h
    xor l
    and e
    and h
    or c
    xor e
    xor b
    xor l
    and [hl]
    or d
    rst $20
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
    ld a, a
    xor b
    or d
    ld d, l
    and l
    xor b
    xor l
    xor b
    or d
    and a
    and h
    and e
    ld a, a
    and l
    xor [hl]
    or c
    and h
    or l
    and h
    or c
    rst $20
    ld d, c
    adc b
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and e
    and h
    and e
    xor b
    and d
    and b
    or e
    and h
    ld a, a
    xor h
    cp b
    ld c, a
    xor e
    xor b
    and l
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    or e
    or h
    and e
    cp b
    ld d, l
    xor [hl]
    and l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, c
    adc e
    and h
    or e
    ld a, a
    or h
    or d
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
    ld c, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    and e
    and b
    cp b
    rst $20
    ld d, l
    add l
    and b
    or c
    and h
    or [hl]
    and h
    xor e
    xor e
    rst $20
    ld d, b
    ld d, b
    nop
    sub e
    and a
    and h
    ld a, a
    add h
    add b
    sub c
    sub e
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
    xor [hl]
    and l
    ld d, l
    and b
    xor l
    cp b
    ld a, a
    xor e
    and h
    or l
    and h
    xor e
    ld a, a
    xor [hl]
    and c
    and h
    cp b
    rst $20
    ld d, c
    adc b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    and h
    or l
    xor b
    and e
    and h
    xor l
    and d
    and h
    ld a, a
    xor [hl]
    and l
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor h
    and b
    or d
    or e
    and h
    or c
    cp b
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
    sub [hl]
    xor b
    or e
    and a
    ld a, a
    xor b
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
    and h
    xor l
    or e
    and h
    or c
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
    adc e
    add h
    add b
    add [hl]
    sub h
    add h
    rst $20
    ld d, c
    adc b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    xor h
    cp b
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
    or c
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
    xor e
    xor e
    and h
    xor l
    and [hl]
    and h
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
    ld hl, sp-$03
    rst $20
    ld d, b
    ld d, b
    nop
    ld d, c
    sub e
    adc h
    ld hl, sp-$03
    ld a, a
    xor b
    or d
    ld a, a
    add l
    adc b
    sub d
    sub d
    sub h
    sub c
    add h
    rst $20
    ld c, a
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
    xor [hl]
    or h
    or e
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
    ld a, a
    xor c
    or h
    or d
    or e
    ld d, l
    xor [hl]
    xor l
    and h
    ld a, a
    and a
    xor b
    or e
    rst $20
    ld d, c
    adc b
    ld a, a
    xor h
    and b
    and e
    and h
    ld a, a
    xor b
    or e
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld a, a
    adc b
    ld c, a
    or c
    and b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    add [hl]
    sbc b
    adc h
    ld a, a
    and a
    and h
    or c
    and h
    db $f4
    ld d, l
    or e
    xor [hl]
    xor [hl]
    ld a, a
    xor e
    xor [hl]
    xor l
    and [hl]
    ld a, a
    and b
    and [hl]
    xor [hl]
    add sp, -$18
    add sp, $57
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and e
    xor [hl]
    ld a, a
    xor l
    xor [hl]
    or e
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
    ld d, a
    nop
    add a
    and h
    and a
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    ld a, a
    xor h
    or h
    or d
    or e
    ld a, a
    and c
    and h
    ld c, a
    or c
    or h
    xor l
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    and l
    ld d, l
    or d
    or e
    and h
    and b
    xor h
    ld a, a
    and c
    cp b
    ld a, a
    xor l
    xor [hl]
    or [hl]
    rst $20
    ld d, a
    nop
    adc b
    ld c, a
    or c
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
    and [hl]
    and b
    or d
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
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    ld a, a
    or e
    xor [hl]
    ld c, a
    xor d
    and h
    and h
    xor a
    ld a, a
    or h
    xor a
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
    rst $20
    ld d, a
    nop
    sub c
    or c
    or c
    or c
    xor [hl]
    and b
    or c
    rst $20
    ld a, a
    adc b
    push hl
    ld c, a
    or [hl]
    xor [hl]
    or c
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    xor h
    cp b
    or d
    and h
    xor e
    and l
    ld d, l
    xor b
    xor l
    or e
    xor [hl]
    ld a, a
    and b
    ld a, a
    or c
    and b
    and [hl]
    and h
    rst $20
    ld d, a
    nop
    sub [hl]
    and b
    or c
    and [hl]
    and a
    rst $20
    ld e, b
    nop
    adc b
    push hl
    ld a, a
    or d
    or e
    xor b
    xor e
    xor e
    ld a, a
    xor l
    xor [hl]
    or e
    ld c, a
    or [hl]
    xor [hl]
    or c
    or e
    and a
    cp b
    rst $20
    ld d, a
    nop
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    xor l
    and e
    ld a, a
    adc b
    db $f4
    ld a, a
    or [hl]
    and h
    ld c, a
    xor h
    and b
    xor d
    and h
    ld a, a
    or [hl]
    xor [hl]
    xor l
    and e
    and h
    or c
    and l
    or h
    xor e
    ld d, l
    xor h
    or h
    or d
    xor b
    and d
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
    sbc b
    xor [hl]
    or h
    ld a, a
    and b
    or c
    and h
    ld a, a
    xor b
    xor l
    ld c, a
    xor a
    and h
    or c
    and l
    and h
    and d
    or e
    ld a, a
    and a
    and b
    or c
    xor h
    xor [hl]
    xor l
    cp b
    rst $20
    ld e, b
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
    or e
    and a
    and h
    ld c, a
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
    ld a, a
    xor [hl]
    or h
    or c
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
    and $57
    nop
    adc d
    and b
    or c
    and b
    or e
    and h
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
    xor [hl]
    or c
    xor h
    ld a, a
    xor [hl]
    and l
    ld d, l
    xor h
    and b
    or c
    or e
    xor b
    and b
    xor e
    ld a, a
    and b
    or c
    or e
    or d
    rst $20
    ld d, a
    nop
    add b
    or e
    and d
    and a
    xor [hl]
    rst $20
    ld e, b
    nop
    adc b
    and l
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
    or c
    and h
    ld a, a
    and b
    or d
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and b
    or e
    ld d, l
    adc d
    and b
    or c
    and b
    or e
    and h
    ld a, a
    and b
    or d
    ld a, a
    adc b
    add sp, -$18
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    or e
    or c
    or h
    xor e
    cp b
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
    or [hl]
    xor b
    xor l
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    or d
    or e
    cp b
    xor e
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
    xor h
    cp b
    ld a, a
    and [hl]
    or c
    xor b
    xor a
    rst $20
    ld e, b
    nop
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
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld c, a
    or d
    and d
    xor [hl]
    xor e
    and e
    ld a, a
    xor h
    and h
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
    adc d
    add b
    sub c
    add b
    sub e
    add h
    ld c, a
    adc d
    adc b
    adc l
    add [hl]
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    and l
    and b
    or e
    and h
    ld d, l
    or c
    and h
    or d
    or e
    or d
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
    add b
    cp b
    and b
    and a
    rst $20
    ld e, b
    nop
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
    and $4f
    sbc b
    xor [hl]
    or h
    and $7f
    add e
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    and [hl]
    and h
    or e
    ld d, l
    and d
    xor [hl]
    and d
    xor d
    cp b
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
    or [hl]
    xor b
    xor e
    xor e
    ld c, a
    and d
    xor [hl]
    or [hl]
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
    and d
    or c
    and b
    and d
    xor d
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor h
    cp b
    ld a, a
    or [hl]
    and a
    xor b
    xor a
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or [hl]
    and d
    and a
    rst $20
    ld c, a
    sub [hl]
    and a
    xor b
    xor a
    xor e
    and b
    or d
    and a
    rst $20
    ld e, b
    nop
    sub [hl]
    and b
    xor b
    or e
    rst $20
    ld a, a
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    xor c
    or h
    or d
    or e
    ld c, a
    and d
    and b
    or c
    and h
    xor e
    and h
    or d
    or d
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
    add [hl]
    sbc b
    adc h
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    and d
    xor e
    xor [hl]
    or d
    and h
    and e
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and b
    ld a, a
    xor e
    xor [hl]
    xor l
    and [hl]
    ld d, l
    or e
    xor b
    xor h
    and h
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    xor l
    xor [hl]
    or [hl]
    ld a, a
    xor [hl]
    or h
    or c
    ld d, l
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
    and c
    and b
    and d
    xor d
    rst $20
    ld d, a
    nop
    adc b
    ld c, a
    or [hl]
    and b
    or d
    ld a, a
    and c
    and h
    and b
    or e
    and h
    xor l
    and $58
    nop
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
    ld d, l
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    and c
    cp b
    ld a, a
    and e
    and h
    and l
    and h
    and b
    or e
    xor b
    xor l
    and [hl]
    ld d, l
    xor [hl]
    or h
    or c
    ld a, a
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
    add h
    or l
    and h
    xor l
    ld a, a
    adc b
    ld a, a
    and e
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
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
    adc e
    add h
    add b
    add e
    add h
    sub c
    cp l
    ld d, l
    xor b
    and e
    and h
    xor l
    or e
    xor b
    or e
    cp b
    rst $20
    ld d, c
    sub e
    and a
    xor b
    or d
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and c
    and h
    ld a, a
    or e
    and a
    and h
    ld c, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    and h
    or d
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    and b
    xor e
    xor e
    ld d, l
    or e
    and a
    and h
    ld a, a
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
    ld a, a
    or e
    and a
    and h
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
    and a
    and h
    or c
    and h
    ld d, l
    xor e
    xor b
    xor d
    and h
    ld a, a
    and [hl]
    or c
    xor [hl]
    or h
    xor l
    and e
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
    add c
    xor e
    xor [hl]
    or [hl]
    ld a, a
    xor h
    and h
    ld a, a
    and b
    or [hl]
    and b
    cp b
    rst $20
    ld c, a
    add [hl]
    adc b
    adc [hl]
    sub l
    add b
    adc l
    adc l
    adc b
    ld a, a
    or [hl]
    and b
    or d
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
    ld a, a
    and a
    and h
    or c
    and h
    and $57
    nop
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
    adc b
    or e
    cp l
    ld a, a
    ldh a, [$fb]
    or $7f
    and l
    xor [hl]
    or c
    ld a, a
    and b
    ld c, a
    and d
    and a
    xor b
    xor e
    and e
    cp l
    ld a, a
    or e
    xor b
    and d
    xor d
    and h
    or e
    add sp, $51
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
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    xor b
    xor l
    and $57
    nop
    sub c
    xor b
    and [hl]
    and a
    or e
    db $f4
    ld a, a
    ldh a, [$fb]
    or $e7
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
    or d
    xor l
    and h
    and b
    xor d
    ld c, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    and c
    and b
    and d
    xor d
    ld a, a
    or [hl]
    and b
    cp b
    rst $20
    ld d, c
    adc [hl]
    and a
    db $f4
    ld a, a
    or [hl]
    and a
    and b
    or e
    and h
    or l
    and h
    or c
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
    add b
    adc h
    add c
    add h
    sub c
    ld a, a
    xor b
    or d
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
    ld a, a
    xor e
    and b
    and c
    ld c, a
    or d
    xor [hl]
    xor h
    and h
    or [hl]
    and a
    and h
    or c
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
    or c
    and h
    or d
    or h
    or c
    or c
    and h
    and d
    or e
    ld d, l
    and b
    xor l
    and d
    xor b
    and h
    xor l
    or e
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
    add b
    adc h
    add c
    add h
    sub c
    add sp, $57
    nop
    add b
    adc h
    add c
    add h
    sub c
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
    db $e3
    ld c, a
    xor b
    cp c
    and h
    and e
    ld a, a
    or e
    or c
    and h
    and h
    ld a, a
    or d
    and b
    xor a
    add sp, $57
    nop
    adc a
    xor e
    and h
    and b
    or d
    and h
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
    ld c, a
    xor [hl]
    or e
    and a
    and h
    or c
    ld a, a
    or d
    xor b
    and e
    and h
    rst $20
    ld d, a
    nop
    sub e
    and b
    xor d
    and h
    ld a, a
    xor a
    xor e
    and h
    xor l
    or e
    cp b
    ld a, a
    xor [hl]
    and l
    ld c, a
    or e
    xor b
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    rst $20
    ld d, a
    nop
    sub e
    and a
    and b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    xor [hl]
    xor l
    and h
    ld c, a
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
    ld d, l
    and l
    xor [hl]
    or d
    or d
    xor b
    xor e
    rst $20
    ld d, a
    nop
    sub d
    or d
    and a
    rst $20
    ld a, a
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
    and b
    or e
    ld c, a
    or e
    and a
    xor b
    or d
    ld a, a
    and d
    and a
    or h
    xor l
    xor d
    ld a, a
    xor [hl]
    and l
    ld d, l
    add b
    adc h
    add c
    add h
    sub c
    ld a, a
    and d
    xor [hl]
    xor l
    or e
    and b
    xor b
    xor l
    or d
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add e
    adc l
    add b
    rst $20
    ld d, c
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
    ld d, l
    and c
    and h
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
    xor b
    or e
    rst $20
    ld d, c
    add c
    or h
    or e
    db $f4
    ld a, a
    xor h
    cp b
    ld a, a
    and d
    xor [hl]
    xor e
    xor e
    and h
    and b
    and [hl]
    or h
    and h
    or d
    ld c, a
    xor c
    or h
    or d
    or e
    ld a, a
    xor b
    and [hl]
    xor l
    xor [hl]
    or c
    and h
    ld a, a
    xor h
    and h
    rst $20
    ld d, c
    sub d
    xor [hl]
    ld a, a
    adc b
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    and b
    ld a, a
    and l
    and b
    or l
    xor [hl]
    or c
    ld c, a
    or e
    xor [hl]
    ld a, a
    and b
    or d
    xor d
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
    adc e
    add b
    add c
    ld a, a
    and b
    xor l
    and e
    ld d, l
    and [hl]
    and h
    or e
    ld a, a
    xor b
    or e
    ld a, a
    and h
    or a
    and b
    xor h
    xor b
    xor l
    and h
    and e
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
    adc [hl]
    adc e
    add e
    ld a, a
    add b
    adc h
    add c
    add h
    sub c
    rst $20
    ld d, b
    ld d, b
    nop
    sub d
    or d
    and a
    rst $20
    ld a, a
    add [hl]
    and h
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc [hl]
    adc e
    add e
    ld c, a
    add b
    adc h
    add c
    add h
    sub c
    ld a, a
    and d
    and a
    and h
    and d
    xor d
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
    ld d, a
    nop
    sub [hl]
    and h
    ld a, a
    and b
    or c
    and h
    ld a, a
    xor a
    or c
    xor [hl]
    or h
    and e
    ld a, a
    xor [hl]
    and l
    ld a, a
    ld hl, sp+$4f
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
    or l
    and h
    or c
    cp b
    ld d, l
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
    and a
    and h
    ld a, a
    add b
    adc h
    add c
    add h
    sub c
    ld a, a
    xor b
    or d
    ld c, a
    and d
    xor e
    and h
    and b
    or c
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and [hl]
    xor [hl]
    xor e
    and e
    rst $20
    ld d, a
    nop
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
    and $51
    sub [hl]
    and a
    and b
    or e
    cp l
    ld a, a
    or d
    xor [hl]
    ld a, a
    or d
    xor a
    and h
    and d
    xor b
    and b
    xor e
    ld c, a
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
    adc c
    or h
    xor e
    cp b
    ld a, a
    ld hl, sp-$0a
    db $f4
    ld a, a
    rst $30
    rst $38
    db $fc
    rst $38
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
    xor e
    or h
    xor l
    and b
    or c
    ld c, a
    xor e
    and b
    xor l
    and e
    xor b
    xor l
    and [hl]
    rst $20
    ld d, c
    adc b
    ld a, a
    and c
    xor [hl]
    or h
    and [hl]
    and a
    or e
    ld a, a
    and b
    ld a, a
    and d
    xor [hl]
    xor e
    xor [hl]
    or c
    ld c, a
    sub e
    sub l
    ld a, a
    or e
    xor [hl]
    ld a, a
    or [hl]
    and b
    or e
    and d
    and a
    ld a, a
    xor b
    or e
    rst $20
    ld d, a
    nop
    sub [hl]
    and h
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    and b
    ld a, a
    or d
    xor a
    and b
    and d
    and h
    ld c, a
    and h
    or a
    and a
    xor b
    and c
    xor b
    or e
    ld a, a
    xor l
    xor [hl]
    or [hl]
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
    adc a
    adc b
    adc d
    add b
    add d
    add a
    sub h
    rst $20
    ld c, a
    adc b
    or e
    cp l
    ld a, a
    or d
    xor [hl]
    ld a, a
    and d
    or h
    or e
    and h
    rst $20
    ld d, c
    adc b
    ld a, a
    and b
    or d
    xor d
    and h
    and e
    ld a, a
    xor h
    cp b
    ld a, a
    add e
    and b
    and e
    and e
    cp b
    ld c, a
    or e
    xor [hl]
    ld a, a
    and d
    and b
    or e
    and d
    and a
    ld a, a
    xor h
    and h
    ld a, a
    xor [hl]
    xor l
    and h
    rst $20
    ld d, a
    nop
    sbc b
    and h
    and b
    and a
    db $f4
    ld a, a
    and b
    ld a, a
    adc a
    adc b
    adc d
    add b
    add d
    add a
    sub h
    ld c, a
    or d
    xor [hl]
    xor [hl]
    xor l
    db $f4
    ld a, a
    adc b
    ld a, a
    xor a
    or c
    xor [hl]
    xor h
    xor b
    or d
    and h
    rst $20
    ld d, a
    nop
    sub d
    adc a
    add b
    add d
    add h
    ld a, a
    sub d
    add a
    sub h
    sub e
    sub e
    adc e
    add h
    ld c, a
    add d
    adc [hl]
    adc e
    sub h
    adc h
    add c
    adc b
    add b
    ld d, a
    nop
    adc h
    and h
    or e
    and h
    xor [hl]
    or c
    xor b
    or e
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
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
    add sp, $55
    sbc d
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
    and $9b
    ld d, a
    nop
    adc b
    push hl
    ld a, a
    add c
    sub c
    adc [hl]
    add d
    adc d
    rst $20
    ld c, a
    adc b
    push hl
    ld a, a
    adc a
    add h
    sub [hl]
    sub e
    add h
    sub c
    cp l
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
    rst $20
    ld d, c
    adc b
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
    ld a, a
    or c
    xor [hl]
    and d
    xor d
    ld c, a
    and a
    and b
    or c
    and e
    ld a, a
    and e
    and h
    and l
    and h
    xor l
    or d
    and h
    ld a, a
    and b
    xor l
    and e
    ld d, l
    and e
    and h
    or e
    and h
    or c
    xor h
    xor b
    xor l
    and b
    or e
    xor b
    xor [hl]
    xor l
    rst $20
    ld d, c
    sub e
    and a
    and b
    or e
    cp l
    ld a, a
    or [hl]
    and a
    cp b
    ld a, a
    xor h
    cp b
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
    xor e
    xor e
    ld d, l
    or e
    and a
    and h
    ld a, a
    or c
    xor [hl]
    and d
    xor d
    db $e3
    or e
    cp b
    xor a
    and h
    rst $20
    ld d, c
    add e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or d
    or e
    xor b
    xor e
    xor e
    ld a, a
    or [hl]
    and b
    xor l
    or e
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
    xor h
    and h
    and $55
    add l
    xor b
    xor l
    and h
    ld a, a
    or e
    and a
    and h
    xor l
    rst $20
    ld a, a
    sub d
    and a
    xor [hl]
    or [hl]
    ld d, l
    xor h
    and h
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
