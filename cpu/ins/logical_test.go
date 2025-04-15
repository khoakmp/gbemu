package ins

import (
	"testing"

	"github.com/khoakmp/gbemu/rs"
	"github.com/stretchr/testify/assert"
)

/*
. **`AND r`**:
  - Opcodes:
  - `A`: `A7`
  - `B`: `A0`
  - `C`: `A1`
  - `D`: `A2`
  - `E`: `A3`
  - `H`: `A4`
  - `L`: `A5`
  - Cycles: 4 (1 machine cycle)
  - Size: 1 byte

2. **`AND (HL)`**:
  - Opcode: `A6`
  - Cycles: 8 (2 machine cycles: fetch + memory read)
  - Size: 1 byte

3. **`AND n`**:
  - Opcode: `E6`
  - Cycles: 8 (2 machine cycles: fetch + read immediate)
  - Size: 2 bytes (opcode + 1-byte immediate)
*/
func TestLogical(t *testing.T) {
	mUnit, regSet, inSet := createModules()
	var ins Instruction = inSet.instructions[0x18]
	A := regSet.A
	t.Run("AND", func(t *testing.T) {
		// and -> clear C and N, set H to 1 and Z -> depend on result dung
		// -> these instructions just affect the flag and the Reigster A value dung
		A.Write8Bit(0b1010) // 1010
		regSet.B.Write8Bit(0b1100)
		ins = inSet.instructions[0xa0]
		ins.Run(regSet, mUnit, 0)
		assert.Equal(t, uint8(0b1000), A.Read8Bit())
		assert.Equal(t, true, regSet.F.GetFlag(rs.FlagH))
		assert.Equal(t, false, regSet.F.GetFlag(rs.FlagC))
		assert.Equal(t, false, regSet.F.GetFlag(rs.FlagN))
		assert.Equal(t, false, regSet.F.GetFlag(rs.FlagZ))
		// Test AND a
		A.Write8Bit(0b1010)
		ins = inSet.instructions[0xa7]
		ins.Run(regSet, mUnit, 0)
		assert.Equal(t, uint8(0b1010), A.Read8Bit())

		var n uint8 = 0b0101
		ins = inSet.instructions[0xe6]
		ins.Run(regSet, mUnit, uint16(n))
		assert.Equal(t, uint8(0), A.Read8Bit())
		assert.Equal(t, true, regSet.F.GetFlag(rs.FlagZ))
	})

	t.Run("XOR", func(t *testing.T) {
		A.Write8Bit(0b10110)
		regSet.B.Write8Bit(0b11000)
		ins = inSet.instructions[0xa8]
		ins.Run(regSet, mUnit, 0)
		assert.Equal(t, uint8(0b01110), A.Read8Bit())
		assert.Equal(t, false, regSet.F.GetFlag(rs.FlagC))
		assert.Equal(t, false, regSet.F.GetFlag(rs.FlagN))
		assert.Equal(t, false, regSet.F.GetFlag(rs.FlagH))
		assert.Equal(t, false, regSet.F.GetFlag(rs.FlagZ))
	})
	/*
		OR r:

		    Opcodes:
		        A: B7
		        B: B0
		        C: B1
		        D: B2
		        E: B3
		        H: B4
		        L: B5
		    Cycles: 4 (1 machine cycle)
		    Size: 1 byte

		OR (HL):

		    Opcode: B6
		    Cycles: 8 (2 machine cycles: fetch + memory read)
		    Size: 1 byte

		OR n:

		    Opcode: F6
		    Cycles: 8 (2 machine cycles: fetch + read immediate)
		    Size: 2 bytes (opcode + 1-byte immediate)
	*/
	t.Run("OR", func(t *testing.T) {
		A.Write8Bit(0b0000)
		regSet.B.Write8Bit(0b0000)
		ins = inSet.instructions[0xb0]
		ins.Run(regSet, mUnit, 0)
		assert.Equal(t, uint8(0b0000), A.Read8Bit())
		assert.Equal(t, false, regSet.F.GetFlag(rs.FlagC))
		assert.Equal(t, false, regSet.F.GetFlag(rs.FlagN))
		assert.Equal(t, false, regSet.F.GetFlag(rs.FlagH))
		assert.Equal(t, true, regSet.F.GetFlag(rs.FlagZ))
	})
	t.Run("CFlag", func(t *testing.T) {
		// SCF: 0x37, CCF: 0x3f
		// Zero Flag remains unchange , clear N,H
		regSet.F.ClearAll()
		ins = inSet.instructions[0x37]
		ins.Run(regSet, mUnit, 0)

		assert.Equal(t, false, regSet.F.GetFlag(rs.FlagH))
		assert.Equal(t, false, regSet.F.GetFlag(rs.FlagN))
		assert.Equal(t, false, regSet.F.GetFlag(rs.FlagZ))
		assert.Equal(t, true, regSet.F.GetFlag(rs.FlagC))

		ins = inSet.instructions[0x3f]
		ins.Run(regSet, mUnit, 0)
		assert.Equal(t, false, regSet.F.GetFlag(rs.FlagC))

	})
	// not test CPL -> simple
}
