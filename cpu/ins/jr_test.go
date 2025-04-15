package ins

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestJr(t *testing.T) {
	mUnit, regSet, inSet := createModules()
	var ins Instruction = inSet.instructions[0x18]
	/*
	   JR n (Unconditional Relative Jump)
	   Opcode: 18
	*/
	var curPC uint16 = 0x2000
	var n int8 = -127

	regSet.PC.Write16Bit(curPC)
	cycles := ins.Run(regSet, mUnit, uint16(uint8(n)))
	assert.Equal(t, uint16(0x2000)-127, regSet.PC.Read16Bit())
	assert.Equal(t, uint8(12), cycles)
	// not need test conditional case
}
