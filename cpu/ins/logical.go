package ins

import (
	"github.com/khoakmp/gbemu/cpu/args"
	"github.com/khoakmp/gbemu/mmu"
	"github.com/khoakmp/gbemu/rs"
)

const (
	AND uint8 = 0
	OR  uint8 = 1
	XOR uint8 = 2
	CPL uint8 = 3 // flip bit

	SCF uint8 = 4
	CCF uint8 = 5
)

type LogicalInstruction struct {
	InstructionBase
	bitwise uint8
	R       args.Read8Bit
}

func runAND(regSet *rs.RegisterSet, val uint8) {
	newA := regSet.A.Read8Bit() & val
	regSet.A.Write8Bit(newA)
	regSet.F.SetFlag(rs.FlagN, false)
	regSet.F.SetFlag(rs.FlagH, true)
	regSet.F.SetFlag(rs.FlagC, false)
	regSet.F.SetFlag(rs.FlagZ, newA == 0)
}

func runXOR(regSet *rs.RegisterSet, val uint8) {
	var newA uint8 = regSet.A.Read8Bit() ^ val
	regSet.A.Write8Bit(newA)
	regSet.F.ClearAll()
	regSet.F.SetFlag(rs.FlagZ, newA == 0)
}

func runOR(regSet *rs.RegisterSet, val uint8) {
	var newA uint8 = regSet.A.Read8Bit() | val
	regSet.A.Write8Bit(newA)
	regSet.F.ClearAll()
	regSet.F.SetFlag(rs.FlagZ, newA == 0)
}

func runCPL(regSet *rs.RegisterSet) {
	/*
		  Z (Zero): Not affected (remains unchanged).
			N (Subtract): Always set to 1.
		 	H (Half Carry): Always set to 1.
		  C (Carry): Not affected (remains unchanged).
	*/
	a := regSet.A.Read8Bit()
	regSet.A.Write8Bit(^a)

	regSet.F.SetFlag(rs.FlagN, true)
	regSet.F.SetFlag(rs.FlagH, true)
}
func (l *LogicalInstruction) Run(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16) (cycles uint8) {
	var val uint8 = l.R.Read8Bit(regSet, mmUnit, param)
	switch l.bitwise {
	case AND:
		runAND(regSet, val)
	case OR:
		runOR(regSet, val)
	case XOR:
		runXOR(regSet, val)
	case CPL:
		runCPL(regSet)
	}
	return l.Cycles
}

func newLogicalInstruction(opCode, length, cycles uint8, bitwise uint8, R args.Read8Bit) Instruction {
	return &LogicalInstruction{
		bitwise: bitwise,
		InstructionBase: InstructionBase{
			OpCode: opCode,
			Length: length,
			Cycles: cycles,
		},
		R: R,
	}
}

/*
1. **`AND r`**:
  - Opcodes:
  - `A`: `A7`
  - `B`: `A0`
  - `C`: `A1`
  - `D`: `A2`
  - `E`: `A3`
  - `H`: `A4`
  - `L`: `A5`
  - Cycles: 4 (1 machine cycle)
  - Size: 1 byte

2. **`AND (HL)`**:
  - Opcode: `A6`
  - Cycles: 8 (2 machine cycles: fetch + memory read)
  - Size: 1 byte

3. **`AND n`**:
  - Opcode: `E6`
  - Cycles: 8 (2 machine cycles: fetch + read immediate)
  - Size: 2 bytes (opcode + 1-byte immediate)
*/
/*

XOR r:

    Opcodes:
        A: AF
        B: A8
        C: A9
        D: AA
        E: AB
        H: AC
        L: AD
    Cycles: 4 (1 machine cycle)
    Size: 1 byte

XOR (HL):

    Opcode: AE
    Cycles: 8 (2 machine cycles: fetch + memory read)
    Size: 1 byte

XOR n:

    Opcode: EE
    Cycles: 8 (2 machine cycles: fetch + read immediate)
    Size: 2 bytes (opcode + 1-byte immediate)
*/
/*
OR r:

    Opcodes:
        A: B7
        B: B0
        C: B1
        D: B2
        E: B3
        H: B4
        L: B5
    Cycles: 4 (1 machine cycle)
    Size: 1 byte

OR (HL):

    Opcode: B6
    Cycles: 8 (2 machine cycles: fetch + memory read)
    Size: 1 byte

OR n:

    Opcode: F6
    Cycles: 8 (2 machine cycles: fetch + read immediate)
    Size: 2 bytes (opcode + 1-byte immediate)
*/

func (s *InstructionSet) initLogicals(as *args.ArgumentSet) {
	s.add(newLogicalInstruction(0x2f, 1, 4, CPL, as.Num8bit))
	/*
		CPL
			Opcode: 2F (hex).
			Cycles: 4 (1 machine cycle).
			Size: 1 byte.
	*/
	s.add(newLogicalInstruction(0xb7, 1, 4, OR, as.Aw))
	s.add(newLogicalInstruction(0xb0, 1, 4, OR, as.Bw))
	s.add(newLogicalInstruction(0xb1, 1, 4, OR, as.Cw))
	s.add(newLogicalInstruction(0xb2, 1, 4, OR, as.Dw))
	s.add(newLogicalInstruction(0xb3, 1, 4, OR, as.Ew))
	s.add(newLogicalInstruction(0xb4, 1, 4, OR, as.Hw))
	s.add(newLogicalInstruction(0xb5, 1, 4, OR, as.Lw))

	s.add(newLogicalInstruction(0xb6, 1, 8, OR, as.HLm))
	s.add(newLogicalInstruction(0xf6, 2, 8, OR, as.Num8bit))

	s.add(newLogicalInstruction(0xaf, 1, 4, XOR, as.Aw))
	s.add(newLogicalInstruction(0xa8, 1, 4, XOR, as.Bw))
	s.add(newLogicalInstruction(0xa9, 1, 4, XOR, as.Cw))
	s.add(newLogicalInstruction(0xaa, 1, 4, XOR, as.Dw))
	s.add(newLogicalInstruction(0xab, 1, 4, XOR, as.Ew))
	s.add(newLogicalInstruction(0xac, 1, 4, XOR, as.Hw))
	s.add(newLogicalInstruction(0xad, 1, 4, XOR, as.Lw))

	s.add(newLogicalInstruction(0xae, 1, 8, XOR, as.HLm))
	s.add(newLogicalInstruction(0xee, 2, 8, XOR, as.Num8bit))

	s.add(newLogicalInstruction(0xa7, 1, 4, AND, as.Aw))
	s.add(newLogicalInstruction(0xa0, 1, 4, AND, as.Bw))
	s.add(newLogicalInstruction(0xa1, 1, 4, AND, as.Cw))
	s.add(newLogicalInstruction(0xa2, 1, 4, AND, as.Dw))
	s.add(newLogicalInstruction(0xa3, 1, 4, AND, as.Ew))
	s.add(newLogicalInstruction(0xa4, 1, 4, AND, as.Hw))
	s.add(newLogicalInstruction(0xa5, 1, 4, AND, as.Lw))

	s.add(newLogicalInstruction(0xa6, 1, 8, AND, as.HLm))
	s.add(newLogicalInstruction(0xe6, 2, 8, AND, as.Num8bit))

}

type CFInstruction struct {
	InstructionBase
}

// SCF: 0x37, CCF: 0x3f
func (cf *CFInstruction) Run(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16) (cycles uint8) {
	regSet.F.SetFlag(rs.FlagN, false)
	regSet.F.SetFlag(rs.FlagH, false)
	switch cf.OpCode {
	case 0x37:
		// Z N H C: - 0 0 1

		regSet.F.SetFlag(rs.FlagC, true)
		return
	case 0x3f:
		cfNew := !regSet.F.GetFlag(rs.FlagC)
		regSet.F.SetFlag(rs.FlagC, cfNew)
	}
	return cf.Cycles
}

func newCFInstruction(opCode, length, cycles uint8) *CFInstruction {
	return &CFInstruction{
		InstructionBase: InstructionBase{
			OpCode: opCode,
			Length: length,
			Cycles: cycles,
		},
	}
}

func (s *InstructionSet) initCFs() {
	s.add(newCFInstruction(0x37, 1, 4))
	s.add(newCFInstruction(0x3f, 1, 4))
}
