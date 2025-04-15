package ins

import (
	"github.com/khoakmp/gbemu/cpu/args"
	"github.com/khoakmp/gbemu/mmu"
	"github.com/khoakmp/gbemu/rs"
)

type ResInstruction struct {
	InstructionBase
	R args.RW8Bit
}

func newResInstruction(opCode, length, cycles uint8, R args.RW8Bit) *ResInstruction {
	return &ResInstruction{
		InstructionBase: InstructionBase{
			OpCode: opCode,
			Length: length,
			Cycles: cycles,
		},
		R: R,
	}
}
func (r *ResInstruction) Run(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16) uint8 {
	n := (r.OpCode >> 3) & 7
	//n := r.R1.Read8Bit(nil, nil, param)
	val := r.R.Read8Bit(nil, nil, 0)
	val &= ^uint8(1 << n)
	// unchange flags
	r.R.Write8Bit(nil, nil, 0, val)
	return r.Cycles
}

type SetInstruction struct {
	InstructionBase
	R args.RW8Bit
}

func newSetInstruction(opCode, length, cycles uint8, R args.RW8Bit) *SetInstruction {
	return &SetInstruction{
		InstructionBase: InstructionBase{
			OpCode: opCode,
			Length: length,
			Cycles: cycles,
		},
		R: R,
	}
}
func (r *SetInstruction) Run(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16) uint8 {
	n := (r.OpCode >> 3) & 7
	//n := r.R1.Read8Bit(nil, nil, param)
	val := r.R.Read8Bit(nil, nil, 0)
	val |= uint8(1 << n)
	// unchange flags
	r.R.Write8Bit(nil, nil, 0, val)
	return r.Cycles
}

func (s *CbInstructionSet) initSetRes(as *args.ArgumentSet) {
	// SET
	var opcode uint8 = 0xc0
	for i := 0; i < 8; i++ {
		s.add(newSetInstruction(opcode, 1, 8, as.Bw))
		s.add(newSetInstruction(opcode+1, 1, 8, as.Cw))
		s.add(newSetInstruction(opcode+2, 1, 8, as.Dw))
		s.add(newSetInstruction(opcode+3, 1, 8, as.Ew))
		s.add(newSetInstruction(opcode+4, 1, 8, as.Hw))
		s.add(newSetInstruction(opcode+5, 1, 8, as.Lw))
		s.add(newSetInstruction(opcode+6, 1, 16, as.HLm))
		s.add(newSetInstruction(opcode+7, 1, 8, as.Aw))
		opcode += 8
	}
	// RES
	opcode = 0x80

	for i := 0; i < 8; i++ {
		s.add(newResInstruction(opcode, 1, 8, as.Bw))
		s.add(newResInstruction(opcode+1, 1, 8, as.Cw))
		s.add(newResInstruction(opcode+2, 1, 8, as.Dw))
		s.add(newResInstruction(opcode+3, 1, 8, as.Ew))
		s.add(newResInstruction(opcode+4, 1, 8, as.Hw))
		s.add(newResInstruction(opcode+5, 1, 8, as.Lw))
		s.add(newResInstruction(opcode+6, 1, 16, as.HLm))
		s.add(newResInstruction(opcode+7, 1, 8, as.Aw))
		opcode += 8
	}
}
