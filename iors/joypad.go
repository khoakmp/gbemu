package iors

/*
D-pad selected (0x20 written):

	Bit 0: Right
	Bit 1: Left
	Bit 2: Up
	Bit 3: Down

Action buttons selected (0x10 written):

	Bit 0: A
	Bit 1: B
	Bit 2: Select
	Bit 3: Start
*/

const (
	ButtonA      uint8 = 0
	ButtonB      uint8 = 1
	ButtonSelect uint8 = 2
	ButtonStart  uint8 = 3
	ButtonRight  uint8 = 4
	ButtonLeft   uint8 = 5
	ButtonUp     uint8 = 6
	ButtonDown   uint8 = 7
)

const (
	ModeDirect uint8 = 1
	ModeAction uint8 = 0

	StatePress   = 0
	StateDepress = 1
)

type GbJoypad struct {
	mode      uint8
	btnStates uint8
}

func (j *GbJoypad) Read8Bit() uint8 {
	if j.mode == ModeDirect {
		return ((j.btnStates >> 4) & 15) | uint8(1<<4) | uint8(192)
	}
	return (j.btnStates & 15) | uint8(1<<5) | uint8(192)
}

func (j *GbJoypad) Write8Bit(val uint8) {
	if val == 0x20 {
		j.mode = ModeDirect
		return
	}
	j.mode = ModeAction
}

func (j *GbJoypad) SetStateButton(btn uint8, state uint8) {
	if state == 0 {
		j.btnStates &= ^uint8(1 << btn)
		return
	}
	j.btnStates |= uint8(1 << btn)
}
