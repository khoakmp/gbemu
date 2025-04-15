package apu

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestVolume(t *testing.T) {
	var period uint8 = 12
	volReg := &VolumeReg{
		VolumeInit:   10,
		DirectionAdd: 1,
		Period:       period,
	}
	// 65536 cycles per tick
	vol := NewVolumeEnvelope(volReg)
	vol.Reset()
	// take period * (1<<16) cycles to trigger recalculate volume ->
	assert.Equal(t, uint8(10), vol.GetCurrentVolume())
	// 12 * 65536
	n := int(period) << 13
	// each time update 8 cycles
	for i := 0; i < n; i++ {
		vol.Update(8)
	}
	assert.Equal(t, uint8(11), vol.GetCurrentVolume())
	for i := 0; i < n<<2; i++ {
		vol.Update(8)
	}
	// it's still 15
	assert.Equal(t, uint8(15), vol.GetCurrentVolume())
}
