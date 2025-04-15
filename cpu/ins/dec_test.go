package ins

import (
	"testing"

	"github.com/khoakmp/gbemu/rs"
	"github.com/stretchr/testify/assert"
)

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

func TestDec(t *testing.T) {
	mUnit, regSet, inSet := createModules()
	var ins Instruction
	t.Run("8bit", func(t *testing.T) {
		A := regSet.A
		ins = inSet.instructions[0x3d]
		A.Write8Bit(16)
		ins.Run(regSet, mUnit, 0)
		assert.Equal(t, uint8(15), A.Read8Bit())
		assert.Equal(t, true, regSet.F.GetFlag(rs.FlagH))
		assert.Equal(t, false, regSet.F.GetFlag(rs.FlagZ))
		assert.Equal(t, false, regSet.F.GetFlag(rs.FlagC))
		assert.Equal(t, true, regSet.F.GetFlag(rs.FlagN))
	})
	t.Run("16bit", func(t *testing.T) {
		BC := regSet.BC
		BC.Write16Bit(22)
		ins = inSet.instructions[0x0b]
		ins.Run(regSet, mUnit, 0)
		assert.Equal(t, uint16(21), BC.Read16Bit())
		// does not affect any Flag
	})
}
