package apu

type SquareChannelState struct {
	X0      SweepReg
	X1      DutyLenReg
	X2      VolumeReg
	X3      FrequencyReg
	X4      TriggerReg
	enabled bool
}

// use for testing purpose
func NewSquareChannelState(length, frequencyPeriodValue uint16) *SquareChannelState {
	return &SquareChannelState{
		enabled: true,
		X0: SweepReg{
			Period:       0,
			DirectionNeg: 0,
			Shift:        0, // max 4
		},
		X1: DutyLenReg{
			DutyLevel: 0,
			Len:       length, // len la 64 - X
		},
		X2: VolumeReg{
			VolumeInit:   0,
			DirectionAdd: 0,
			Period:       0,
		},
		X3: FrequencyReg{
			Data: uint8(frequencyPeriodValue & 255),
		},
		X4: TriggerReg{
			Trigger:      true,
			LengthEnable: true,
			FreqMSB:      uint8(frequencyPeriodValue >> 8),
		},
	}
}
func (c *SquareChannelState) GetSweepRegister() *SweepReg {
	return &c.X0
}

func (c *SquareChannelState) GetVolumeRegister() *VolumeReg {
	return &c.X2
}

func (c *SquareChannelState) IsEnable() bool {
	return c.enabled
}

func (c *SquareChannelState) GetDutyLevel() uint8 {
	return c.X1.DutyLevel
}

func (c *SquareChannelState) GetRawFrequencyPeriod() uint16 {
	return uint16(c.X4.FreqMSB)<<8 | uint16(c.X3.Data)
}

// 4*(2048-period_value)
// Number of cpu clock cycles need accumulating before resetting the timer
func (c *SquareChannelState) GetFrequencyPeriod() uint32 {
	return (2048 - (uint32(c.X4.FreqMSB)<<8 | uint32(c.X3.Data))) << 2
}

func (c *SquareChannelState) Enable(enable bool) {
	println("set enable of channel state to:", enable)
	c.enabled = enable
}

func (c *SquareChannelState) UpdateFrequencyPeriod(val uint16) {
	c.X3.Data = uint8(val & 255)
	c.X4.FreqMSB = uint8(val >> 8)
}

func (c *SquareChannelState) GetLengthPeriod() uint16 {
	return 64 - c.X1.Len
}

func (c *SquareChannelState) GetLengthEnable() bool {
	return c.X4.LengthEnable
}

type SquareChannel struct {
	state       *SquareChannelState
	waveFactory *WaveFactory
	volEnv      *VolumeEnvelope
	sweep       *Sweep
	lenCtr      *LenCounter
	sweepEnable bool
}

func NewSquareChannel(state *SquareChannelState, sweepEnable bool) *SquareChannel {
	c := &SquareChannel{
		state:       state,
		sweepEnable: sweepEnable,
		sweep:       nil,
	}

	c.volEnv = NewVolumeEnvelope(state.GetVolumeRegister())
	generator := NewSqWaveGenerator(state)
	c.waveFactory = NewWaveFactory(generator, 18000, state, c.volEnv)
	if sweepEnable {
		c.sweep = NewSweep(state.GetSweepRegister(), state)
	}
	c.lenCtr = NewLenCounter(state)
	return c
}

func (c *SquareChannel) TriggerEnable() {
	c.state.Enable(true)
	if c.sweepEnable {
		c.sweep.Reset()
	}
	c.volEnv.Reset()
	c.lenCtr.Reset()
	c.waveFactory.Reset()
}

func (c *SquareChannel) Update(deltaCycles uint8) {
	c.volEnv.Update(deltaCycles)
	if c.sweepEnable {
		c.sweep.Update(deltaCycles)
	}
	c.lenCtr.Update(deltaCycles)
	c.waveFactory.Update(deltaCycles)
}

type SqWaveGenerator struct {
	dutyPosition uint8 // 0-7
	//waveDuties   [4][8]uint8
	channel ChannelSqWaveControl
}

type ChannelSqWaveControl interface {
	IsEnable() bool
	GetDutyLevel() uint8
}

var waveDuties [4][8]uint8

func init() {
	waveDuties[0][7] = 1
	waveDuties[1][0] = 1
	waveDuties[1][7] = 1
	waveDuties[2][0] = 1
	for i := 5; i < 8; i++ {
		waveDuties[2][i] = 1
	}
	for i := 1; i < 7; i++ {
		waveDuties[3][i] = 1
	}
}

func NewSqWaveGenerator(channel ChannelSqWaveControl) *SqWaveGenerator {
	g := &SqWaveGenerator{
		channel: channel,
	}
	return g
}

func (g *SqWaveGenerator) Reset() (state uint8) {
	g.dutyPosition = 0
	if g.channel.IsEnable() {
		state = waveDuties[g.channel.GetDutyLevel()][g.dutyPosition]
	}
	return
}

// check channel is enable before call Generate function
func (g *SqWaveGenerator) Generate() (state uint8) {
	g.dutyPosition = (g.dutyPosition + 1) & 7
	state = waveDuties[g.channel.GetDutyLevel()][g.dutyPosition]
	return
}
