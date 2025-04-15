package apu

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

/*
	 type ChannelSqWaveControl interface {
	    IsEnable() bool
	    GetDutyLevel() uint8
	}
*/

func TestSquareWave(t *testing.T) {
	var frequencyPeriodValue uint16 = 1048 // 11 bit [0..2047]
	var length uint16 = 23                 // max 63
	channelState := &SquareChannelState{
		enabled: true,
		X0: SweepReg{
			Period:       4,
			DirectionNeg: 0,
			Shift:        2, // max 4
		},
		X1: DutyLenReg{
			DutyLevel: 0,
			Len:       length, // len la 64 - X
		},
		X2: VolumeReg{
			VolumeInit:   10,
			DirectionAdd: 1,
			Period:       5,
		},
		X3: FrequencyReg{
			Data: uint8(frequencyPeriodValue & 255),
		},
		X4: TriggerReg{
			Trigger:      true,
			LengthEnable: true,
			FreqMSB:      uint8(frequencyPeriodValue >> 8),
		},
	}
	// with value
	assert.Equal(t, uint32(2048-frequencyPeriodValue)*4, channelState.GetFrequencyPeriod())
	assert.Equal(t, uint16(frequencyPeriodValue), channelState.GetRawFrequencyPeriod())
	assert.Equal(t, uint8(0), channelState.GetDutyLevel())
	assert.Equal(t, 64-length, channelState.GetLengthPeriod())
}

type MockChannelSqWaveControl struct {
	enable    bool
	dutyLevel uint8
}

func (m *MockChannelSqWaveControl) IsEnable() bool {
	return m.enable
}

func (m *MockChannelSqWaveControl) GetDutyLevel() uint8 {
	return m.dutyLevel
}

func TestSquareGenerator(t *testing.T) {
	channelControl := &MockChannelSqWaveControl{
		enable:    true,
		dutyLevel: 0,
	}
	g := &SqWaveGenerator{
		dutyPosition: 0,
		channel:      channelControl,
	}
	var state uint8

	t.Run("duty_level_0", func(t *testing.T) {
		g.Reset()
		for i := 0; i < 7; i++ {
			state = g.Generate()
		}
		assert.Equal(t, uint8(1), state)
	})
	t.Run("duty_level_1", func(t *testing.T) {
		channelControl.dutyLevel = 1
		state = g.Reset()
		assert.Equal(t, uint8(1), state)
		for i := 0; i < 6; i++ {
			state = g.Generate()
			assert.Equal(t, uint8(0), state)
		}
		state = g.Generate()
		assert.Equal(t, uint8(1), state)

		state = g.Generate()
		assert.Equal(t, uint8(1), state)
	})
	t.Run("duty_level_2", func(t *testing.T) {
		channelControl.dutyLevel = 2
		state = g.Reset()
		assert.Equal(t, uint8(1), state)
		for i := 0; i < 4; i++ {
			state = g.Generate()
			assert.Equal(t, uint8(0), state)
		}
		for i := 0; i < 3; i++ {
			state = g.Generate()
			assert.Equal(t, uint8(1), state)
		}
	})
}

func TestChannelSquare(t *testing.T) {
	var length uint16 = 32                 // max 63
	var frequencyPeriodValue uint16 = 2018 // Actual period : 4 *(2048-2018) = 120
	// trigger sweep -> dung nhung ma both shift and period for sweeep is 0
	// -> disable the Sweep ?
	// 2018 -> calculate it -> create
	channelState := NewSquareChannelState(length, frequencyPeriodValue)
	/*

	   0      00000001    12.5%
	   1      10000001    25%
	   2      10000111    50%
	   3      01111110    75%
	*/
	channelState.X1.DutyLevel = 1

	channelState.X0.Shift = 0
	channelState.X2.VolumeInit = 12
	// because  volume = 0 dung

	channelState.Enable(true)
	channel := NewSquareChannel(channelState, true)
	println("before trigger")
	channel.TriggerEnable()
	// timestamp = 0
	assert.Equal(t, uint8(12), channel.waveFactory.events[0].state)
	var event WaveFormEvent
	for i := 0; i < 6; i++ {
		channel.Update(120)
		_, event = channel.waveFactory.GetLastEvent()
		assert.Equal(t, uint8(0), event.state)
	}
	channel.Update(128)
	_, event = channel.waveFactory.GetLastEvent()
	assert.Equal(t, uint8(12), event.state)
}
