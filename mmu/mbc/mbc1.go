package mbc

type Mbc1 struct {
	rom          []uint8 // store all rom banks consecutively
	extRam       []uint8 // store all ext ram banks consecutively
	lower5Bits   uint8
	upper2Bits   uint8
	ramBankMode  bool // default is ROM banking mode
	extRamEnable bool // default false
}

func NewMbc1(romSize uint32, extRamSize uint16) *Mbc1 {
	return &Mbc1{
		rom:    make([]uint8, romSize),
		extRam: make([]uint8, extRamSize),
	}
}

// ext RAM: 0xa000 -> 0xbfff
func (m *Mbc1) Read8Bit(address uint16) uint8 {
	if address < 0x4000 {
		return m.rom[address]
	}

	if address >= 0x4000 && address < 0x8000 {
		if m.ramBankMode {
			// ram bank mode -> just rom bank 1
			return m.rom[address]
		}
		var romBankIdx uint8 = m.upper2Bits<<5 | m.lower5Bits
		if romBankIdx == 0 {
			romBankIdx = 1
		}

		return m.rom[uint32(romBankIdx)<<14+uint32(address-0x4000)]
	}
	// Address in Ext RAM
	if !m.extRamEnable {
		return 0
	}
	// Ram bank: 8KB
	if !m.ramBankMode {
		return m.extRam[address-EXT_RAM_START_ADDRESS]
	}
	// 8 * 1024
	var ramBankIdx uint8 = m.upper2Bits & 3
	return m.extRam[uint32(ramBankIdx)<<13+uint32(address-EXT_RAM_START_ADDRESS)]
}

func (m *Mbc1) Write8Bit(address uint16, value uint8) {
	if address < 0x2000 {
		m.extRamEnable = value == 0x0a
		return
	}
	if address >= 0x2000 && address < 0x4000 {
		m.lower5Bits = value & 31
		return
	}
	if address >= 0x4000 && address < 0x6000 {
		m.upper2Bits = (value & 3)
		return
	}
	if address >= 0x6000 && address < 0x8000 {
		m.ramBankMode = value == 0x01
		return
	}
	m.write8BitRAM(address, value)
}
func (m *Mbc1) write8BitRAM(address uint16, value uint8) {
	if !m.extRamEnable {
		return
	}
	if !m.ramBankMode {
		m.extRam[address-EXT_RAM_START_ADDRESS] = value
		return
	}
	var ramBankIdx uint32 = uint32(m.upper2Bits) & 3
	m.extRam[ramBankIdx<<13+uint32(address-EXT_RAM_START_ADDRESS)] = value
}

func (m *Mbc1) Read16Bit(address uint16) uint16 {
	return uint16(m.Read8Bit(address+1))<<8 | uint16(m.Read8Bit(address))
}

func (m *Mbc1) Write16Bit(address, value uint16) {
	//if address >= 0x6000 && address < 0x8000 {
	m.Write8Bit(address, uint8(value&255))
	m.Write8Bit(address+1, uint8(value>>8))
	//}
}

func (m *Mbc1) GetRomBuffer() []uint8 {
	return m.rom
}
