package ins

import (
	"github.com/khoakmp/gbemu/mmu"
	"github.com/khoakmp/gbemu/rs"
)

type RstInstruction struct {
	InstructionBase
}

/*
RST $00: C7
RST $08: CF
RST $10: D7
RST $18: DF
RST $20: E7
RST $28: EF
RST $30: F7
RST $38: FF
*/
func (r *RstInstruction) Run(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16) uint8 {
	PushWordOntoStack(regSet, mmUnit, regSet.PC.Read16Bit())
	switch r.OpCode {
	case 0xc7:
		regSet.PC.Write16Bit(0x00)
	case 0xcf:
		regSet.PC.Write16Bit(0x08)
	case 0xd7:
		regSet.PC.Write16Bit(0x10)
	case 0xdf:
		regSet.PC.Write16Bit(0x18)
	case 0xe7:
		regSet.PC.Write16Bit(0x20)
	case 0xef:
		regSet.PC.Write16Bit(0x28)
	case 0xf7:
		regSet.PC.Write16Bit(0x30)
	case 0xff:
		regSet.PC.Write16Bit(0x38)
	}
	return r.Cycles
}
func newRstInstruction(opCode, length, cycles uint8) Instruction {
	return &RstInstruction{
		InstructionBase: InstructionBase{
			OpCode: opCode,
			Length: length,
			Cycles: cycles,
		},
	}
}
func (s *InstructionSet) initRsts() {
	s.add(newRstInstruction(0xc7, 1, 16))
	s.add(newRstInstruction(0xcf, 1, 16))
	s.add(newRstInstruction(0xd7, 1, 16))
	s.add(newRstInstruction(0xdf, 1, 16))
	s.add(newRstInstruction(0xe7, 1, 16))
	s.add(newRstInstruction(0xef, 1, 16))
	s.add(newRstInstruction(0xf7, 1, 16))
	s.add(newRstInstruction(0xff, 1, 16))
}
