package ins

import (
	"github.com/khoakmp/gbemu/cpu/args"
	"github.com/khoakmp/gbemu/mmu"
	"github.com/khoakmp/gbemu/rs"
)

type Ld8BitInstruction struct {
	InstructionBase
	R1 args.Write8Bit
	R2 args.Read8Bit
}

func (l *Ld8BitInstruction) Run(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16) (cycles uint8) {
	l.R1.Write8Bit(regSet, mmUnit, param, l.R2.Read8Bit(regSet, mmUnit, param))
	return l.Cycles
}

type Ld16BitInstruction struct {
	InstructionBase
	R1 args.Write16Bit
	R2 args.Read16Bit
}

func (l *Ld16BitInstruction) Run(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16) (cycles uint8) {
	l.R1.Write16Bit(regSet, mmUnit, param, l.R2.Read16Bit(regSet, mmUnit, param))
	return l.Cycles
}

func newLd8BitInstruction(opcode, length, cycles uint8,
	R1 args.Write8Bit, R2 args.Read8Bit) Instruction {
	return &Ld8BitInstruction{
		InstructionBase: InstructionBase{
			OpCode: opcode,
			Length: length,
			Cycles: cycles,
		},
		R1: R1,
		R2: R2,
	}
	//s.instructions[opcode] = ins
}

func newLd16BitInstruction(opcode, length, cycles uint8,
	R1 args.Write16Bit, R2 args.Read16Bit) Instruction {
	return &Ld16BitInstruction{
		InstructionBase: InstructionBase{
			OpCode: opcode,
			Length: length,
			Cycles: cycles,
		},
		R1: R1,
		R2: R2,
	}
}

// no arg
type Ld8BitUpdateHLInstruction struct {
	InstructionBase
}

type LdHlSpInstruction struct {
	InstructionBase
}

func (l *LdHlSpInstruction) Run(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16) (cycles uint8) {
	n := uint16(int16(int8(uint8(param))))
	sp := regSet.SP.Read16Bit()
	val := n + sp
	regSet.F.SetFlag(rs.FlagH, (n&15+sp&15) > 15)
	regSet.F.SetFlag(rs.FlagC, (uint32(n)+uint32(sp)) > 65535)
	regSet.F.SetFlag(rs.FlagN, false)
	regSet.F.SetFlag(rs.FlagZ, val == 0)
	regSet.HL.Write16Bit(val)
	return l.Cycles
}

func newLdHlSpInstruction(opCode, length, cycle uint8) Instruction {
	return &LdHlSpInstruction{
		InstructionBase: InstructionBase{
			OpCode: opCode,
			Length: length,
			Cycles: cycle,
		},
	}
}
func (l *Ld8BitUpdateHLInstruction) Run(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16) (cycles uint8) {
	//println("run Ld8BitUpdateHLInstruction")
	writeAToMemHL := func() (addr uint16) {
		var a uint8 = regSet.A.Read8Bit()
		addr = regSet.HL.Read16Bit()
		//println("address stored in HL:", addr)
		mmUnit.Write8Bit(addr, a)
		//println("write value:", a)
		return
	}
	writeMemHLToA := func() (addr uint16) {
		addr = regSet.HL.Read16Bit()
		var val uint8 = mmUnit.Read8Bit(addr)
		regSet.A.Write8Bit(val)
		return
	}
	switch l.OpCode {
	case 0x22:
		addr := writeAToMemHL()
		regSet.HL.Write16Bit(addr + 1)
	case 0x2a:
		addr := writeMemHLToA()
		regSet.HL.Write16Bit(addr + 1)
	case 0x32:
		//println("run instruction 0x32")
		addr := writeAToMemHL()
		regSet.HL.Write16Bit(addr - 1)
	case 0x3a:
		addr := writeMemHLToA()
		regSet.HL.Write16Bit(addr - 1)
	}
	return l.Cycles
}
func newLd8BitUpdateHLInstruction(opCode, length, cycles uint8) Instruction {
	return &Ld8BitUpdateHLInstruction{
		InstructionBase: InstructionBase{
			OpCode: opCode,
			Length: length,
			Cycles: cycles,
		},
	}
}

func (s *InstructionSet) initLds(as *args.ArgumentSet) {
	s.instructions[0x7f] = newLd8BitInstruction(0x7f, 1, 4, as.Aw, as.Aw)
	s.instructions[0x78] = newLd8BitInstruction(0x78, 1, 4, as.Aw, as.Bw)
	s.instructions[0x79] = newLd8BitInstruction(0x79, 1, 4, as.Aw, as.Cw)
	s.instructions[0x7a] = newLd8BitInstruction(0x7a, 1, 4, as.Aw, as.Dw)
	s.instructions[0x7b] = newLd8BitInstruction(0x7b, 1, 4, as.Aw, as.Ew)
	s.instructions[0x7c] = newLd8BitInstruction(0x7c, 1, 4, as.Aw, as.Hw)
	s.instructions[0x7d] = newLd8BitInstruction(0x7d, 1, 4, as.Aw, as.Lw)

	s.instructions[0x47] = newLd8BitInstruction(0x47, 1, 4, as.Bw, as.Aw)
	s.instructions[0x40] = newLd8BitInstruction(0x40, 1, 4, as.Bw, as.Bw)
	s.instructions[0x41] = newLd8BitInstruction(0x41, 1, 4, as.Bw, as.Cw)
	s.instructions[0x42] = newLd8BitInstruction(0x42, 1, 4, as.Bw, as.Dw)
	s.instructions[0x43] = newLd8BitInstruction(0x43, 1, 4, as.Bw, as.Ew)
	s.instructions[0x44] = newLd8BitInstruction(0x44, 1, 4, as.Bw, as.Hw)
	s.instructions[0x45] = newLd8BitInstruction(0x45, 1, 4, as.Bw, as.Lw)

	s.instructions[0x4f] = newLd8BitInstruction(0x4f, 1, 4, as.Cw, as.Aw)
	s.instructions[0x48] = newLd8BitInstruction(0x48, 1, 4, as.Cw, as.Bw)
	s.instructions[0x49] = newLd8BitInstruction(0x49, 1, 4, as.Cw, as.Cw)
	s.instructions[0x4a] = newLd8BitInstruction(0x4A, 1, 4, as.Cw, as.Dw)
	s.instructions[0x4b] = newLd8BitInstruction(0x4B, 1, 4, as.Cw, as.Ew)
	s.instructions[0x4c] = newLd8BitInstruction(0x4C, 1, 4, as.Cw, as.Hw)
	s.instructions[0x4d] = newLd8BitInstruction(0x4D, 1, 4, as.Cw, as.Lw)

	s.instructions[0x57] = newLd8BitInstruction(0x57, 1, 4, as.Dw, as.Aw)
	s.instructions[0x50] = newLd8BitInstruction(0x50, 1, 4, as.Dw, as.Bw)
	s.instructions[0x51] = newLd8BitInstruction(0x51, 1, 4, as.Dw, as.Cw)
	s.instructions[0x52] = newLd8BitInstruction(0x52, 1, 4, as.Dw, as.Dw)
	s.instructions[0x53] = newLd8BitInstruction(0x53, 1, 4, as.Dw, as.Ew)
	s.instructions[0x54] = newLd8BitInstruction(0x54, 1, 4, as.Dw, as.Hw)
	s.instructions[0x55] = newLd8BitInstruction(0x55, 1, 4, as.Dw, as.Lw)

	s.instructions[0x5f] = newLd8BitInstruction(0x5f, 1, 4, as.Ew, as.Aw)
	s.instructions[0x58] = newLd8BitInstruction(0x58, 1, 4, as.Ew, as.Bw)
	s.instructions[0x59] = newLd8BitInstruction(0x59, 1, 4, as.Ew, as.Cw)
	s.instructions[0x5a] = newLd8BitInstruction(0x5A, 1, 4, as.Ew, as.Dw)
	s.instructions[0x5b] = newLd8BitInstruction(0x5B, 1, 4, as.Ew, as.Ew)
	s.instructions[0x5c] = newLd8BitInstruction(0x5C, 1, 4, as.Ew, as.Hw)
	s.instructions[0x5d] = newLd8BitInstruction(0x5D, 1, 4, as.Ew, as.Lw)

	s.instructions[0x67] = newLd8BitInstruction(0x67, 1, 4, as.Hw, as.Aw)
	s.instructions[0x60] = newLd8BitInstruction(0x60, 1, 4, as.Hw, as.Bw)
	s.instructions[0x61] = newLd8BitInstruction(0x61, 1, 4, as.Hw, as.Cw)
	s.instructions[0x62] = newLd8BitInstruction(0x62, 1, 4, as.Hw, as.Dw)
	s.instructions[0x63] = newLd8BitInstruction(0x63, 1, 4, as.Hw, as.Ew)
	s.instructions[0x64] = newLd8BitInstruction(0x64, 1, 4, as.Hw, as.Hw)
	s.instructions[0x65] = newLd8BitInstruction(0x65, 1, 4, as.Hw, as.Lw)

	s.instructions[0x6f] = newLd8BitInstruction(0x6f, 1, 4, as.Lw, as.Aw)
	s.instructions[0x68] = newLd8BitInstruction(0x68, 1, 4, as.Lw, as.Bw)
	s.instructions[0x69] = newLd8BitInstruction(0x69, 1, 4, as.Lw, as.Cw)
	s.instructions[0x6a] = newLd8BitInstruction(0x6a, 1, 4, as.Lw, as.Dw)
	s.instructions[0x6b] = newLd8BitInstruction(0x6b, 1, 4, as.Lw, as.Ew)
	s.instructions[0x6c] = newLd8BitInstruction(0x6c, 1, 4, as.Lw, as.Hw)
	s.instructions[0x6d] = newLd8BitInstruction(0x6d, 1, 4, as.Lw, as.Lw)

	s.instructions[0x3e] = newLd8BitInstruction(0x3e, 2, 8, as.Aw, as.Num8bit)
	s.instructions[0x06] = newLd8BitInstruction(0x06, 2, 8, as.Bw, as.Num8bit)
	s.instructions[0x0e] = newLd8BitInstruction(0x0e, 2, 8, as.Cw, as.Num8bit)
	s.instructions[0x16] = newLd8BitInstruction(0x16, 2, 8, as.Dw, as.Num8bit)
	s.instructions[0x1e] = newLd8BitInstruction(0x1e, 2, 8, as.Ew, as.Num8bit)
	s.instructions[0x26] = newLd8BitInstruction(0x26, 2, 8, as.Hw, as.Num8bit)
	s.instructions[0x2e] = newLd8BitInstruction(0x2e, 2, 8, as.Lw, as.Num8bit)

	s.instructions[0x77] = newLd8BitInstruction(0x77, 1, 8, as.HLm, as.Aw)
	s.instructions[0x70] = newLd8BitInstruction(0x70, 1, 8, as.HLm, as.Bw)
	s.instructions[0x71] = newLd8BitInstruction(0x71, 1, 8, as.HLm, as.Cw)
	s.instructions[0x72] = newLd8BitInstruction(0x72, 1, 8, as.HLm, as.Dw)
	s.instructions[0x73] = newLd8BitInstruction(0x73, 1, 8, as.HLm, as.Ew)
	s.instructions[0x74] = newLd8BitInstruction(0x74, 1, 8, as.HLm, as.Hw)
	s.instructions[0x75] = newLd8BitInstruction(0x75, 1, 8, as.HLm, as.Lw)

	s.instructions[0x36] = newLd8BitInstruction(0x36, 2, 12, as.HLm, as.Num8bit)

	s.instructions[0x7e] = newLd8BitInstruction(0x7e, 1, 8, as.Aw, as.HLm)
	s.instructions[0x46] = newLd8BitInstruction(0x46, 1, 8, as.Bw, as.HLm)
	s.instructions[0x4e] = newLd8BitInstruction(0x4e, 1, 8, as.Cw, as.HLm)
	s.instructions[0x56] = newLd8BitInstruction(0x56, 1, 8, as.Dw, as.HLm)
	s.instructions[0x5e] = newLd8BitInstruction(0x5e, 1, 8, as.Ew, as.HLm)
	s.instructions[0x66] = newLd8BitInstruction(0x66, 1, 8, as.Hw, as.HLm)
	s.instructions[0x6e] = newLd8BitInstruction(0x6e, 1, 8, as.Lw, as.HLm)

	s.instructions[0x02] = newLd8BitInstruction(0x02, 1, 8, as.BCm, as.Aw)
	s.instructions[0x0a] = newLd8BitInstruction(0x0a, 1, 8, as.Aw, as.BCm)
	s.instructions[0x12] = newLd8BitInstruction(0x12, 1, 8, as.DEm, as.Aw)
	s.instructions[0x1a] = newLd8BitInstruction(0x1a, 1, 8, as.Aw, as.DEm)

	s.instructions[0xea] = newLd8BitInstruction(0xea, 3, 16, as.MemArgNum16Bit, as.Aw)
	s.instructions[0xfa] = newLd8BitInstruction(0xfa, 3, 16, as.Aw, as.MemArgNum16Bit)

	s.instructions[0xe0] = newLd8BitInstruction(0xe0, 2, 12, &args.MemArg{AddrHolder: as.Num16bitFrom8BitUnsigned}, as.Aw)
	s.instructions[0xf0] = newLd8BitInstruction(0xf0, 2, 12, as.Aw, &args.MemArg{AddrHolder: as.Num16bitFrom8BitUnsigned})
	s.instructions[0xe2] = newLd8BitInstruction(0xe2, 1, 8, as.Cm, as.Aw)
	s.instructions[0xf2] = newLd8BitInstruction(0xf2, 1, 8, as.Aw, as.Cm)

	s.add(newLd8BitUpdateHLInstruction(0x22, 1, 8))
	s.add(newLd8BitUpdateHLInstruction(0x2a, 1, 8))
	s.add(newLd8BitUpdateHLInstruction(0x32, 1, 8))
	s.add(newLd8BitUpdateHLInstruction(0x3a, 1, 8))

	s.add(newLd16BitInstruction(0x01, 3, 12, as.BCw, as.Num16bit))
	s.add(newLd16BitInstruction(0x11, 3, 12, as.DEw, as.Num16bit))
	s.add(newLd16BitInstruction(0x21, 3, 12, as.HLw, as.Num16bit))
	s.add(newLd16BitInstruction(0x31, 3, 12, as.SPw, as.Num16bit))

	s.add(newLd16BitInstruction(0xf9, 1, 8, as.SPw, as.HLw))
	// LD HL, SP+n	| 0xF8	| 12	| Load SP + n (signed) into HL
	s.add(newLdHlSpInstruction(0xf8, 2, 12))
	s.add(newLd16BitInstruction(0x08, 3, 20, as.MemArgNum16Bit, as.SPw))

}
