package apu

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestNoise(t *testing.T) {
	var shift uint8 = 2
	var divider uint8 = 3

	state := &NoiseChannelState{
		enabled: true,
		NR41: DutyLenReg{
			DutyLevel: 1,
			Len:       12, // 6 bits
		},
		NR42: VolumeReg{
			VolumeInit:   11,
			DirectionAdd: 1,
			Period:       11,
		},
		NR43: NoiseFreqReg{
			Shift:    shift,
			Mode7Bit: 1,
			Divisor:  divider,
		},
		NR44: TriggerReg{
			Trigger:      true,
			LengthEnable: true,
			FreqMSB:      0,
		},
	}

	// length counter run with clock rate at 256 Hz
	assert.Equal(t, uint16(64-12), state.GetLengthPeriod())

	assert.Equal(t, uint32(divider)*uint32(16<<shift), state.GetFrequencyPeriod())
}

func TestNoiseGenerator(t *testing.T) {
	var mode7Bit uint8 = 0
	channelState := &NoiseChannelState{
		NR41: DutyLenReg{
			DutyLevel: 0,  // 0..3 ,  not use in noise channle
			Len:       32, // max 63
		},
		NR42: VolumeReg{
			VolumeInit:   12,
			DirectionAdd: 1,
			Period:       3, // max 15
		},
		NR43: NoiseFreqReg{
			Shift:    2,        // max 15
			Mode7Bit: mode7Bit, // 0 ||1
			Divisor:  5,        // max 7
		},
		NR44: TriggerReg{
			Trigger:      true,
			LengthEnable: true,
			FreqMSB:      0, // not use in noise channel
		},
	}

	// WaveGenerator just care state 0 || 1, not care volume
	g := &NoiseWaveGenerator{
		data:         0,
		channelState: channelState,
	}
	// 1. use 15 bit dung do van de
	var state uint8
	t.Run("mode15bit", func(t *testing.T) {
		state = g.Reset()
		assert.Equal(t, uint8(0), state)
		for i := 0; i < 15; i++ {
			state = g.Generate()
			assert.Equal(t, uint8(0), state)
		}
		state = g.Generate()
		assert.Equal(t, uint8(1), state)
	})
	t.Run("mode7bit", func(t *testing.T) {
		channelState.NR43.Mode7Bit = 1
		state = g.Reset()
		assert.Equal(t, uint8(0), state)

		// 1111 111 1
		// 0011 111 2
		// 0001 111 3
		// 0000 111 4
		// 0000 011 5
		// 0000 001 6
		// 1100 000 7

		for i := 0; i < 7; i++ {
			state = g.Generate()
			assert.Equal(t, uint8(0), state)
		}
		assert.Equal(t, uint16(192), g.data)
		state = g.Generate()
		assert.Equal(t, uint8(1), state)
		assert.Equal(t, uint16(32), g.data)
	})
}

func TestBitwise(t *testing.T) {
	var a, b uint8 = 0, 0
	println(a ^ b)
}
