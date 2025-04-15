package apu

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

/*
	type ChannelWaveControl interface {
		GetFrequencyPeriod() uint16
		GetDutyLevel() uint8
		IsEnable() bool
	}

	type VolumeProxy interface {
		GetCurrentVolume() uint8
	}
*/
type MockChannelWaveCtrl struct{}

func (m *MockChannelWaveCtrl) GetFrequencyPeriod() uint32 { return 0 }
func (m *MockChannelWaveCtrl) GetDutyLevel() uint8        { return 0 }
func (m *MockChannelWaveCtrl) IsEnable() bool             { return true }

type MockVolumeProxy struct{}

func (m *MockVolumeProxy) Envelope(state uint8) uint8 { return state * 15 }
func TestSampling(t *testing.T) {
	c := MockChannelWaveCtrl{}
	vol := MockVolumeProxy{}
	generator := NewSqWaveGenerator(&c)
	g := NewWaveFactory(generator, 1000, &c, &vol)
	// set cyclesPerSample = 10, cycles = 243
	// 3
	var events []uint16 = []uint16{0, 15, 16, 13, 24, 10, 40, 0, 44, 4, 48, 5, 60, 12, 72, 6, 76, 10, 88, 7}
	//println(len(events))
	for i := 0; i < len(events)-1; i += 2 {
		g.events = append(g.events, WaveFormEvent{
			state:     uint8(events[i+1]),
			timestamp: uint64(events[i]),
		})
	}
	var cycles uint32 = 100
	var cyclesPerSample uint32 = 20
	samples := make([]uint8, 5)
	g.Sampling(cyclesPerSample, cycles, samples)
	println(samples[0])
}

func TestWaveFactory(t *testing.T) {
	var length uint16 = 34
	var frequencyPeriodValue uint16 = 2045
	channle1State := NewSquareChannelState(length, frequencyPeriodValue)
	channle1State.X1.DutyLevel = 0 // use dutyLevel = 0 => 0000 0001
	/*
		0      00000001    12.5%
		1      10000001    25%
		2      10000111    50%
		3      01111110    75%

	*/
	vol := MockVolumeProxy{}
	generator := NewSqWaveGenerator(channle1State)

	factory := NewWaveFactory(generator, 1000, channle1State, &vol)
	factory.Reset()
	assert.Equal(t, 1, len(factory.events))
	assert.Equal(t, uint8(0), factory.events[0].state)
	assert.Equal(t, uint64(0), factory.events[0].timestamp)

	// Actual Period: 4*(2048 - PeriodValue) = 4 * 3 = 12
	// => just after 12 cycles g.generate is called
	factory.Update(12)
	assert.Equal(t, uint8(1), generator.dutyPosition)
	//var lastEvent WaveFormEvent =
	var event WaveFormEvent
	ok, event := factory.GetLastEvent()

	if ok {
		assert.Equal(t, uint8(0), event.state)
		assert.Equal(t, uint64(12), event.timestamp)
	}
	factory.Update(4)
	assert.Equal(t, uint64(16), factory.freqTimer.GetCurrentTimestamp())
	assert.Equal(t, uint32(8), factory.freqTimer.counter)
	factory.Update(8)
	assert.Equal(t, 3, len(factory.events))
	// go 2 dot
	for i := 0; i < 4; i++ {
		factory.Update(12)
	}
	factory.Update(12)
	ok, event = factory.GetLastEvent()
	if ok {
		assert.Equal(t, uint8(15), event.state)
		assert.Equal(t, uint64(84), event.timestamp)
	}
}
