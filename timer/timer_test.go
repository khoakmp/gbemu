package timer

import (
	"testing"

	"github.com/khoakmp/gbemu/intr"
	"github.com/stretchr/testify/assert"
)

func TestTimer(t *testing.T) {
	timerState := &TimerState{
		DIV:         15,
		TIMA:        255,
		TMA:         150,
		TimerEnable: true,
		ClockSelect: 1, // check bit 5 falling edge
	}

	iF := &intr.IF{}
	ti := NewTimerSystem(timerState, iF)
	ti.Update(24)

	assert.Equal(t, uint16(39), timerState.DIV)
	assert.Equal(t, uint8(151), timerState.TIMA)
}
