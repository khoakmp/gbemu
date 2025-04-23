package ins

import (
	"github.com/khoakmp/gbemu/mmu"
	"github.com/khoakmp/gbemu/rs"
)

type RlcaInstruction struct {
	InstructionBase
}

func (r *RlcaInstruction) Run(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16) uint8 {
	val := regSet.A.Read8Bit()
	bit7 := (val >> 7) & 1
	val = (val << 1) | bit7
	regSet.F.SetFlag(rs.FlagC, bit7 == 1)
	regSet.F.SetFlag(rs.FlagH, false)
	regSet.F.SetFlag(rs.FlagN, false)
	regSet.F.SetFlag(rs.FlagZ, false)
	regSet.A.Write8Bit(val)
	return r.Cycles
}

func newRlcaInstruction(opCode, length, cycles uint8) *RlcaInstruction {
	return &RlcaInstruction{
		InstructionBase: InstructionBase{
			OpCode: opCode,
			Length: length,
			Cycles: cycles,
		},
	}
}

type RrcaInstruction struct {
	InstructionBase
}

func (r *RrcaInstruction) Run(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16) uint8 {
	val := regSet.A.Read8Bit()
	bit0 := val & 1
	val = (val >> 1) | (bit0 << 7)
	regSet.F.SetFlag(rs.FlagC, bit0 == 1)
	regSet.F.SetFlag(rs.FlagH, false)
	regSet.F.SetFlag(rs.FlagN, false)
	regSet.F.SetFlag(rs.FlagZ, false)
	regSet.A.Write8Bit(val)
	return r.Cycles
}

func newRrcaInstruction(opCode, length, cycles uint8) *RrcaInstruction {
	return &RrcaInstruction{
		InstructionBase: InstructionBase{
			OpCode: opCode,
			Length: length,
			Cycles: cycles,
		},
	}
}

type RlaInstruction struct {
	InstructionBase
}

func newRlaInstruction(opCode, length, cycles uint8) *RlaInstruction {
	return &RlaInstruction{
		InstructionBase: InstructionBase{
			OpCode: opCode,
			Length: length,
			Cycles: cycles,
		},
	}
}
func (r *RlaInstruction) Run(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16) uint8 {
	// use the old carry flag
	val := regSet.A.Read8Bit()
	bit7 := (val >> 7) & 1
	val <<= 1
	if regSet.F.GetFlag(rs.FlagC) {
		val |= 1
	}
	regSet.F.SetFlag(rs.FlagC, bit7 == 1)
	regSet.F.SetFlag(rs.FlagH, false)
	regSet.F.SetFlag(rs.FlagN, false)
	regSet.F.SetFlag(rs.FlagZ, false)
	regSet.A.Write8Bit(val)
	return r.Cycles
}

type RraInstruction struct {
	InstructionBase
}

func (r *RraInstruction) Run(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16) uint8 {
	val := regSet.A.Read8Bit()
	bit0 := val & 1
	val >>= 1
	if regSet.F.GetFlag(rs.FlagC) {
		val |= (1 << 7)
	}
	regSet.F.SetFlag(rs.FlagC, bit0 == 1)
	regSet.F.SetFlag(rs.FlagH, false)
	regSet.F.SetFlag(rs.FlagN, false)
	regSet.F.SetFlag(rs.FlagZ, false)
	regSet.A.Write8Bit(val)
	return r.Cycles
}
func newRraInstruction(opCode, length, cycles uint8) *RraInstruction {
	return &RraInstruction{
		InstructionBase: InstructionBase{
			OpCode: opCode,
			Length: length,
			Cycles: cycles,
		},
	}
}

func (s *InstructionSet) initRotateAs() {
	s.add(newRlcaInstruction(0x07, 1, 4))
	s.add(newRrcaInstruction(0x0f, 1, 4))
	s.add(newRlaInstruction(0x17, 1, 4))
	s.add(newRraInstruction(0x1f, 1, 4))
}
