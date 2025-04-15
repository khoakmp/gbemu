package ins

import (
	"github.com/khoakmp/gbemu/cpu/args"
	"github.com/khoakmp/gbemu/mmu"
	"github.com/khoakmp/gbemu/rs"
)

type Add8BitInstruction struct {
	InstructionBase
	R1 args.RW8Bit
	R2 args.Read8Bit
}

func calAdd8bit(x, y uint8, regs *rs.RegisterSet) (ans uint8) {
	regs.F.SetFlag(rs.FlagN, false)
	regs.F.SetFlag(rs.FlagC, (x+y) > 255)
	regs.F.SetFlag(rs.FlagH, (x&15)+(y&15) > 15)
	ans = uint8(x + y)
	regs.F.SetFlag(rs.FlagZ, ans == 0)
	return
}

func (a *Add8BitInstruction) Run(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16) uint8 {
	var adder uint8 = a.R2.Read8Bit(regSet, mmUnit, param)
	var ans = a.R1.Read8Bit(regSet, mmUnit, param)
	ans = calAdd8bit(ans, adder, regSet)
	a.R1.Write8Bit(regSet, mmUnit, param, ans)
	return a.Cycles
}

type Add16BitInstruction struct {
	InstructionBase
	R1 args.RW16Bit
	R2 args.Read16Bit
}

func calAdd16bit(x, y uint16, regs *rs.RegisterSet) (ans uint16) {
	regs.F.SetFlag(rs.FlagN, false)
	regs.F.SetFlag(rs.FlagC, uint32(x)+uint32(y) > 65535)
	// add 2 value 16 bit unsigned => check half carry from bit 11 to bit 12
	regs.F.SetFlag(rs.FlagH, (x&4095)+(y&4095) > 4095)
	ans = uint16(x + y)
	regs.F.SetFlag(rs.FlagZ, ans == 0)
	return
}

func (a *Add16BitInstruction) Run(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16) uint8 {
	var adder uint16 = a.R2.Read16Bit(regSet, mmUnit, param)
	var val = a.R1.Read16Bit(regSet, mmUnit, param)
	ans := calAdd16bit(val, adder, regSet)
	if a.OpCode == 0xe8 {
		regSet.F.SetFlag(rs.FlagH, (val&15)+(adder&15) > 15)
	}
	a.R1.Write16Bit(regSet, mmUnit, param, ans)
	return a.Cycles
}

func newAdd8BitInstruction(opCode, length, cycles uint8,
	R1 args.RW8Bit, R2 args.Read8Bit) Instruction {
	return &Add8BitInstruction{
		InstructionBase: InstructionBase{
			OpCode: opCode,
			Length: length,
			Cycles: cycles,
		},
		R1: R1,
		R2: R2,
	}
}

func newAdd16BitInstruction(opCode, length, cycles uint8,
	R1 args.RW16Bit, R2 args.Read16Bit) Instruction {
	return &Add16BitInstruction{
		InstructionBase: InstructionBase{
			OpCode: opCode,
			Length: length,
			Cycles: cycles,
		},
		R1: R1,
		R2: R2,
	}
}

func (s *InstructionSet) initAdds(as *args.ArgumentSet) {
	s.add(newAdd8BitInstruction(0x87, 1, 4, as.Aw, as.Aw))
	s.add(newAdd8BitInstruction(0x80, 1, 4, as.Aw, as.Bw))
	s.add(newAdd8BitInstruction(0x81, 1, 4, as.Aw, as.Cw))
	s.add(newAdd8BitInstruction(0x82, 1, 4, as.Aw, as.Dw))
	s.add(newAdd8BitInstruction(0x83, 1, 4, as.Aw, as.Ew))
	s.add(newAdd8BitInstruction(0x84, 1, 4, as.Aw, as.Hw))
	s.add(newAdd8BitInstruction(0x85, 1, 4, as.Aw, as.Lw))

	s.add(newAdd8BitInstruction(0x86, 1, 8, as.Aw, as.HLm))
	s.add(newAdd8BitInstruction(0xc6, 2, 8, as.Aw, as.Num8bit))

	s.add(newAdd16BitInstruction(0x09, 1, 8, as.HLw, as.BCw))
	s.add(newAdd16BitInstruction(0x19, 1, 8, as.HLw, as.DEw))
	s.add(newAdd16BitInstruction(0x29, 1, 8, as.HLw, as.HLw))
	s.add(newAdd16BitInstruction(0x39, 1, 8, as.HLw, as.PCw))

	// TODO: change add SP, n
	s.add(newAdd16BitInstruction(0xe8, 2, 16, as.SPw, &args.Num16BitFrom8BitSigned{}))
}
