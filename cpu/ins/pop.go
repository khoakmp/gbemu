package ins

import (
	"github.com/khoakmp/gbemu/cpu/args"
	"github.com/khoakmp/gbemu/mmu"
	"github.com/khoakmp/gbemu/rs"
)

/*
POP BC: Opcode C1
POP DE: Opcode D1
POP HL: Opcode E1
POP AF: Opcode F1

Cycles: 12, length: 1
*/

type PopInstruction struct {
	InstructionBase
	R *args.RegisterWrap
}

func (p *PopInstruction) Run(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16) uint8 {
	val := popWordFromStack(regSet, mmUnit)
	p.R.Write16Bit(regSet, mmUnit, 0, val)
	return 12
}

func newPopInstruction(opCode, length, cycles uint8, R *args.RegisterWrap) Instruction {
	return &PopInstruction{
		InstructionBase: InstructionBase{
			OpCode: opCode,
			Length: length,
			Cycles: cycles,
		},
		R: R,
	}
}

func (s *InstructionSet) initPops(as *args.ArgumentSet) {
	s.add(newPopInstruction(0xc1, 1, 12, as.BCw))
	s.add(newPopInstruction(0xd1, 1, 12, as.DEw))
	s.add(newPopInstruction(0xe1, 1, 12, as.HLw))
	s.add(newPopInstruction(0xf1, 1, 12, as.AFw))
}
