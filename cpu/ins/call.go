package ins

import (
	"github.com/khoakmp/gbemu/cpu/args"
	"github.com/khoakmp/gbemu/mmu"
	"github.com/khoakmp/gbemu/rs"
)

type CallInstruction struct {
	InstructionBase
	R *args.Num16Bit
}

func (c *CallInstruction) Run(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16) uint8 {
	if c.OpCode == 0xcd {
		goto CALL
	}
	switch c.OpCode {
	case 0xc4:
		if regSet.F.GetFlag(rs.FlagZ) {
			return 12
		}
	case 0xcc:
		if !regSet.F.GetFlag(rs.FlagZ) {
			return 12
		}
	case 0xd4:
		if regSet.F.GetFlag(rs.FlagC) {
			return 12
		}
	case 0xdc:
		if !regSet.F.GetFlag(rs.FlagC) {
			return 12
		}
	}
CALL:
	curPC := regSet.PC.Read16Bit()
	pushWordOntoStack(regSet, mmUnit, curPC)
	regSet.PC.Write16Bit(c.R.Read16Bit(regSet, mmUnit, param))
	return 24
}

/*
CALL nn (Unconditional Call)

		Opcode: CD (hex)
	  Operands: 16-bit address (nn), specified as two bytes (low byte, high byte).
	  Cycles: 24 cycles (6 machine cycles)

CALL NZ, nn: C4
CALL Z, nn: CC
CALL NC, nn: D4
CALL C, nn: DC
true: 24 cycles, false 12 cycles
*/

func newCallInstruction(opCode, length, cycles uint8, R *args.Num16Bit) Instruction {
	return &CallInstruction{
		InstructionBase: InstructionBase{
			OpCode: opCode,
			Length: length,
			Cycles: cycles,
		},
		R: R,
	}
}

func (s *InstructionSet) initCalls(as *args.ArgumentSet) {
	s.add(newCallInstruction(0xcd, 3, 24, as.Num16bit))
	s.add(newCallInstruction(0xc4, 3, 24, as.Num16bit))
	s.add(newCallInstruction(0xcc, 3, 24, as.Num16bit))
	s.add(newCallInstruction(0xd4, 3, 24, as.Num16bit))
	s.add(newCallInstruction(0xdc, 3, 24, as.Num16bit))

}
