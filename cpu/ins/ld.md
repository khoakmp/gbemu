# LD instruction

Below is a comprehensive list of all "LD" (Load) instruction types for the Game Boy's CPU (Sharp LR35902), along with their corresponding opcodes, operands, and clock cycles. The Game Boy's instruction set is a subset of the Z80's, with some unique additions and omissions. I'll organize them by category for clarity.

### Key

- **A, B, C, D, E, H, L**: 8-bit registers.
- **BC, DE, HL, SP**: 16-bit register pairs (SP is the stack pointer).
- **(address)**: Memory access at the specified address.
- **n**: 8-bit immediate value.
- **nn**: 16-bit immediate value.
- **Cycles**: Machine cycles (1 cycle = 4 clock ticks on the Game Boy).

---

### 1. 8-bit Register-to-Register Loads

These instructions load an 8-bit value from one register to another.

| Instruction | Opcode | Cycles | Description |
| --- | --- | --- | --- |
| LD A, A | 0x7F | 4 | Load A into A (no effect) |
| LD A, B | 0x78 | 4 | Load B into A |
| LD A, C | 0x79 | 4 | Load C into A |
| LD A, D | 0x7A | 4 | Load D into A |
| LD A, E | 0x7B | 4 | Load E into A |
| LD A, H | 0x7C | 4 | Load H into A |
| LD A, L | 0x7D | 4 | Load L into A |
| LD B, A | 0x47 | 4 | Load A into B |
| LD B, B | 0x40 | 4 | Load B into B (no effect) |
| LD B, C | 0x41 | 4 | Load C into B |
| LD B, D | 0x42 | 4 | Load D into B |
| LD B, E | 0x43 | 4 | Load E into B |
| LD B, H | 0x44 | 4 | Load H into B |
| LD B, L | 0x45 | 4 | Load L into B |
| LD C, A | 0x4F | 4 | Load A into C |
| LD C, B | 0x48 | 4 | Load B into C |
| LD C, C | 0x49 | 4 | Load C into C (no effect) |
| LD C, D | 0x4A | 4 | Load D into C |
| LD C, E | 0x4B | 4 | Load E into C |
| LD C, H | 0x4C | 4 | Load H into C |
| LD C, L | 0x4D | 4 | Load L into C |
| LD D, A | 0x57 | 4 | Load A into D |
| LD D, B | 0x50 | 4 | Load B into D |
| LD D, C | 0x51 | 4 | Load C into D |
| LD D, D | 0x52 | 4 | Load D into D (no effect) |
| LD D, E | 0x53 | 4 | Load E into D |
| LD D, H | 0x54 | 4 | Load H into D |
| LD D, L | 0x55 | 4 | Load L into D |
| LD E, A | 0x5F | 4 | Load A into E |
| LD E, B | 0x58 | 4 | Load B into E |
| LD E, C | 0x59 | 4 | Load C into E |
| LD E, D | 0x5A | 4 | Load D into E |
| LD E, E | 0x5B | 4 | Load E into E (no effect) |
| LD E, H | 0x5C | 4 | Load H into E |
| LD E, L | 0x5D | 4 | Load L into E |
| LD H, A | 0x67 | 4 | Load A into H |
| LD H, B | 0x60 | 4 | Load B into H |
| LD H, C | 0x61 | 4 | Load C into H |
| LD H, D | 0x62 | 4 | Load D into H |
| LD H, E | 0x63 | 4 | Load E into H |
| LD H, H | 0x64 | 4 | Load H into H (no effect) |
| LD H, L | 0x65 | 4 | Load L into H |
| LD L, A | 0x6F | 4 | Load A into L |
| LD L, B | 0x68 | 4 | Load B into L |
| LD L, C | 0x69 | 4 | Load C into L |
| LD L, D | 0x6A | 4 | Load D into L |
| LD L, E | 0x6B | 4 | Load E into L |
| LD L, H | 0x6C | 4 | Load H into L |
| LD L, L | 0x6D | 4 | Load L into L (no effect) |

---

### 2. 8-bit Immediate Loads

Load an 8-bit immediate value (n) into a register.

| Instruction | Opcode | Cycles | Description |
| --- | --- | --- | --- |
| LD A, n | 0x3E | 8 | Load immediate n into A |
| LD B, n | 0x06 | 8 | Load immediate n into B |
| LD C, n | 0x0E | 8 | Load immediate n into C |
| LD D, n | 0x16 | 8 | Load immediate n into D |
| LD E, n | 0x1E | 8 | Load immediate n into E |
| LD H, n | 0x26 | 8 | Load immediate n into H |
| LD L, n | 0x2E | 8 | Load immediate n into L |

---

### 3. 8-bit Memory Loads (via HL)

Load data between a register and the memory address in HL.

| Instruction | Opcode | Cycles | Description |
| --- | --- | --- | --- |
| LD (HL), A | 0x77 | 8 | Load A into memory at HL |
| LD (HL), B | 0x70 | 8 | Load B into memory at HL |
| LD (HL), C | 0x71 | 8 | Load C into memory at HL |
| LD (HL), D | 0x72 | 8 | Load D into memory at HL |
| LD (HL), E | 0x73 | 8 | Load E into memory at HL |
| LD (HL), H | 0x74 | 8 | Load H into memory at HL |
| LD (HL), L | 0x75 | 8 | Load L into memory at HL |
| LD (HL), n | 0x36 | 12 | Load immediate n into memory at HL |
| LD A, (HL) | 0x7E | 8 | Load memory at HL into A |
| LD B, (HL) | 0x46 | 8 | Load memory at HL into B |
| LD C, (HL) | 0x4E | 8 | Load memory at HL into C |
| LD D, (HL) | 0x56 | 8 | Load memory at HL into D |
| LD E, (HL) | 0x5E | 8 | Load memory at HL into E |
| LD H, (HL) | 0x66 | 8 | Load memory at HL into H |
| LD L, (HL) | 0x6E | 8 | Load memory at HL into L |

---

### 4. 8-bit Memory Loads (via BC, DE)

Load data between A and memory addresses in BC or DE.

| Instruction | Opcode | Cycles | Description |
| --- | --- | --- | --- |
| LD (BC), A | 0x02 | 8 | Load A into memory at BC |
| LD A, (BC) | 0x0A | 8 | Load memory at BC into A |
| LD (DE), A | 0x12 | 8 | Load A into memory at DE |
| LD A, (DE) | 0x1A | 8 | Load memory at DE into A |

---

### 5. 8-bit Direct Memory Loads

Load data between A and a direct 16-bit memory address (nn).

| Instruction | Opcode | Cycles | Description |
| --- | --- | --- | --- |
| LD (nn), A | 0xEA | 16 | Load A into memory at nn |
| LD A, (nn) | 0xFA | 16 | Load memory at nn into A |

---

### 6. 8-bit I/O and Special Loads

Special load instructions for I/O ports or autoincrement/decrement.

| Instruction | Opcode | Cycles | Description |
| --- | --- | --- | --- |
| LD (n), A | 0xE0 | 12 | Load A into $FF00 + n (I/O port) |
| LD A, (n) | 0xF0 | 12 | Load $FF00 + n into A (I/O port) |
| LD ($FF00+C), A | 0xE2 | 8 | Load A into $FF00 + C (I/O port) |
| LD A, ($FF00+C) | 0xF2 | 8 | Load $FF00 + C into A (I/O port) |
| LD (HL+), A | 0x22 | 8 | Load A into HL, then increment HL |
| LD A, (HL+) | 0x2A | 8 | Load memory at HL into A, increment HL |
| LD (HL-), A | 0x32 | 8 | Load A into HL, then decrement HL |
| LD A, (HL-) | 0x3A | 8 | Load memory at HL into A, decrement HL |

---

### 7. 16-bit Immediate Loads

Load a 16-bit immediate value (nn) into a register pair.

| Instruction | Opcode | Cycles | Description |
| --- | --- | --- | --- |
| LD BC, nn | 0x01 | 12 | Load nn into BC |
| LD DE, nn | 0x11 | 12 | Load nn into DE |
| LD HL, nn | 0x21 | 12 | Load nn into HL |
| LD SP, nn | 0x31 | 12 | Load nn into SP |

---

### 8. 16-bit Register Loads

Load data between 16-bit registers or memory.

| Instruction | Opcode | Cycles | Description |
| --- | --- | --- | --- |
| LD SP, HL | 0xF9 | 8 | Load HL into SP |
| LD HL, SP+n | 0xF8 | 12 | Load SP + n (signed) into HL |
| LD (nn), SP | 0x08 | 20 | Load SP into memory at nn |

---

### Notes

- **Flags**: LD instructions do not affect the CPU flags (Z, N, H, C), except for `LD HL, SP+n`, which sets H and C flags based on the addition.
- **Missing Instructions**: The Game Boy lacks some Z80 LD variants (e.g., block loads like LDIR).
- **Unique Features**: Instructions like `LD (HL+), A` and `LD A, (HL-)` are handy for loops or pointer operations in Game Boy programming.

This covers every LD instruction in the Game Boy’s instruction set! If you need help with a specific one, examples, or how they’re used in practice, just let me know.