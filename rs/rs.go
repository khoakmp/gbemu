package rs

type RegisterSet struct {
	A, B, C, D, E, H, L  *Register8Bit
	BC, DE, HL, AF       *DualRegister
	F                    *Flag
	SP                   *Register16Bit
	PC                   *Register16Bit
	IME                  bool
	Halting              bool
	Stopping             bool
	DelayEnableInterrupt bool
}

func NewRegisterSet() *RegisterSet {
	rs := RegisterSet{
		A:  &Register8Bit{},
		B:  &Register8Bit{},
		C:  &Register8Bit{},
		D:  &Register8Bit{},
		E:  &Register8Bit{},
		H:  &Register8Bit{},
		L:  &Register8Bit{},
		F:  &Flag{},
		SP: &Register16Bit{},
		PC: &Register16Bit{},

		IME:                  true,
		Halting:              false,
		Stopping:             false,
		DelayEnableInterrupt: false,
	}

	rs.BC = &DualRegister{
		lower: rs.C,
		upper: rs.B,
	}

	rs.DE = &DualRegister{
		lower: rs.E,
		upper: rs.D,
	}

	rs.HL = &DualRegister{
		lower: rs.L,
		upper: rs.H,
	}

	rs.AF = &DualRegister{
		lower: rs.F,
		upper: rs.A,
	}
	return &rs
}
