package apu

import (
	"fmt"
	"reflect"
)

type WaveFormEvent struct {
	state     uint8
	timestamp uint64
}

type WaveGenerator interface {
	Generate() (state uint8)
	Reset() (state uint8)
}

type ChannelWaveControl interface {
	GetFrequencyPeriod() uint32
	IsEnable() bool
}

type VolumeProxy interface {
	Envelope(state uint8) uint8
}

type WaveFactory struct {
	waveGenertor   WaveGenerator
	channel        ChannelWaveControl
	events         []WaveFormEvent
	volume         VolumeProxy
	freqTimer      *FrequencyTimer
	startState     uint8
	startTimestamp uint64
}

/*
Duty   Waveform    Ratio
-------------------------
0      00000001    12.5%
1      10000001    25%
2      10000111    50%
3      01111110    75%
*/

func NewWaveFactory(waveGenerator WaveGenerator, eventQueueSize uint32, channel ChannelWaveControl, volEnv VolumeProxy) *WaveFactory {
	g := WaveFactory{
		channel: channel,
		events:  make([]WaveFormEvent, 0, eventQueueSize),
		volume:  volEnv,
	}
	g.waveGenertor = waveGenerator
	g.freqTimer = NewFrequencyTimer(g.generate, g.channel.GetFrequencyPeriod)

	return &g
}

func (g *WaveFactory) Reset() {
	g.freqTimer.Reset(g.channel.GetFrequencyPeriod())
	fmt.Println("wave generator type:", reflect.TypeOf(g.waveGenertor))
	state := g.waveGenertor.Reset()
	println("reset state:", state)
	g.events = append(g.events, WaveFormEvent{
		state:     g.volume.Envelope(state),
		timestamp: g.freqTimer.GetCurrentTimestamp(),
	})
}

func (g *WaveFactory) Update(deltaCycles uint8) {
	g.freqTimer.Update(uint32(deltaCycles))
}
func (g *WaveFactory) GetLastEvent() (nonEmpty bool, event WaveFormEvent) {
	if len(g.events) == 0 {
		return
	}
	nonEmpty = true
	event = g.events[len(g.events)-1]
	return
}
func (g *WaveFactory) generate(timestamp uint64) {
	state := g.waveGenertor.Generate()
	g.events = append(g.events, WaveFormEvent{
		state:     g.volume.Envelope(state),
		timestamp: timestamp,
	})
}

func (g *WaveFactory) Sampling(cyclesPerSample uint32, cycles uint32, samples []uint8) {
	r := cycles % cyclesPerSample
	numCycles := cycles / cyclesPerSample

	lastCycle := g.startTimestamp
	lastState := (g.startState)

	eIdx := 0

	makeSamples := func(cyclesPerSample uint16, num, startIdx uint32) {
		for i := startIdx; i < num+startIdx; i++ {
			var val uint16 = 0
			nextCycles := lastCycle + uint64(cyclesPerSample)
			for eIdx < len(g.events) && g.events[eIdx].timestamp <= nextCycles {
				val += uint16(g.events[eIdx].timestamp-lastCycle) * uint16(lastState)
				lastState = g.events[eIdx].state
				lastCycle = g.events[eIdx].timestamp
				eIdx++
			}

			if lastCycle < nextCycles {
				val += uint16(nextCycles-lastCycle) * uint16(lastState)
				lastCycle = nextCycles
			}
			samples[i] = uint8(val / (cyclesPerSample))
		}
	}

	if r > 0 {
		makeSamples(uint16(cyclesPerSample+1), r, 0)
	}
	makeSamples(uint16(cyclesPerSample), numCycles-r, r)

	g.startState = lastState
	g.startTimestamp = g.startTimestamp + uint64(cycles)
	// empty events queue
	g.events = g.events[:0]
}
