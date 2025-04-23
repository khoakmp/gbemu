package ins

import (
	"fmt"
	"testing"

	"github.com/khoakmp/gbemu/rs"
	"github.com/stretchr/testify/assert"
)

func TestAdd(t *testing.T) {
	mUnit, regSet, inSet := createModules()

	var ins Instruction
	t.Run("add_8bit", func(t *testing.T) {
		var A *rs.Register8Bit = regSet.A

		A.Write8Bit(12)
		ins = inSet.GetInstruction(0x87)
		ins.Run(regSet, mUnit, 0)
		assert.Equal(t, uint8(24), A.Read8Bit())

		var addr uint16 = 0xc000
		mUnit.Write16Bit(addr, 10)
		regSet.HL.Write16Bit(addr)

		ins = inSet.GetInstruction(0x86)
		ins.Run(regSet, mUnit, 0)
		assert.Equal(t, uint8(34), A.Read8Bit())
		var n uint8 = 12
		ins = inSet.instructions[0xc6]
		ins.Run(regSet, mUnit, uint16(n))
		assert.Equal(t, uint8(46), A.Read8Bit())
	})
	t.Run("add_16bit", func(t *testing.T) {
		HL := regSet.HL
		HL.Write16Bit(11)

		regSet.BC.Write16Bit(129)
		ins = inSet.instructions[0x09]
		ins.Run(regSet, mUnit, 0)
		assert.Equal(t, uint16(140), HL.Read16Bit())

		HL.Write16Bit(11)
		fmt.Println(HL.Read16Bit())

		regSet.SP.Write16Bit(129)
		ins = inSet.instructions[0x39]
		ins.Run(regSet, mUnit, 0)
		fmt.Println(HL.Read16Bit())
		assert.Equal(t, uint16(140), HL.Read16Bit())
	})
	t.Run("add_to_SP", func(t *testing.T) {
		var n int8 = -1
		regSet.SP.Write16Bit(65535)
		ins = inSet.instructions[0xe8]
		ins.Run(regSet, mUnit, uint16(int16(n)))
		assert.Equal(t, uint16(65534), regSet.SP.Read16Bit())
		assert.Equal(t, true, regSet.F.GetFlag(rs.FlagC))
		assert.Equal(t, true, regSet.F.GetFlag(rs.FlagH))
	})
}
