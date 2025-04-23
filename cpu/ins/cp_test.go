package ins

import (
	"testing"

	"github.com/khoakmp/gbemu/rs"
	"github.com/stretchr/testify/assert"
)

/*
CP r:

	Opcodes:
	    A: BF
	    B: B8
	    C: B9
	    D: BA
	    E: BB
	    H: BC
	    L: BD
	Cycles: 4 (1 machine cycle)
	Size: 1 byte

CP (HL):

	Opcode: BE
	Cycles: 8 (2 machine cycles: fetch + memory read)
	Size: 1 byte

CP n:

	Opcode: FE
	Cycles: 8 (2 machine cycles: fetch + read immediate)
	Size: 2 bytes (opcode + 1-byte immediate)
*/
func TestCp(t *testing.T) {
	mUnit, regSet, inSet := createModules()
	var ins Instruction
	A := regSet.A

	ins = inSet.instructions[0xb8]
	// not need to test other case
	A.Write8Bit(11)
	regSet.B.Write8Bit(12)
	ins.Run(regSet, mUnit, 0)
	assert.Equal(t, true, regSet.F.GetFlag(rs.FlagC))
	assert.Equal(t, true, regSet.F.GetFlag(rs.FlagH))
	assert.Equal(t, true, regSet.F.GetFlag(rs.FlagN))
	assert.Equal(t, false, regSet.F.GetFlag(rs.FlagZ))

	A.Write8Bit(12)
	ins.Run(regSet, mUnit, 0)
	assert.Equal(t, false, regSet.F.GetFlag(rs.FlagC))
	assert.Equal(t, false, regSet.F.GetFlag(rs.FlagH))
	assert.Equal(t, true, regSet.F.GetFlag(rs.FlagN))
	assert.Equal(t, true, regSet.F.GetFlag(rs.FlagZ))

	t.Run("n", func(t *testing.T) {
		A.Write8Bit(12)
		ins = inSet.instructions[0xfe]
		ins.Run(regSet, mUnit, 23)

		assert.Equal(t, true, regSet.F.GetFlag(rs.FlagC))
		assert.Equal(t, true, regSet.F.GetFlag(rs.FlagN))
		assert.Equal(t, false, regSet.F.GetFlag(rs.FlagH))
		assert.Equal(t, false, regSet.F.GetFlag(rs.FlagZ))

	})
}
