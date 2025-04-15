## ADD instruction

Below is a comprehensive list of all `ADD` instructions available in the Game Boy's CPU (Sharp LR35902), including their opcodes, operands, cycle counts, and effects. The Game Boy’s instruction set is a modified subset of the Z80’s, and the `ADD` instructions come in a few flavors: 8-bit addition to the accumulator (A), 16-bit addition to HL, and a special case for the stack pointer (SP).

---

### 1. **8-Bit Addition to A (ADD A, source)**

These instructions add an 8-bit value (from a register, immediate value, or memory via HL) to the accumulator (A). Flags affected: Z, N (reset to 0), H, C.

| Instruction | Opcode | Bytes | Cycles | Description |
| --- | --- | --- | --- | --- |
| `ADD A, A` | 0x87 | 1 | 1 | Add A to A (doubles A) |
| `ADD A, B` | 0x80 | 1 | 1 | Add B to A |
| `ADD A, C` | 0x81 | 1 | 1 | Add C to A |
| `ADD A, D` | 0x82 | 1 | 1 | Add D to A |
| `ADD A, E` | 0x83 | 1 | 1 | Add E to A |
| `ADD A, H` | 0x84 | 1 | 1 | Add H to A |
| `ADD A, L` | 0x85 | 1 | 1 | Add L to A |
| `ADD A, (HL)` | 0x86 | 1 | 2 | Add value at address HL to A |
| `ADD A, n` | 0xC6 | 2 | 2 | Add 8-bit immediate n to A |
- **Notes:**
    - `n` is an unsigned 8-bit value (0–255).
    - `(HL)` refers to the byte at the memory address stored in the HL register pair.
    - Cycles: 1 cycle = 4 clock ticks; 2 cycles = 8 clock ticks.

---

### 2. **16-Bit Addition to HL (ADD HL, source)**

These instructions add a 16-bit register pair to the HL register pair. Flags affected: N (reset to 0), H, C (Z is unchanged).

| Instruction | Opcode | Bytes | Cycles | Description |
| --- | --- | --- | --- | --- |
| `ADD HL, BC` | 0x09 | 1 | 2 | Add BC to HL |
| `ADD HL, DE` | 0x19 | 1 | 2 | Add DE to HL |
| `ADD HL, HL` | 0x29 | 1 | 2 | Add HL to HL (doubles HL) |
| `ADD HL, SP` | 0x39 | 1 | 2 | Add SP to HL |
- **Notes:**
    - These are 16-bit operations, so the result stays in HL.
    - Useful for pointer arithmetic or large counters.

---

### 3. **Addition to Stack Pointer (ADD SP, n)**

This instruction adds a signed 8-bit immediate value to the stack pointer (SP). Flags affected: Z (reset to 0), N (reset to 0), H, C.

| Instruction | Opcode | Bytes | Cycles | Description |
| --- | --- | --- | --- | --- |
| `ADD SP, n` | 0xE8 | 2 | 4 | Add signed 8-bit n to SP |
- **Notes:**
    - `n` is a signed 8-bit value (-128 to +127), unlike `ADD A, n`.
    - Used for adjusting the stack pointer (e.g., allocating/deallocating stack space).
    - 4 cycles = 16 clock ticks.

---

### Related Instructions: Addition with Carry (ADC)

While not strictly `ADD`, the `ADC` (Add with Carry) instructions are closely related and worth mentioning. They add a source value plus the Carry flag to A. Flags affected: Z, N (reset to 0), H, C.

| Instruction | Opcode | Bytes | Cycles | Description |
| --- | --- | --- | --- | --- |
| `ADC A, A` | 0x8F | 1 | 1 | Add A + Carry to A |
| `ADC A, B` | 0x88 | 1 | 1 | Add B + Carry to A |
| `ADC A, C` | 0x89 | 1 | 1 | Add C + Carry to A |
| `ADC A, D` | 0x8A | 1 | 1 | Add D + Carry to A |
| `ADC A, E` | 0x8B | 1 | 1 | Add E + Carry to A |
| `ADC A, H` | 0x8C | 1 | 1 | Add H + Carry to A |
| `ADC A, L` | 0x8D | 1 | 1 | Add L + Carry to A |
| `ADC A, (HL)` | 0x8E | 1 | 2 | Add value at HL + Carry to A |
| `ADC A, n` | 0xCE | 2 | 2 | Add 8-bit immediate n + Carry to A |
- **Notes:**
    - Useful for multi-byte addition where carry propagates across bytes.

---

### Summary

- **Total ADD Instructions:** 14 (9 for `ADD A`, 4 for `ADD HL`, 1 for `ADD SP`).
- **No Direct Memory Addressing:** No `ADD A, (nn)`; use HL as a pointer instead.
- **Signed vs. Unsigned:** `ADD A, n` uses unsigned `n`; `ADD SP, n` uses signed `n`.
- **No Other Targets:** Only A, HL, or SP can be the destination for `ADD`.

This covers all `ADD` instructions in the Game Boy’s instruction set. If you need details on how to use any of these in a program or have a specific scenario in mind, let me know!