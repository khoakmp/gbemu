package iors

type IORegisterSet struct {
	OBP0, OBP1, BGP uint8
	SCX, SCY        uint8
	WX, WY          uint8
	LY, LYC         uint8
	STAT            *Stat
	LCDC            *Lcdc

	IE     *IE
	IF     *IF
	Joypad *GbJoypad
}

func NewIORegisterSet() *IORegisterSet {
	return &IORegisterSet{
		STAT:   &Stat{},
		LCDC:   &Lcdc{},
		IE:     &IE{},
		IF:     &IF{},
		Joypad: &GbJoypad{},
	}
}
func (r *IORegisterSet) Read8Bit(address uint16) uint8 {
	// TODO:
	switch address {
	case LCDC_ADDRESS:
		return r.LCDC.data
	case STAT_ADDRESS:
		return r.STAT.data
	case SCY_ADDRESS:
		return r.SCY
	case SCX_ADDRESS:
		return r.SCX
	case LY_ADDRESS:
		return r.LY
	case LYC_ADDRESS:
		return r.LYC
	case DMA_ADDRESS:
		// TODO: ...
	case BGP_ADDRESS:
		return r.BGP
	case OBP0_ADDRESS:
		return r.OBP0
	case OBP1_ADDRESS:
		return r.OBP1
	case WY_ADDRESS:
		return r.WY
	case WX_ADDRESS:
		return r.WX
	}
	return 0
}

func (r *IORegisterSet) Write8Bit(address uint16, value uint8) {
	if address == 0xff0f {
		r.IF.Write8Bit(value)
	}
	if address >= 0xff40 && address <= 0xff4b {
		r.Write8BitPPU(address, value)
	}
	if address == IE_ADDRESS {
		r.IE.Write8Bit(value)
	}
}

func (r *IORegisterSet) Write8BitPPU(address uint16, value uint8) {
	switch address {
	case LCDC_ADDRESS:
		r.LCDC.Write8Bit(value)
	case STAT_ADDRESS:
		r.STAT.Write8Bit(value)
	case SCY_ADDRESS:
		r.SCY = value
	case SCX_ADDRESS:
		r.SCX = value
	case LY_ADDRESS:
		r.LY = value
	case LYC_ADDRESS:
		r.LYC = value
	case DMA_ADDRESS:
		// TODO: ...
	case BGP_ADDRESS:
		r.BGP = value
	case OBP0_ADDRESS:
		r.OBP0 = value
	case OBP1_ADDRESS:
		r.OBP1 = value
	case WY_ADDRESS:
		r.WY = value
	case WX_ADDRESS:
		r.WX = value
	}
}
