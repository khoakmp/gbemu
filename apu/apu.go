package apu

type GbApu struct {
	channel1, channel2 *SquareChannel
	channel3           *SampleChannel
	channel4           *NoiseChannel

	globalEnable bool
}

func NewGbApu() *GbApu {

	channelState1 := &SquareChannelState{}
	channelState2 := &SquareChannelState{}
	channelState3 := &SampleChannelState{}
	channelState4 := &NoiseChannelState{}

	return &GbApu{
		channel1: NewSquareChannel(channelState1, true),
		channel2: NewSquareChannel(channelState2, false),
		channel3: NewSampleChannle(channelState3),
		channel4: NewNoiseChannel(channelState4),
	}
}

func (a *GbApu) EnableGlobal(val bool) {
	a.globalEnable = val
}

func (a *GbApu) Update(deltaCycles uint8) {
	a.channel1.Update(deltaCycles)
	a.channel2.Update(deltaCycles)
	a.channel3.Update(deltaCycles)
	a.channel4.Update(deltaCycles)
}

func (a *GbApu) Write8Bit(address uint16, value uint8) {
	// check wave RAM
	if !a.globalEnable {
		return
	}
	if address >= 0xff30 {
		a.channel3.state.Samples[address-0xff30] = value
	}

	switch address {
	// channel 1
	case 0xff10:
		a.channel1.state.X0.Write8Bit(value)
	case 0xff11:
		a.channel1.state.X1.Write8Bit(value)
	case 0xff12:
		a.channel1.state.X2.Write8Bit(value)
	case 0xff13:
		a.channel1.state.X3.Write8Bit(value)
	case 0xff14:
		a.channel1.state.X4.Write8Bit(value)
		if (value >> 7) == 1 {
			a.channel1.TriggerEnable()
		}
	// channel 2
	case 0xff16:
		a.channel2.state.X1.Write8Bit(value)
	case 0xff17:
		a.channel2.state.X2.Write8Bit(value)
	case 0xff18:
		a.channel2.state.X3.Write8Bit(value)
	case 0xff19:
		a.channel2.state.X4.Write8Bit(value)
		if (value >> 7) == 1 {
			a.channel1.TriggerEnable()
		}
		// channel 3
	case 0xff1a:
		a.channel3.state.NR30_DAC = value
	case 0xff1b:
		a.channel3.state.NR31_Len = uint16(value)
	case 0xff1c:
		a.channel3.state.NR32_VolumeMode = value
	case 0xff1d:
		a.channel3.state.NR33_FrequencyLSB.Write8Bit(value)
	case 0xff1e:
		a.channel3.state.NR34_Trigger.Write8Bit(value)
		if (value >> 7) == 1 {
			a.channel3.TriggerEnable()
		}
	// channel 4:
	case 0xff20:
		a.channel4.state.NR41.Write8Bit(value)
	case 0xff21:
		a.channel4.state.NR42.Write8Bit(value)
	case 0xff22:
		a.channel4.state.NR43.Write8Bit(value)
	case 0xff23:
		a.channel4.state.NR44.Write8Bit(value)
		if (value >> 7) == 1 {
			a.channel4.TriggerEnable()
		}
	default:
		//fmt.Println("write to address in apu not supported:", address)
		//panic("invalid")
	}
}

func (a *GbApu) Read8Bit(address uint16) uint8 {
	if !a.globalEnable {
		return 0
	}
	if address >= 0xff30 {
		return a.channel3.state.Samples[address-0xff30]
	}
	switch address {
	// channel 1
	case 0xff10:
		return a.channel1.state.X0.Read8Bit()
	case 0xff11:
		return a.channel1.state.X1.Read8Bit()
	case 0xff12:
		return a.channel1.state.X2.Read8Bit()
	case 0xff13:
		return a.channel1.state.X3.Read8Bit()
	case 0xff14:
		return a.channel1.state.X4.Read8Bit()
	// channel 2
	case 0xff16:
		return a.channel2.state.X1.Read8Bit()
	case 0xff17:
		return a.channel2.state.X2.Read8Bit()
	case 0xff18:
		return a.channel2.state.X3.Read8Bit()
	case 0xff19:
		return a.channel2.state.X4.Read8Bit()
		// channel 3
	case 0xff1a:
		return a.channel3.state.NR30_DAC
	case 0xff1b:
		return uint8(a.channel3.state.NR31_Len)
	case 0xff1c:
		return a.channel3.state.NR32_VolumeMode
	case 0xff1d:
		return a.channel3.state.NR33_FrequencyLSB.Read8Bit()
	case 0xff1e:
		return a.channel3.state.NR34_Trigger.Read8Bit()
	// channel 4:
	case 0xff20:
		return a.channel4.state.NR41.Read8Bit()
	case 0xff21:
		return a.channel4.state.NR42.Read8Bit()
	case 0xff22:
		return a.channel4.state.NR43.Read8Bit()
	case 0xff23:
		return a.channel4.state.NR44.Read8Bit()
	default:
		//fmt.Println("read address", address)
		//panic("Invalid address")
	}
	return 0
}

func (a *GbApu) Write16Bit(address, value uint16) {
	a.Write8Bit(address, uint8(value&255))
	a.Write8Bit(address+1, uint8(value>>8))
}

func (a *GbApu) Read16Bit(address uint16) uint16 {
	return uint16(a.Read8Bit(address+1))<<8 | uint16(a.Read8Bit(address))
}
