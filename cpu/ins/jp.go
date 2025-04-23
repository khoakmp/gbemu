package ins

import (
	"github.com/khoakmp/gbemu/cpu/args"
	"github.com/khoakmp/gbemu/mmu"
	"github.com/khoakmp/gbemu/rs"
)

type JpInstruction struct {
	InstructionBase
	R args.Read16Bit
}

func (jp *JpInstruction) Run(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16) uint8 {
	if jp.OpCode == 0xc3 || jp.OpCode == 0xe9 {
		addr := jp.R.Read16Bit(regSet, mmUnit, param)
		regSet.PC.Write16Bit(addr)
		return jp.Cycles
	}

	switch jp.OpCode {
	case 0xc2:
		if regSet.F.GetFlag(rs.FlagZ) {
			return 12
		}
	case 0xca:
		if !regSet.F.GetFlag(rs.FlagZ) {
			return 12
		}
	case 0xd2:
		if regSet.F.GetFlag(rs.FlagC) {
			return 12
		}
	case 0xda:
		if !regSet.F.GetFlag(rs.FlagC) {
			return 12
		}
	}
	addr := jp.R.Read16Bit(regSet, mmUnit, param)
	regSet.PC.Write16Bit(addr)
	// test at 0x1c31, 0x1ca3
	//fmt.Printf("jump to %x\n", addr)
	return 16
}
func newJpInstruction(opCode, length, cycles uint8, R args.Read16Bit) Instruction {
	return &JpInstruction{
		InstructionBase: InstructionBase{
			OpCode: opCode,
			Length: length,
			Cycles: cycles,
		},
		R: R,
	}
}

/*
JP nn : c3
JP (HL): e9

JP NZ, nn: C2
JP Z, nn: CA
JP NC, nn: D2
JP C, nn: DA

with conditional jump, if cond false, cycles = 12 else cycles = 16
*/
func (s *InstructionSet) initJps(as *args.ArgumentSet) {
	s.add(newJpInstruction(0xc3, 3, 16, as.Num16bit))
	s.add(newJpInstruction(0xe9, 1, 4, as.HLw))

	s.add(newJpInstruction(0xc2, 3, 16, as.Num16bit))
	s.add(newJpInstruction(0xca, 3, 16, as.Num16bit))
	s.add(newJpInstruction(0xd2, 3, 16, as.Num16bit))
	s.add(newJpInstruction(0xda, 3, 16, as.Num16bit))
}
