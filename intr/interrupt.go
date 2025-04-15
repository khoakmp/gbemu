package intr

type InterrupEnable struct {
	JoypadEnable bool
	SerialEnable bool
}

type IE struct{ data uint8 }

/*
- Bit 4: Joypad Interrupt
- Bit 3: Serial Interrupt
- Bit 2: Timer Interrupt
- Bit 1: LCD STAT Interrupt
- Bit 0: V-Blank Interrupt
- Bits 5–7: Unused (typically 0 or ignored)
*/
func (ie *IE) GetJoypadInterruptEnable() bool { return ie.data&(1<<4) != 0 }
func (ie *IE) GetSerialInterruptEnable() bool { return ie.data&(1<<3) != 0 }
func (ie *IE) GetTimerInterruptEnable() bool  { return ie.data&(1<<2) != 0 }
func (ie *IE) GetSTATInterruptEnable() bool   { return ie.data&(1<<1) != 0 }
func (ie *IE) GetVBlankInterruptEnable() bool { return ie.data&1 != 0 }
func (ie *IE) Write8Bit(value uint8) {
	ie.data = value
}

type IF struct{ data uint8 }

func (iF *IF) Write8Bit(value uint8) {
	iF.data = value
}
func (iF *IF) Get() uint8 {
	return iF.data
}
func (iF *IF) SetJoypadInterrupt(value bool) {
	if value {
		iF.data |= (1 << 4)
		return
	}
	iF.data &= ^uint8(1 << 4)
}
func (iF *IF) SetTimerInterrupt(value bool) {
	if value {
		iF.data |= (1 << 2)
		return
	}
	iF.data &= ^uint8(1 << 2)
}
func (iF *IF) SetSerialInterrupt(value bool) {
	if value {
		iF.data |= (1 << 3)
		return
	}
	iF.data &= ^uint8(1 << 3)
}
func (iF *IF) SetStatInterrupt(value bool) {
	if value {
		iF.data |= (2)
		return
	}
	iF.data &= ^uint8(2)
}

func (iF *IF) SetVBlankInterrupt(value bool) {
	if value {
		iF.data |= uint8(1)
		return
	}
	iF.data &= ^uint8(1)
}
