package ins

import (
	"github.com/khoakmp/gbemu/cpu/args"
	"github.com/khoakmp/gbemu/mmu"
	"github.com/khoakmp/gbemu/rs"
)

type CpInstruction struct {
	InstructionBase
	R args.Read8Bit
}

func (c *CpInstruction) Run(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16) uint8 {
	var val uint8 = c.R.Read8Bit(regSet, mmUnit, param)
	var a = regSet.A.Read8Bit()
	regSet.F.SetFlag(rs.FlagC, a < val)
	regSet.F.SetFlag(rs.FlagH, (a&15) < (val&15))
	regSet.F.SetFlag(rs.FlagN, true)
	regSet.F.SetFlag(rs.FlagZ, a == val)
	return c.Cycles
}
func newCpInstruction(opCode, length, cycles uint8, R args.Read8Bit) Instruction {
	return &CpInstruction{
		InstructionBase: InstructionBase{
			OpCode: opCode,
			Length: length,
			Cycles: cycles,
		},
		R: R,
	}
}

/*
CP r:

	Opcodes:
	    A: BF
	    B: B8
	    C: B9
	    D: BA
	    E: BB
	    H: BC
	    L: BD
	Cycles: 4 (1 machine cycle)
	Size: 1 byte

CP (HL):

	Opcode: BE
	Cycles: 8 (2 machine cycles: fetch + memory read)
	Size: 1 byte

CP n:

	Opcode: FE
	Cycles: 8 (2 machine cycles: fetch + read immediate)
	Size: 2 bytes (opcode + 1-byte immediate)
*/
func (s *InstructionSet) initCps(as *args.ArgumentSet) {
	s.add(newCpInstruction(0xbf, 1, 4, as.Aw))
	s.add(newCpInstruction(0xb8, 1, 4, as.Bw))
	s.add(newCpInstruction(0xb9, 1, 4, as.Cw))
	s.add(newCpInstruction(0xba, 1, 4, as.Dw))
	s.add(newCpInstruction(0xbb, 1, 4, as.Ew))
	s.add(newCpInstruction(0xbc, 1, 4, as.Hw))
	s.add(newCpInstruction(0xbd, 1, 4, as.Lw))

	s.add(newCpInstruction(0xbe, 1, 8, as.HLm))

	s.add(newCpInstruction(0xfe, 2, 8, as.Num8bit))
}
