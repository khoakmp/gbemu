package ins

import (
	"testing"

	"github.com/khoakmp/gbemu/rs"
	"github.com/stretchr/testify/assert"
)

/*
CALL nn (Unconditional Call)

		Opcode: CD (hex)
	  Operands: 16-bit address (nn), specified as two bytes (low byte, high byte).
	  Cycles: 24 cycles (6 machine cycles)

CALL NZ, nn: C4
CALL Z, nn: CC
CALL NC, nn: D4
CALL C, nn: DC
true: 24 cycles, false 12 cycles
*/

func TestCall(t *testing.T) {
	mUnit, regSet, inSet := createModules()
	var ins Instruction
	var initPcAddr, initSpAddr uint16 = 0x2200, 0xd010
	// SP point to WRAM
	var addr uint16 = 0x2100 // this address in rom bank 0
	reset := func() {
		regSet.PC.Write16Bit(initPcAddr)
		regSet.SP.Write16Bit(initSpAddr)
	}
	checkJump := func(t *testing.T) {
		assert.Equal(t, addr, regSet.PC.Read16Bit())
		assert.Equal(t, initSpAddr-2, regSet.SP.Read16Bit())
		assert.Equal(t, initPcAddr, mUnit.Read16Bit(initSpAddr-2))
	}
	checkNotJump := func(t *testing.T) {
		assert.Equal(t, initPcAddr, regSet.PC.Read16Bit())
		assert.Equal(t, initSpAddr, regSet.SP.Read16Bit())
	}

	reset()
	ins = inSet.instructions[0xcd]
	ins.Run(regSet, mUnit, addr)
	checkJump(t)

	reset()
	ins = inSet.instructions[0xc4]
	regSet.F.SetFlag(rs.FlagZ, true)

	ins.Run(regSet, mUnit, addr)
	checkNotJump(t)

	reset()
	ins = inSet.instructions[0xcc]
	regSet.F.SetFlag(rs.FlagZ, true)
	ins.Run(regSet, mUnit, addr)
	checkJump(t)

	reset()
	regSet.F.SetFlag(rs.FlagZ, true)
	ins.Run(regSet, mUnit, addr)
	checkJump(t)

	reset()
	ins = inSet.instructions[0xd4]
	regSet.F.SetFlag(rs.FlagC, true)
	ins.Run(regSet, mUnit, addr)
	checkNotJump(t)

	reset()
	regSet.F.SetFlag(rs.FlagC, false)
	ins.Run(regSet, mUnit, addr)
	checkJump(t)

	reset()
	ins = inSet.instructions[0xdc]
	regSet.F.SetFlag(rs.FlagC, true)
	ins.Run(regSet, mUnit, addr)
	checkJump(t)

	reset()
	regSet.F.SetFlag(rs.FlagC, false)
	ins.Run(regSet, mUnit, addr)
	checkNotJump(t)

}
