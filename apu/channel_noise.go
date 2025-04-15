package apu

/*
	  Noise
	FF1F ---- ---- Not used

NR41 FF20 --LL LLLL Length load (64-L)
NR42 FF21 VVVV APPP Starting volume, Envelope add mode, period
NR43 FF22 SSSS WDDD Clock shift, Width mode of LFSR, Divisor code
NR44 FF23 TL-- ---- Trigger, Length enable
*/

type NoiseChannelState struct {
	NR41    DutyLenReg
	NR42    VolumeReg
	NR43    NoiseFreqReg
	NR44    TriggerReg
	enabled bool
}

func (s *NoiseChannelState) GetFrequencyPeriod() uint32 {
	if s.NR43.Divisor == 0 {
		return 8 << (s.NR43.Shift)
	}
	return uint32(s.NR43.Divisor) << (s.NR43.Shift + 4)
}

func (s *NoiseChannelState) GetWidthMode() uint8 {
	return s.NR43.Mode7Bit
}

func (s *NoiseChannelState) IsEnable() bool {
	return s.enabled
}

func (s *NoiseChannelState) Enable(enable bool) {
	s.enabled = enable
}

func (s *NoiseChannelState) GetLengthEnable() bool {
	return s.NR44.LengthEnable
}

func (s *NoiseChannelState) GetLengthPeriod() uint16 {
	return 64 - s.NR41.Len
}

type NoiseChannel struct {
	state       *NoiseChannelState
	waveFactory *WaveFactory
	lenCounter  *LenCounter
	volume      *VolumeEnvelope
}

func NewNoiseChannel(state *NoiseChannelState) *NoiseChannel {
	c := &NoiseChannel{
		state:      state,
		lenCounter: NewLenCounter(state),
		volume:     NewVolumeEnvelope(&state.NR42),
	}
	generator := &NoiseWaveGenerator{
		channelState: state,
		data:         0,
	}
	c.waveFactory = NewWaveFactory(generator, 18000, c.state, c.volume)
	return c
}

func (c *NoiseChannel) TriggerEnable() {
	c.state.Enable(true)
	c.lenCounter.Reset()
	c.volume.Reset()
	c.waveFactory.Reset()
}

func (c *NoiseChannel) Update(deltaCycles uint8) {
	c.volume.Update(deltaCycles) // priority for low frequency update first
	c.lenCounter.Update(deltaCycles)
	c.waveFactory.Update(deltaCycles)
}

type NoiseWaveGenerator struct {
	data         uint16
	channelState *NoiseChannelState
}

func (g *NoiseWaveGenerator) Reset() (state uint8) {
	g.data = 32767
	return 0
}

func (g *NoiseWaveGenerator) Generate() (state uint8) {
	xorVal := (g.data & 1) ^ ((g.data & 2) >> 1)

	state = 1
	if (g.data & 1) == 1 {
		state = 0
	}

	g.data >>= 1
	switch xorVal {
	case 0:
		if g.channelState.GetWidthMode() == 0 {
			// set bit 14 to 0 -> & 11...1 -> 0..13 all 1 -> 2^14 -1
			g.data &= 16383 // 32767 - 16384
		} else {
			g.data &= 32575 //(32767 - 128 - 64)
		}
		// set bit 6 , 7 to 0

	case 1:
		if g.channelState.GetWidthMode() == 0 {
			g.data |= (1 << 14)

		} else {
			g.data |= 192 // 64 + 128
		}
	}
	//println("data:", g.data)
	return
	/* if xorVal == 0 {
		if g.channelState.GetWidthMode() == 0 {
			// set bit 14 to 0 -> & 11...1 -> 0..13 all 1 -> 2^14 -1
			g.data &= 16383 // 32767 - 16384
			return
		}
		// set bit 6 , 7 to 0
		g.data &= 32575 //(32767 - 128 - 64)
		return
	}
	if g.channelState.GetWidthMode() == 0 {
		g.data |= (1 << 14)
		return
	}
	g.data |= 192 // 64 + 128
	return */
}
