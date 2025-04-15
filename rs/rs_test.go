package rs

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestResgisterSet(t *testing.T) {
	// test full A -> F dung do
	t.Run("register_8bit", func(t *testing.T) {
		regSet := NewRegisterSet()
		regSet.A.Write8Bit(10)
		val := regSet.A.Read8Bit()
		assert.Equal(t, uint8(10), val, "failed A")

		regSet.B.Write8Bit(10)
		val = regSet.B.Read8Bit()
		assert.Equal(t, uint8(10), val, "failed B")

		regSet.C.Write8Bit(10)
		val = regSet.C.Read8Bit()
		assert.Equal(t, uint8(10), val, "failed C")

		regSet.D.Write8Bit(10)
		val = regSet.D.Read8Bit()
		assert.Equal(t, uint8(10), val, "failed D")

		regSet.E.Write8Bit(10)
		val = regSet.E.Read8Bit()
		assert.Equal(t, uint8(10), val, "failed E")

		regSet.F.Write8Bit(10)
		val = regSet.F.Read8Bit()
		assert.Equal(t, uint8(10), val, "failed F")

		regSet.H.Write8Bit(10)
		val = regSet.H.Read8Bit()
		assert.Equal(t, uint8(10), val, "failed H")

		regSet.L.Write8Bit(10)
		val = regSet.L.Read8Bit()
		assert.Equal(t, uint8(10), val, "failed L")
	})
	t.Run("register_16bit", func(t *testing.T) {
		regSet := NewRegisterSet()

		regSet.SP.Write16Bit(1023)
		val := regSet.SP.Read16Bit()
		assert.Equal(t, uint16(1023), val, "failed SP")

		regSet.PC.Write16Bit(1023)
		val = regSet.PC.Read16Bit()
		assert.Equal(t, uint16(1023), val, "failed PC")
	})
	t.Run("register_dual", func(t *testing.T) {
		regSet := NewRegisterSet()
		var lower, upper uint8
		var targetLower, targetUpper uint8
		var expectedVal uint16
		var val uint16

		targetLower, targetUpper = 20, 23
		expectedVal = uint16(targetUpper)<<8 | uint16((targetLower))
		regSet.BC.Write16Bit(expectedVal)
		val = regSet.BC.Read16Bit()
		assert.Equal(t, expectedVal, val, "failed BC")
		upper = regSet.B.Read8Bit()
		lower = regSet.C.Read8Bit()
		assert.Equal(t, targetLower, lower, "failed lower BC")
		assert.Equal(t, targetUpper, upper, "failed upper BC")

		targetLower, targetUpper = 223, 21
		expectedVal = uint16(targetUpper)<<8 | uint16((targetLower))
		regSet.DE.Write16Bit(expectedVal)
		val = regSet.DE.Read16Bit()
		assert.Equal(t, expectedVal, val, "failed DE")
		upper = regSet.D.Read8Bit()
		lower = regSet.E.Read8Bit()
		assert.Equal(t, targetLower, lower, "failed lower DE")
		assert.Equal(t, targetUpper, upper, "failed upper DE")

		targetLower, targetUpper = 21, 12
		expectedVal = uint16(targetUpper)<<8 | uint16((targetLower))
		regSet.HL.Write16Bit(expectedVal)
		val = regSet.HL.Read16Bit()
		assert.Equal(t, expectedVal, val, "failed DE")
		upper = regSet.H.Read8Bit()
		lower = regSet.L.Read8Bit()
		assert.Equal(t, targetLower, lower, "failed lower HL")
		assert.Equal(t, targetUpper, upper, "failed upper HL")

		targetLower, targetUpper = 12, 232
		expectedVal = uint16(targetUpper)<<8 | uint16((targetLower))
		regSet.AF.Write16Bit(expectedVal)
		val = regSet.AF.Read16Bit()
		assert.Equal(t, expectedVal, val, "failed DE")
		upper = regSet.A.Read8Bit()
		lower = regSet.F.Read8Bit()
		assert.Equal(t, targetLower, lower, "failed lower AF")
		assert.Equal(t, targetUpper, upper, "failed upper AF")
	})
	t.Run("flag", func(t *testing.T) {
		regSet := NewRegisterSet()

		regSet.F.SetFlag(FlagC, true)
		assert.Equal(t, true, regSet.F.GetFlag(FlagC), "failed flagC")
		regSet.F.SetFlag(FlagC, false)
		assert.Equal(t, false, regSet.F.GetFlag(FlagC), "failed flagC")

		regSet.F.SetFlag(FlagH, true)
		assert.Equal(t, true, regSet.F.GetFlag(FlagH), "failed flagH")
		regSet.F.SetFlag(FlagH, false)
		assert.Equal(t, false, regSet.F.GetFlag(FlagH), "failed flagH")

		regSet.F.SetFlag(FlagN, true)
		assert.Equal(t, true, regSet.F.GetFlag(FlagN), "failed flagN")
		regSet.F.SetFlag(FlagN, false)
		assert.Equal(t, false, regSet.F.GetFlag(FlagN), "failed flagN")

		regSet.F.SetFlag(FlagZ, true)
		assert.Equal(t, true, regSet.F.GetFlag(FlagZ), "failed flagZ")
		regSet.F.SetFlag(FlagZ, false)
		assert.Equal(t, false, regSet.F.GetFlag(FlagZ), "failed flagZ")
	})
}
