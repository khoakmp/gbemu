package ins

import (
	"testing"

	"github.com/khoakmp/gbemu/rs"
	"github.com/stretchr/testify/assert"
)

func TestInc(t *testing.T) {
	mUnit, regSet, inSet := createModules()
	var ins Instruction
	A := regSet.A
	ins = inSet.instructions[0x3c]
	A.Write8Bit(15)
	ins.Run(regSet, mUnit, 0)
	assert.Equal(t, uint8(16), A.Read8Bit())
	assert.Equal(t, true, regSet.F.GetFlag(rs.FlagH))
	assert.Equal(t, false, regSet.F.GetFlag(rs.FlagN))
	assert.Equal(t, false, regSet.F.GetFlag(rs.FlagZ))
	assert.Equal(t, false, regSet.F.GetFlag(rs.FlagC))
}

/*
INC r (8-bit Register) cycle: 4 ,len = 1
Opcodes (in hex):

	A: 3C
	B: 04
	 C: 0C
	 D: 14
	 E: 1C
	 H: 24
	 L: 2C

INC (HL) (8-bit Memory)

	Opcode: 34 (hex)
	Cycles: 12 (3 machine cycles: fetch, read, write)
	Size: 1 byte
	Flags Affected: Same as INC r:

INC rr (16-bit Register Pair) cycles: 8

	Opcodes (in hex):
	    BC: 03
	    DE: 13
	    HL: 23
	    SP: 33
*/
