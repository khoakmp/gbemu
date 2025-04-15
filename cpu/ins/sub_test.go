package ins

import (
	"testing"

	"github.com/khoakmp/gbemu/rs"
	"github.com/stretchr/testify/assert"
)

func TestSub(t *testing.T) {
	mUnit, regSet, inSet := createModules()
	var ins Instruction = inSet.instructions[0x18]
	/*
		SUB r
		Opcodes:
		    A: 97
				B: 90
	*/
	// Just test one case la ok
	A := regSet.A
	A.Write8Bit(145)
	ins = inSet.instructions[0x97]
	ins.Run(regSet, mUnit, 0)
	assert.Equal(t, uint8(0), A.Read8Bit())
	assert.Equal(t, true, regSet.F.GetFlag(rs.FlagZ))
	assert.Equal(t, true, regSet.F.GetFlag(rs.FlagN))
	assert.Equal(t, false, regSet.F.GetFlag(rs.FlagH))
	assert.Equal(t, false, regSet.F.GetFlag(rs.FlagC))

	A.Write8Bit(123)
	regSet.B.Write8Bit(127)
	ins = inSet.instructions[0x90]
	ins.Run(regSet, mUnit, 0)
	assert.Equal(t, uint8(252), A.Read8Bit())
	assert.Equal(t, false, regSet.F.GetFlag(rs.FlagZ))
	assert.Equal(t, true, regSet.F.GetFlag(rs.FlagN))
	assert.Equal(t, true, regSet.F.GetFlag(rs.FlagH))
	assert.Equal(t, true, regSet.F.GetFlag(rs.FlagC))
}
