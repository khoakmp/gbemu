package iors

// Joypad
const (
	JOYPAD_ADDRESS = 0xff00
)

// Serial
const (
	SERIAL_DATA_ADDRESS    = 0xff01
	SERIAL_CONTROL_ADDRESS = 0xff02
)

// Timer group
const (
	DIV_ADDRESS           = 0xff04
	TIMER_COUNTER_ADDRESS = 0xff05
	TIMER_MODULO_ADDRESS  = 0xff06
	TIMER_CONTROL_ADDRESS = 0xff07
)

// TODO: APU group
const (
	IF_ADDRESS = 0xff0f //Interrupt Flag
)

// PPU group
const (
	LCDC_ADDRESS = 0xff40
	STAT_ADDRESS = 0xff41
	SCY_ADDRESS  = 0xff42
	SCX_ADDRESS  = 0xff43
	LY_ADDRESS   = 0xff44
	LYC_ADDRESS  = 0xff45
	DMA_ADDRESS  = 0xff46
	BGP_ADDRESS  = 0xff47
	OBP0_ADDRESS = 0xff48
	OBP1_ADDRESS = 0xff49
	WY_ADDRESS   = 0xff4a
	WX_ADDRESS   = 0xff4b
)

const (
	IE_ADDRESS = 0xffff
)
