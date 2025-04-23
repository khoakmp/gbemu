package intr

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestInterrupt(t *testing.T) {
	t.Run("IE", func(t *testing.T) {
		i := IE{}
		/*
			- Bit 4: Joypad Interrupt
			- Bit 3: Serial Interrupt
			- Bit 2: Timer Interrupt
			- Bit 1: LCD STAT Interrupt
			- Bit 0: V-Blank Interrupt
			- Bits 5–7: Unused (typically 0 or ignored)
		*/

		var data uint8 = 0b00010110
		i.Write8Bit(data)
		assert.Equal(t, true, i.GetJoypadInterruptEnable())
		assert.Equal(t, false, i.GetSerialInterruptEnable())
		assert.Equal(t, true, i.GetTimerInterruptEnable())
		assert.Equal(t, true, i.GetStatInterruptEnable())
		assert.Equal(t, false, i.GetVBlankInterruptEnable())
	})
	t.Run("IF", func(t *testing.T) {
		i := IF{}

		var data uint8 = 0b00010110
		i.SetJoypadInterrupt(true)
		i.SetSerialInterrupt(false)
		i.SetTimerInterrupt(true)
		i.SetStatInterrupt(true)
		i.SetVBlankInterrupt(false)
		assert.Equal(t, data, i.Read8Bit())

		data = 0b00011111
		i.SetJoypadInterrupt(true)
		i.SetSerialInterrupt(true)
		i.SetTimerInterrupt(true)
		i.SetStatInterrupt(true)
		i.SetVBlankInterrupt(true)
		assert.Equal(t, data, i.Read8Bit())
	})

}
