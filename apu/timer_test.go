package apu

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestFrequencyTimer(t *testing.T) {
	timer := NewFrequencyTimer(func(timestamp uint64) {
		println("trigger at timestamp:", timestamp)
	}, func() uint32 { return 20 })
	timer.Reset(20)
	timer.Update(80)
	println(timer.counter)
}

func TestLowTimer(t *testing.T) {
	// test tam 256 Hz => 22-8 cai don god dung
	var period uint16 = 5
	var x uint8 = 0
	timer := NewLowTimer(1<<14, func() {
		x++
	}, func() uint16 { return period })
	timer.Reset(period)

	for i := uint16(0); i < period; i++ {
		timer.Update(1 << 14)
	}

	assert.Equal(t, uint8(1), x)
	assert.Equal(t, period, timer.counter)

}
