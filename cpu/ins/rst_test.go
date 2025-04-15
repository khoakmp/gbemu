package ins

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

/*
RST $00: C7
RST $08: CF
RST $10: D7
RST $18: DF
RST $20: E7
RST $28: EF
RST $30: F7
RST $38: FF
*/

func TestRst(t *testing.T) {
	mUnit, regSet, inSet := createModules()
	var ins Instruction = inSet.instructions[0x18]
	ins = inSet.instructions[0xc7]
	var spAddr uint16 = 0xc12a
	var curPC uint16 = 0x21aa
	regSet.PC.Write16Bit(curPC)
	regSet.SP.Write16Bit(spAddr)
	ins.Run(regSet, mUnit, 0)
	assert.Equal(t, uint16(0), regSet.PC.Read16Bit())
	assert.Equal(t, spAddr-2, regSet.SP.Read16Bit())
	assert.Equal(t, curPC, mUnit.Read16Bit(spAddr-2))
}
