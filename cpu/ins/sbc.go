package ins

import (
	"github.com/khoakmp/gbemu/cpu/args"
	"github.com/khoakmp/gbemu/mmu"
	"github.com/khoakmp/gbemu/rs"
)

type SbcInstruction struct {
	InstructionBase
	R1 args.RW8Bit
	R2 args.Read8Bit
}

func (s *SbcInstruction) Run(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16) uint8 {
	var x1 uint8 = s.R1.Read8Bit(regSet, mmUnit, 0)
	var x2 uint8 = s.R2.Read8Bit(regSet, mmUnit, param)
	if regSet.F.GetFlag(rs.FlagC) {
		x2++
	}
	regSet.F.SetFlag(rs.FlagH, (x1&15) < (x2&15))
	regSet.F.SetFlag(rs.FlagC, (x1&255) < (x2&255))
	ans := uint8(x1 - x2)
	regSet.F.SetFlag(rs.FlagZ, ans == 0)
	s.R1.Write8Bit(regSet, mmUnit, 0, ans)
	regSet.F.SetFlag(rs.FlagN, true)
	return s.Cycles
}
func newSbcInstruction(opCode, length, cycles uint8, R1 args.RW8Bit, R2 args.Read8Bit) Instruction {
	return &SbcInstruction{
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
SBC A, r:

		Opcodes:
	        A: 9F
	        B: 98
	        C: 99
	        D: 9A
	        E: 9B
	        H: 9C
	        L: 9D
	    Cycles: 4 (1 machine cycle)
	    Size: 1 byte

SBC A, (HL):

	Opcode: 9E
	Cycles: 8 (2 machine cycles: fetch + memory read)
	Size: 1 byte

SBC A, n:

	Opcode: DE
	Cycles: 8 (2 machine cycles: fetch + read immediate)
	Size: 2 bytes (opcode + 1-byte immediate)
*/
func (s *InstructionSet) initSbcs(as *args.ArgumentSet) {
	s.add(newSbcInstruction(0x9f, 1, 4, as.Aw, as.Aw))
	s.add(newSbcInstruction(0x98, 1, 4, as.Aw, as.Bw))
	s.add(newSbcInstruction(0x99, 1, 4, as.Aw, as.Cw))
	s.add(newSbcInstruction(0x9a, 1, 4, as.Aw, as.Dw))
	s.add(newSbcInstruction(0x9b, 1, 4, as.Aw, as.Ew))
	s.add(newSbcInstruction(0x9c, 1, 4, as.Aw, as.Hw))
	s.add(newSbcInstruction(0x9d, 1, 4, as.Aw, as.Lw))

	s.add(newSbcInstruction(0x9e, 1, 8, as.Aw, as.HLm))

	s.add(newSbcInstruction(0xde, 2, 8, as.Aw, as.Num8bit))
}
