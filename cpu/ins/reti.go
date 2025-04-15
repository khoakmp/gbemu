package ins

import (
	"github.com/khoakmp/gbemu/mmu"
	"github.com/khoakmp/gbemu/rs"
)

// opcode: 0xd9, cycles: 16, length: 1
type RetiInstruction struct {
	InstructionBase
}

func (r *RetiInstruction) Run(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16) uint8 {
	retAddr := popWordFromStack(regSet, mmUnit)
	regSet.IME = true
	regSet.PC.Write16Bit(retAddr)
	return r.Cycles
}

// call in initRets function
func newRetiInstruction(opCode, length, cycles uint8) Instruction {
	return &RetiInstruction{
		InstructionBase: InstructionBase{
			OpCode: opCode,
			Length: length,
			Cycles: cycles,
		},
	}
}
