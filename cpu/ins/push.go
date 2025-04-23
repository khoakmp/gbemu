package ins

import (
	"fmt"

	"github.com/khoakmp/gbemu/cpu/args"
	"github.com/khoakmp/gbemu/mmu"
	"github.com/khoakmp/gbemu/rs"
)

type PushInstruction struct {
	InstructionBase
	R args.Read16Bit
}

func PushWordOntoStack(regSet *rs.RegisterSet, mmUnit mmu.MMU, val uint16) {

	newSpAddr := int(regSet.SP.Read16Bit()) - 2
	if newSpAddr < 0x8000 {
		fmt.Println("newSPAddr:", newSpAddr)
		panic("Stack overflow !!!")
	}
	if newSpAddr >= 0xff00 && newSpAddr < 0xff80 {
		panic("SP is in IO register area!!!")
	}
	regSet.SP.Write16Bit(uint16(newSpAddr))
	mmUnit.Write16Bit(uint16(newSpAddr), val)
}

func (p *PushInstruction) Run(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16) uint8 {
	val := p.R.Read16Bit(regSet, mmUnit, param)
	PushWordOntoStack(regSet, mmUnit, val)
	return 16
}

func newPushInstruction(opCode, length, cycles uint8, R args.Read16Bit) Instruction {
	return &PushInstruction{
		InstructionBase: InstructionBase{
			OpCode: opCode,
			Length: length,
			Cycles: cycles,
		},
		R: R,
	}
}

/*
PUSH BC: Opcode C5
PUSH DE: Opcode D5
PUSH HL: Opcode E5
PUSH AF: Opcode F5
*/

func (s *InstructionSet) initPushs(as *args.ArgumentSet) {
	s.add(newPushInstruction(0xc5, 1, 16, as.BCw))
	s.add(newPushInstruction(0xd5, 1, 16, as.DEw))
	s.add(newPushInstruction(0xe5, 1, 16, as.HLw))
	s.add(newPushInstruction(0xf5, 1, 16, as.AFw))
}
