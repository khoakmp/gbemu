package apu

// run at 2^22 Hz, 1 cycle/tick
type FrequencyTimer struct {
	accumlateCycle uint64
	counter        uint32
	triggerFn      func(timestamp uint64)
	getPeriod      func() uint32
}

func NewFrequencyTimer(trigger func(timestamp uint64), getPeriod func() uint32) *FrequencyTimer {
	return &FrequencyTimer{
		triggerFn: trigger,
		getPeriod: getPeriod,
	}
}

func (t *FrequencyTimer) Reset(period uint32) {
	t.counter = period
}

func (t *FrequencyTimer) GetCurrentTimestamp() uint64 {
	return t.accumlateCycle
}

func (t *FrequencyTimer) Update(deltaCycles uint32) {
	/* for deltaCycles > 0 {
		numTicks := deltaCycles >> 2
		if t.counter > numTicks {
			t.counter -= numTicks
			t.accumlateCycle += uint64(deltaCycles)
			return
		}
		cycles := t.counter << 2
		t.accumlateCycle += uint64(cycles)
		deltaCycles -= cycles
		t.triggerFn(t.accumlateCycle)
		// reset counter to new period
		t.counter = t.getPeriod()
		if t.counter == 0 {
			t.accumlateCycle += uint64(deltaCycles)
			return
		}
	} */
	for deltaCycles > 0 {
		if deltaCycles < t.counter {
			t.counter -= deltaCycles
			t.accumlateCycle += uint64(deltaCycles)
			return
		}
		deltaCycles -= t.counter
		t.accumlateCycle += uint64(t.counter)
		t.triggerFn(t.accumlateCycle)
		t.counter = t.getPeriod()
		if t.counter == 0 {
			t.accumlateCycle += uint64(deltaCycles)
			return
		}
	}
}

type LowTimer struct {
	cyclesPerTick uint32
	//countAtTick   uint32
	tickCycles uint32
	counter    uint16 // in low frequency timer, counter in range [0-255], it can reach to 256
	trigger    func()
	getPeriod  func() uint16
}

func NewLowTimer(cyclesPerTick uint32, trigger func(), getPeriod func() uint16) *LowTimer {
	return &LowTimer{
		cyclesPerTick: cyclesPerTick,
		trigger:       trigger,
		getPeriod:     getPeriod,
	}
}

// period is the value that the internal counter reset to when counter reaches zero
// it is not the cpu clock cycles, it's frequency depends on the timer cyclesPerTick
func (t *LowTimer) Reset(period uint16) {
	t.counter = period
}

// deltaCycles is always <= 24
func (t *LowTimer) Update(deltaCycles uint32) {
	// TODO: set trigger at another tick

	/* if t.tickCycles == t.countAtTick {
		t.tickCycles = (t.tickCycles + deltaCycles) % t.cyclesPerTick
		return
	}
	if t.tickCycles < t.countAtTick {
		if t.tickCycles+deltaCycles < t.countAtTick {
			t.tickCycles += deltaCycles
			return
		}
		t.tickCycles = (t.tickCycles + deltaCycles) % t.cyclesPerTick
		goto CAL
	}

	// t.tickCycles > countAtTick
	if t.tickCycles+deltaCycles < t.cyclesPerTick {
		t.tickCycles += deltaCycles
		return
	}
	t.tickCycles = (t.tickCycles + deltaCycles) % t.cyclesPerTick
	if t.tickCycles < t.countAtTick {
		return
	} */
	//println("val:", t.tickCycles+deltaCycles)
	if t.tickCycles+deltaCycles < t.cyclesPerTick {
		t.tickCycles += deltaCycles
		return
	}
	//println("Ticked !!!")
	t.tickCycles = (t.tickCycles + deltaCycles) % t.cyclesPerTick

	// if counter is already zero, does not trigger because the previous period is zero,
	// so just reset the period
	if t.counter == 0 {
		t.counter = t.getPeriod()
		return
	}

	t.counter--
	//println("counter:", t.counter)
	if t.counter > 0 {
		return
	}
	t.trigger()
	t.counter = t.getPeriod()
}
