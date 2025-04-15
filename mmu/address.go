package mmu

const (
	ROM_START_ADDRESS         = 0x0000 // end at 0x7fff
	VRAM_START_ADDRESS        = 0x8000 // end at 0x9fff
	EXT_RAM_START_ADDRESS     = 0xa000 // end at 0xbfff
	WRAM_START_ADDRESS        = 0xc000 // end at 0xdfff
	ECHO_RAM_START_ADDRESS    = 0xe000 // end at 0xfdff
	OAM_START_ADDRESS         = 0xfe00 // end at 0xfe9f
	IO_REGISTER_START_ADDRESS = 0xff00 // end at 0xff7f
	HRAM_START_ADDRESS        = 0xff80 // end at 0xfffe
)

// fea0 -> 0xfeff is unused
// wram: 8KB
// 16^3 + 14 *16^2 = 16^2 (16 + 14) = 30 * 256 = 15 * 512
