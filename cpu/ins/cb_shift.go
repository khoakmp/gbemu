package ins

import (
	"github.com/khoakmp/gbemu/cpu/args"
	"github.com/khoakmp/gbemu/mmu"
	"github.com/khoakmp/gbemu/rs"
)

type SlaInstruction struct {
	InstructionBase
	R args.RW8Bit
}

func NewSlaInstruction(opCode, length, cycles uint8, R args.RW8Bit) *SlaInstruction {
	return &SlaInstruction{
		InstructionBase: InstructionBase{
			OpCode: opCode,
			Length: length,
			Cycles: cycles,
		},
		R: R,
	}
}
func (s *SlaInstruction) Run(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16) uint8 {
	val := s.R.Read8Bit(nil, nil, 0)
	bit7 := val >> 7
	val <<= 1
	regSet.F.SetFlag(rs.FlagC, bit7 == 1)
	regSet.F.SetFlag(rs.FlagH, false)
	regSet.F.SetFlag(rs.FlagN, false)
	regSet.F.SetFlag(rs.FlagZ, val == 0)
	s.R.Write8Bit(nil, nil, 0, val)
	return s.Cycles
}

type SraInstruction struct {
	InstructionBase
	R args.RW8Bit
}

func NewSraInstruction(opCode, length, cycles uint8, R args.RW8Bit) *SraInstruction {
	return &SraInstruction{
		InstructionBase: InstructionBase{
			OpCode: opCode,
			Length: length,
			Cycles: cycles,
		},
		R: R,
	}
}

func (s *SraInstruction) Run(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16) uint8 {
	val := s.R.Read8Bit(nil, nil, 0)
	bit0 := val & 1
	bit7 := val & 128
	val = (val >> 1)
	if bit7 == 1 {
		val |= 128
	}
	regSet.F.SetFlag(rs.FlagC, bit0 == 1)
	regSet.F.SetFlag(rs.FlagH, false)
	regSet.F.SetFlag(rs.FlagN, false)
	regSet.F.SetFlag(rs.FlagZ, val == 0)
	s.R.Write8Bit(nil, nil, 0, val)
	return s.Cycles
}

type SrlInstruction struct {
	InstructionBase
	R args.RW8Bit
}

func NewSrlInstruction(opCode, length, cycles uint8, R args.RW8Bit) *SrlInstruction {
	return &SrlInstruction{
		InstructionBase: InstructionBase{
			OpCode: opCode,
			Length: length,
			Cycles: cycles,
		},
		R: R,
	}
}

func (s *SrlInstruction) Run(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16) uint8 {
	val := s.R.Read8Bit(nil, nil, 0)
	bit0 := val & 1
	val >>= 1
	regSet.F.SetFlag(rs.FlagC, bit0 == 1)
	regSet.F.SetFlag(rs.FlagH, false)
	regSet.F.SetFlag(rs.FlagN, false)
	regSet.F.SetFlag(rs.FlagZ, val == 0)
	s.R.Write8Bit(nil, nil, 0, val)
	return s.Cycles
}
func (s *CbInstructionSet) initShifts(as *args.ArgumentSet) {
	// SLA
	s.add(NewSlaInstruction(0x20, 1, 8, as.Bw))
	s.add(NewSlaInstruction(0x21, 1, 8, as.Cw))
	s.add(NewSlaInstruction(0x22, 1, 8, as.Dw))
	s.add(NewSlaInstruction(0x23, 1, 8, as.Ew))
	s.add(NewSlaInstruction(0x24, 1, 8, as.Hw))
	s.add(NewSlaInstruction(0x25, 1, 8, as.Lw))
	s.add(NewSlaInstruction(0x26, 1, 16, as.HLm))
	s.add(NewSlaInstruction(0x27, 1, 8, as.Aw))

	// SRA
	s.add(NewSraInstruction(0x28, 1, 8, as.Bw))
	s.add(NewSraInstruction(0x29, 1, 8, as.Cw))
	s.add(NewSraInstruction(0x2a, 1, 8, as.Dw))
	s.add(NewSraInstruction(0x2b, 1, 8, as.Ew))
	s.add(NewSraInstruction(0x2c, 1, 8, as.Hw))
	s.add(NewSraInstruction(0x2d, 1, 8, as.Lw))
	s.add(NewSraInstruction(0x2e, 1, 16, as.HLm))
	s.add(NewSraInstruction(0x2f, 1, 8, as.Aw))

	// SRL
	s.add(NewSrlInstruction(0x38, 1, 8, as.Bw))
	s.add(NewSrlInstruction(0x39, 1, 8, as.Cw))
	s.add(NewSrlInstruction(0x3a, 1, 8, as.Dw))
	s.add(NewSrlInstruction(0x3b, 1, 8, as.Ew))
	s.add(NewSrlInstruction(0x3c, 1, 8, as.Hw))
	s.add(NewSrlInstruction(0x3d, 1, 8, as.Lw))
	s.add(NewSrlInstruction(0x3e, 1, 16, as.HLm))
	s.add(NewSrlInstruction(0x3f, 1, 8, as.Aw))
}
