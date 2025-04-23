package intr

import (
	"log"
)

type InterrupEnable struct {
	JoypadEnable bool
	SerialEnable bool
}

type IE struct {
	data uint8
}

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
func (ie *IE) GetStatInterruptEnable() bool   { return ie.data&(1<<1) != 0 }
func (ie *IE) GetVBlankInterruptEnable() bool { return ie.data&1 != 0 }

func (ie *IE) Write8Bit(value uint8) {
	log.Println("write to IE", value)
	//panic("")
	ie.data = value
}

func (ie *IE) Read8Bit() uint8 {
	return ie.data
}

type IF struct{ data uint8 }

func (iF *IF) SetBit(bit uint8, value uint8) {
	if value == 0 {
		iF.data &= ^uint8(1 << bit)
		return
	}
	iF.data |= uint8(1 << bit)
}

func (iF *IF) Write8Bit(value uint8) {
	iF.data = value
}
func (iF *IF) Read8Bit() uint8 {
	return iF.data
}
func (iF *IF) GetJoypadInterrupt() bool {
	return iF.data&(1<<4) != 0
}

func (iF *IF) GetTimerInterrupt() bool {
	return iF.data&(1<<2) != 0
}

func (iF *IF) GetStatInterrupt() bool {
	return iF.data&(1<<1) != 0
}

func (iF *IF) GetVBlankInterrupt() bool {
	return iF.data&1 != 0
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

type Interrupts struct {
	IE *IE
	IF *IF
}

func NewInterrupts() *Interrupts {

	return &Interrupts{
		IE: &IE{data: 0},
		IF: &IF{data: 0},
	}
}
