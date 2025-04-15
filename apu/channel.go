package apu

type ChannelState interface {
	GetFrequencyPeriod() uint32
	GetDutyLevel() uint8
	UpdateFrequencyPeriod(val uint32)
	Enable(enable bool)
	IsEnable() bool
	GetLengthPeriod() uint8
	GetLengthEnable() bool
}
