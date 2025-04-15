package apu

// NRx1
type DutyLenReg struct {
	DutyLevel uint8  // bits 6-7
	Len       uint16 // bits 0-5
}

func (r *DutyLenReg) Write8Bit(value uint8) {
	r.DutyLevel = value >> 6
	r.Len = uint16(value & 63)
}
func (r *DutyLenReg) Read8Bit() uint8 {
	return r.DutyLevel<<6 | uint8(r.Len)
}

// NRx2
type VolumeReg struct {
	VolumeInit   uint8 // bits 5-7
	DirectionAdd uint8 // bit 4
	Period       uint8 // bits 0-3
}

func (r *VolumeReg) Write8Bit(value uint8) {
	r.Period = value & 15
	r.DirectionAdd = (value >> 4) & 1
	r.VolumeInit = value >> 5
}
func (r *VolumeReg) Read8Bit() uint8 {
	return (r.VolumeInit << 5) | (r.DirectionAdd << 4) | r.Period
}

// NRx0
type SweepReg struct {
	Period       uint8 // bits 4-6
	DirectionNeg uint8 // bit 3
	Shift        uint8 // bit 0-2
}

func (r *SweepReg) Write8Bit(value uint8) {
	r.Shift = value & 7
	r.DirectionNeg = (value >> 3) & 1
	r.Period = value >> 4
}
func (r *SweepReg) Read8Bit() uint8 {
	return (r.Period << 4) | (r.DirectionNeg << 3) | r.Shift
}

// NRx3
type FrequencyReg struct {
	Data uint8
}

func (r *FrequencyReg) Write8Bit(value uint8) {
	r.Data = value
}
func (r *FrequencyReg) Read8Bit() uint8 {
	return r.Data
}

// NRx4 register
type TriggerReg struct {
	Trigger      bool  // bit 7 , not actual set true
	LengthEnable bool  // bit 6
	FreqMSB      uint8 // bits 0-2
}

func (r *TriggerReg) Write8Bit(value uint8) {
	r.FreqMSB = value & 7
	r.LengthEnable = (value >> 6) == 1
	//r.Trigger = (value >> 7) == 1
}

func (r *TriggerReg) Read8Bit() uint8 {
	var val uint8
	if r.Trigger {
		val |= 1 << 7
	}
	if r.LengthEnable {
		val |= 1 << 6
	}
	val |= r.FreqMSB
	return val
}

type NoiseFreqReg struct {
	Shift    uint8 // 4-7
	Mode7Bit uint8 // 3
	Divisor  uint8 // 0-2
}

func (r *NoiseFreqReg) Read8Bit() uint8 {
	return (r.Shift << 4) | (r.Mode7Bit << 3) | r.Divisor
}

func (r *NoiseFreqReg) Write8Bit(value uint8) {
	r.Divisor = value & 7
	r.Mode7Bit = (value >> 3) & 1
	r.Shift = value >> 4
}
