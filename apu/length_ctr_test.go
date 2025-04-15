package apu

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

/*
	type ChannelLenControl interface {
		GetLengthPeriod() uint16
		GetLengthEnable() bool
		Enable(enable bool)
	}
*/
type MockChannelLenControl struct {
	period    uint16
	lenEnable bool
}

func (m *MockChannelLenControl) GetLengthPeriod() uint16 {
	return m.period
}
func (m *MockChannelLenControl) GetLengthEnable() bool {
	return m.lenEnable
}
func (m *MockChannelLenControl) Enable(enable bool) {
	m.lenEnable = enable
}
func TestLengthCtr(t *testing.T) {
	var lenPeriod uint16 = 10
	channelControl := &MockChannelLenControl{
		period:    lenPeriod,
		lenEnable: true,
	}

	l := NewLenCounter(channelControl)
	l.Reset()
	// len timer rate: 256 Hz -> 2^14 cycles per ticks
	assert.Equal(t, true, channelControl.lenEnable)
	assert.Equal(t, lenPeriod, l.timer.counter)
	// period * 2^14 cycles -> trigger Disable Channel
	p := 2
	n := uint32(lenPeriod) << (14 - p)
	for i := uint32(0); i < n; i++ {
		l.Update(1 << p)
	}
	assert.Equal(t, false, channelControl.lenEnable)
}
