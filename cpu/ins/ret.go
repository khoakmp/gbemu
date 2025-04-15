package ins

import (
	"github.com/khoakmp/gbemu/mmu"
	"github.com/khoakmp/gbemu/rs"
)

type RetInstruction struct {
	InstructionBase
}

func popWordFromStack(regSet *rs.RegisterSet, mmUnit mmu.MMU) uint16 {
	addr := regSet.SP.Read16Bit()
	ans := mmUnit.Read16Bit(addr)
	regSet.SP.Write16Bit(addr + 2)
	return ans
}

func runRet(regSet *rs.RegisterSet, mmUnit mmu.MMU) {
	retAddr := popWordFromStack(regSet, mmUnit)
	regSet.PC.Write16Bit(retAddr)
}

func (r *RetInstruction) Run(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16) uint8 {
	switch r.OpCode {
	case 0xc9:
		runRet(regSet, mmUnit)
		return 16
	case 0xc0:
		if regSet.F.GetFlag(rs.FlagZ) {
			return 8
		}
	case 0xc8:
		if !regSet.F.GetFlag(rs.FlagZ) {
			return 8
		}
	case 0xd0:
		if regSet.F.GetFlag(rs.FlagC) {
			return 8
		}
	case 0xd8:
		if !regSet.F.GetFlag(rs.FlagC) {
			return 8
		}
	}
	runRet(regSet, mmUnit)
	return 20
}

/*
RET C9 cycles: 16
RET NZ (opcode C0): Return if Zero flag is not set (Z = 0).
RET Z (opcode C8): Return if Zero flag is set (Z = 1).
RET NC (opcode D0): Return if Carry flag is not set (C = 0).
RET C (opcode D8): Return if Carry flag is set (C = 1).
*/

func newRetInstruction(opCode, length, cycles uint8) Instruction {
	return &RetInstruction{
		InstructionBase: InstructionBase{
			OpCode: opCode,
			Length: length,
			Cycles: cycles,
		},
	}
}

func (s *InstructionSet) initRets() {
	s.add(newRetInstruction(0xc9, 1, 16))
	s.add(newRetInstruction(0xc0, 1, 8))
	s.add(newRetInstruction(0xc8, 1, 8))
	s.add(newRetInstruction(0xd0, 1, 8))
	s.add(newRetInstruction(0xd8, 1, 8))

	// init reti
	s.add(newRetiInstruction(0xd9, 1, 16))
}
