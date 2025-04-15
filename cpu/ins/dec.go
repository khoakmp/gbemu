package ins

import (
	"github.com/khoakmp/gbemu/cpu/args"
	"github.com/khoakmp/gbemu/mmu"
	"github.com/khoakmp/gbemu/rs"
)

type Dec8BitInstruction struct {
	InstructionBase
	R args.RW8Bit
}

// Dec8Bit does not affcect Carry flag
func (d *Dec8BitInstruction) Run(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16) uint8 {
	regSet.F.SetFlag(rs.FlagN, true)
	val := d.R.Read8Bit(regSet, mmUnit, param)
	regSet.F.SetFlag(rs.FlagH, (val&15) < 1)
	val = val - 1
	regSet.F.SetFlag(rs.FlagZ, val == 0)
	d.R.Write8Bit(regSet, mmUnit, param, val)
	return d.Cycles
}

type Dec16BitInstruction struct {
	InstructionBase
	R args.RW16Bit
}

func (d *Dec16BitInstruction) Run(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16) uint8 {
	val := d.R.Read16Bit(regSet, mmUnit, param)
	val = val - 1
	d.R.Write16Bit(regSet, mmUnit, param, val)
	return d.Cycles
}

func newDec8BitInstruction(opCode, length, cycles uint8, R args.RW8Bit) Instruction {
	return &Dec8BitInstruction{
		InstructionBase: InstructionBase{
			OpCode: opCode,
			Length: length,
			Cycles: cycles,
		},
		R: R,
	}
}

func newDec16BitInstruction(opCode, length, cycles uint8, R args.RW16Bit) Instruction {
	return &Dec16BitInstruction{
		InstructionBase: InstructionBase{
			OpCode: opCode,
			Length: length,
			Cycles: cycles,
		},
		R: R,
	}
}

/*
. DEC r (8-bit Register)

	Opcodes (in hex):
	    A: 3D
	    B: 05
	    C: 0D
	    D: 15
	    E: 1D
	    H: 25
	    L: 2D
	Cycles: 4 (1 machine cycle)
	Size: 1 byte
DEC (HL) (8-bit Memory)

	Opcode: 35 (hex)
	Cycles: 12 (3 machine cycles: fetch, read, write)
	Size: 1 byte

3. DEC rr (16-bit Register Pair)

	Opcodes (in hex):
	    BC: 0B
	    DE: 1B
	    HL: 2B
	    SP: 3B
	Cycles: 8 (2 machine cycles)
	Size: 1 byte
*/

func (s *InstructionSet) initDecs(as *args.ArgumentSet) {
	s.add(newDec8BitInstruction(0x3d, 1, 4, as.Aw))
	s.add(newDec8BitInstruction(0x05, 1, 4, as.Bw))
	s.add(newDec8BitInstruction(0x0d, 1, 4, as.Cw))
	s.add(newDec8BitInstruction(0x15, 1, 4, as.Dw))
	s.add(newDec8BitInstruction(0x1d, 1, 4, as.Ew))
	s.add(newDec8BitInstruction(0x25, 1, 4, as.Hw))
	s.add(newDec8BitInstruction(0x2d, 1, 4, as.Lw))

	s.add(newDec8BitInstruction(0x35, 1, 12, as.HLm))

	s.add(newDec16BitInstruction(0x0b, 1, 8, as.BCw))
	s.add(newDec16BitInstruction(0x1b, 1, 8, as.DEw))
	s.add(newDec16BitInstruction(0x2b, 1, 8, as.HLw))
	s.add(newDec16BitInstruction(0x3b, 1, 8, as.SPw))

}
