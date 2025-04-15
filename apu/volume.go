package apu

type VolumeEnvelope struct {
	volReg *VolumeReg
	volume uint8
	timer  *LowTimer
}

func NewVolumeEnvelope(volReg *VolumeReg) *VolumeEnvelope {
	v := &VolumeEnvelope{
		volReg: volReg,
		volume: 0,
	}
	// cyclesPerTick: 2^16 = 65536, count at tick 0
	v.timer = NewLowTimer(1<<16, v.calculate, v.GetPeriod)
	return v
}

func (v *VolumeEnvelope) Envelope(state uint8) uint8 {
	return state * v.volume
}

func (v *VolumeEnvelope) Reset() {
	v.volume = v.volReg.VolumeInit
	v.timer.Reset(uint16(v.volReg.Period))
}

func (v *VolumeEnvelope) Update(deltaCycles uint8) {
	v.timer.Update(uint32(deltaCycles))
}

func (v *VolumeEnvelope) GetPeriod() uint16 {
	return uint16(v.volReg.Period)
}

func (v *VolumeEnvelope) GetCurrentVolume() uint8 {
	return v.volume
}

func (v *VolumeEnvelope) calculate() {
	if v.volReg.DirectionAdd == 1 {
		if v.volume == 15 {
			return
		}
		v.volume++
		return
	}
	if v.volume == 0 {
		return
	}
	v.volume--
}
