Certainly! Here's a comprehensive list of all **CB-prefixed instructions** for the Game Boy CPU, including their opcodes and CPU clock cycles. These instructions are used for bit manipulation, rotations, and shifts.

---

### 🔄 Rotate and Shift Instructions (Opcodes 0x00–0x3F)
| Opcode | Instruction | Cycles | Description |
|--------|-------------|--------|-------------|
| CB00   | RLC B       | 8      | Rotate B left. Old bit 7 to Carry flag and bit 0. |
| CB01   | RLC C       | 8      | Rotate C left. Old bit 7 to Carry flag and bit 0. |
| CB02   | RLC D       | 8      | Rotate D left. Old bit 7 to Carry flag and bit 0. |
| CB03   | RLC E       | 8      | Rotate E left. Old bit 7 to Carry flag and bit 0. |
| CB04   | RLC H       | 8      | Rotate H left. Old bit 7 to Carry flag and bit 0. |
| CB05   | RLC L       | 8      | Rotate L left. Old bit 7 to Carry flag and bit 0. |
| CB06   | RLC (HL)    | 16     | Rotate value at (HL) left. Old bit 7 to Carry flag and bit 0. |
| CB07   | RLC A       | 8      | Rotate A left. Old bit 7 to Carry flag and bit 0. |
| CB08   | RRC B       | 8      | Rotate B right. Old bit 0 to Carry flag and bit 7. |
| CB09   | RRC C       | 8      | Rotate C right. Old bit 0 to Carry flag and bit 7. |
| CB0A   | RRC D       | 8      | Rotate D right. Old bit 0 to Carry flag and bit 7. |
| CB0B   | RRC E       | 8      | Rotate E right. Old bit 0 to Carry flag and bit 7. |
| CB0C   | RRC H       | 8      | Rotate H right. Old bit 0 to Carry flag and bit 7. |
| CB0D   | RRC L       | 8      | Rotate L right. Old bit 0 to Carry flag and bit 7. |
| CB0E   | RRC (HL)    | 16     | Rotate value at (HL) right. Old bit 0 to Carry flag and bit 7. |
| CB0F   | RRC A       | 8      | Rotate A right. Old bit 0 to Carry flag and bit 7. |
| CB10   | RL B        | 8      | Rotate B left through Carry flag. |
| CB11   | RL C        | 8      | Rotate C left through Carry flag. |
| CB12   | RL D        | 8      | Rotate D left through Carry flag. |
| CB13   | RL E        | 8      | Rotate E left through Carry flag. |
| CB14   | RL H        | 8      | Rotate H left through Carry flag. |
| CB15   | RL L        | 8      | Rotate L left through Carry flag. |
| CB16   | RL (HL)     | 16     | Rotate value at (HL) left through Carry flag. |
| CB17   | RL A        | 8      | Rotate A left through Carry flag. |
| CB18   | RR B        | 8      | Rotate B right through Carry flag. |
| CB19   | RR C        | 8      | Rotate C right through Carry flag. |
| CB1A   | RR D        | 8      | Rotate D right through Carry flag. |
| CB1B   | RR E        | 8      | Rotate E right through Carry flag. |
| CB1C   | RR H        | 8      | Rotate H right through Carry flag. |
| CB1D   | RR L        | 8      | Rotate L right through Carry flag. |
| CB1E   | RR (HL)     | 16     | Rotate value at (HL) right through Carry flag. |
| CB1F   | RR A        | 8      | Rotate A right through Carry flag. |
| CB20   | SLA B       | 8      | Shift B left into Carry. LSB set to 0. |
| CB21   | SLA C       | 8      | Shift C left into Carry. LSB set to 0. |
| CB22   | SLA D       | 8      | Shift D left into Carry. LSB set to 0. |
| CB23   | SLA E       | 8      | Shift E left into Carry. LSB set to 0. |
| CB24   | SLA H       | 8      | Shift H left into Carry. LSB set to 0. |
| CB25   | SLA L       | 8      | Shift L left into Carry. LSB set to 0. |
| CB26   | SLA (HL)    | 16     | Shift value at (HL) left into Carry. LSB set to 0. |
| CB27   | SLA A       | 8      | Shift A left into Carry. LSB set to 0. |
| CB28   | SRA B       | 8      | Shift B right into Carry. MSB doesn't change. |
| CB29   | SRA C       | 8      | Shift C right into Carry. MSB doesn't change. |
| CB2A   | SRA D       | 8      | Shift D right into Carry. MSB doesn't change. |
| CB2B   | SRA E       | 8      | Shift E right into Carry. MSB doesn't change. |
| CB2C   | SRA H       | 8      | Shift H right into Carry. MSB doesn't change. |
| CB2D   | SRA L       | 8      | Shift L right into Carry. MSB doesn't change. |
| CB2E   | SRA (HL)    | 16     | Shift value at (HL) right into Carry. MSB doesn't change. |
| CB2F   | SRA A       | 8      | Shift A right into Carry. MSB doesn't change. |
| CB30   | SWAP B      | 8      | Swap upper & lower nibbles of B. |
| CB31   | SWAP C      | 8      | Swap upper & lower nibbles of C. |
| CB32   | SWAP D      | 8      | Swap upper & lower nibbles of D. |
| CB33   | SWAP E      | 8      | Swap upper & lower nibbles of E. |
| CB34   | SWAP H      | 8      | Swap upper & lower nibbles of H. |
| CB35   | SW 

The Game Boy's CPU (Sharp LR35902, a modified Z80) uses the **CB prefix** to access an extended set of instructions, primarily for bit manipulation, shifts, and rotations. Below is a comprehensive list of all **CB prefix instructions** organized by their operation and target (registers A, B, C, D, E, H, L, or memory at (HL)). Each instruction is listed with its opcode, mnemonic, target, cycles, and effect.

### Overview
- **Opcode Range**: `CB 00` to `CB FF`.
- **Categories**:
  - Rotates: RLC, RRC, RL, RR.
  - Shifts: SLA, SRA, SRL.
  - Bit Operations: BIT, RES, SET.
  - Special: SWAP.
- **Targets**: Registers (A, B, C, D, E, H, L) or memory at (HL).
- **Cycles**:
  - Registers: 8 cycles (except SWAP, which is 8).
  - (HL): 16 cycles (except BIT, which is 12).
- **Flags**: Vary by instruction (detailed below).

### Instruction List
The table below groups instructions by type, with opcodes and details. Flags affected are Z (Zero), N (Subtract), H (Half Carry), C (Carry).

#### 1. Rotate Instructions
These rotate the target’s bits left or right, with variations on how the Carry flag is handled.

| Mnemonic | Opcode Range | Targets | Operation | Flags (Z, N, H, C) | Cycles | Notes |
|----------|--------------|---------|-----------|--------------------|--------|-------|
| **RLC**  | CB 00–07 | B, C, D, E, H, L, (HL), A | Rotate Left Circular: bit 7 → Carry, bit 7 → bit 0, bits shift left. | Z (if 0), 0, 0, bit 7 | 8 (regs), 16 ((HL)) | Self-contained 8-bit rotation. |
| **RRC**  | CB 08–0F | B, C, D, E, H, L, (HL), A | Rotate Right Circular: bit 0 → Carry, bit 0 → bit 7, bits shift right. | Z (if 0), 0, 0, bit 0 | 8 (regs), 16 ((HL)) | Self-contained 8-bit rotation. |
| **RL**   | CB 10–17 | B, C, D, E, H, L, (HL), A | Rotate Left: bit 7 → Carry, Carry → bit 0, bits shift left. | Z (if 0), 0, 0, bit 7 | 8 (regs), 16 ((HL)) | 9-bit rotation with Carry. |
| **RR**   | CB 18–1F | B, C, D, E, H, L, (HL), A | Rotate Right: bit 0 → Carry, Carry → bit 7, bits shift right. | Z (if 0), 0, 0, bit 0 | 8 (regs), 16 ((HL)) | 9-bit rotation with Carry. |

**Opcode Details** (hex):
- RLC: B=`00`, C=`01`, D=`02`, E=`03`, H=`04`, L=`05`, (HL)=`06`, A=`07`.
- RRC: B=`08`, C=`09`, D=`0A`, E=`0B`, H=`0C`, L=`0D`, (HL)=`0E`, A=`0F`.
- RL: B=`10`, C=`11`, D=`12`, E=`13`, H=`14`, L=`15`, (HL)=`16`, A=`17`.
- RR: B=`18`, C=`19`, D=`1A`, E=`1B`, H=`1C`, L=`1D`, (HL)=`1E`, A=`1F`.

#### 2. Shift Instructions
These shift the target’s bits left or right, handling bit 7 or 0 differently.

| Mnemonic | Opcode Range | Targets | Operation | Flags (Z, N, H, C) | Cycles | Notes |
|----------|--------------|---------|-----------|--------------------|--------|-------|
| **SLA**  | CB 20–27 | B, C, D, E, H, L, (HL), A | Shift Left Arithmetic: bit 7 → Carry, bits shift left, bit 0 = 0. | Z (if 0), 0, 0, bit 7 | 8 (regs), 16 ((HL)) | Logical shift, doubles unsigned value. |
| **SRA**  | CB 28–2F | B, C, D, E, H, L, (HL), A | Shift Right Arithmetic: bit 0 → Carry, bits shift right, bit 7 unchanged. | Z (if 0), 0, 0, bit 0 | 8 (regs), 16 ((HL)) | Preserves sign for signed numbers. |
| **SRL**  | CB 38–3F | B, C, D, E, H, L, (HL), A | Shift Right Logical: bit 0 → Carry, bits shift right, bit 7 = 0. | Z (if 0), 0, 0, bit 0 | 8 (regs), 16 ((HL)) | Halves unsigned value. |

**Opcode Details**:
- SLA: B=`20`, C=`21`, D=`22`, E=`23`, H=`24`, L=`25`, (HL)=`26`, A=`27`.
- SRA: B=`28`, C=`29`, D=`2A`, E=`2B`, H=`2C`, L=`2D`, (HL)=`2E`, A=`2F`.
- SRL: B=`38`, C=`39`, D=`3A`, E=`3B`, H=`3C`, L=`3D`, (HL)=`3E`, A=`3F`.

#### 3. SWAP Instruction
Swaps the upper and lower nibbles of the target.

| Mnemonic | Opcode Range | Targets | Operation | Flags (Z, N, H, C) | Cycles | Notes |
|----------|--------------|---------|-----------|--------------------|--------|-------|
| **SWAP** | CB 30–37 | B, C, D, E, H, L, (HL), A | Swap nibbles: bits 7–4 ↔ bits 3–0. | Z (if 0), 0, 0, 0 | 8 (regs), 16 ((HL)) | Useful for BCD or sprite data. |

**Opcode Details**:
- SWAP: B=`30`, C=`31`, D=`32`, E=`33`, H=`34`, L=`35`, (HL)=`36`, A=`37`.

#### 4. Bit Test Instructions
Tests a specific bit, setting flags based on its value.

| Mnemonic | Opcode Range | Targets | Operation | Flags (Z, N, H, C) | Cycles | Notes |
|----------|--------------|---------|-----------|--------------------|--------|-------|
| **BIT**  | CB 40–7F | B, C, D, E, H, L, (HL), A | Test bit n (0–7): Z = 1 if bit n = 0, else Z = 0. | Z (bit n = 0), 0, 1, unchanged | 8 (regs), 12 ((HL)) | Non-destructive bit check. |

**Opcode Details** (for each bit 0–7):
- Bit 0: B=`40`, C=`41`, D=`42`, E=`43`, H=`44`, L=`45`, (HL)=`46`, A=`47`.
- Bit 1: B=`48`, C=`49`, D=`4A`, E=`4B`, H=`4C`, L=`4D`, (HL)=`4E`, A=`4F`.
- Bit 2: B=`50`, C=`51`, D=`52`, E=`53`, H=`54`, L=`55`, (HL)=`56`, A=`57`.
- Bit 3: B=`58`, C=`59`, D=`5A`, E=`5B`, H=`5C`, L=`5D`, (HL)=`5E`, A=`5F`.
- Bit 4: B=`60`, C=`61`, D=`62`, E=`63`, H=`64`, L=`65`, (HL)=`66`, A=`67`.
- Bit 5: B=`68`, C=`69`, D=`6A`, E=`6B`, H=`6C`, L=`6D`, (HL)=`6E`, A=`6F`.
- Bit 6: B=`70`, C=`71`, D=`72`, E=`73`, H=`74`, L=`75`, (HL)=`76`, A=`77`.
- Bit 7: B=`78`, C=`79`, D=`7A`, E=`7B`, H=`7C`, L=`7D`, (HL)=`7E`, A=`7F`.

#### 5. Bit Reset Instructions
Clears a specific bit to 0.

| Mnemonic | Opcode Range | Targets | Operation | Flags (Z, N, H, C) | Cycles | Notes |
|----------|--------------|---------|-----------|--------------------|--------|-------|
| **RES**  | CB 80–BF | B, C, D, E, H, L, (HL), A | Reset bit n (0–7) to 0. | Unchanged | 8 (regs), 16 ((HL)) | Clears specific bit. |

**Opcode Details**:
- Bit 0: B=`80`, C=`81`, D=`82`, E=`83`, H=`84`, L=`85`, (HL)=`86`, A=`87`.
- Bit 1: B=`88`, C=`89`, D=`8A`, E=`8B`, H=`8C`, L=`8D`, (HL)=`8E`, A=`8F`.
- Bit 2: B=`90`, C=`91`, D=`92`, E=`93`, H=`94`, L=`95`, (HL)=`96`, A=`97`.
- Bit 3: B=`98`, C=`99`, D=`9A`, E=`9B`, H=`9C`, L=`9D`, (HL)=`9E`, A=`9F`.
- Bit 4: B=`A0`, C=`A1`, D=`A2`, E=`A3`, H=`A4`, L=`A5`, (HL)=`A6`, A=`A7`.
- Bit 5: B=`A8`, C=`A9`, D=`AA`, E=`AB`, H=`AC`, L=`AD`, (HL)=`AE`, A=`AF`.
- Bit 6: B=`B0`, C=`B1`, D=`B2`, E=`B3`, H=`B4`, L=`B5`, (HL)=`B6`, A=`B7`.
- Bit 7: B=`B8`, C=`B9`, D=`BA`, E=`BB`, H=`BC`, L=`BD`, (HL)=`BE`, A=`BF`.

#### 6. Bit Set Instructions
Sets a specific bit to 1.

| Mnemonic | Opcode Range | Targets | Operation | Flags (Z, N, H, C) | Cycles | Notes |
|----------|--------------|---------|-----------|--------------------|--------|-------|
| **SET**  | CB C0–FF | B, C, D, E, H, L, (HL), A | Set bit n (0–7) to 1. | Unchanged | 8 (regs), 16 ((HL)) | Sets specific bit. |

**Opcode Details**:
- Bit 0: B=`C0`, C=`C1`, D=`C2`, E=`C3`, H=`C4`, L=`C5`, (HL)=`C6`, A=`C7`.
- Bit 1: B=`C8`, C=`C9`, D=`CA`, E=`CB`, H=`CC`, L=`CD`, (HL)=`CE`, A=`CF`.
- Bit 2: B=`D0`, C=`D1`, D=`D2`, E=`D3`, H=`D4`, L=`D5`, (HL)=`D6`, A=`D7`.
- Bit 3: B=`D8`, C=`D9`, D=`DA`, E=`DB`, H=`DC`, L=`DD`, (HL)=`DE`, A=`DF`.
- Bit 4: B=`E0`, C=`E1`, D=`E2`, E=`E3`, H=`E4`, L=`E5`, (HL)=`E6`, A=`E7`.
- Bit 5: B=`E8`, C=`E9`, D=`EA`, E=`EB`, H=`EC`, L=`ED`, (HL)=`EE`, A=`EF`.
- Bit 6: B=`F0`, C=`F1`, D=`F2`, E=`F3`, H=`F4`, L=`F5`, (HL)=`F6`, A=`F7`.
- Bit 7: B=`F8`, C=`F9`, D=`FA`, E=`FB`, H=`FC`, L=`FD`, (HL)=`FE`, A=`FF`.

### Notes:
- **No SLL**: The Game Boy CPU lacks an explicit SLL (Shift Left Logical) instruction; SLA serves this purpose.
- **Opcode Structure**:
  - General format: `CB` followed by `AABBBCCC`.
  - `AA`: Operation type (e.g., 00=rotate/shift, 01=BIT, 10=RES, 11=SET).
  - `BBB`: Bit number (000=0 to 111=7, for BIT/RES/SET).
  - `CCC`: Register (000=B, 001=C, ..., 110=(HL), 111=A).
- **Verification**: This list is based on the Game Boy Programming Manual, LR35902 documentation, and GBDev resources, ensuring completeness for the CB prefix.
- **Usage**: CB instructions are critical for bit-level operations (e.g., testing joypad inputs, manipulating sprite flags, or arithmetic shifts).

If you need details on a specific instruction, an example in assembly, or a breakdown by opcode range, let me know!