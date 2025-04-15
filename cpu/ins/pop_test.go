package ins

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestPop(t *testing.T) {
	mUnit, regSet, inSet := createModules()
	var ins Instruction = inSet.instructions[0x18]
	/*
		POP BC: Opcode C1
		POP DE: Opcode D1
		POP HL: Opcode E1
		POP AF: Opcode F1
	*/
	var spAddr uint16 = 0xc010 // sp keep address in WRAM
	var val uint16 = 0x2010    // the value store at that address is an address of ROM
	mUnit.Write16Bit(spAddr, val)
	regSet.SP.Write16Bit(spAddr)
	ins = inSet.instructions[0xc1]
	ins.Run(regSet, mUnit, 0)
	assert.Equal(t, val, regSet.BC.Read16Bit())
	assert.Equal(t, spAddr+2, regSet.SP.Read16Bit())
}
