; Disassembly of "Pokemon Red (UE) [S][!].gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $020", ROMX[$4000], BANK[$20]

    nop
    add c
    xor b
    xor l
    and [hl]
    xor [hl]
    rst $20
    ld d, b
    ld d, b
    nop
    ld c, a
    sub e
    and a
    and h
    ld a, a
    add d
    add b
    sub c
    add e
    ld a, a
    adc d
    add h
    sbc b
    ld d, l
    xor [hl]
    xor a
    and h
    xor l
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld a, a
    and e
    xor [hl]
    xor [hl]
    or c
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
    or e
    ld a, a
    xor l
    and h
    and h
    and e
    or d
    ld a, a
    and b
    ld c, a
    add d
    add b
    sub c
    add e
    ld a, a
    adc d
    add h
    sbc b
    rst $20
    ld d, a
    ld bc, $cd6d
    nop
    sbc h
    ld a, a
    ld d, b
    ld d, b
    nop
    adc l
    xor [hl]
    or e
    ld a, a
    and h
    or l
    and h
    xor l
    ld a, a
    and b
    ld a, a
    xor l
    xor b
    and c
    and c
    xor e
    and h
    rst $20
    ld e, b
    nop
    adc e
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
    or e
    and a
    and h
    or c
    and h
    cp l
    ld c, a
    xor l
    xor [hl]
    or e
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $58
    nop
    adc [hl]
    and a
    rst $20
    ld c, a
    adc b
    or e
    cp l
    ld a, a
    and b
    ld a, a
    and c
    xor b
    or e
    and h
    rst $20
    ld e, b
    nop
    rst $20
    ld d, a
    nop
    add [hl]
    or c
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    or c
    xor [hl]
    or d
    and h
    ld a, a
    or h
    xor a
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
    rst $20
    ld d, a
    nop
    sub e
    and a
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
    or d
    ld c, a
    sub d
    sub e
    sub c
    add h
    adc l
    add [hl]
    sub e
    add a
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    rst $20
    ld d, a
    nop
    add b
    xor e
    xor e
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
    ld c, a
    xor l
    and h
    and h
    and e
    or d
    ld a, a
    and l
    or h
    xor e
    and l
    xor b
    xor e
    xor e
    and h
    and e
    rst $20
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    adc h
    add b
    sub c
    sub e
    ld d, a
    nop
    add a
    and h
    and b
    xor e
    ld a, a
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
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
    ld bc, $cf4b
    nop
    rst $20
    ld d, b
    ld d, b
    nop
    adc l
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
    ld c, a
    xor b
    or e
    and h
    xor h
    or d
    rst $20
    ld d, a
    nop
    add a
    xor b
    rst $20
    ld a, a
    sub c
    and h
    xor h
    and h
    xor h
    and c
    and h
    or c
    ld a, a
    xor h
    and h
    and $4f
    adc b
    push hl
    ld a, a
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$72
    add b
    adc d
    cp l
    ld d, l
    add b
    adc b
    add e
    add h
    rst $20
    ld d, c
    adc b
    and l
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
    ld a, a
    ld d, b
    add hl, bc
    db $db
    rst $38
    inc de
    nop
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
    db $f4
    ld d, l
    adc b
    push hl
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
    xor l
    ld d, l
    ld d, b
    ld bc, $cc5b
    nop
    rst $20
    ld d, c
    sub d
    xor [hl]
    db $f4
    ld a, a
    ld d, d
    rst $20
    ld a, a
    add a
    and b
    or l
    and h
    ld c, a
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
    ld a, a
    and b
    or e
    ld d, l
    xor e
    and h
    and b
    or d
    or e
    ld a, a
    ld d, b
    add hl, bc
    db $db
    rst $38
    inc de
    nop
    ld a, a
    xor d
    xor b
    xor l
    and e
    or d
    ld a, a
    xor [hl]
    and l
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    and $57
    nop
    adc e
    and h
    or e
    cp l
    ld a, a
    or d
    and h
    and h
    add sp, -$18
    add sp, $4f
    sub h
    and a
    db $e3
    xor [hl]
    and a
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
    ld d, l
    and d
    and b
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
    ld d, b
    add hl, bc
    db $dd
    rst $38
    inc de
    nop
    ld d, l
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
    ld d, b
    add hl, bc
    db $db
    rst $38
    inc de
    nop
    ld a, a
    xor d
    xor b
    xor l
    and e
    or d
    ld c, a
    xor b
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
    and a
    and h
    ld d, l
    ld d, b
    ld bc, $cc5b
    nop
    add sp, $57
    nop
    adc [hl]
    and a
    add sp, $7f
    adc b
    ld a, a
    or d
    and h
    and h
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
    and [hl]
    and h
    or e
    ld a, a
    ld d, b
    add hl, bc
    db $db
    rst $38
    inc de
    nop
    ld c, a
    xor d
    xor b
    xor l
    and e
    or d
    db $f4
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    and c
    and b
    and d
    xor d
    ld d, l
    and l
    xor [hl]
    or c
    ld a, a
    ld d, b
    ld bc, $cc5b
    nop
    add sp, $57
    nop
    add [hl]
    or c
    and h
    and b
    or e
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
    and d
    and b
    or h
    and [hl]
    and a
    or e
    ld a, a
    ld d, b
    add hl, bc
    db $dd
    rst $38
    inc de
    nop
    ld a, a
    xor d
    xor b
    xor l
    and e
    or d
    ld a, a
    ld d, l
    xor [hl]
    and l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
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
    ld d, c
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
    ld a, a
    or e
    and a
    and h
    ld c, a
    ld d, b
    ld bc, $cc5b
    nop
    rst $20
    ld d, b
    ld d, b
    nop
    adc [hl]
    and a
    rst $20
    ld a, a
    adc b
    ld a, a
    or d
    and h
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
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
    ld d, l
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
    and h
    ld d, l
    ld d, b
    ld bc, $cc5b
    nop
    add sp, $57
    nop
    adc b
    ld a, a
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
    or [hl]
    xor b
    or e
    and a
    ld c, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    and l
    or c
    xor b
    and h
    xor l
    and e
    or d
    rst $20
    ld d, c
    sub e
    and a
    and h
    cp b
    db $e4
    and h
    ld a, a
    xor [hl]
    or h
    or e
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
    and l
    xor b
    and [hl]
    and a
    or e
    or d
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
    and a
    and b
    or l
    and h
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld a, a
    add d
    xor [hl]
    xor h
    and h
    ld a, a
    xor [hl]
    xor l
    rst $20
    ld d, l
    adc e
    and h
    or e
    cp l
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    ldh [$a4], a
    xor h
    rst $20
    ld d, a
    nop
    adc l
    xor [hl]
    rst $20
    ld c, a
    add d
    add b
    sub e
    add h
    sub c
    adc a
    adc b
    add h
    ld a, a
    and d
    and b
    xor l
    cp [hl]
    ld d, l
    and d
    or h
    or e
    ld a, a
    xor b
    or e
    rst $20
    ld e, b
    nop
    sub d
    or d
    and a
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    cp h
    xor e
    ld a, a
    or d
    and d
    and b
    or c
    and h
    ld c, a
    or e
    and a
    and h
    ld a, a
    and c
    or h
    and [hl]
    or d
    ld a, a
    and b
    or [hl]
    and b
    cp b
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
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
    ld a, a
    xor c
    and b
    xor h
    ld c, a
    xor [hl]
    or h
    or e
    ld a, a
    xor b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    db $e4
    and h
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
    ld d, a
    nop
    add a
    or h
    and a
    and $4f
    adc b
    ld a, a
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
    ld d, l
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
    adc b
    push hl
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
    and d
    and b
    or e
    and d
    and a
    ld a, a
    or d
    xor [hl]
    xor h
    and h
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
    xor [hl]
    xor l
    and h
    or d
    rst $20
    ld d, a
    nop
    add a
    and h
    cp b
    db $f4
    ld a, a
    or [hl]
    and b
    xor b
    or e
    ld a, a
    or h
    xor a
    rst $20
    ld c, a
    sub [hl]
    and a
    and b
    or e
    cp l
    ld a, a
    or e
    and a
    and h
    ld a, a
    and a
    or h
    or c
    or c
    cp b
    and $57
    nop
    adc b
    ld c, a
    and [hl]
    xor b
    or l
    and h
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    db $e4
    and h
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld d, l
    and b
    or e
    ld a, a
    or e
    and a
    xor b
    or d
    rst $20
    ld e, b
    nop
    sub d
    xor [hl]
    xor h
    and h
    or e
    xor b
    xor h
    and h
    or d
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
    rst $20
    ld d, c
    adc b
    push hl
    ld a, a
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
    ld c, a
    or e
    and a
    and h
    ld a, a
    or d
    or e
    or h
    and l
    and l
    ld a, a
    adc b
    ld d, l
    and e
    or c
    xor [hl]
    xor a
    xor a
    and h
    and e
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
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
    ld d, h
    ld c, a
    add c
    add b
    adc e
    adc e
    or d
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
    ld a, a
    or [hl]
    xor b
    or e
    and a
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
    and d
    and b
    or c
    or c
    cp b
    ld c, a
    and h
    or a
    or e
    or c
    and b
    or d
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
    and b
    or l
    xor [hl]
    xor b
    and e
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    or d
    db $f4
    ld d, l
    or d
    or e
    and b
    cp b
    ld a, a
    and b
    or [hl]
    and b
    cp b
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld d, l
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
    add l
    xor [hl]
    or c
    ld a, a
    xor a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    db $f4
    ld a, a
    or h
    or d
    and h
    ld c, a
    add b
    adc l
    sub e
    adc b
    add e
    adc [hl]
    sub e
    add h
    rst $20
    ld a, a
    add [hl]
    and h
    or e
    ld a, a
    xor b
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
    adc h
    add b
    sub c
    sub e
    or d
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
    add d
    xor [hl]
    xor l
    or e
    and b
    and d
    or e
    ld a, a
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$72
    add b
    adc d
    ld c, a
    or l
    xor b
    and b
    ld a, a
    adc a
    add d
    ld a, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    and h
    or e
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
    ld d, l
    and h
    or l
    and b
    xor e
    or h
    and b
    or e
    and h
    and e
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
    adc l
    xor [hl]
    ld a, a
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
    and l
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld d, l
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
    rst $20
    ld d, l
    add d
    and b
    or e
    and d
    and a
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
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
    sub [hl]
    and h
    and b
    xor d
    and h
    xor l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    and c
    and h
    and l
    xor [hl]
    or c
    and h
    ld a, a
    and b
    or e
    or e
    and h
    xor h
    xor a
    or e
    xor b
    xor l
    and [hl]
    ld d, l
    and d
    and b
    xor a
    or e
    or h
    or c
    and h
    rst $20
    ld d, c
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    and a
    and h
    and b
    xor e
    or e
    and a
    cp b
    db $f4
    ld c, a
    or e
    and a
    and h
    cp b
    ld a, a
    xor h
    and b
    cp b
    ld a, a
    and h
    or d
    and d
    and b
    xor a
    and h
    rst $20
    ld d, a
    nop
    adc e
    add h
    add b
    sub l
    adc b
    adc l
    add [hl]
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
    ld a, a
    add b
    add a
    add h
    add b
    add e
    ld d, a
    nop
    sub [hl]
    add a
    adc [hl]
    add b
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    ld a, a
    or d
    and a
    xor [hl]
    and d
    xor d
    and h
    and e
    ld c, a
    xor h
    and h
    rst $20
    ld a, a
    adc [hl]
    and a
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    db $e4
    and h
    ld d, l
    xor c
    or h
    or d
    or e
    ld a, a
    and b
    ld a, a
    xor d
    xor b
    and e
    rst $20
    ld d, a
    nop
    sub [hl]
    xor [hl]
    or [hl]
    rst $20
    ld c, a
    sub d
    and a
    xor [hl]
    and d
    xor d
    and h
    and e
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    rst $20
    ld e, b
    nop
    adc d
    xor b
    and e
    or d
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
    and a
    and h
    or c
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
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    ld c, a
    and h
    or a
    xor a
    xor e
    xor [hl]
    or c
    and h
    ld a, a
    or e
    xor [hl]
    xor [hl]
    and $57
    nop
    adc e
    xor [hl]
    or d
    xor b
    xor l
    and [hl]
    ld c, a
    or d
    or e
    xor b
    xor l
    xor d
    or d
    rst $20
    ld e, b
    nop
    adc b
    ld a, a
    and d
    and b
    xor h
    and h
    ld a, a
    and e
    xor [hl]
    or [hl]
    xor l
    ld a, a
    and a
    and h
    or c
    and h
    ld c, a
    or e
    xor [hl]
    ld a, a
    or d
    and a
    xor [hl]
    or [hl]
    ld a, a
    xor [hl]
    and l
    and l
    ld a, a
    or e
    xor [hl]
    ld d, l
    and [hl]
    xor b
    or c
    xor e
    or d
    add sp, $57
    nop
    sub [hl]
    xor [hl]
    or [hl]
    rst $20
    ld a, a
    adc b
    or e
    cp l
    ld a, a
    or [hl]
    and b
    cp b
    ld c, a
    and c
    xor b
    and [hl]
    and [hl]
    and h
    or c
    ld a, a
    xor b
    xor l
    ld a, a
    and a
    and h
    or c
    and h
    ld d, l
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
    ld d, a
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
    ld a, a
    xor b
    or e
    rst $20
    ld e, b
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
    and [hl]
    and h
    or e
    ld c, a
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    and a
    and h
    or c
    and h
    and $57
    nop
    sub [hl]
    and a
    and b
    or e
    rst $20
    ld a, a
    add e
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    or d
    xor l
    and h
    and b
    xor d
    ld c, a
    or h
    xor a
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor h
    and h
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
    or [hl]
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    and e
    xor [hl]
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
    and l
    xor b
    xor l
    and e
    ld c, a
    or d
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
    add sp, $57
    nop
    sub [hl]
    and a
    and b
    or e
    and $7f
    adc b
    push hl
    ld a, a
    or [hl]
    and b
    xor b
    or e
    xor b
    xor l
    and [hl]
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    xor h
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
    or e
    xor [hl]
    ld d, l
    and l
    xor b
    xor l
    and e
    ld a, a
    xor h
    and h
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $57
    nop
    adc b
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    and $58
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
    and h
    or c
    and h
    ld a, a
    and b
    or c
    and h
    ld c, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    or l
    and h
    or c
    cp b
    ld a, a
    or c
    and b
    or c
    and h
    ld d, l
    and l
    xor [hl]
    or d
    or d
    xor b
    xor e
    or d
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $57
    nop
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
    xor h
    and h
    xor l
    ld c, a
    and b
    or c
    and h
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    and d
    and b
    or l
    and h
    add sp, $55
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
    cp b
    xor [hl]
    or h
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
    adc b
    ld a, a
    or d
    and b
    or [hl]
    ld a, a
    or e
    and a
    and h
    xor h
    rst $20
    ld a, a
    adc b
    push hl
    ld c, a
    or d
    or h
    or c
    and h
    ld a, a
    or e
    and a
    and h
    cp b
    db $e4
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
    add [hl]
    xor [hl]
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
    xor b
    or d
    ld c, a
    and d
    and b
    or l
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    and h
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
    rst $20
    ld d, a
    nop
    adc b
    ld c, a
    xor e
    xor [hl]
    or d
    or e
    add sp, $58
    nop
    sbc c
    sub h
    add c
    add b
    sub e
    ld a, a
    xor b
    or d
    ld a, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    rst $20
    ld c, a
    add c
    or h
    or e
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
    ld d, l
    or h
    or d
    and h
    and l
    or h
    xor e
    ld a, a
    xor b
    and l
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
    xor [hl]
    xor l
    and h
    add sp, $57
    nop
    add c
    and h
    or [hl]
    and b
    or c
    and h
    rst $20
    ld a, a
    sbc c
    sub h
    add c
    add b
    sub e
    ld a, a
    xor b
    or d
    ld c, a
    and b
    ld a, a
    and c
    xor e
    xor [hl]
    xor [hl]
    and e
    ld a, a
    or d
    or h
    and d
    xor d
    and h
    or c
    rst $20
    ld d, a
    nop
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
    and a
    and h
    ld c, a
    add e
    adc [hl]
    adc h
    add h
    ld a, a
    add l
    adc [hl]
    sub d
    sub d
    adc b
    adc e
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
    add a
    add h
    adc e
    adc b
    sub a
    ld a, a
    add l
    adc [hl]
    sub d
    sub d
    adc b
    adc e
    and $57
    nop
    ld d, d
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    or e
    and a
    and h
    ld c, a
    ld d, b
    ld bc, $cf4b
    nop
    rst $20
    ld d, b
    ld d, b
    nop
    adc e
    xor [hl]
    xor [hl]
    xor d
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    cp a
    and h
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld c, a
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
    or e
    and a
    xor b
    or d
    add sp, $50
    ld d, b
    nop
    add a
    and h
    cp b
    db $f4
    ld a, a
    or d
    or e
    xor [hl]
    xor a
    rst $20
    ld d, c
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
    and h
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
    rst $20
    ld a, a
    sub e
    and a
    and h
    cp b
    db $e4
    and h
    ld d, l
    and c
    xor [hl]
    or e
    and a
    ld a, a
    xor h
    xor b
    xor l
    and h
    rst $20
    ld d, a
    nop
    adc [hl]
    adc d
    rst $20
    ld c, a
    adc b
    cp h
    xor e
    ld a, a
    or d
    and a
    and b
    or c
    and h
    rst $20
    ld e, b
    nop
    sub [hl]
    and h
    cp h
    xor e
    ld a, a
    and h
    and b
    and d
    and a
    ld a, a
    or e
    and b
    xor d
    and h
    ld c, a
    xor [hl]
    xor l
    and h
    rst $20
    ld d, l
    adc l
    xor [hl]
    ld a, a
    and c
    and h
    xor b
    xor l
    and [hl]
    ld a, a
    and [hl]
    or c
    and h
    and h
    and e
    cp b
    rst $20
    ld d, a
    nop
    add l
    and b
    or c
    ld a, a
    and b
    or [hl]
    and b
    cp b
    db $f4
    ld a, a
    xor [hl]
    xor l
    ld c, a
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
    db $f4
    ld d, l
    or e
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
    ld d, l
    adc e
    add b
    add c
    add sp, $51
    sub e
    and a
    and h
    cp b
    ld a, a
    and e
    xor [hl]
    ld a, a
    or c
    and h
    or d
    and h
    and b
    or c
    and d
    and a
    ld c, a
    xor [hl]
    xor l
    ld a, a
    or c
    and h
    and [hl]
    and h
    xor l
    and h
    or c
    and b
    or e
    xor b
    xor l
    and [hl]
    ld d, l
    and l
    xor [hl]
    or d
    or d
    xor b
    xor e
    or d
    add sp, $57
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
    add sp, $7f
    sub e
    and a
    and h
    xor l
    ld c, a
    or e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    xor h
    xor b
    xor l
    and h
    rst $20
    ld d, b
    ld d, b
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
    and l
    xor b
    xor l
    and e
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    xor [hl]
    or d
    or d
    xor b
    xor e
    or d
    db $f4
    ld d, l
    or c
    and h
    or l
    xor b
    or l
    and h
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or d
    and h
    xor e
    xor e
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
    and d
    and b
    or d
    and a
    rst $20
    ld d, a
    nop
    sub h
    or c
    and [hl]
    and a
    rst $20
    ld c, a
    adc l
    xor [hl]
    or [hl]
    ld a, a
    adc b
    push hl
    ld a, a
    xor h
    and b
    and e
    rst $20
    ld e, b
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    xor h
    and b
    and e
    and h
    ld a, a
    xor h
    and h
    ld a, a
    xor h
    and b
    and e
    rst $20
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
    or [hl]
    xor b
    xor e
    xor e
    ld d, l
    and c
    xor e
    and b
    and d
    xor d
    xor e
    xor b
    or d
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, a
    nop
    sub [hl]
    and h
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
    db $f4
    ld c, a
    and b
    or c
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    and [hl]
    and b
    xor l
    and [hl]
    or d
    or e
    and h
    or c
    or d
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    and c
    xor e
    and h
    or [hl]
    ld c, a
    xor b
    or e
    rst $20
    ld e, b
    nop
    add e
    and b
    or c
    xor l
    ld a, a
    xor b
    or e
    ld a, a
    and b
    xor e
    xor e
    rst $20
    ld a, a
    adc h
    cp b
    ld c, a
    and b
    or d
    or d
    xor [hl]
    and d
    xor b
    and b
    or e
    and h
    or d
    ld a, a
    or [hl]
    xor [hl]
    xor l
    cp [hl]
    ld d, l
    or d
    or e
    and b
    xor l
    and e
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
    db $e4
    and h
    ld a, a
    xor a
    or h
    xor e
    xor e
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    ld c, a
    and c
    xor b
    and [hl]
    ld a, a
    xor c
    xor [hl]
    and c
    ld a, a
    and a
    and h
    or c
    and h
    rst $20
    ld d, l
    add [hl]
    and h
    or e
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    db $f4
    ld a, a
    xor d
    xor b
    and e
    rst $20
    ld d, a
    nop
    sub d
    xor [hl]
    db $f4
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
    add sp, $58
    nop
    adc b
    and l
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
    and b
    ld c, a
    and l
    xor [hl]
    or d
    or d
    xor b
    xor e
    db $f4
    ld a, a
    and [hl]
    xor b
    or l
    and h
    ld a, a
    xor b
    or e
    ld d, l
    or e
    xor [hl]
    ld a, a
    xor h
    and h
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or d
    and d
    or c
    and b
    xor h
    rst $20
    ld d, a
    nop
    adc e
    xor b
    or e
    or e
    xor e
    and h
    ld a, a
    xor d
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
    xor e
    and h
    and b
    or l
    and h
    ld d, l
    and [hl]
    or c
    xor [hl]
    or [hl]
    xor l
    db $e3
    or h
    xor a
    or d
    ld a, a
    and b
    xor e
    xor [hl]
    xor l
    and h
    rst $20
    ld d, a
    nop
    adc b
    push hl
    ld c, a
    or d
    or e
    and h
    and b
    xor h
    and h
    and e
    rst $20
    ld e, b
    nop
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor e
    xor b
    or l
    and h
    and e
    ld c, a
    and a
    and h
    or c
    and h
    ld a, a
    xor e
    xor [hl]
    xor l
    and [hl]
    ld a, a
    and c
    and h
    and l
    xor [hl]
    or c
    and h
    ld d, l
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld a, a
    and d
    and b
    xor h
    and h
    add sp, $57
    nop
    add c
    xor [hl]
    xor l
    xor c
    xor [hl]
    or h
    or c
    rst $20
    ld c, a
    adc b
    ld a, a
    and b
    xor h
    ld a, a
    xor e
    and h
    ld a, a
    or [hl]
    and b
    xor b
    or e
    and h
    or c
    ld a, a
    xor [hl]
    xor l
    ld d, l
    or e
    and a
    xor b
    or d
    ld a, a
    or d
    and a
    xor b
    xor a
    rst $20
    ld d, c
    adc b
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and c
    and h
    ld a, a
    and a
    and b
    xor a
    xor a
    cp b
    ld c, a
    or e
    xor [hl]
    ld a, a
    or d
    and h
    or c
    or l
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    xor l
    cp b
    db $e3
    ld d, l
    or e
    and a
    xor b
    xor l
    and [hl]
    ld a, a
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
    rst $20
    ld d, c
    add b
    and a
    rst $20
    ld a, a
    adc e
    and h
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    ld c, a
    or d
    xor b
    xor e
    and h
    xor l
    or e
    ld a, a
    or e
    cp b
    xor a
    and h
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
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
    ld c, a
    and b
    or c
    and h
    ld a, a
    or c
    and h
    or d
    or e
    xor e
    and h
    or d
    or d
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    xor h
    xor b
    and [hl]
    and a
    or e
    ld a, a
    and c
    and h
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
    and e
    ld a, a
    and c
    cp b
    ld a, a
    or e
    and a
    and h
    ld d, l
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    and c
    xor [hl]
    or c
    and h
    and e
    ld a, a
    xor [hl]
    xor l
    and h
    or d
    rst $20
    ld d, a
    nop
    sub e
    and a
    xor b
    or d
    ld a, a
    or d
    and a
    xor b
    xor a
    db $f4
    ld a, a
    or d
    and a
    and h
    ld a, a
    xor b
    or d
    ld c, a
    and b
    ld a, a
    xor e
    or h
    or a
    or h
    or c
    cp b
    ld a, a
    xor e
    xor b
    xor l
    and h
    or c
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
    ld d, c
    add b
    or e
    ld a, a
    and h
    or l
    and h
    or c
    cp b
    ld a, a
    xor a
    xor [hl]
    or c
    or e
    db $f4
    ld a, a
    or [hl]
    and h
    ld c, a
    and a
    xor [hl]
    xor e
    and e
    ld a, a
    xor a
    and b
    or c
    or e
    xor b
    and h
    or d
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
    or e
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
    rst $20
    ld d, a
    nop
    ld d, e
    sbc h
    ld a, a
    add c
    xor [hl]
    xor l
    xor c
    xor [hl]
    or h
    or c
    rst $20
    ld c, a
    ld d, d
    rst $20
    ld d, c
    adc b
    xor h
    and b
    and [hl]
    xor b
    xor l
    and h
    ld a, a
    or d
    and h
    and h
    xor b
    xor l
    and [hl]
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    and a
    and h
    or c
    and h
    rst $20
    ld d, c
    ld d, d
    db $f4
    ld a, a
    or [hl]
    and h
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
    xor e
    xor e
    cp b
    ld a, a
    xor b
    xor l
    or l
    xor b
    or e
    and h
    and e
    and $51
    sub d
    xor [hl]
    ld a, a
    and a
    xor [hl]
    or [hl]
    cp l
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
    and d
    xor [hl]
    xor h
    xor b
    xor l
    and [hl]
    and $51
    adc b
    ld a, a
    and b
    xor e
    or c
    and h
    and b
    and e
    cp b
    ld a, a
    and d
    and b
    or h
    and [hl]
    and a
    or e
    ld c, a
    ld a, [$7ff6]
    xor d
    xor b
    xor l
    and e
    or d
    db $f4
    ld a, a
    xor a
    and b
    xor e
    rst $20
    ld d, c
    add e
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
    ld c, a
    and b
    or c
    and h
    ld a, a
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
    ld d, c
    add d
    or c
    and b
    or [hl]
    xor e
    ld a, a
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    xor b
    xor l
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
    rst $20
    ld d, a
    nop
    add a
    or h
    xor h
    xor a
    and a
    rst $20
    ld d, c
    add b
    or e
    ld a, a
    xor e
    and h
    and b
    or d
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    db $e4
    and h
    ld c, a
    or c
    and b
    xor b
    or d
    xor b
    xor l
    and [hl]
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
    rst $20
    ld e, b
    nop
    ld d, d
    rst $20
    ld a, a
    sub [hl]
    and a
    and b
    or e
    ld a, a
    and b
    or c
    and h
    ld c, a
    cp b
    xor [hl]
    or h
    db $f4
    ld a, a
    or d
    and h
    and b
    or d
    xor b
    and d
    xor d
    and $51
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
    or d
    and a
    and b
    xor a
    and h
    ld c, a
    or h
    xor a
    db $f4
    ld a, a
    xor a
    and b
    xor e
    rst $20
    ld e, b
    nop
    ld d, e
    sbc h
    ld a, a
    adc b
    ld a, a
    and a
    and h
    and b
    or c
    and e
    ld c, a
    or e
    and a
    and h
    or c
    and h
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and b
    ld a, a
    add d
    sub h
    sub e
    ld d, l
    xor h
    and b
    or d
    or e
    and h
    or c
    ld a, a
    xor [hl]
    xor l
    ld a, a
    and c
    xor [hl]
    and b
    or c
    and e
    add sp, $51
    add c
    or h
    or e
    db $f4
    ld a, a
    and a
    and h
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    and b
    ld c, a
    or d
    and h
    and b
    or d
    xor b
    and d
    xor d
    db $f4
    ld a, a
    xor [hl]
    xor e
    and e
    ld a, a
    xor h
    and b
    xor l
    rst $20
    ld d, c
    add c
    or h
    or e
    db $f4
    ld a, a
    add d
    sub h
    sub e
    ld a, a
    xor b
    or e
    or d
    and h
    xor e
    and l
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
    or h
    or d
    and h
    and l
    or h
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
    and [hl]
    xor [hl]
    ld a, a
    or d
    and h
    and h
    ld c, a
    and a
    xor b
    xor h
    rst $20
    ld a, a
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
    adc [hl]
    or h
    or c
    ld a, a
    add d
    add b
    adc a
    sub e
    add b
    adc b
    adc l
    ld a, a
    xor b
    or d
    ld a, a
    and b
    ld c, a
    or d
    or [hl]
    xor [hl]
    or c
    and e
    ld a, a
    xor h
    and b
    or d
    or e
    and h
    or c
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
    or e
    and h
    and b
    and d
    and a
    and h
    or d
    ld c, a
    add d
    sub h
    sub e
    ld a, a
    or e
    xor [hl]
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
    xor a
    and b
    or c
    or e
    cp b
    cp l
    ld a, a
    xor [hl]
    or l
    and h
    or c
    add sp, $4f
    sub e
    and a
    and h
    ld a, a
    or d
    and a
    xor b
    xor a
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and c
    and h
    ld d, l
    and e
    and h
    xor a
    and b
    or c
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    or d
    xor [hl]
    xor [hl]
    xor l
    add sp, $57
    nop
    sub d
    and d
    or c
    or h
    and c
    and c
    xor b
    xor l
    and [hl]
    ld a, a
    and e
    and h
    and d
    xor d
    or d
    ld c, a
    xor b
    or d
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
    sub h
    or c
    and l
    add sp, $7f
    adc b
    ld a, a
    and l
    and h
    and h
    xor e
    ld a, a
    xor b
    xor e
    xor e
    add sp, $51
    adc b
    ld a, a
    or d
    or e
    and h
    xor a
    xor a
    and h
    and e
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    or e
    xor [hl]
    ld c, a
    and [hl]
    and h
    or e
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    and b
    xor b
    or c
    add sp, $57
    nop
    add a
    and h
    cp b
    ld a, a
    xor h
    and b
    or e
    and h
    cp b
    rst $20
    ld d, c
    adc e
    and h
    or e
    cp l
    ld a, a
    and e
    xor [hl]
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
    xor c
    xor b
    and [hl]
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    db $e4
    and h
    ld c, a
    xor b
    xor h
    xor a
    or c
    and h
    or d
    or d
    xor b
    or l
    and h
    rst $20
    ld e, b
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
    xor d
    xor b
    xor l
    and e
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
    and e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, l
    or e
    and a
    xor b
    xor l
    xor d
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
    and $57
    nop
    add b
    and a
    xor [hl]
    cp b
    ld a, a
    or e
    and a
    and h
    or c
    and h
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
    or d
    and h
    and b
    or d
    xor b
    and d
    xor d
    and $57
    nop
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    xor c
    or h
    or d
    or e
    ld a, a
    and d
    and b
    or c
    and h
    xor e
    and h
    or d
    or d
    rst $20
    ld e, b
    nop
    adc h
    cp b
    ld a, a
    adc a
    and b
    ld a, a
    or d
    and b
    xor b
    and e
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
    rst $30
    or $f6
    ld a, a
    xor d
    xor b
    xor l
    and e
    or d
    ld a, a
    xor [hl]
    and l
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $7f
    adc b
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
    ld d, l
    or e
    and a
    and h
    or c
    and h
    ld a, a
    and b
    or c
    and h
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    add sp, $57
    nop
    sbc b
    xor [hl]
    or h
    db $f4
    ld a, a
    xor h
    xor [hl]
    xor l
    ld a, a
    xor a
    and h
    or e
    xor b
    or e
    rst $20
    ld c, a
    sub [hl]
    and h
    db $e4
    and h
    ld a, a
    and c
    or h
    or d
    cp b
    ld a, a
    and a
    and h
    or c
    and h
    rst $20
    ld d, l
    adc [hl]
    or h
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    and b
    cp b
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    or d
    and b
    or [hl]
    ld a, a
    and b
    xor l
    ld a, a
    xor [hl]
    and e
    and e
    ld a, a
    and c
    and b
    xor e
    xor e
    ld c, a
    xor b
    xor l
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
    add sp, $57
    nop
    adc b
    push hl
    ld a, a
    or d
    xor [hl]
    ld a, a
    and c
    or h
    or d
    cp b
    ld a, a
    adc b
    push hl
    ld c, a
    and [hl]
    and h
    or e
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    and e
    xor b
    cp c
    cp c
    cp b
    rst $20
    ld d, a
    nop
    add a
    or h
    xor h
    db $e3
    and e
    and h
    db $e3
    and a
    or h
    xor h
    db $e3
    and e
    and h
    db $e3
    ld c, a
    and a
    xor [hl]
    add sp, -$18
    add sp, $51
    adc b
    ld a, a
    xor a
    and h
    and h
    xor e
    ld a, a
    or d
    xor a
    or h
    and e
    or d
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
    rst $20
    ld d, l
    add a
    or h
    xor h
    db $e3
    and a
    or h
    xor h
    add sp, -$18
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
    and a
    and h
    and b
    or c
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld c, a
    sub d
    adc l
    adc [hl]
    sub c
    adc e
    add b
    sub a
    and $51
    add b
    xor e
    xor e
    ld a, a
    xor b
    or e
    ld a, a
    and e
    xor [hl]
    and h
    or d
    ld a, a
    xor b
    or d
    ld c, a
    and h
    and b
    or e
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
    rst $20
    ld d, a
    nop
    sub d
    xor l
    xor b
    or l
    and h
    xor e
    add sp, -$18
    add sp, -$6e
    xor l
    xor b
    and l
    and l
    add sp, -$18
    add sp, $51
    adc b
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    or e
    xor [hl]
    ld c, a
    xor a
    and h
    and h
    xor e
    ld a, a
    xor [hl]
    xor l
    xor b
    xor [hl]
    xor l
    or d
    add sp, -$18
    add sp, $55
    sub d
    xor l
    xor b
    or l
    and h
    xor e
    add sp, -$18
    add sp, $57
    nop
    add h
    or c
    db $e3
    and a
    and h
    xor h
    rst $20
    ld a, a
    adc b
    xor l
    and e
    and h
    and h
    and e
    ld a, a
    adc b
    ld c, a
    and b
    xor h
    ld a, a
    xor e
    and h
    ld a, a
    add d
    add a
    add h
    add l
    rst $20
    ld d, c
    adc e
    and h
    ld a, a
    xor h
    and b
    xor b
    xor l
    ld a, a
    and d
    xor [hl]
    or h
    or c
    or d
    and h
    ld a, a
    xor b
    or d
    ld e, b
    nop
    sub d
    and b
    xor e
    xor h
    xor [hl]
    xor l
    ld a, a
    and e
    or h
    ld a, a
    sub d
    and b
    xor e
    and b
    and e
    rst $20
    ld d, c
    adc e
    and h
    or d
    ld a, a
    and [hl]
    or h
    and h
    or d
    or e
    or d
    ld a, a
    xor h
    and b
    cp b
    ld c, a
    and [hl]
    or c
    xor b
    xor a
    and h
    ld a, a
    xor b
    or e
    cp l
    ld a, a
    and l
    xor b
    or d
    and a
    ld d, l
    and b
    and [hl]
    and b
    xor b
    xor l
    db $f4
    ld a, a
    and a
    xor [hl]
    or [hl]
    and h
    or l
    and h
    or c
    rst $20
    ld d, a
    nop
    add h
    and h
    xor e
    or d
    ld a, a
    and b
    or h
    ld a, a
    add c
    and b
    or c
    and c
    and h
    and d
    or h
    and h
    rst $20
    ld d, c
    adc e
    and h
    or d
    ld a, a
    and [hl]
    or h
    and h
    or d
    or e
    or d
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld c, a
    xor h
    or h
    or e
    xor b
    xor l
    cp b
    db $f4
    ld a, a
    adc b
    ld a, a
    and l
    and h
    and b
    or c
    add sp, $57
    nop
    adc a
    or c
    xor b
    xor h
    and h
    ld a, a
    add c
    and h
    and h
    and l
    ld a, a
    sub d
    or e
    and h
    and b
    xor d
    rst $20
    ld d, c
    add c
    or h
    or e
    db $f4
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    adc b
    ld a, a
    and h
    xor l
    xor [hl]
    or h
    and [hl]
    and a
    ld c, a
    and l
    xor b
    xor e
    xor e
    and h
    or e
    or d
    ld a, a
    and e
    or h
    ld a, a
    and c
    and h
    and h
    and l
    and $57
    nop
    add d
    add b
    adc a
    sub e
    add b
    adc b
    adc l
    sbc h
    ld a, a
    adc [hl]
    xor [hl]
    and b
    or c
    and [hl]
    and a
    add sp, -$18
    add sp, $4f
    adc b
    ld a, a
    and l
    and h
    and h
    xor e
    ld a, a
    and a
    xor b
    and e
    and h
    xor [hl]
    or h
    or d
    add sp, -$18
    add sp, $55
    sub h
    or c
    or c
    xor a
    rst $20
    ld a, a
    sub d
    and h
    and b
    or d
    xor b
    and d
    xor d
    add sp, -$18
    add sp, $51
    ld d, d
    ld a, a
    or c
    or h
    and c
    and c
    and h
    and e
    ld c, a
    or e
    and a
    and h
    ld a, a
    add d
    add b
    adc a
    sub e
    add b
    adc b
    adc l
    cp l
    ld d, l
    and c
    and b
    and d
    xor d
    rst $20
    ld d, c
    sub c
    or h
    and c
    db $e3
    or c
    or h
    and c
    add sp, -$18
    add sp, $4f
    sub c
    or h
    and c
    db $e3
    or c
    or h
    and c
    add sp, -$18
    add sp, $50
    ld d, b
    nop
    add d
    add b
    adc a
    sub e
    add b
    adc b
    adc l
    sbc h
    ld a, a
    sub [hl]
    and a
    and h
    or [hl]
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
    ld a, a
    adc b
    ld d, l
    and l
    and h
    and h
    xor e
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
    xor h
    cp b
    ld a, a
    add d
    sub h
    sub e
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
    and $51
    adc b
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
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
    xor b
    and l
    ld a, a
    adc b
    ld a, a
    or [hl]
    and b
    or d
    xor l
    cp [hl]
    ld a, a
    xor b
    xor e
    xor e
    add sp, -$18
    add sp, $51
    adc b
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    rst $20
    ld a, a
    sbc b
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
    and b
    xor l
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, l
    and d
    and b
    xor l
    ld a, a
    or d
    and h
    and h
    ld a, a
    xor b
    or e
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
    add d
    add b
    adc a
    sub e
    add b
    adc b
    adc l
    sbc h
    ld a, a
    sub [hl]
    and a
    and h
    or [hl]
    rst $20
    ld d, c
    adc l
    xor [hl]
    or [hl]
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    adc b
    push hl
    ld a, a
    xor l
    xor [hl]
    or e
    ld c, a
    or d
    xor b
    and d
    xor d
    ld a, a
    and b
    xor l
    cp b
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    db $f4
    ld a, a
    adc b
    ld d, l
    and [hl]
    or h
    and h
    or d
    or d
    ld a, a
    xor b
    or e
    cp l
    ld a, a
    or e
    xor b
    xor h
    and h
    add sp, $57
    nop
    adc [hl]
    and a
    ld a, a
    xor l
    xor [hl]
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
    or e
    and a
    xor b
    or d
    rst $20
    ld d, a
    nop
    sbc b
    or h
    and d
    xor d
    rst $20
    ld a, a
    sub d
    and a
    xor [hl]
    or h
    xor e
    and e
    xor l
    cp [hl]
    ld c, a
    and a
    and b
    or l
    and h
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    and h
    and e
    rst $20
    ld d, a
    nop
    add a
    xor [hl]
    or [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    add d
    xor [hl]
    xor l
    or b
    or h
    and h
    or c
    ld c, a
    sub d
    and h
    and b
    or d
    xor b
    and d
    xor d
    xor l
    and h
    or d
    or d
    add sp, -$18
    add sp, $55
    sub e
    and a
    and h
    ld a, a
    add d
    add b
    adc a
    sub e
    add b
    adc b
    adc l
    cp l
    ld d, l
    or c
    and h
    and b
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    xor b
    or d
    rst $20
    ld d, a
    nop
    sub [hl]
    adc b
    add [hl]
    add [hl]
    adc e
    sbc b
    sub e
    sub h
    add l
    add l
    sbc h
    ld a, a
    adc a
    or h
    or h
    xor a
    ld c, a
    xor a
    or h
    xor a
    or h
    or h
    rst $20
    ld d, b
    ld d, b
    nop
    adc b
    ld a, a
    or e
    or c
    and b
    or l
    and h
    xor e
    ld a, a
    and b
    xor e
    xor [hl]
    xor l
    and h
    ld c, a
    xor [hl]
    xor l
    ld a, a
    xor h
    cp b
    ld a, a
    xor c
    xor [hl]
    or h
    or c
    xor l
    and h
    cp b
    or d
    rst $20
    ld d, c
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
    xor h
    cp b
    ld c, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    and l
    or c
    xor b
    and h
    xor l
    and e
    or d
    rst $20
    ld d, a
    nop
    adc h
    cp b
    db $f4
    ld a, a
    xor h
    cp b
    ld c, a
    and l
    or c
    xor b
    and h
    xor l
    and e
    or d
    add sp, -$18
    add sp, $58
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
    and c
    and h
    ld c, a
    xor l
    xor b
    and d
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and l
    or c
    xor b
    and h
    xor l
    and e
    or d
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    xor a
    or h
    xor a
    rst $20
    ld a, a
    add a
    xor [hl]
    or [hl]
    ld a, a
    and e
    and b
    or c
    and h
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    and c
    and b
    or c
    and [hl]
    and h
    ld a, a
    xor b
    xor l
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
    or c
    or h
    and e
    and h
    ld a, a
    and d
    and a
    xor b
    xor e
    and e
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
    xor [hl]
    ld a, a
    and c
    and h
    ld a, a
    xor e
    and h
    and l
    or e
    ld c, a
    and b
    xor e
    xor [hl]
    xor l
    and h
    rst $20
    ld a, a
    add [hl]
    and h
    or e
    ld a, a
    xor [hl]
    or h
    or e
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    xor e
    xor [hl]
    or l
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld c, a
    add e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    and $57
    nop
    sub [hl]
    xor [hl]
    or [hl]
    rst $20
    ld a, a
    ld c, a
    sbc b
    xor [hl]
    or h
    db $e4
    and h
    ld a, a
    and [hl]
    or c
    and h
    and b
    or e
    rst $20
    ld e, b
    nop
    adc e
    and h
    or e
    ld a, a
    xor h
    and h
    ld a, a
    and c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld c, a
    and l
    or c
    xor b
    and h
    xor l
    and e
    db $f4
    ld a, a
    adc [hl]
    adc d
    and $51
    sub e
    and a
    and h
    xor l
    ld a, a
    or [hl]
    and h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    or e
    or c
    and b
    and e
    and h
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, a
    nop
    adc b
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
    ld a, a
    or e
    and a
    and h
    or d
    and h
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    and b
    xor e
    xor e
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
    adc [hl]
    and a
    ld a, a
    xor l
    xor [hl]
    rst $20
    ld c, a
    adc b
    ld a, a
    or [hl]
    and h
    xor l
    or e
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
    ld d, l
    or [hl]
    xor [hl]
    or c
    xor e
    and e
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    or e
    and a
    and h
    or d
    and h
    rst $20
    ld e, b
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and a
    or h
    or c
    or e
    ld a, a
    xor h
    cp b
    ld a, a
    xor a
    xor [hl]
    xor [hl]
    or c
    ld c, a
    or [hl]
    xor [hl]
    or c
    xor e
    and e
    xor e
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, c
    adc b
    ld a, a
    and e
    and h
    xor h
    and b
    xor l
    and e
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and a
    and h
    and b
    xor e
    ld a, a
    or e
    and a
    and h
    xor h
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
    sub [hl]
    and b
    xor b
    or e
    and h
    or c
    db $f4
    ld a, a
    adc b
    ld a, a
    or [hl]
    xor [hl]
    or h
    xor e
    and e
    ld c, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    and b
    ld a, a
    and d
    and a
    and h
    or c
    or c
    cp b
    ld a, a
    xor a
    xor b
    and h
    ld d, l
    xor a
    xor e
    and h
    and b
    or d
    and h
    rst $20
    ld d, a
    nop
    add b
    ld a, a
    and d
    or c
    or h
    xor b
    or d
    and h
    ld a, a
    xor b
    or d
    ld a, a
    or d
    xor [hl]
    ld c, a
    and h
    xor e
    and h
    and [hl]
    and b
    xor l
    or e
    ld a, a
    cp b
    and h
    or e
    ld a, a
    and d
    xor [hl]
    cp c
    cp b
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
    or c
    and b
    or l
    and h
    xor e
    ld c, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    sub [hl]
    adc b
    add [hl]
    add [hl]
    adc e
    sbc b
    sub e
    sub h
    add l
    add l
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
    and d
    or c
    or h
    xor b
    or d
    xor b
    xor l
    and [hl]
    ld c, a
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
    sub d
    or d
    and a
    rst $20
    ld a, a
    adc b
    push hl
    ld a, a
    and b
    ld a, a
    add [hl]
    adc e
    adc [hl]
    add c
    add b
    adc e
    ld c, a
    adc a
    adc [hl]
    adc e
    adc b
    add d
    add h
    ld a, a
    and b
    and [hl]
    and h
    xor l
    or e
    rst $20
    ld d, c
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
    or e
    or c
    and b
    xor b
    xor e
    ld c, a
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
    rst $20
    ld d, a
    nop
    adc b
    xor l
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    xor h
    cp b
    ld a, a
    or e
    or c
    and b
    or l
    and h
    xor e
    or d
    ld c, a
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
    or d
    xor e
    and h
    and h
    xor a
    ld d, l
    xor e
    xor b
    xor d
    and h
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    xor [hl]
    xor l
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
    ld e, b
    nop
    add b
    and a
    ld a, a
    cp b
    and h
    or d
    db $f4
    ld a, a
    adc b
    ld a, a
    and a
    and b
    or l
    and h
    ld c, a
    or d
    and h
    and h
    xor l
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
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
    or [hl]
    and b
    or e
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
    and d
    and b
    xor l
    ld a, a
    add d
    sub h
    sub e
    ld c, a
    and e
    xor [hl]
    or [hl]
    xor l
    ld a, a
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
    add sp, $57
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
    and [hl]
    xor [hl]
    xor l
    and h
    ld a, a
    or e
    xor [hl]
    ld c, a
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
    ld d, l
    xor b
    xor l
    ld a, a
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
    and $51
    adc b
    or e
    ld a, a
    and a
    and b
    and e
    ld a, a
    xor h
    and b
    xor l
    cp b
    ld a, a
    or c
    and b
    or c
    and h
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
    rst $20
    rst $20
    ld d, a
    nop
    adc h
    and h
    ld a, a
    and b
    xor l
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
    and a
    xor b
    xor l
    xor d
    ld a, a
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
    ld d, l
    sbc c
    adc [hl]
    adc l
    add h
    ld a, a
    xor b
    or d
    ld a, a
    and b
    or [hl]
    and h
    or d
    xor [hl]
    xor h
    and h
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    add d
    add b
    adc a
    sub e
    add b
    adc b
    adc l
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    and h
    and e
    ld c, a
    or c
    and h
    and b
    xor e
    xor e
    cp b
    ld a, a
    or d
    xor b
    and d
    xor d
    ld a, a
    and b
    xor l
    and e
    ld d, l
    xor a
    and b
    xor e
    and h
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
    ld c, a
    and [hl]
    and h
    or e
    ld a, a
    or d
    and h
    and b
    or d
    xor b
    and d
    xor d
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
    xor l
    and [hl]
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    or d
    or e
    ld c, a
    or e
    and a
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    xor l
    and [hl]
    ld a, a
    xor d
    and h
    and h
    xor a
    or d
    ld d, l
    xor h
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    or e
    and a
    and l
    or h
    xor e
    add sp, $57
    nop
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld c, a
    and l
    xor b
    and [hl]
    and a
    or e
    rst $20
    ld a, a
    add b
    and a
    db $f4
    ld a, a
    adc b
    ld a, a
    and l
    and h
    and h
    xor e
    ld d, l
    cp b
    xor [hl]
    or h
    xor l
    and [hl]
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    rst $20
    ld e, b
    nop
    rst $30
    ei
    ld a, a
    cp b
    and h
    and b
    or c
    or d
    ld a, a
    and b
    and [hl]
    xor [hl]
    db $f4
    ld a, a
    adc b
    ld c, a
    or [hl]
    xor [hl]
    or h
    xor e
    and e
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
    ld d, a
    nop
    add d
    and a
    and h
    and d
    xor d
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    or [hl]
    and a
    and b
    or e
    ld a, a
    adc b
    ld c, a
    and l
    xor b
    or d
    and a
    and h
    and e
    ld a, a
    or h
    xor a
    rst $20
    ld d, a
    nop
    adc b
    push hl
    ld c, a
    and b
    xor e
    xor e
    ld a, a
    xor [hl]
    or h
    or e
    rst $20
    ld e, b
    nop
    adc a
    and b
    or c
    or e
    cp b
    and $51
    sub e
    and a
    and h
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
    cp l
    ld c, a
    xor a
    and b
    or c
    or e
    cp b
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
    ld d, l
    xor [hl]
    or l
    and h
    or c
    ld a, a
    and c
    cp b
    ld a, a
    xor l
    xor [hl]
    or [hl]
    add sp, $57
    nop
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
    ld a, a
    xor e
    xor b
    xor d
    and h
    db $f4
    ld c, a
    and b
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    ld a, a
    xor [hl]
    or c
    ld a, a
    and b
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
    and $57
    nop
    adc b
    ld a, a
    xor h
    or h
    or d
    or e
    ld c, a
    or d
    and b
    xor e
    or h
    or e
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld e, b
    nop
    adc b
    ld a, a
    xor a
    or c
    and h
    and l
    and h
    or c
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    ld c, a
    and b
    xor l
    and e
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
    adc b
    ld a, a
    xor l
    and h
    or l
    and h
    or c
    ld a, a
    or d
    and b
    or [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor a
    and b
    or c
    or e
    cp b
    add sp, $57
    nop
    sub e
    and b
    xor d
    and h
    ld c, a
    xor b
    or e
    ld a, a
    and h
    and b
    or d
    cp b
    rst $20
    ld e, b
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    adc b
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
    or c
    ld c, a
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
    rst $20
    ld d, a
    nop
    adc h
    add b
    add d
    add a
    adc [hl]
    adc d
    add h
    sbc h
    ld a, a
    add [hl]
    or [hl]
    xor [hl]
    and a
    rst $20
    ld c, a
    add [hl]
    xor [hl]
    and [hl]
    and [hl]
    xor [hl]
    and a
    rst $20
    ld d, b
    ld d, b
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
    or d
    and b
    cp b
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    or d
    and b
    xor b
    xor e
    xor [hl]
    or c
    or d
    ld d, l
    and b
    xor l
    and e
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
    ld d, a
    nop
    sub c
    xor b
    and [hl]
    and a
    or e
    rst $20
    ld c, a
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and l
    xor b
    and [hl]
    and a
    or e
    db $f4
    ld a, a
    xor h
    and b
    or e
    and h
    rst $20
    ld e, b
    nop
    add a
    and b
    and a
    and b
    rst $20
    ld a, a
    sub [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld c, a
    and b
    ld a, a
    or d
    and b
    xor b
    xor e
    xor [hl]
    or c
    db $f4
    ld a, a
    xor h
    and b
    or e
    and h
    and $57
    nop
    adc h
    cp b
    ld a, a
    or d
    and b
    xor b
    xor e
    xor [hl]
    or c
    cp l
    ld a, a
    xor a
    or c
    xor b
    and e
    and h
    ld c, a
    xor b
    or d
    ld a, a
    and b
    or e
    ld a, a
    or d
    or e
    and b
    xor d
    and h
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    or c
    ld c, a
    or d
    xor a
    xor b
    or c
    xor b
    or e
    ld a, a
    or d
    and b
    xor l
    xor d
    ld a, a
    xor h
    and h
    rst $20
    ld e, b
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
    or e
    and a
    and h
    ld c, a
    add l
    adc b
    sub d
    add a
    adc b
    adc l
    add [hl]
    ld a, a
    add [hl]
    sub h
    sub c
    sub h
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
    and $57
    nop
    sub h
    or d
    ld a, a
    or d
    and b
    xor b
    xor e
    xor [hl]
    or c
    or d
    ld a, a
    and a
    and b
    or l
    and h
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
    ld d, a
    nop
    adc [hl]
    adc d
    db $f4
    ld a, a
    ld c, a
    cp b
    xor [hl]
    or h
    db $e4
    and h
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    and c
    and b
    and e
    add sp, $58
    nop
    sub [hl]
    and h
    ld a, a
    and d
    and b
    or h
    and [hl]
    and a
    or e
    ld a, a
    and b
    xor e
    xor e
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
    or [hl]
    and a
    xor b
    xor e
    and h
    ld d, l
    xor [hl]
    or h
    or e
    ld a, a
    and b
    or e
    ld a, a
    or d
    and h
    and b
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    and l
    and h
    xor b
    or d
    or e
    cp b
    ld c, a
    xor d
    xor b
    and e
    or d
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
    ld d, b
    ld d, b
    nop
    add b
    or c
    and [hl]
    and a
    rst $20
    ld c, a
    adc e
    xor [hl]
    or d
    or e
    ld a, a
    xor b
    or e
    rst $20
    ld e, b
    nop
    sub d
    and h
    and b
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
    xor b
    xor l
    ld a, a
    and e
    and h
    and h
    xor a
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    add sp, $55
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
    and b
    ld a, a
    sub c
    adc [hl]
    add e
    rst $20
    ld d, a
    nop
    adc h
    and b
    or e
    and h
    cp b
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    db $e4
    and h
    ld c, a
    or [hl]
    and b
    xor e
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor a
    xor e
    and b
    xor l
    xor d
    ld d, l
    xor b
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
    rst $20
    ld d, a
    nop
    add b
    or c
    and [hl]
    and a
    rst $20
    ld c, a
    add c
    and h
    and b
    or e
    and h
    xor l
    ld a, a
    and c
    cp b
    ld a, a
    and b
    ld a, a
    xor d
    xor b
    and e
    rst $20
    ld e, b
    nop
    adc c
    and h
    xor e
    xor e
    cp b
    and l
    xor b
    or d
    and a
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    db $e3
    ld c, a
    or e
    xor b
    xor h
    and h
    or d
    ld a, a
    and e
    or c
    xor b
    and l
    or e
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld d, l
    or e
    and a
    and h
    ld a, a
    or d
    and a
    xor b
    xor a
    add sp, $57
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
    ld a, a
    or d
    or e
    or c
    and b
    xor l
    and [hl]
    and h
    or c
    rst $20
    ld c, a
    sub d
    or e
    xor [hl]
    xor a
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and d
    and a
    and b
    or e
    rst $20
    ld d, c
    add b
    xor e
    xor e
    ld a, a
    xor h
    cp b
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
    xor e
    and h
    or e
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor [hl]
    xor l
    and h
    ld d, l
    and [hl]
    and h
    or e
    ld a, a
    and b
    or [hl]
    and b
    cp b
    rst $20
    ld e, b
    nop
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
    ld c, a
    xor h
    and b
    xor d
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor h
    cp b
    ld d, l
    and b
    or d
    or d
    xor b
    or d
    or e
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    xor [hl]
    rst $20
    ld d, a
    nop
    adc h
    cp b
    ld a, a
    and c
    or h
    and e
    and e
    cp b
    db $f4
    ld a, a
    adc h
    add b
    add d
    add a
    adc [hl]
    adc d
    add h
    db $f4
    ld c, a
    xor b
    or d
    ld a, a
    or d
    or h
    xor a
    and h
    or c
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    rst $20
    ld d, c
    add a
    and h
    ld a, a
    and a
    and b
    or d
    ld a, a
    and h
    xor l
    xor [hl]
    or h
    and [hl]
    and a
    ld c, a
    sub d
    sub e
    sub c
    add h
    adc l
    add [hl]
    sub e
    add a
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    ld d, l
    and c
    xor b
    and [hl]
    ld a, a
    or c
    xor [hl]
    and d
    xor d
    or d
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
    or c
    or h
    xor h
    xor [hl]
    or c
    or d
    ld a, a
    xor [hl]
    and l
    ld c, a
    and b
    ld a, a
    and d
    and a
    xor b
    xor e
    and e
    ld a, a
    xor a
    or c
    xor [hl]
    and e
    xor b
    and [hl]
    cp b
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    ld c, a
    or c
    or h
    xor h
    xor [hl]
    or c
    or d
    ld a, a
    or [hl]
    and h
    or c
    and h
    ld a, a
    or e
    or c
    or h
    and h
    rst $20
    ld e, b
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
    add [hl]
    adc b
    adc [hl]
    sub l
    add b
    adc l
    adc l
    adc b
    ld c, a
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
    and $57
    nop
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
    xor c
    or h
    or d
    or e
    ld c, a
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
    adc b
    push hl
    ld c, a
    and l
    or h
    or c
    xor b
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
    or d
    and a
    xor [hl]
    or [hl]
    and h
    and e
    ld a, a
    xor h
    and h
    ld a, a
    xor c
    or h
    or d
    or e
    ld c, a
    and a
    xor [hl]
    or [hl]
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    adc b
    ld a, a
    or [hl]
    and b
    or d
    rst $20
    ld d, a
    nop
    adc [hl]
    xor l
    xor e
    cp b
    ld a, a
    or e
    and a
    and h
    ld a, a
    and d
    and a
    xor [hl]
    or d
    and h
    xor l
    ld c, a
    and d
    and b
    xor l
    ld a, a
    xor a
    and b
    or d
    or d
    ld a, a
    and a
    and h
    or c
    and h
    rst $20
    ld d, a
    nop
    adc b
    ld c, a
    and e
    xor [hl]
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
    ld a, a
    xor b
    or e
    rst $20
    ld e, b
    nop
    add b
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
    and a
    and h
    and b
    and e
    and h
    and e
    ld a, a
    or e
    xor [hl]
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
    add h
    add b
    add [hl]
    sub h
    add h
    rst $20
    ld d, l
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
    rst $20
    ld d, a
    nop
    sub e
    or c
    and b
    xor b
    xor l
    and h
    or c
    or d
    ld a, a
    xor e
    xor b
    or l
    and h
    ld a, a
    or e
    xor [hl]
    ld c, a
    or d
    and h
    and h
    xor d
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
    xor [hl]
    xor a
    xor a
    xor [hl]
    xor l
    and h
    xor l
    or e
    or d
    rst $20
    ld d, a
    nop
    adc [hl]
    and a
    rst $20
    ld c, a
    sub d
    xor [hl]
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    rst $20
    ld e, b
    nop
    add c
    cp b
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
    or e
    xor [hl]
    or h
    and [hl]
    and a
    ld c, a
    and c
    and b
    or e
    or e
    xor e
    and h
    or d
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and [hl]
    and h
    or e
    ld d, l
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    and h
    or c
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    cp b
    add sp, -$18
    add sp, -$1a
    ld d, b
    ld d, b
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
    add a
    xor [hl]
    or [hl]
    ld c, a
    and e
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
    and a
    and h
    or c
    and h
    and $57
    nop
    adc [hl]
    or [hl]
    or [hl]
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
    add b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and e
    xor b
    or d
    or d
    xor b
    xor l
    and [hl]
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
    ld a, a
    and c
    or c
    xor [hl]
    xor d
    and h
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld c, a
    xor [hl]
    or h
    or c
    ld a, a
    xor [hl]
    xor a
    and h
    or c
    and b
    or e
    xor b
    xor [hl]
    xor l
    and $57
    nop
    add c
    or h
    or c
    xor l
    or e
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
    xor [hl]
    xor b
    xor l
    and [hl]
    ld c, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    and b
    or [hl]
    and b
    cp b
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld d, l
    or e
    and a
    xor b
    or d
    db $f4
    ld a, a
    and c
    or c
    and b
    or e
    rst $20
    ld d, a
    nop
    adc b
    xor l
    or e
    or c
    or h
    and e
    and h
    or c
    ld a, a
    and b
    xor e
    and h
    or c
    or e
    rst $20
    ld d, a
    nop
    adc b
    ld c, a
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
    and $4f
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
    ld d, l
    or [hl]
    and a
    and h
    or c
    and h
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    or d
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
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    ld c, a
    and a
    and h
    or c
    and h
    and $57
    nop
    sub e
    and a
    xor b
    or d
    ld c, a
    or [hl]
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    and e
    xor [hl]
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
    ld c, a
    sub e
    and b
    xor d
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    and h
    xor e
    and h
    or l
    and b
    or e
    xor [hl]
    or c
    ld d, l
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
    add c
    adc [hl]
    sub d
    sub d
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
    xor e
    xor [hl]
    or d
    or e
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
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
    and $57
    nop
    sub h
    and a
    db $e3
    xor [hl]
    and a
    db $f4
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    and l
    xor b
    and [hl]
    and a
    or e
    ld c, a
    xor [hl]
    xor a
    and h
    xor l
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld a, a
    and e
    xor [hl]
    xor [hl]
    or c
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
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld c, a
    or d
    and h
    and h
    ld a, a
    add [hl]
    add a
    adc [hl]
    sub d
    sub e
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
    sub e
    and a
    and h
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
    add a
    sub b
    ld a, a
    and a
    and b
    or d
    ld a, a
    ld a, [$a17f]
    and b
    or d
    and h
    xor h
    and h
    xor l
    or e
    ld d, l
    and l
    xor e
    xor [hl]
    xor [hl]
    or c
    or d
    add sp, $7f
    add d
    and b
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, l
    or c
    and h
    and b
    and d
    and a
    ld a, a
    or e
    and a
    and h
    ld a, a
    add c
    adc [hl]
    sub d
    sub d
    and $57
    nop
    sub d
    or e
    xor [hl]
    xor a
    ld a, a
    xor h
    and h
    and e
    and e
    xor e
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    xor l
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
    cp l
    ld d, l
    and b
    and l
    and l
    and b
    xor b
    or c
    or d
    rst $20
    ld d, a
    nop
    adc [hl]
    xor [hl]
    and l
    rst $20
    ld c, a
    sub e
    and b
    xor d
    and h
    xor l
    ld a, a
    and e
    xor [hl]
    or [hl]
    xor l
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
    and $4f
    sub e
    and a
    and h
    ld a, a
    xor h
    and b
    and d
    and a
    xor b
    xor l
    and h
    ld a, a
    or e
    and a
    and h
    ld d, l
    add c
    adc [hl]
    sub d
    sub d
    ld a, a
    or d
    or e
    xor [hl]
    xor e
    and h
    add sp, $7f
    adc b
    or e
    cp l
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
    add sp, $57
    nop
    sub [hl]
    and h
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    or [hl]
    xor [hl]
    or c
    and e
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld c, a
    or h
    xor a
    or d
    or e
    and b
    xor b
    or c
    or d
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
    or [hl]
    and h
    or c
    and h
    ld a, a
    and d
    xor [hl]
    xor h
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
    and $4f
    adc b
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    and $7f
    adc l
    xor [hl]
    rst $20
    ld e, b
    nop
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
    ld a, a
    and [hl]
    xor [hl]
    rst $20
    ld c, a
    add c
    or h
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
    ld a, a
    or e
    and a
    and h
    ld d, l
    adc e
    adc b
    add l
    sub e
    ld a, a
    adc d
    add h
    sbc b
    ld a, a
    or e
    xor [hl]
    ld a, a
    or c
    or h
    xor l
    ld d, l
    or e
    and a
    and h
    ld a, a
    and h
    xor e
    and h
    or l
    and b
    or e
    xor [hl]
    or c
    rst $20
    ld d, a
    nop
    sub d
    xor [hl]
    rst $20
    ld a, a
    adc b
    ld a, a
    xor h
    or h
    or d
    or e
    ld a, a
    or d
    and b
    cp b
    db $f4
    ld a, a
    adc b
    ld c, a
    and b
    xor h
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
    cp b
    xor [hl]
    or h
    ld d, l
    and [hl]
    xor [hl]
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
    add a
    add b
    sub e
    rst $20
    ld c, a
    sub e
    and a
    xor b
    or d
    ld a, a
    and d
    and b
    xor l
    xor l
    xor [hl]
    or e
    ld a, a
    and c
    and h
    rst $20
    ld e, b
    nop
    adc b
    ld a, a
    or d
    and h
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
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
    or [hl]
    xor b
    or e
    and a
    ld a, a
    or h
    or e
    xor h
    xor [hl]
    or d
    or e
    ld a, a
    and d
    and b
    or c
    and h
    add sp, $51
    add b
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
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
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
    or [hl]
    and a
    and b
    or e
    ld a, a
    adc b
    ld d, l
    and a
    xor [hl]
    xor a
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and b
    and d
    and a
    xor b
    and h
    or l
    and h
    add sp, $51
    adc b
    ld a, a
    or d
    and a
    and b
    xor e
    xor e
    ld a, a
    or d
    or e
    and h
    xor a
    ld c, a
    and b
    or d
    xor b
    and e
    and h
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
    ld d, c
    adc b
    ld a, a
    and a
    xor [hl]
    xor a
    and h
    ld a, a
    or [hl]
    and h
    ld a, a
    xor h
    and h
    and h
    or e
    ld c, a
    and b
    and [hl]
    and b
    xor b
    xor l
    add sp, -$18
    add sp, $57
    nop
    adc b
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    ld c, a
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
    ld a, a
    xor a
    xor e
    and b
    xor l
    or d
    ld d, l
    and b
    or e
    ld a, a
    adc h
    sub e
    add sp, -$74
    adc [hl]
    adc [hl]
    adc l
    rst $20
    ld d, a
    nop
    add c
    or h
    or c
    xor l
    and h
    and e
    ld c, a
    and b
    and [hl]
    and b
    xor b
    xor l
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
    and b
    and [hl]
    and b
    xor b
    xor l
    or d
    or e
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
    and $57
    nop
    add a
    xor [hl]
    or [hl]
    ld a, a
    and d
    and b
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor l
    xor [hl]
    or e
    ld c, a
    or d
    and h
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    and c
    and h
    and b
    or h
    or e
    cp b
    ld a, a
    xor [hl]
    and l
    ld d, l
    xor [hl]
    or h
    or c
    ld a, a
    and h
    or l
    xor b
    xor e
    and $57
    nop
    add b
    cp b
    and b
    cp b
    and b
    rst $20
    ld e, b
    nop
    add c
    adc [hl]
    sub d
    sub d
    rst $20
    ld a, a
    adc b
    push hl
    ld a, a
    or d
    xor [hl]
    or c
    or c
    cp b
    ld a, a
    adc b
    ld c, a
    and l
    and b
    xor b
    xor e
    and h
    and e
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
    ld a, a
    and h
    xor e
    and h
    or l
    and b
    or e
    xor [hl]
    or c
    ld c, a
    and e
    xor [hl]
    and h
    or d
    xor l
    cp [hl]
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor d
    and $7f
    sub [hl]
    and a
    xor [hl]
    ld d, l
    and a
    and b
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc e
    adc b
    add l
    sub e
    ld a, a
    adc d
    add h
    sbc b
    and $57
    nop
    adc l
    xor [hl]
    rst $20
    ld e, b
    nop
    adc [hl]
    and a
    ld a, a
    xor l
    xor [hl]
    rst $20
    ld a, a
    adc b
    ld a, a
    and e
    or c
    xor [hl]
    xor a
    xor a
    and h
    and e
    ld c, a
    or e
    and a
    and h
    ld a, a
    adc e
    adc b
    add l
    sub e
    ld a, a
    adc d
    add h
    sbc b
    rst $20
    ld d, a
    nop
    adc b
    or e
    ld a, a
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
    ld c, a
    xor l
    and h
    and h
    and e
    ld a, a
    and b
    ld a, a
    xor d
    and h
    cp b
    add sp, $50
    ld d, b
    nop
    add h
    and h
    and h
    xor d
    rst $20
    ld c, a
    adc l
    xor [hl]
    rst $20
    ld a, a
    sub d
    or e
    xor [hl]
    xor a
    rst $20
    ld a, a
    add a
    and h
    xor e
    xor a
    rst $20
    ld d, c
    adc [hl]
    and a
    db $f4
    ld a, a
    cp b
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
    xor b
    or e
    and a
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
    add sp, $55
    adc b
    ld a, a
    or e
    and a
    xor [hl]
    or h
    and [hl]
    and a
    or e
    add sp, -$18
    add sp, $55
    adc b
    push hl
    ld a, a
    or d
    xor [hl]
    or c
    or c
    cp b
    add sp, $7f
    add a
    and h
    or c
    and h
    db $f4
    ld d, l
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
    sub e
    adc h
    ld sp, hl
    db $fc
    ld a, a
    xor b
    or d
    ld c, a
    sub d
    add h
    adc e
    add l
    add e
    add h
    sub d
    sub e
    sub c
    sub h
    add d
    sub e
    rst $20
    ld d, c
    adc b
    or e
    cp l
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
    and c
    or h
    or e
    ld c, a
    or e
    and a
    and h
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
    ld d, l
    or h
    or d
    and h
    or d
    ld a, a
    xor b
    or e
    ld a, a
    and l
    and b
    xor b
    xor l
    or e
    or d
    rst $20
    ld d, l
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
    add a
    and h
    xor e
    xor a
    rst $20
    ld a, a
    adc b
    push hl
    ld a, a
    and b
    ld a, a
    sub d
    adc b
    adc e
    adc a
    add a
    ld c, a
    and h
    xor h
    xor a
    xor e
    xor [hl]
    cp b
    and h
    and h
    add sp, $57
    nop
    add a
    xor [hl]
    or [hl]
    ld c, a
    and e
    xor b
    and e
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
    adc b
    ld d, l
    or [hl]
    and b
    or d
    ld a, a
    and b
    ld a, a
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub e
    and $58
    nop
    adc b
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor d
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and c
    xor [hl]
    or e
    and a
    ld c, a
    sub d
    adc b
    adc e
    adc a
    add a
    ld a, a
    and b
    xor l
    and e
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
    rst $20
    ld d, a
    nop
    adc b
    or e
    cp l
    ld a, a
    xor [hl]
    and l
    and l
    ld a, a
    xor e
    xor b
    xor h
    xor b
    or e
    or d
    ld c, a
    and a
    and h
    or c
    and h
    rst $20
    ld a, a
    add [hl]
    xor [hl]
    ld a, a
    and a
    xor [hl]
    xor h
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
    and [hl]
    xor [hl]
    xor [hl]
    and e
    add sp, $58
    nop
    add d
    and b
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or d
    xor [hl]
    xor e
    or l
    and h
    ld a, a
    or e
    and a
    and h
    ld c, a
    xor h
    and b
    cp c
    and h
    ld a, a
    xor b
    xor l
    ld a, a
    and a
    and h
    or c
    and h
    and $57
    nop
    adc l
    xor [hl]
    ld a, a
    xor d
    xor b
    and e
    or d
    ld a, a
    and b
    or c
    and h
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
    sub e
    xor [hl]
    or h
    and [hl]
    and a
    rst $20
    ld e, b
    nop
    add e
    xor b
    and b
    xor h
    xor [hl]
    xor l
    and e
    ld a, a
    or d
    and a
    and b
    xor a
    and h
    and e
    ld c, a
    or e
    xor b
    xor e
    and h
    or d
    ld a, a
    and b
    or c
    and h
    ld d, l
    or e
    and h
    xor e
    and h
    xor a
    xor [hl]
    or c
    or e
    ld a, a
    and c
    xor e
    xor [hl]
    and d
    xor d
    or d
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
    xor b
    db $e3
    or e
    and h
    and d
    and a
    ld c, a
    or e
    or c
    and b
    xor l
    or d
    xor a
    xor [hl]
    or c
    or e
    and h
    or c
    or d
    rst $20
    ld d, a
    nop
    add a
    and h
    cp b
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
    and b
    or c
    and h
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
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
    and $57
    nop
    adc b
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and l
    and h
    and e
    rst $20
    ld e, b
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
    or [hl]
    xor b
    xor e
    xor e
    ld c, a
    and c
    and h
    ld a, a
    xor h
    and h
    or c
    and [hl]
    and h
    and e
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
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor d
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
    add sp, $4f
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
    ld a, a
    adc b
    ld a, a
    and e
    xor [hl]
    and $57
    nop
    ld d, d
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    ld a, a
    and b
    xor l
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
    ld d, l
    or d
    and b
    or l
    and h
    and e
    ld a, a
    or h
    or d
    rst $20
    ld d, a
    nop
    sub b
    or h
    xor b
    or e
    ld a, a
    xor h
    and h
    or d
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld c, a
    or h
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
    add b
    ld a, a
    and a
    xor b
    xor l
    or e
    and $7f
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld c, a
    xor [hl]
    xor a
    and h
    xor l
    ld a, a
    and e
    xor [hl]
    xor [hl]
    or c
    or d
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and b
    ld d, l
    add d
    add b
    sub c
    add e
    ld a, a
    adc d
    add h
    sbc b
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    or d
    or h
    xor a
    xor a
    xor [hl]
    or c
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
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    or e
    and a
    and b
    xor l
    ld d, l
    adc b
    ld a, a
    or d
    or h
    xor a
    xor a
    xor [hl]
    or c
    or e
    ld a, a
    sub d
    adc b
    adc e
    adc a
    add a
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    ld c, a
    or c
    and h
    and b
    xor e
    xor e
    cp b
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    xor h
    and h
    rst $20
    ld e, b
    nop
    add a
    or h
    xor h
    xor a
    and a
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
    or d
    and b
    xor b
    and e
    ld c, a
    or e
    and a
    and b
    or e
    ld a, a
    xor b
    and l
    ld a, a
    adc b
    ld a, a
    and a
    and h
    xor e
    xor a
    and h
    and e
    ld d, l
    or e
    and a
    and h
    xor h
    db $f4
    ld a, a
    or e
    and a
    and h
    cp b
    cp e
    ld a, a
    xor e
    and h
    or e
    ld d, l
    xor h
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
    rst $20
    ld d, a
    nop
    sub d
    or d
    or d
    and a
    rst $20
    ld a, a
    add d
    and b
    xor l
    cp [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    or d
    and h
    and h
    ld a, a
    adc b
    push hl
    ld a, a
    and a
    xor b
    and e
    xor b
    xor l
    and [hl]
    and $57
    nop
    add a
    or h
    and a
    and $7f
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
    and $57
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
    or d
    ld c, a
    or e
    and b
    xor d
    and h
    xor l
    ld a, a
    and d
    xor [hl]
    xor h
    xor h
    and b
    xor l
    and e
    ld a, a
    xor [hl]
    and l
    ld d, l
    sub d
    adc b
    adc e
    adc a
    add a
    ld a, a
    add d
    adc [hl]
    add sp, -$19
    ld d, a
    nop
    add b
    or c
    or c
    and [hl]
    and a
    rst $20
    ld e, b
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
    ld c, a
    adc h
    cp b
    ld a, a
    add c
    adc [hl]
    sub d
    sub d
    ld a, a
    and a
    and b
    or d
    ld a, a
    and c
    and h
    and h
    xor l
    ld d, l
    and b
    and l
    or e
    and h
    or c
    ld a, a
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
    rst $20
    ld d, a
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
    ld a, a
    xor h
    cp b
    ld c, a
    xor e
    xor [hl]
    cp b
    and b
    xor e
    ld a, a
    or d
    xor [hl]
    xor e
    and e
    xor b
    and h
    or c
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
    sbc b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and h
    and b
    xor d
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
    ld a, a
    and e
    xor [hl]
    xor [hl]
    or c
    or d
    ld a, a
    and b
    or c
    and h
    ld c, a
    and h
    xor e
    and h
    and d
    or e
    or c
    xor [hl]
    xor l
    xor b
    and d
    and b
    xor e
    xor e
    cp b
    ld d, l
    xor e
    xor [hl]
    and d
    xor d
    and h
    and e
    rst $20
    ld a, a
    add b
    ld a, a
    add d
    add b
    sub c
    add e
    ld d, l
    adc d
    add h
    sbc b
    ld a, a
    xor [hl]
    xor a
    and h
    xor l
    or d
    ld a, a
    or e
    and a
    and h
    xor h
    rst $20
    ld d, a
    nop
    adc b
    xor l
    or e
    or c
    or h
    and e
    and h
    or c
    ld a, a
    or d
    xor a
    xor [hl]
    or e
    or e
    and h
    and e
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    xor [hl]
    ld c, a
    and b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    and $58
    nop
    adc b
    ld a, a
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
    or e
    and a
    and h
    ld c, a
    add c
    adc [hl]
    sub d
    sub d
    ld a, a
    xor [hl]
    xor l
    ld a, a
    rst $30
    rst $30
    add l
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
    xor b
    xor l
    ld a, a
    and b
    xor l
    ld a, a
    or h
    xor a
    or c
    xor [hl]
    and b
    or c
    ld a, a
    xor [hl]
    or l
    and h
    or c
    ld d, l
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    xor b
    xor l
    or e
    or c
    or h
    and e
    and h
    or c
    add sp, $55
    sub e
    and a
    and b
    or e
    cp l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    and $57
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
    sbc b
    xor [hl]
    or h
    db $e4
    and h
    ld a, a
    xor [hl]
    or h
    or c
    ld d, l
    and a
    and h
    or c
    xor [hl]
    rst $20
    ld a, a
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
    ld a, a
    and a
    and h
    and b
    or c
    and e
    ld a, a
    and b
    ld a, a
    xor d
    xor b
    and e
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    or [hl]
    and b
    xor l
    and e
    and h
    or c
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
    add c
    xor [hl]
    xor [hl]
    xor h
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
    or d
    xor h
    and b
    or c
    or e
    ld c, a
    or e
    xor [hl]
    ld a, a
    xor a
    xor b
    and d
    xor d
    ld a, a
    and b
    ld a, a
    and l
    xor b
    and [hl]
    and a
    or e
    ld d, l
    or [hl]
    xor b
    or e
    and a
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
    ld c, a
    add c
    add b
    adc e
    adc e
    ld a, a
    or e
    and h
    and d
    and a
    xor l
    xor [hl]
    xor e
    xor [hl]
    and [hl]
    cp b
    ld d, l
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    and l
    xor e
    xor [hl]
    xor [hl]
    or c
    rst $20
    ld d, a
    nop
    add e
    and b
    xor l
    and [hl]
    rst $20
    ld c, a
    add c
    xor e
    and b
    or d
    or e
    ld a, a
    xor b
    or e
    rst $20
    ld e, b
    nop
    sub [hl]
    and h
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor d
    and h
    and e
    ld a, a
    xor [hl]
    xor l
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
    ld d, h
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
    xor [hl]
    or h
    xor e
    and e
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
    and b
    and b
    or e
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
    ld a, a
    and b
    xor l
    cp b
    ld d, l
    and d
    and a
    xor b
    xor e
    and e
    or c
    and h
    xor l
    ld a, a
    and a
    and h
    or c
    and h
    and $57
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
