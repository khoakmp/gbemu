package joypad

import (
	"github.com/khoakmp/gbemu/intr"
)

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
type ButtonCode uint8

const (
	ButtonA      ButtonCode = 0
	ButtonB      ButtonCode = 1
	ButtonSelect ButtonCode = 2
	ButtonStart  ButtonCode = 3
	ButtonRight  ButtonCode = 4
	ButtonLeft   ButtonCode = 5
	ButtonUp     ButtonCode = 6
	ButtonDown   ButtonCode = 7
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
	iF        *intr.IF
}

func NewGbJoypad(iF *intr.IF) *GbJoypad {

	return &GbJoypad{
		btnStates: 255,
		iF:        iF,
	}
}

func (j *GbJoypad) Read8Bit(address uint16) uint8 {
	if j.mode == ModeDirect {
		return ((j.btnStates >> 4) & 15) | uint8(1<<4) | uint8(192)
	}
	return (j.btnStates & 15) | uint8(1<<5) | uint8(192)
}

func (j *GbJoypad) Write8Bit(address uint16, val uint8) {
	if val == 0x20 {
		j.mode = ModeDirect
		return
	}
	j.mode = ModeAction
}

func (j *GbJoypad) SetButtonState(button ButtonCode, press bool) {
	// TODO: update IF

	if press {
		if j.btnStates&(1<<button) == 0 {
			return
		}
		//fmt.Println("Set Joypad interrupt")
		j.iF.SetJoypadInterrupt(true)
		j.btnStates &= ^uint8(1 << button)
		return
	}

	if j.btnStates&(1<<button) == 1 {
		return
	}
	//fmt.Println("Set Joypad interrupt")

	j.iF.SetJoypadInterrupt(true)
	j.btnStates |= uint8(1 << button)
}
