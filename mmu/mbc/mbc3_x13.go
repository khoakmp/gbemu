package mbc

type Mbc3x13 struct {
	romBankIdx uint8 // at least 1
	ramBankIdx uint8
	rom        []uint8
	extRam     []uint8
}

// access vo cai 0xa000 -> 0xbfff -> this is external ram region
func NewMbc3x13(ramSize uint8, rom []uint8) *Mbc3x13 {
	return &Mbc3x13{
		romBankIdx: 1,
		ramBankIdx: 0,
		rom:        rom,
		extRam:     make([]uint8, ramSize),
	}
}

func (m *Mbc3x13) Read8Bit(address uint16) uint8 {
	if address < 0x4000 {
		return m.rom[address]
	}
	if address < 0x8000 {
		return m.rom[address-0x4000+uint16(m.romBankIdx)<<14]
	}
	return m.extRam[address-0xa000+uint16(m.ramBankIdx)<<13]
}

func (m *Mbc3x13) Write8Bit(address uint16, value uint8) {
	if address >= 0x2000 && address < 0x4000 {
		m.romBankIdx = value & 128
		if m.romBankIdx == 0 {
			m.romBankIdx = 1
		}
	}
	if address >= 0x4000 && address < 0x6000 {
		m.ramBankIdx = value
	}
}

func (m *Mbc3x13) Read16Bit(address uint16) uint16 {
	if address < 0x4000 {
		goto CAL
	}
	if address < 0x8000 {
		address = address - 0x4000 + uint16(m.romBankIdx)<<14
	}
	address = address - 0xa000 + uint16(m.ramBankIdx)<<13
CAL:
	lower := m.rom[address]
	upper := m.rom[address+1]
	return uint16(upper)<<8 | uint16(lower)
}

func (m *Mbc3x13) Write16Bit(address uint16, value uint16) {}
func (m *Mbc3x13) GetRomBuffer() []uint8 {
	return m.rom
}
