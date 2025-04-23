package ins

import (
	"github.com/khoakmp/gbemu/mmu"
	"github.com/khoakmp/gbemu/rs"
)

type DaaInstruction struct {
	InstructionBase
}

/*
After Addition:

	  If the lower nibble (bits 0-3) is greater than 9 or the H (half-carry) flag is set,
			add 0x06 to the accumulator.
	  If the upper nibble (bits 4-7) is greater than 9 or the C (carry) flag is set,
			add 0x60 to the accumulator.

After Subtraction:

		If the H flag was set before the operation, subtract 0x06 from the accumulator.
	  If the C flag was set before the operation, subtract 0x60 from the accumulator.

Flags:

	Z (Zero): Set if the adjusted accumulator value is 0x00.
	H (Half-carry): Reset.
	C (Carry): Set if a carry occurred during the adjustment (e.g., result exceeds 0x99 for addition).
	N (Subtract): Unchanged.
*/
func (d *DaaInstruction) Run(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16) (cycles uint8) {
	var val uint8 = regSet.A.Read8Bit()
	cflag := false
	lower := val & 15
	upper := val >> 4
	if regSet.F.GetFlag(rs.FlagN) {
		// After subtraction
		if regSet.F.GetFlag(rs.FlagH) {
			val -= 0x06
		}
		if regSet.F.GetFlag(rs.FlagC) {
			val -= 0x60
			cflag = upper < 0x06
		}
		goto SET
	}
	// After addition
	if lower > 9 || regSet.F.GetFlag(rs.FlagH) {
		val += 0x06
	}
	if upper > 9 || regSet.F.GetFlag(rs.FlagC) {
		cflag = uint16(val)+uint16(0x60) > 0xff
		val += 0x60
	}
SET:
	regSet.F.SetFlag(rs.FlagC, cflag)
	regSet.F.SetFlag(rs.FlagH, false)
	regSet.F.SetFlag(rs.FlagZ, val == 0)
	// N unchanged
	regSet.A.Write8Bit(val)

	return d.Cycles
}

func newDaaInstruction(opCode, length, cycles uint8) *DaaInstruction {
	return &DaaInstruction{
		InstructionBase: InstructionBase{
			OpCode: opCode,
			Length: length,
			Cycles: cycles,
		},
	}
}

func (s *InstructionSet) initDaa() {
	s.add(newDaaInstruction(0x27, 1, 4))
}
