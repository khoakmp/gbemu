package ins

import (
	"github.com/khoakmp/gbemu/cpu/args"
	"github.com/khoakmp/gbemu/mmu"
	"github.com/khoakmp/gbemu/rs"
)

type Inc8BitInstruction struct {
	InstructionBase
	R args.RW8Bit
}

/*
INC r     ; Increment 8-bit register r
INC (HL)  ; Increment value at address in HL
*/

func (inc *Inc8BitInstruction) Run(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16) uint8 {
	regSet.F.SetFlag(rs.FlagN, false)
	var x uint8 = inc.R.Read8Bit(regSet, mmUnit, param)
	var val uint8 = x + 1
	// Inc 8bit not affect Carry flag
	//regSet.F.SetFlag(rs.FlagC, val > 255)
	regSet.F.SetFlag(rs.FlagH, ((x&15)+1) > 15)
	regSet.F.SetFlag(rs.FlagZ, val == 0)
	inc.R.Write8Bit(regSet, mmUnit, param, val)
	return inc.Cycles
}

type Inc16BitInstruction struct {
	InstructionBase
	R args.RW16Bit
}

// Inc16Bit and Dec16Bit does not affect Flag register
func (inc *Inc16BitInstruction) Run(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16) uint8 {
	//regSet.F.SetFlag(rs.FlagN, false)
	var x1 uint16 = inc.R.Read16Bit(regSet, mmUnit, param)
	//regSet.F.SetFlag(rs.FlagC, val > 65535)
	//regSet.F.SetFlag(rs.FlagH, ((x1&255)+1) > 255)
	//regSet.F.SetFlag(rs.FlagZ, uint8(val) == 0)
	inc.R.Write16Bit(regSet, mmUnit, param, x1+1)
	return inc.Cycles
}

func newInc8BitInstruction(opCode, length, cycles uint8, R args.RW8Bit) Instruction {
	return &Inc8BitInstruction{
		InstructionBase: InstructionBase{
			OpCode: opCode,
			Length: length,
			Cycles: cycles,
		},
		R: R,
	}
}

func newInc16BitInstruction(opCode, length, cycles uint8, R args.RW16Bit) Instruction {
	return &Inc16BitInstruction{
		InstructionBase: InstructionBase{
			OpCode: opCode,
			Length: length,
			Cycles: cycles,
		},
		R: R,
	}
}

/*
INC r (8-bit Register) cycle: 4 ,len = 1
Opcodes (in hex):

	A: 3C
	B: 04
	 C: 0C
	 D: 14
	 E: 1C
	 H: 24
	 L: 2C

INC (HL) (8-bit Memory)

	Opcode: 34 (hex)
	Cycles: 12 (3 machine cycles: fetch, read, write)
	Size: 1 byte
	Flags Affected: Same as INC r:

INC rr (16-bit Register Pair) cycles: 8

	Opcodes (in hex):
	    BC: 03
	    DE: 13
	    HL: 23
	    SP: 33
*/
func (s *InstructionSet) initIncs(as *args.ArgumentSet) {
	s.add(newInc8BitInstruction(0x3c, 1, 4, as.Aw))
	s.add(newInc8BitInstruction(0x04, 1, 4, as.Bw))
	s.add(newInc8BitInstruction(0x0c, 1, 4, as.Cw))
	s.add(newInc8BitInstruction(0x14, 1, 4, as.Dw))
	s.add(newInc8BitInstruction(0x1c, 1, 4, as.Ew))
	s.add(newInc8BitInstruction(0x24, 1, 4, as.Hw))
	s.add(newInc8BitInstruction(0x2c, 1, 4, as.Lw))

	s.add(newInc8BitInstruction(0x34, 1, 12, as.HLm))

	s.add(newInc16BitInstruction(0x03, 1, 8, as.BCw))
	s.add(newInc16BitInstruction(0x13, 1, 8, as.DEw))
	s.add(newInc16BitInstruction(0x23, 1, 8, as.HLw))
	s.add(newInc16BitInstruction(0x33, 1, 8, as.SPw))
}
