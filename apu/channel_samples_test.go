package apu

import (
	"math/rand"
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestSamplesWave(t *testing.T) {
	var length uint16 = 234
	var frequencyPeriodVal uint16 = 231 // 11 bits
	// 00011100111

	// NR32 FF1C -VV- ---- Volume code (00=0%, 01=100%, 10=50%, 11=25%)
	channelState := &SampleChannelState{
		NR30_DAC:          0,
		NR31_Len:          length, // full 8 bit
		enabled:           true,
		NR32_VolumeMode:   0,
		NR33_FrequencyLSB: FrequencyReg{Data: uint8(frequencyPeriodVal & 255)},
		NR34_Trigger: TriggerReg{
			Trigger:      true,
			LengthEnable: true,
			FreqMSB:      uint8(frequencyPeriodVal >> 8),
		},
	}
	assert.Equal(t, uint8(231), channelState.NR33_FrequencyLSB.Data)
	assert.Equal(t, uint32(2048-frequencyPeriodVal)*2, channelState.GetFrequencyPeriod())
	assert.Equal(t, uint16(256-length), channelState.GetLengthPeriod())
}
func TestSamplesGenerator(t *testing.T) {
	var length uint16 = 234
	var frequencyPeriodVal uint16 = 231 // 11 bits
	// 00011100111

	// NR32 FF1C -VV- ---- Volume code (00=0%, 01=100%, 10=50%, 11=25%)
	channelState := &SampleChannelState{
		NR30_DAC:          0,
		NR31_Len:          length, // full 8 bit
		NR32_VolumeMode:   0,
		NR33_FrequencyLSB: FrequencyReg{Data: uint8(frequencyPeriodVal & 255)},
		NR34_Trigger: TriggerReg{
			Trigger:      true,
			LengthEnable: true,
			FreqMSB:      uint8(frequencyPeriodVal >> 8),
		},
	}

	channelState.Enable(true)
	var samples [32]uint8
	for i := 0; i < 32; i++ {
		samples[i] = uint8(rand.Int()) & 1
	}
	channelState.SetSamples(samples[:])

	g := &SampleWaveGenerator{
		sampleIndex:  0,
		channelState: channelState,
	}
	// total : 32 samples 0-31 -> each time tick -> gen 1 sample dung

	state := g.Reset()

	assert.Equal(t, samples[0], state)
	for i := 1; i < 32; i++ {
		assert.Equal(t, samples[i], g.Generate())
	}
}

func TestVolumeShifter(t *testing.T) {
	var length uint16 = 234
	var frequencyPeriodVal uint16 = 231 // 11 bits
	// 00011100111

	// NR32 FF1C -VV- ---- Volume code (00=0%, 01=100%, 10=50%, 11=25%)
	channelState := &SampleChannelState{
		NR30_DAC:          0,
		NR31_Len:          length, // full 8 bit
		NR32_VolumeMode:   0,
		NR33_FrequencyLSB: FrequencyReg{Data: uint8(frequencyPeriodVal & 255)},
		NR34_Trigger: TriggerReg{
			Trigger:      true,
			LengthEnable: true,
			FreqMSB:      uint8(frequencyPeriodVal >> 8),
		},
	}

	channelState.Enable(true)

	vs := &SampleVolumeShifter{
		channelState: channelState,
	}
	var state uint8 = 22
	assert.Equal(t, uint8(0), vs.Envelope(state))
	channelState.NR32_VolumeMode = 1 // 100 %
	assert.Equal(t, state, vs.Envelope(state))
	channelState.NR32_VolumeMode = 2
	assert.Equal(t, state>>1, vs.Envelope(state))
	channelState.NR32_VolumeMode = 3
	assert.Equal(t, state>>2, vs.Envelope(state))

}
