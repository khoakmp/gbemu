Below is a comprehensive list of all Game Boy (Z80-based) instructions **without the CB prefix**, including their corresponding opcodes, instruction lengths (in bytes), and cycles. The Game Boy CPU is based on the Z80, but it has some differences, such as no support for certain Z80 instructions and slightly modified timings. The CB prefix is used for extended bit manipulation instructions, so this list excludes those and focuses on the main instruction set.

The table is organized by opcode (in hexadecimal), with details on the instruction, length (in bytes), and cycles (machine cycles, where 1 cycle = 4 clock ticks on the Game Boy's 4.194304 MHz CPU). Note that some instructions have conditional cycles (e.g., branches taken or not taken), which are indicated where applicable.

### Game Boy Instruction Set (No CB Prefix)

| Opcode | Instruction          | Length (Bytes) | Cycles        | Description                                      |
|--------|----------------------|----------------|---------------|--------------------------------------------------|
| 00     | NOP                  | 1              | 4             | No operation                                     |
| 01     | LD BC, d16           | 3              | 12            | Load 16-bit immediate into BC                    |
| 02     | LD (BC), A           | 1              | 8             | Load A into memory at address BC                 |
| 03     | INC BC               | 1              | 8             | Increment BC                                     |
| 04     | INC B                | 1              | 4             | Increment B                                      |
| 05     | DEC B                | 1              | 4             | Decrement B                                      |
| 06     | LD B, d8             | 2              | 8             | Load 8-bit immediate into B                      |
| 07     | RLCA                 | 1              | 4             | Rotate A left, carry to bit 0 and carry flag     |
| 08     | LD (a16), SP         | 3              | 20            | Load SP into memory at 16-bit immediate address  |
| 09     | ADD HL, BC           | 1              | 8             | Add BC to HL                                     |
| 0A     | LD A, (BC)           | 1              | 8             | Load memory at address BC into A                 |
| 0B     | DEC BC               | 1              | 8             | Decrement BC                                     |
| 0C     | INC C                | 1              | 4             | Increment C                                      |
| 0D     | DEC C                | 1              | 4             | Decrement C                                      |
| 0E     | LD C, d8             | 2              | 8             | Load 8-bit immediate into C                      |
| 0F     | RRCA                 | 1              | 4             | Rotate A right, carry to bit 7 and carry flag    |
| 10     | STOP                 | 1              | 4             | Halt CPU and LCD until button press              |
| 11     | LD DE, d16           | 3              | 12            | Load 16-bit immediate into DE                    |
| 12     | LD (DE), A           | 1              | 8             | Load A into memory at address DE                 |
| 13     | INC DE               | 1              | 8             | Increment DE                                     |
| 14     | INC D                | 1              | 4             | Increment D                                      |
| 15     | DEC D                | 1              | 4             | Decrement D                                      |
| 16     | LD D, d8             | 2              | 8             | Load 8-bit immediate into D                      |
| 17     | RLA                  | 1              | 4             | Rotate A left through carry                      |
| 18     | JR r8                | 2              | 12            | Jump to PC + signed 8-bit immediate              |
| 19     | ADD HL, DE           | 1              | 8             | Add DE to HL                                     |
| 1A     | LD A, (DE)           | 1              | 8             | Load memory at address DE into A                 |
| 1B     | DEC DE               | 1              | 8             | Decrement DE                                     |
| 1C     | INC E                | 1              | 4             | Increment E                                      |
| 1D     | DEC E                | 1              | 4             | Decrement E                                      |
| 1E     | LD E, d8             | 2              | 8             | Load 8-bit immediate into E                      |
| 1F     | RRA                  | 1              | 4             | Rotate A right through carry                     |
| 20     | JR NZ, r8            | 2              | 12/8          | Jump to PC + signed 8-bit immediate if Z=0       |
| 21     | LD HL, d16           | 3              | 12            | Load 16-bit immediate into HL                    |
| 22     | LD (HL+), A          | 1              | 8             | Load A into memory at HL, increment HL           |
| 23     | INC HL               | 1              | 8             | Increment HL                                     |
| 24     | INC H                | 1              | 4             | Increment H                                      |
| 25     | DEC H                | 1              | 4             | Decrement H                                      |
| 26     | LD H, d8             | 2              | 8             | Load 8-bit immediate into H                      |
| 27     | DAA                  | 1              | 4             | Decimal adjust A after BCD operation             |
| 28     | JR Z, r8             | 2              | 12/8          | Jump to PC + signed 8-bit immediate if Z=1       |
| 29     | ADD HL, HL           | 1              | 8             | Add HL to HL                                     |
| 2A     | LD A, (HL+)          | 1              | 8             | Load memory at HL into A, increment HL           |
| 2B     | DEC HL               | 1              | 8             | Decrement HL                                     |
| 2C     | INC L                | 1              | 4             | Increment L                                      |
| 2D     | DEC L                | 1              | 4             | Decrement L                                      |
| 2E     | LD L, d8             | 2              | 8             | Load 8-bit immediate into L                      |
| 2F     | CPL                  | 1              | 4             | Complement A (flip bits)                         |
| 30     | JR NC, r8            | 2              | 12/8          | Jump to PC + signed 8-bit immediate if C=0       |
| 31     | LD SP, d16           | 3              | 12            | Load 16-bit immediate into SP                    |
| 32     | LD (HL-), A          | 1              | 8             | Load A into memory at HL, decrement HL           |
| 33     | INC SP               | 1              | 8             | Increment SP                                     |
| 34     | INC (HL)             | 1              | 12            | Increment memory at HL                           |
| 35     | DEC (HL)             | 1              | 12            | Decrement memory at HL                           |
| 36     | LD (HL), d8          | 2              | 12            | Load 8-bit immediate into memory at HL           |
| 37     | SCF                  | 1              | 4             | Set carry flag                                   |
| 38     | JR C, r8             | 2              | 12/8          | Jump to PC + signed 8-bit immediate if C=1       |
| 39     | ADD HL, SP           | 1              | 8             | Add SP to HL                                     |
| 3A     | LD A, (HL-)          | 1              | 8             | Load memory at HL into A, decrement HL           |
| 3B     | DEC SP               | 1              | 8             | Decrement SP                                     |
| 3C     | INC A                | 1              | 4             | Increment A                                      |
| 3D     | DEC A                | 1              | 4             | Decrement A                                      |
| 3E     | LD A, d8             | 2              | 8             | Load 8-bit immediate into A                      |
| 3F     | CCF                  | 1              | 4             | Complement carry flag                            |
| 40     | LD B, B              | 1              | 4             | Load B into B (no-op)                            |
| 41     | LD B, C              | 1              | 4             | Load C into B                                    |
| 42     | LD B, D              | 1              | 4             | Load D into B                                    |
| 43     | LD B, E              | 1              | 4             | Load E into B                                    |
| 44     | LD B, H              | 1              | 4             | Load H into B                                    |
| 45     | LD B, L              | 1              | 4             | Load L into B                                    |
| 46     | LD B, (HL)           | 1              | 8             | Load memory at HL into B                         |
| 47     | LD B, A              | 1              | 4             | Load A into B                                    |
| 48     | LD C, B              | 1              | 4             | Load B into C                                    |
| 49     | LD C, C              | 1              | 4             | Load C into C (no-op)                            |
| 4A     | LD C, D              | 1              | 4             | Load D into C                                    |
| 4B     | LD C, E              | 1              | 4             | Load E into C                                    |
| 4C     | LD C, H              | 1              | 4             | Load H into C                                    |
| 4D     | LD C, L              | 1              | 4             | Load L into C                                    |
| 4E     | LD C, (HL)           | 1              | 8             | Load memory at HL into C                         |
| 4F     | LD C, A              | 1              | 4             | Load A into C                                    |
| 50     | LD D, B              | 1              | 4             | Load B into D                                    |
| 51     | LD D, C              | 1              | 4             | Load C into D                                    |
| 52     | LD D, D              | 1              | 4             | Load D into D (no-op)                            |
| 53     | LD D, E              | 1              | 4             | Load E into D                                    |
| 54     | LD D, H              | 1              | 4             | Load H into D                                    |
| 55     | LD D, L              | 1              | 4             | Load L into D                                    |
| 56     | LD D, (HL)           | 1              | 8             | Load memory at HL into D                         |
| 57     | LD D, A              | 1              | 4             | Load A into D                                    |
| 58     | LD E, B              | 1              | 4             | Load B into E                                    |
| 59     | LD E, C              | 1              | 4             | Load C into E                                    |
| 5A     | LD E, D              | 1              | 4             | Load D into E                                    |
| 5B     | LD E, E              | 1              | 4             | Load E into E (no-op)                            |
| 5C     | LD E, H              | 1              | 4             | Load H into E                                    |
| 5D     | LD E, L              | 1              | 4             | Load L into E                                    |
| 5E     | LD E, (HL)           | 1              | 8             | Load memory at HL into E                         |
| 5F     | LD E, A              | 1              | 4             | Load A into E                                    |
| 60     | LD H, B              | 1              | 4             | Load B into H                                    |
| 61     | LD H, C              | 1              | 4             | Load C into H                                    |
| 62     | LD H, D              | 1              | 4             | Load D into H                                    |
| 63     | LD H, E              | 1              | 4             | Load E into H                                    |
| 64     | LD H, H              | 1              | 4             | Load H into H (no-op)                            |
| 65     | LD H, L              | 1              | 4             | Load L into H                                    |
| 66     | LD H, (HL)           | 1              | 8             | Load memory at HL into H                         |
| 67     | LD H, A              | 1              | 4             | Load A into H                                    |
| 68     | LD L, B              | 1              | 4             | Load B into L                                    |
| 69     | LD L, C              | 1              | 4             | Load C into L                                    |
| 6A     | LD L, D              | 1              | 4             | Load D into L                                    |
| 6B     | LD L, E              | 1              | 4             | Load E into L                                    |
| 6C     | LD L, H              | 1              | 4             | Load H into L                                    |
| 6D     | LD L, L              | 1              | 4             | Load L into L (no-op)                            |
| 6E     | LD L, (HL)           | 1              | 8             | Load memory at HL into L                         |
| 6F     | LD L, A              | 1              | 4             | Load A into L                                    |
| 70     | LD (HL), B           | 1              | 8             | Load B into memory at HL                         |
| 71     | LD (HL), C           | 1              | 8             | Load C into memory at HL                         |
| 72     | LD (HL), D           | 1              | 8             | Load D into memory at HL                         |
| 73     | LD (HL), E           | 1              | 8             | Load E into memory at HL                         |
| 74     | LD (HL), H           | 1              | 8             | Load H into memory at HL                         |
| 75     | LD (HL), L           | 1              | 8             | Load L into memory at HL                         |
| 76     | HALT                 | 1              | 4             | Halt CPU until interrupt                         |
| 77     | LD (HL), A           | 1              | 8             | Load A into memory at HL                         |
| 78     | LD A, B              | 1              | 4             | Load B into A                                    |
| 79     | LD A, C              | 1              | 4             | Load C into A                                    |
| 7A     | LD A, D              | 1              | 4             | Load D into A                                    |
| 7B     | LD A, E              | 1              | 4             | Load E into A                                    |
| 7C     | LD A, H              | 1              | 4             | Load H into A                                    |
| 7D     | LD A, L              | 1              | 4             | Load L into A                                    |
| 7E     | LD A, (HL)           | 1              | 8             | Load memory at HL into A                         |
| 7F     | LD A, A              | 1              | 4             | Load A into A (no-op)                            |
| 80     | ADD A, B             | 1              | 4             | Add B to A                                       |
| 81     | ADD A, C             | 1              | 4             | Add C to A                                       |
| 82     | ADD A, D             | 1              | 4             | Add D to A                                       |
| 83     | ADD A, E             | 1              | 4             | Add E to A                                       |
| 84     | ADD A, H             | 1              | 4             | Add H to A                                       |
| 85     | ADD A, L             | 1              | 4             | Add L to A                                       |
| 86     | ADD A, (HL)          | 1              | 8             | Add memory at HL to A                            |
| 87     | ADD A, A             | 1              | 4             | Add A to A                                       |
| 88     | ADC A, B             | 1              | 4             | Add B + carry to A                               |
| 89     | ADC A, C             | 1              | 4             | Add C + carry to A                               |
| 8A     | ADC A, D             | 1              | 4             | Add D + carry to A                               |
| 8B     | ADC A, E             | 1              | 4             | Add E + carry to A                               |
| 8C     | ADC A, H             | 1              | 4             | Add H + carry to A                               |
| 8D     | ADC A, L             | 1              | 4             | Add L + carry to A                               |
| 8E     | ADC A, (HL)          | 1              | 8             | Add memory at HL + carry to A                    |
| 8F     | ADC A, A             | 1              | 4             | Add A + carry to A                               |
| 90     | SUB B                | 1              | 4             | Subtract B from A                                |
| 91     | SUB C                | 1              | 4             | Subtract C from A                                |
| 92     | SUB D                | 1              | 4             | Subtract D from A                                |
| 93     | SUB E                | 1              | 4             | Subtract E from A                                |
| 94     | SUB H                | 1              | 4             | Subtract H from A                                |
| 95     | SUB L                | 1              | 4             | Subtract L from A                                |
| 96     | SUB (HL)             | 1              | 8             | Subtract memory at HL from A                     |
| 97     | SUB A                | 1              | 4             | Subtract A from A (A = 0)                        |
| 98     | SBC A, B             | 1              | 4             | Subtract B + carry from A                        |
| 99     | SBC A, C             | 1              | 4             | Subtract C + carry from A                        |
| 9A     | SBC A, D             | 1              | 4             | Subtract D + carry from A                        |
| 9B     | SBC A, E             | 1              | 4             | Subtract E + carry from A                        |
| 9C     | SBC A, H             | 1              | 4             | Subtract H + carry from A                        |
| 9D     | SBC A, L             | 1              | 4             | Subtract L + carry from A                        |
| 9E     | SBC A, (HL)          | 1              | 8             | Subtract memory at HL + carry from A             |
| 9F     | SBC A, A             | 1              | 4             | Subtract A + carry from A                        |
| A0     | AND B                | 1              | 4             | Logical AND B with A                             |
| A1     | AND C                | 1              | 4             | Logical AND C with A                             |
| A2     | AND D                | 1              | 4             | Logical AND D with A                             |
| A3     | AND E                | 1              | 4             | Logical AND E with A                             |
| A4     | AND H                | 1              | 4             | Logical AND H with A                             |
| A5     | AND L                | 1              | 4             | Logical AND L with A                             |
| A6     | AND (HL)             | 1              | 8             | Logical AND memory at HL with A                  |
| A7     | AND A                | 1              | 4             | Logical AND A with A (no-op)                     |
| A8     | XOR B                | 1              | 4             | Logical XOR B with A                             |
| A9     | XOR C                | 1              | 4             | Logical XOR C with A                             |
| AA     | XOR D                | 1              | 4             | Logical XOR D with A                             |
| AB     | XOR E                | 1              | 4             | Logical XOR E with A                             |
| AC     | XOR H                | 1              | 4             | Logical XOR H with A                             |
| AD     | XOR L                | 1              | 4             | Logical XOR L with A                             |
| AE     | XOR (HL)             | 1              | 8             | Logical XOR memory at HL with A                  |
| AF     | XOR A                | 1              | 4             | Logical XOR A with A (A = 0)                     |
| B0     | OR B                 | 1              | 4             | Logical OR B with A                              |
| B1     | OR C                 | 1              | 4             | Logical OR C with A                              |
| B2     | OR D                 | 1              | 4             | Logical OR D with A                              |
| B3     | OR E                 | 1              | 4             | Logical OR E with A                              |
| B4     | OR H                 | 1              | 4             | Logical OR H with A                              |
| B5     | OR L                 | 1              | 4             | Logical OR L with A                              |
| B6     | OR (HL)              | 1              | 8             | Logical OR memory at HL with A                   |
| B7     | OR A                 | 1              | 4             | Logical OR A with A (no-op)                      |
| B8     | CP B                 | 1              | 4             | Compare B with A (subtract without storing)      |
| B9     | CP C                 | 1              | 4             | Compare C with A (subtract without storing)      |
| BA     | CP D                 | 1              | 4             | Compare D with A (subtract without storing)      |
| BB     | CP E                 | 1              | 4             | Compare E with A (subtract without storing)      |
| BC     | CP H                 | 1              | 4             | Compare H with A (subtract without storing)      |
| BD     | CP L                 | 1              | 4             | Compare L with A (subtract without storing)      |
| BE     | CP (HL)              | 1              | 8             | Compare memory at HL with A                      |
| BF     | CP A                 | 1              | 4             | Compare A with A (Z=1)                           |
| C0     | RET NZ               | 1              | 20/8          | Return if Z=0                                    |
| C1     | POP BC               | 1              | 12            | Pop stack into BC                                |
| C2     | JP NZ, a16           | 3              | 16/12         | Jump to 16-bit address if Z=0                    |
| C3     | JP a16               | 3              | 16            | Jump to 16-bit address                           |
| C4     | CALL NZ, a16         | 3              | 24/12         | Call 16-bit address if Z=0                       |
| C5     | PUSH BC              | 1              | 16            | Push BC onto stack                               |
| C6     | ADD A, d8            | 2              | 8             | Add 8-bit immediate to A                         |
| C7     | RST 00H              | 1              | 16            | Call address 0x0000                              |
| C8     | RET Z                | 1              | 20/8          | Return if Z=1                                    |
| C9     | RET                  | 1              | 16            | Return unconditionally                           |
| CA     | JP Z, a16            | 3              | 16/12         | Jump to 16-bit address if Z=1                    |
| CC     | CALL Z, a16          | 3              | 24/12         | Call 16-bit address if Z=1                       |
| CD     | CALL a16             | 3              | 24            | Call 16-bit address                              |
| CE     | ADC A, d8            | 2              | 8             | Add 8-bit immediate + carry to A                 |
| CF     | RST 08H              | 1              | 16            | Call address 0x0008                              |
| D0     | RET NC               | 1              | 20/8          | Return if C=0                                    |
| D1     | POP DE               | 1              | 12            | Pop stack into DE                                |
| D2     | JP NC, a16           | 3              | 16/12         | Jump to 16-bit address if C=0                    |
| D4     | CALL NC, a16         | 3              | 24/12         | Call 16-bit address if C=0                       |
| D5     | PUSH DE              | 1              | 16            | Push DE onto stack                               |
| D6     | SUB d8               | 2              | 8             | Subtract 8-bit immediate from A                  |
| D7     | RST 10H              | 1              | 16            | Call address 0x0010                              |
| D8     | RET C                | 1              | 20/8          | Return if C=1                                    |
| D9  | DI                   | 1              | 4             | Disable interrupts                               |
| DA     | JP C, a16            | 3              | 16/12         | Jump to 16-bit address if C=1                    |
| DC     | CALL C, a16          | 3              | 24/12         | Call 16-bit address if C=1                       |
| DE     | SBC A, d8            | 2              | 8             | Subtract 8-bit immediate + carry from A          |
| DF     | RST 18H              | 1              | 16            | Call address 0x0018                              |
| E0     | LD (FF00+a8), A      | 2              | 12            | Load A into memory at 0xFF00 + 8-bit immediate   |
| E1     | POP HL               | 1              | 12            | Pop stack into HL                                |
| E2     | LD (FF00+C), A       | 1              | 8             | Load A into memory at 0xFF00 + C                 |
| E5     | PUSH HL              | 1              | 16            | Push HL onto stack                               |
| E6     | AND d8               | 2              | 8             | Logical AND 8-bit immediate with A               |
| E7     | RST 20H              | 1              | 16            | Call address 0x0020                              |
| E8     | ADD SP, r8           | 2              | 16            | Add signed 8-bit immediate to SP                 |
| E9     | JP HL                | 1              | 4             | Jump to address in HL                            |
| EA     | LD (a16), A          | 3              | 16            | Load A into memory at 16-bit immediate address   |
| EE     | XOR d8               | 2              | 8             | Logical XOR 8-bit immediate with A               |
| EF     | RST 28H              | 1              | 16            | Call address 0x0028                              |
| F0     | LD A, (FF00+a8)      | 2              | 12            | Load memory at 0xFF00 + 8-bit immediate into A   |
| F1     | POP AF               | 1              | 12            | Pop stack into AF                                |
| F2     | LD A, (FF00+C)       | 1              | 8             | Load memory at 0xFF00 + C into A                 |
| F3     | DI                   | 1              | 4             | Disable interrupts                               |
| F5     | Push AF              | 1              | 16            | Push AF onto stack                               |
| F6     | OR d8                | 2              | 8             | Logical OR 8-bit immediate with A                |
| F7     | RST 30H              | 1              | 16            | Call address 0x0030                              |
| F8     | LD HL, SP+r8         | 2              | 12            | Load SP + signed 8-bit immediate into HL         |
| F9     | LD SP, HL            | 1              | 8             | Load HL into SP                                  |
| FA     | LD A, (a16)          | 3              | 16            | Load memory at 16-bit immediate address into A   |
| FB     | EI                   | 1              | 4             | Enable interrupts                                |
| FE     | CP d8                | 2              | 8             | Compare 8-bit immediate with A                   |
| FF     | RST 38H              | 1              | 16            | Call address 0x0038                              |

### Notes:
- **Opcode**: The hexadecimal code for the instruction.
- **Length**: Number of bytes the instruction occupies (including operands).
- **Cycles**: Number of machine cycles (1 cycle = 4 clock ticks). For conditional instructions (e.g., JR, CALL, RET), two values are given: cycles if the condition is met (taken) / cycles if not met (not taken).
- **d8**: 8-bit immediate value.
- **d16**: 16-bit immediate value.
- **r8**: Signed 8-bit immediate value (for relative jumps or SP offsets).
- **a8**: 8-bit address offset (used with 0xFF00 for I/O operations).
- **a16**: 16-bit address.
- **(HL)**: Memory location pointed to by HL.
- **(HL+)**: Memory location pointed to by HL, then increment HL.
- **(HL-)**: Memory location pointed to by HL, then decrement HL.
- **(FF00+a8)**: Memory location at 0xFF00 + 8-bit immediate.
- **(FF00+C)**: Memory location at 0xFF00 + C.
- **RST**: Calls a fixed address (0x0000, 0x0008, ..., 0x0038).
- **STOP**: Unique to Game Boy; halts CPU and LCD until a button is pressed.
- Instructions like `LD B, B` or `LD A, A` are no-ops but still take cycles.

### Additional Information:
- The Game Boy CPU lacks some Z80 instructions (e.g., no IX/IY registers, no ED/DD/FD prefixes except CB).
- The **CB prefix** instructions (bit operations) are excluded as per the request.
- Cycle counts assume no interrupts or DMA transfers are occurring.
- The **HALT** and **STOP** instructions have special behavior on the Game Boy, particularly with interrupts.

If you need further details, such as the CB-prefixed instructions, flag effects, or specific use cases, let me know!