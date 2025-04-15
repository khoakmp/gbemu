package rs

type Register interface {
	Type() uint8
	Read8Bit() uint8
	Write8Bit(val uint8)
	Read16Bit() uint16
	Write16Bit(val uint16)
}

type Reg8BitInterface interface {
	Read8Bit() uint8
	Write8Bit(val uint8)
}

type Register8Bit struct {
	data uint8
}

const (
	Reg8Bit  uint8 = 0
	Reg16Bit uint8 = 1
	RegDual  uint8 = 2
)

func (r *Register8Bit) Read8Bit() uint8       { return r.data }
func (r *Register8Bit) Write8Bit(val uint8)   { r.data = val }
func (r *Register8Bit) Read16Bit() uint16     { return uint16(r.data) + 0xff00 } // just use for Register C
func (r *Register8Bit) Write16Bit(val uint16) {}
func (r *Register8Bit) Type() uint8           { return Reg8Bit }

type Register16Bit struct {
	data uint16
}

func (r *Register16Bit) Read16Bit() uint16     { return r.data }
func (r *Register16Bit) Read8Bit() uint8       { return 0 }
func (r *Register16Bit) Write16Bit(val uint16) { r.data = val }
func (r *Register16Bit) Write8Bit(val uint8)   {}

func (r *Register16Bit) Type() uint8 { return Reg16Bit }

type DualRegister struct {
	lower Reg8BitInterface
	upper Reg8BitInterface
}

func (dr *DualRegister) Read8Bit() uint8     { return 0 }
func (dr *DualRegister) Write8Bit(val uint8) {}

func (dr *DualRegister) Read16Bit() uint16 {
	return (uint16(dr.upper.Read8Bit()) << 8) | uint16(dr.lower.Read8Bit())
}

func (dr *DualRegister) Write16Bit(val uint16) {
	dr.upper.Write8Bit(uint8(val >> 8))
	dr.lower.Write8Bit(uint8(val & 255))
}

func (dr *DualRegister) Type() uint8 { return RegDual }
