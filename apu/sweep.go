package apu

type ChannelSweepControl interface {
	GetRawFrequencyPeriod() uint16
	UpdateFrequencyPeriod(val uint16)
	Enable(enable bool)
}

type Sweep struct {
	sweepReg        *SweepReg
	timer           *LowTimer
	shadowFrequency int32
	channelState    ChannelSweepControl
	enabled         bool
}

func NewSweep(sweepReg *SweepReg, channel ChannelSweepControl) *Sweep {
	s := &Sweep{
		sweepReg:     sweepReg,
		channelState: channel,
	}
	// 128 Hz -> each tick 2^(22-7)= 2^15 cycles, count at tick 24576
	s.timer = NewLowTimer(1<<15, s.Trigger, s.getPeriod)
	return s
}

// call Reset function when channel is triggered
func (s *Sweep) Reset() {
	s.shadowFrequency = int32(s.channelState.GetRawFrequencyPeriod())
	period := s.sweepReg.Period
	s.timer.Reset(uint16(s.sweepReg.Period))
	s.enabled = period != 0 || s.sweepReg.Shift != 0
	if !s.enabled {
		println("Sweep is disable")
		return
	}

	freq := s.calculate()
	if freq > 2048 || freq < 0 {
		//println("Detect that need to disable channel when calculated freq period val =", freq)
		s.channelState.Enable(false)
	}
}

func (s *Sweep) getPeriod() uint16 {
	return uint16(s.sweepReg.Period)
}

func (s *Sweep) Update(deltaCycles uint8) {
	s.timer.Update(uint32(deltaCycles))
}

func (s *Sweep) calculate() int32 {
	delta := s.shadowFrequency >> uint16(s.sweepReg.Shift)
	if s.sweepReg.DirectionNeg == 0 {
		return s.shadowFrequency + delta
	}
	return s.shadowFrequency - delta
}

func (s *Sweep) Trigger() {
	if !s.enabled {
		return
	}

	freq := s.calculate()
	if freq < 0 || freq > 2047 {
		s.channelState.Enable(false)
		return
	}
	s.shadowFrequency = freq
	s.channelState.UpdateFrequencyPeriod(uint16(freq))

	freq = s.calculate()
	if freq < 0 || freq > 2047 {
		s.channelState.Enable(false)
	}
}
