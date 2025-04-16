package cpu

import (
	"github.com/khoakmp/gbemu/cpu/args"
	"github.com/khoakmp/gbemu/cpu/ins"
	"github.com/khoakmp/gbemu/mmu"
	"github.com/khoakmp/gbemu/rs"
)

type GbCPU struct {
	memUnit          mmu.MMU
	regSet           *rs.RegisterSet
	instructionSet   *ins.InstructionSet
	cbInstructionSet *ins.CbInstructionSet
}

func NewGbCpu(mmu mmu.MMU, regSet *rs.RegisterSet) *GbCPU {
	arguments := args.NewArgumentSet(regSet)

	return &GbCPU{
		memUnit:          mmu,
		regSet:           regSet,
		instructionSet:   ins.NewInstructionSet(arguments),
		cbInstructionSet: ins.NewCbInstructionSet(arguments),
	}
}

// Not advance PC register
func (c *GbCPU) PeekInstruction() (instruction ins.Instruction, param uint16) {
	address := c.regSet.PC.Read16Bit()
	opcode := c.memUnit.Read8Bit(address)
	if opcode != 0xcb {
		// non cb prefix
		instruction = c.instructionSet.GetInstruction(opcode)
		n := instruction.GetLength()
		if n == 2 {
			param = uint16(c.memUnit.Read8Bit(address + 1))
		}
		if n == 3 {
			param = c.memUnit.Read16Bit(address + 1)
		}
		return
	}
	opcode = c.memUnit.Read8Bit(address + 1)
	instruction = c.cbInstructionSet.GetInstruction(opcode)
	return
}
