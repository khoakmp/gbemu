package ins

import (
	"github.com/khoakmp/gbemu/cpu/args"
	"github.com/khoakmp/gbemu/mmu"
	"github.com/khoakmp/gbemu/rs"
)

type RlcInstruction struct {
	InstructionBase
	R args.RW8Bit
}

// ABCDEHL (HL) => 8 *  |{Swap, 3 Shift, 4 Rotates}| = 64
// 64 * 3 = 192
// 192 + 64 = 256 for all
func (r *RlcInstruction) Run(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16) uint8 {
	val := r.R.Read8Bit(nil, mmUnit, 0)

	//regSet.F.GetFlag(rs.FlagC)
	bit7 := val >> 7
	val = bit7 | (val << 1)
	regSet.F.SetFlag(rs.FlagH, false)
	regSet.F.SetFlag(rs.FlagN, false)
	regSet.F.SetFlag(rs.FlagZ, val == 0)
	regSet.F.SetFlag(rs.FlagC, bit7 == 1)
	r.R.Write8Bit(nil, mmUnit, 0, val)
	return r.Cycles
}
func NewRlcInstruction(opCode, length, cycles uint8, R args.RW8Bit) *RlcInstruction {
	return &RlcInstruction{
		InstructionBase: InstructionBase{
			OpCode: opCode,
			Length: length,
			Cycles: cycles,
		},
		R: R,
	}
}

type RlInstruction struct {
	InstructionBase
	R args.RW8Bit
}

func NewRlInstruction(opCode, length, cycles uint8, R args.RW8Bit) *RlInstruction {
	return &RlInstruction{
		InstructionBase: InstructionBase{
			OpCode: opCode,
			Length: length,
			Cycles: cycles,
		},
		R: R,
	}
}
func (r *RlInstruction) Run(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16) uint8 {
	val := r.R.Read8Bit(nil, mmUnit, 0)
	bit7 := val >> 7
	carry := regSet.F.GetFlag(rs.FlagC)
	val = (val << 1)
	if carry {
		val |= 1
	}
	regSet.F.SetFlag(rs.FlagH, false)
	regSet.F.SetFlag(rs.FlagN, false)
	regSet.F.SetFlag(rs.FlagZ, val == 0)
	regSet.F.SetFlag(rs.FlagC, bit7 == 1)
	r.R.Write8Bit(nil, mmUnit, 0, val)
	return r.Cycles
}

type RrcInstruction struct {
	InstructionBase
	R args.RW8Bit
}

func NewRrcInstruction(opCode, length, cycles uint8, R args.RW8Bit) *RrcInstruction {
	return &RrcInstruction{
		InstructionBase: InstructionBase{
			OpCode: opCode,
			Length: length,
			Cycles: cycles,
		},
		R: R,
	}
}

func (r *RrcInstruction) Run(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16) uint8 {
	val := r.R.Read8Bit(nil, mmUnit, 0)
	bit0 := val & 1
	val = (val >> 1) | (bit0 << 7)
	regSet.F.SetFlag(rs.FlagC, bit0 == 1)
	regSet.F.SetFlag(rs.FlagH, false)
	regSet.F.SetFlag(rs.FlagN, false)
	regSet.F.SetFlag(rs.FlagZ, val == 0)
	r.R.Write8Bit(nil, mmUnit, 0, val)
	return r.Cycles
}

type RrInstruction struct {
	InstructionBase
	R args.RW8Bit
}

func NewRrInstruction(opCode, length, cycles uint8, R args.RW8Bit) *RrInstruction {
	return &RrInstruction{
		InstructionBase: InstructionBase{
			OpCode: opCode,
			Length: length,
			Cycles: cycles,
		},
		R: R,
	}
}
func (r *RrInstruction) Run(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16) uint8 {
	val := r.R.Read8Bit(nil, mmUnit, 0)
	bit0 := val & 1
	carry := regSet.F.GetFlag(rs.FlagC)
	val >>= 1
	if carry {
		val |= 1 << 7
	}
	regSet.F.SetFlag(rs.FlagC, bit0 == 1)
	regSet.F.SetFlag(rs.FlagH, false)
	regSet.F.SetFlag(rs.FlagN, false)
	regSet.F.SetFlag(rs.FlagZ, val == 0)
	r.R.Write8Bit(nil, mmUnit, 0, val)
	return r.Cycles
}

func (s *CbInstructionSet) initRotates(as *args.ArgumentSet) {
	// RLC
	s.add(NewRlcInstruction(0x00, 1, 8, as.Bw))
	s.add(NewRlcInstruction(0x01, 1, 8, as.Cw))
	s.add(NewRlcInstruction(0x02, 1, 8, as.Dw))
	s.add(NewRlcInstruction(0x03, 1, 8, as.Ew))
	s.add(NewRlcInstruction(0x04, 1, 8, as.Hw))
	s.add(NewRlcInstruction(0x05, 1, 8, as.Lw))

	s.add(NewRlcInstruction(0x06, 1, 16, as.HLm))
	s.add(NewRlcInstruction(0x07, 1, 8, as.Aw))
	// RRC
	s.add(NewRrcInstruction(0x08, 1, 8, as.Bw))
	s.add(NewRrcInstruction(0x09, 1, 8, as.Cw))
	s.add(NewRrcInstruction(0x0a, 1, 8, as.Dw))
	s.add(NewRrcInstruction(0x0b, 1, 8, as.Ew))
	s.add(NewRrcInstruction(0x0c, 1, 8, as.Hw))
	s.add(NewRrcInstruction(0x0d, 1, 8, as.Lw))

	s.add(NewRrcInstruction(0x0e, 1, 16, as.HLm))
	s.add(NewRrcInstruction(0x0f, 1, 8, as.Aw))
	// RL
	s.add(NewRlInstruction(0x10, 1, 8, as.Bw))
	s.add(NewRlInstruction(0x11, 1, 8, as.Cw))
	s.add(NewRlInstruction(0x12, 1, 8, as.Dw))
	s.add(NewRlInstruction(0x13, 1, 8, as.Ew))
	s.add(NewRlInstruction(0x14, 1, 8, as.Hw))
	s.add(NewRlInstruction(0x15, 1, 8, as.Lw))

	s.add(NewRlInstruction(0x16, 1, 16, as.HLm))
	s.add(NewRlInstruction(0x17, 1, 8, as.Aw))

	// RR
	s.add(NewRrInstruction(0x18, 1, 8, as.Bw))
	s.add(NewRrInstruction(0x19, 1, 8, as.Cw))
	s.add(NewRrInstruction(0x1a, 1, 8, as.Dw))
	s.add(NewRrInstruction(0x1b, 1, 8, as.Ew))
	s.add(NewRrInstruction(0x1c, 1, 8, as.Hw))
	s.add(NewRrInstruction(0x1d, 1, 8, as.Lw))

	s.add(NewRrInstruction(0x1e, 1, 16, as.HLm))
	s.add(NewRrInstruction(0x1f, 1, 8, as.Aw))
}
