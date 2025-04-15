package ins

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestRet(t *testing.T) {
	mUnit, regSet, inSet := createModules()
	var ins Instruction = inSet.instructions[0x18]

	/*
	  RET C9 cycles: 16
	  RET NZ (opcode C0): Return if Zero flag is not set (Z = 0).
	  RET Z (opcode C8): Return if Zero flag is set (Z = 1).
	  RET NC (opcode D0): Return if Carry flag is not set (C = 0).
	  RET C (opcode D8): Return if Carry flag is set (C = 1).
	*/
	t.Run("ret", func(t *testing.T) {
		ins = inSet.instructions[0xc9]
		// pop address stored on stack -> change SP, set PC to this address

		var spAddr uint16 = 0xca12
		var addr uint16 = 0x212a
		mUnit.Write16Bit(spAddr, addr)
		regSet.SP.Write16Bit(spAddr)
		ins.Run(regSet, mUnit, 0)
		assert.Equal(t, spAddr+2, regSet.SP.Read16Bit())
		assert.Equal(t, addr, regSet.PC.Read16Bit())
		// not need to test condition -> ez
	})

	t.Run("reti", func(t *testing.T) {
		var spAddr uint16 = 0xca12
		var addr uint16 = 0x212a
		mUnit.Write16Bit(spAddr, addr)
		regSet.SP.Write16Bit(spAddr)
		regSet.IME = false
		ins = inSet.instructions[0xd9]

		ins.Run(regSet, mUnit, 0)
		assert.Equal(t, spAddr+2, regSet.SP.Read16Bit())
		assert.Equal(t, addr, regSet.PC.Read16Bit())
		assert.Equal(t, true, regSet.IME)
	})
}
