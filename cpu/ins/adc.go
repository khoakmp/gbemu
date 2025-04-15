package ins

import (
	"github.com/khoakmp/gbemu/cpu/args"
	"github.com/khoakmp/gbemu/mmu"
	"github.com/khoakmp/gbemu/rs"
)

type AdcInstruction struct {
	InstructionBase
	R1 args.RW8Bit
	R2 args.Read8Bit
}

func (a *AdcInstruction) Run(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16) uint8 {
	regSet.F.SetFlag(rs.FlagN, false)
	var x1, x2, x3 uint8
	x1 = a.R1.Read8Bit(regSet, mmUnit, param)
	x2 = a.R2.Read8Bit(regSet, mmUnit, param)
	x3 = 0
	if regSet.F.GetFlag(rs.FlagC) {
		x3 = 1
	}

	var s uint16 = uint16(x1) + uint16(x2) + uint16(x3)
	regSet.F.SetFlag(rs.FlagC, s > 255)
	regSet.F.SetFlag(rs.FlagH, ((x1&15)+(x2&15)+(x3&15)) > 15)
	var ans uint8 = uint8(s)
	regSet.F.SetFlag(rs.FlagZ, ans == 0)
	a.R1.Write8Bit(regSet, mmUnit, param, ans)
	return a.Cycles
}
func newAdcInstruction(opCode, length, cycles uint8,
	R1 args.RW8Bit, R2 args.Read8Bit) Instruction {
	return &AdcInstruction{
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
ADC A, r:

    Opcodes:
        A: 8F, B: 88, C: 89, D: 8A, E: 8B, H: 8C, L: 8D
    Cycles: 4 (1 machine cycle)
    Size: 1 byte

ADC A, (HL):

    Opcode: 8E
    Cycles: 8 (2 machine cycles: fetch + memory read)
    Size: 1 byte

ADC A, n:

    Opcode: CE
    Cycles: 8 (2 machine cycles: fetch + read immediate)
    Size: 2 bytes (opcode + 1-byte immediate)
*/

func (s *InstructionSet) initAdcs(as *args.ArgumentSet) {
	s.add(newAdcInstruction(0x8f, 1, 4, as.Aw, as.Aw))
	s.add(newAdcInstruction(0x88, 1, 4, as.Aw, as.Bw))
	s.add(newAdcInstruction(0x89, 1, 4, as.Aw, as.Cw))
	s.add(newAdcInstruction(0x8a, 1, 4, as.Aw, as.Dw))
	s.add(newAdcInstruction(0x8b, 1, 4, as.Aw, as.Ew))
	s.add(newAdcInstruction(0x8c, 1, 4, as.Aw, as.Hw))
	s.add(newAdcInstruction(0x8d, 1, 4, as.Aw, as.Lw))

	s.add(newAdcInstruction(0x8e, 1, 8, as.Aw, as.HLm))
	s.add(newAdcInstruction(0xce, 2, 8, as.Aw, as.Num8bit))
}
