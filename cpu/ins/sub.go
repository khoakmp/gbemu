package ins

import (
	"github.com/khoakmp/gbemu/cpu/args"
	"github.com/khoakmp/gbemu/mmu"
	"github.com/khoakmp/gbemu/rs"
)

type SubInstruction struct {
	InstructionBase
	R1 args.RW8Bit
	R2 args.Read8Bit
}

func (s *SubInstruction) Run(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16) uint8 {
	regSet.F.SetFlag(rs.FlagN, true)
	var x1, x2 uint8 = s.R1.Read8Bit(regSet, mmUnit, param), s.R2.Read8Bit(regSet, mmUnit, param)
	regSet.F.SetFlag(rs.FlagH, (x1&15) < (x2&15))

	regSet.F.SetFlag(rs.FlagC, x1 < x2)
	regSet.F.SetFlag(rs.FlagZ, uint8(x1-x2) == 0)
	s.R1.Write8Bit(regSet, mmUnit, param, uint8(x1-x2))
	return s.Cycles
}

func newSubInstruction(opCode, length, cycles uint8, R1 args.RW8Bit, R2 args.Read8Bit) Instruction {
	return &SubInstruction{
		InstructionBase: InstructionBase{
			OpCode: opCode,
			Length: length,
			Cycles: cycles,
		},
		R1: R1,
		R2: R2,
	}
}

/*
SUB r:

	Opcodes:
	    A: 97
	    B: 90
	    C: 91
	    D: 92
	    E: 93
	    H: 94
	    L: 95
	Cycles: 4 (1 machine cycle)
	Size: 1 byte

SUB (HL):

	Opcode: 96
	Cycles: 8 (2 machine cycles: fetch + memory read)
	Size: 1 byte

SUB n:

	Opcode: D6
	Cycles: 8 (2 machine cycles: fetch + read immediate)
	Size: 2 bytes (opcode + 1-byte immediate)
*/
func (s *InstructionSet) initSubs(as *args.ArgumentSet) {
	s.add(newSubInstruction(0x97, 1, 4, as.Aw, as.Aw))
	s.add(newSubInstruction(0x90, 1, 4, as.Aw, as.Bw))
	s.add(newSubInstruction(0x91, 1, 4, as.Aw, as.Cw))
	s.add(newSubInstruction(0x92, 1, 4, as.Aw, as.Dw))
	s.add(newSubInstruction(0x93, 1, 4, as.Aw, as.Ew))
	s.add(newSubInstruction(0x94, 1, 4, as.Aw, as.Hw))
	s.add(newSubInstruction(0x95, 1, 4, as.Aw, as.Lw))

	s.add(newSubInstruction(0x96, 1, 8, as.Aw, as.HLm))

	s.add(newSubInstruction(0xd6, 2, 8, as.Aw, as.Num8bit))
}
