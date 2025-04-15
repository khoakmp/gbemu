package ins

import (
	"github.com/khoakmp/gbemu/cpu/args"
	"github.com/khoakmp/gbemu/mmu"
	"github.com/khoakmp/gbemu/rs"
)

type SwapInstruction struct {
	InstructionBase
	R args.RW8Bit
}

func (s *SwapInstruction) Run(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16) uint8 {
	val := s.R.Read8Bit(nil, nil, 0)
	low := val & 15
	hight := val >> 4
	val = (low << 4) | hight
	regSet.F.ClearAll()
	regSet.F.SetFlag(rs.FlagZ, val == 0)
	s.R.Write8Bit(nil, nil, 0, val)
	return s.Cycles
}
func NewSwapInstruction(opCode, length, cycles uint8, R args.RW8Bit) *SwapInstruction {
	return &SwapInstruction{
		InstructionBase: InstructionBase{
			OpCode: opCode,
			Length: length,
			Cycles: cycles,
		},
		R: R,
	}
}
func (s *CbInstructionSet) initSwaps(as *args.ArgumentSet) {
	s.add(NewSwapInstruction(0x30, 1, 8, as.Bw))
	s.add(NewSwapInstruction(0x31, 1, 8, as.Cw))
	s.add(NewSwapInstruction(0x32, 1, 8, as.Dw))
	s.add(NewSwapInstruction(0x33, 1, 8, as.Ew))
	s.add(NewSwapInstruction(0x34, 1, 8, as.Hw))
	s.add(NewSwapInstruction(0x35, 1, 8, as.Lw))
	s.add(NewSwapInstruction(0x36, 1, 16, as.HLm))
	s.add(NewSwapInstruction(0x37, 1, 8, as.Aw))

}
