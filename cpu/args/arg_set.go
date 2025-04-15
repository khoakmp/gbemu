package args

import "github.com/khoakmp/gbemu/rs"

type ArgumentSet struct {
	Aw, Bw, Cw, Dw, Ew, Hw, Lw *RegisterWrap
	BCw, DEw, HLw, AFw         *RegisterWrap
	SPw, PCw                   *RegisterWrap

	BCm, DEm, HLm *MemArg
	Cm            *MemArg

	Num8bit                  *Num8Bit
	Num16bit                 *Num16Bit
	Num16bitFrom8BitSigned   *Num16BitFrom8BitSigned
	Num16bitFrom8BitUnsigned *Num16BitFrom8BitUnsigned
	MemArgNum16Bit           *MemArg
}

func NewArgumentSet(regs *rs.RegisterSet) *ArgumentSet {
	args := &ArgumentSet{
		Aw: &RegisterWrap{reg: regs.A},
		Bw: &RegisterWrap{reg: regs.B},
		Cw: &RegisterWrap{reg: regs.C},
		Dw: &RegisterWrap{reg: regs.D},
		Ew: &RegisterWrap{reg: regs.E},
		Hw: &RegisterWrap{reg: regs.H},
		Lw: &RegisterWrap{reg: regs.L},

		BCw: &RegisterWrap{reg: regs.BC},
		DEw: &RegisterWrap{reg: regs.DE},
		HLw: &RegisterWrap{reg: regs.HL},
		AFw: &RegisterWrap{reg: regs.AF},
		SPw: &RegisterWrap{reg: regs.SP},
		PCw: &RegisterWrap{reg: regs.PC},

		Num8bit:                  &Num8Bit{},
		Num16bit:                 &Num16Bit{},
		Num16bitFrom8BitSigned:   &Num16BitFrom8BitSigned{},
		Num16bitFrom8BitUnsigned: &Num16BitFrom8BitUnsigned{},
	}

	args.MemArgNum16Bit = &MemArg{AddrHolder: args.Num16bit}

	args.BCm = &MemArg{AddrHolder: args.BCw}
	args.DEm = &MemArg{AddrHolder: args.DEw}
	args.HLm = &MemArg{AddrHolder: args.HLw}
	args.Cm = &MemArg{AddrHolder: args.Cw}

	return args
}
