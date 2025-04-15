package ins

import (
	"github.com/khoakmp/gbemu/mmu"
	"github.com/khoakmp/gbemu/rs"
)

type Instruction interface {
	Run(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16) (cycles uint8)
	Opcode() uint8
	GetLength() uint8
	GetCycles() uint8
}

type InstructionBase struct {
	OpCode uint8
	Length uint8
	Cycles uint8
}

func (i *InstructionBase) Opcode() uint8 {
	return i.OpCode
}

func (i *InstructionBase) GetLength() uint8 {
	return i.Length
}

func (l *InstructionBase) GetCycles() uint8 {
	return l.Cycles
}
