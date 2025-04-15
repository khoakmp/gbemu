package timer

import "github.com/khoakmp/gbemu/iors"

var getBits [4]uint8
var masks [4]uint16

type TimerState struct {
	DIV         uint16
	TIMA        uint8
	TMA         uint8
	TimerEnable bool  //bit 2
	ClockSelect uint8 // bit 0-1
}

type TimerSystem struct {
	state *TimerState
	iF    *iors.IF
}

/*
- `00`: 4096 Hz (CPU clock / 1024, ~244 µs per tick). -> 22-12 = 10 -> 1024 cycles -> bit 9
- `01`: 262144 Hz (CPU clock / 16, ~3.8 µs per tick). -> 22-18 = 4 -> bit 3
- `10`: 65536 Hz (CPU clock / 64, ~15.3 µs per tick). -> 22-16 = 6 -> bit 5
- `11`: 16384 Hz (CPU clock / 256, ~61 µs per tick). -> 22- 14 = 8 -> bit 7
*/

func init() {
	getBits[0] = 9
	getBits[1] = 3
	getBits[2] = 5
	getBits[3] = 7

	masks[0] = 1023
	masks[1] = 15
	masks[2] = 63
	masks[3] = 255
}

func NewTimerSystem(state *TimerState, iF *iors.IF) *TimerSystem {
	return &TimerSystem{
		state: state,
		iF:    iF,
	}
}

/*
DIV	0xFF04	Divider Register – increments at a fixed rate, reset to 0 when written to.
TIMA	0xFF05	Timer Counter – increments based on frequency set in TAC; triggers IRQ on overflow.
TMA	0xFF06	Timer Modulo – value loaded into TIMA when it overflows.
TAC	0xFF07	Timer Control – selects timer frequency and enables/disables the timer.
*/
func (t *TimerSystem) Write8Bit(address uint16, value uint8) {
	switch address {
	case 0xff04:
		t.ResetDIV()
	case 0xff05:
		t.state.TIMA = value
	case 0xff06:
		t.state.TMA = value
	case 0xff07:
		if (value & (1 << 2)) > 0 {
			t.state.TimerEnable = true
		}
		t.state.ClockSelect = value & 3
	}
}

func (t *TimerSystem) Read8Bit(address uint16) uint8 {
	switch address {
	case 0xff04:
		return uint8(t.state.DIV >> 8)
	case 0xff05:
		return t.state.TIMA
	case 0xff06:
		return t.state.TMA
	case 0xff07:
		var ans uint8
		if t.state.TimerEnable {
			ans |= 4
		}
		ans |= t.state.ClockSelect & 3
		return ans
	}
	return 0
}
func (t *TimerSystem) Read16Bit(address uint16) uint16 {
	return uint16(t.Read8Bit(address+1))<<8 | uint16(t.Read8Bit(address))
}

func (t *TimerSystem) Write16Bit(address uint16, value uint16) {
	t.Write8Bit(address, uint8(value&255))
	t.Write8Bit(address+1, uint8(value>>8))
}

func (t *TimerSystem) Update(deltaCylces uint16) {
	if !t.state.TimerEnable {
		t.state.DIV += deltaCylces
		return
	}
	clockSelect := t.state.ClockSelect
	bit := getBits[clockSelect]
	var val uint16 = t.state.DIV & masks[clockSelect]

	delta := 1<<(bit+1) - val
	if delta > deltaCylces {
		t.state.DIV += deltaCylces
		return
	}

	// deltaCycles >= delta
	t.state.DIV += delta
	deltaCylces -= delta
	n := deltaCylces >> (bit + 1)
	t.increment(uint8(n + 1))
	t.state.DIV += deltaCylces
}

func (t *TimerSystem) increment(n uint8) {
	// n = 1 || 2
	for i := uint8(0); i < n; i++ {
		t.state.TIMA = (t.state.TIMA + 1) & 255
		if t.state.TIMA == 0 {
			t.iF.SetTimerInterrupt(true)
			t.state.TIMA = t.state.TMA
		}
	}
}

func (t *TimerSystem) ResetDIV() {
	bit := getBits[t.state.ClockSelect]
	if t.state.DIV&uint16(1<<bit) == 1 {
		t.increment(1)
	}
	t.state.DIV = 0
}
