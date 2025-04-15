package ins

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestPush(t *testing.T) {
	mUnit, regSet, inSet := createModules()
	var ins Instruction = inSet.instructions[0x18]
	/*
	   PUSH BC: Opcode C5
	   PUSH DE: Opcode D5
	   PUSH HL: Opcode E5
	   PUSH AF: Opcode F5
	*/
	ins = inSet.instructions[0xc5]
	var val uint16 = 0x21a0
	var spAddr uint16 = 0xca20
	regSet.BC.Write16Bit(val)
	regSet.SP.Write16Bit(spAddr)
	ins.Run(regSet, mUnit, 0)
	assert.Equal(t, val, mUnit.Read16Bit(spAddr-2))
	assert.Equal(t, spAddr-2, regSet.SP.Read16Bit())
}
