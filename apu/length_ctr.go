package apu

type ChannelLenControl interface {
	GetLengthPeriod() uint16
	GetLengthEnable() bool
	Enable(enable bool)
}

type LenCounter struct {
	timer   *LowTimer
	channel ChannelLenControl
	enabled bool
}

func NewLenCounter(channelControl ChannelLenControl) *LenCounter {
	l := LenCounter{
		channel: channelControl,
	}
	// 256 Hz -> 2^(22-8)= 2^14, count at tick 8192
	l.timer = NewLowTimer(1<<14, l.Trigger, getPeriod)
	return &l
}

// re-trigger channel cause this function call
func (l *LenCounter) Reset() {
	l.timer.Reset(l.channel.GetLengthPeriod())
	l.enabled = l.channel.GetLengthEnable()
}

func getPeriod() uint16 {
	return 0
}

func (l *LenCounter) Update(deltaCycles uint8) {
	l.timer.Update(uint32(deltaCycles))
}

func (l *LenCounter) Trigger() {
	if !l.enabled {
		return
	}
	l.channel.Enable(false)
}
