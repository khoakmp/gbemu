package apu

// Channel 3 State
type SampleChannelState struct {
	NR30_DAC          uint8
	NR31_Len          uint16
	NR32_VolumeMode   uint8
	NR33_FrequencyLSB FrequencyReg
	NR34_Trigger      TriggerReg
	enabled           bool
	Samples           [32]uint8 // Map to WaveRAM
}

// period: 2*(2048-period_value)
func (s *SampleChannelState) GetFrequencyPeriod() uint32 {
	return (2048 - (uint32(s.NR34_Trigger.FreqMSB)<<8 | uint32(s.NR33_FrequencyLSB.Data))) << 1
}
func (s *SampleChannelState) GetVolumeMode() uint8 {
	return s.NR32_VolumeMode
}

func (s *SampleChannelState) Enable(enable bool) {
	s.enabled = enable
}
func (s *SampleChannelState) IsEnable() bool {
	return s.enabled
}
func (s *SampleChannelState) GetLengthEnable() bool {
	return s.NR34_Trigger.LengthEnable
}

func (s *SampleChannelState) GetLengthPeriod() uint16 {
	return 256 - s.NR31_Len
}

func (s *SampleChannelState) GetSample(index uint8) uint8 {
	return s.Samples[index]
}

func (s *SampleChannelState) SetSamples(samples []uint8) {
	copy(s.Samples[:], samples)
}

type SampleChannel struct {
	state       *SampleChannelState
	waveFactory *WaveFactory
	lenCounter  *LenCounter
}

func NewSampleChannle(state *SampleChannelState) *SampleChannel {
	c := &SampleChannel{
		state:      state,
		lenCounter: NewLenCounter(state),
	}
	generator := SampleWaveGenerator{
		channelState: state,
	}
	volume := &SampleVolumeShifter{
		channelState: state,
	}
	c.waveFactory = NewWaveFactory(&generator, 18000, state, volume)
	return c
}

func (c *SampleChannel) TriggerEnable() {
	c.state.Enable(true)
	c.lenCounter.Reset()
	c.waveFactory.Reset()
}
func (c *SampleChannel) Reset() {
	c.state.Enable(true)
	c.lenCounter.Reset()
	c.waveFactory.Reset()
}

func (c *SampleChannel) Update(deltaCycles uint8) {
	c.lenCounter.Update(deltaCycles)
	c.waveFactory.Update(deltaCycles)
}

type SampleWaveGenerator struct {
	sampleIndex  uint8
	channelState *SampleChannelState
}

func (g *SampleWaveGenerator) Reset() (state uint8) {
	g.sampleIndex = 0
	return g.channelState.GetSample(0)
}

func (g *SampleWaveGenerator) Generate() (state uint8) {
	g.sampleIndex = (g.sampleIndex + 1) & 31
	state = g.channelState.GetSample(g.sampleIndex)
	return
}

type SampleVolumeShifter struct {
	channelState *SampleChannelState
}

func (v *SampleVolumeShifter) Envelope(state uint8) uint8 {
	volmode := v.channelState.GetVolumeMode()
	/*
		00: Mute (0% volume, outputs 0).
		01: 100% (no shift, full sample values).
		10: 50% (right shift by 1, sample values halved).
		11: 25% (right shift by 2, sample values quartered).
	*/
	switch volmode {
	case 0:
		return 0
	case 1:
		return state
	case 2:
		return state >> 1
	case 3:
		return state >> 2
	}
	return 0
}
