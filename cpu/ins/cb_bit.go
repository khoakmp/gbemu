package ins

import (
	"github.com/khoakmp/gbemu/cpu/args"
	"github.com/khoakmp/gbemu/mmu"
	"github.com/khoakmp/gbemu/rs"
)

type BitInstruction struct {
	InstructionBase
	R args.Read8Bit
}

func (b *BitInstruction) Run(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16) uint8 {
	n := (b.OpCode >> 3) & 7
	// ok dau tien se la register ->
	//n := b.R1.Read8Bit(nil, nil, param)
	val := b.R.Read8Bit(nil, nil, 0)

	bitn := val & (1 << n)
	regSet.F.SetFlag(rs.FlagZ, bitn == 0)
	regSet.F.SetFlag(rs.FlagH, true)
	regSet.F.SetFlag(rs.FlagN, false)
	return b.Cycles
}
func NewBitInstruction(opCode, length, cycles uint8, R args.Read8Bit) *BitInstruction {
	return &BitInstruction{
		InstructionBase: InstructionBase{
			OpCode: opCode,
			Length: length,
			Cycles: cycles,
		},
		R: R,
	}
}
func (s *CbInstructionSet) initBits(as *args.ArgumentSet) {
	var opcode uint8 = 0x40
	for i := 0; i < 8; i++ {
		s.add(NewBitInstruction(opcode, 1, 8, as.Bw))
		s.add(NewBitInstruction(opcode+1, 1, 8, as.Cw))
		s.add(NewBitInstruction(opcode+2, 1, 8, as.Dw))
		s.add(NewBitInstruction(opcode+3, 1, 8, as.Ew))
		s.add(NewBitInstruction(opcode+4, 1, 8, as.Hw))
		s.add(NewBitInstruction(opcode+5, 1, 8, as.Lw))
		s.add(NewBitInstruction(opcode+6, 1, 12, as.HLm))
		s.add(NewBitInstruction(opcode+7, 1, 8, as.Aw))
		opcode += 8
	}

}
