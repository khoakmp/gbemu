package apu

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

/*
	type ChannelSweepControl interface {
	GetRawFrequencyPeriod() uint16
	UpdateFrequencyPeriod(val uint16)
	Enable(enable bool)
	}
*/

type MockChannelSweepControl struct {
	period uint16
	enable bool
}

func (m *MockChannelSweepControl) GetRawFrequencyPeriod() uint16 {
	return m.period
}
func (m *MockChannelSweepControl) UpdateFrequencyPeriod(val uint16) {
	m.period = val
}
func (m *MockChannelSweepControl) Enable(enable bool) {
	m.enable = enable
}

func TestSweep(t *testing.T) {
	var period uint16 = 10
	// update 1: new_period = period - period >> 2 = 10 - 2 = 8
	var sweepPeriod uint8 = 10
	reg := &SweepReg{
		Period:       sweepPeriod,
		DirectionNeg: 1, // neg -> subtract
		Shift:        2,
	}
	// sweep Rate: 128 Hz -> 22-7 = 2^15 cycles per tick
	// each  period * 2^15 cycles , trigger update the frequency value

	channelControl := &MockChannelSweepControl{
		period: uint16(period),
		enable: true,
	}
	sweep := NewSweep(reg, channelControl)
	sweep.Reset()
	t.Run("shift_not_zero", func(t *testing.T) {
		n := uint32(period) << 13 // 15 - 2

		for i := uint32(0); i < n; i++ {
			sweep.Update(4)
		}
		assert.Equal(t, uint16(8), channelControl.period)
		// now Frequency Period value is 8
		// update 2: period -= 2 =>  period = 6
		for i := uint32(0); i < n; i++ {
			sweep.Update(4)
		}
		assert.Equal(t, uint16(6), channelControl.period)
		// 6 >> 2 = 1 -> 5
		for i := uint32(0); i < n; i++ {
			sweep.Update(4)
		}
		assert.Equal(t, uint16(5), channelControl.period)
		for i := uint32(0); i < n<<1; i++ {
			sweep.Update(4)
		}
		assert.Equal(t, uint16(3), channelControl.period)
		for i := uint32(0); i < n; i++ {
			sweep.Update(4)
		}
		assert.Equal(t, uint16(3), channelControl.period)
	})
	t.Run("shift_zero_incr_dir", func(t *testing.T) {
		reg.Shift = 0
		reg.DirectionNeg = 0
		channelControl.period = 1025

		sweep.Reset()
		assert.Equal(t, uint16(sweepPeriod), sweep.timer.counter)
		// shift is zero -> trigger -> cause  that dung
		n := uint32(period) << 13
		for i := uint32(0); i < n; i++ {
			sweep.Update(4)
		}
		// new_freq = old - old >> shift
		// old >> shift <= old => new_freq >= 0

		//assert.Equal(t, uint16(0), channelControl.period)
		assert.Equal(t, false, channelControl.enable)
	})
}
