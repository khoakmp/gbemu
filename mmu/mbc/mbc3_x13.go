package mbc

import "fmt"

type Mbc3x13 struct {
	ramEnable  bool
	romBankIdx uint8 // at least 1
	ramBankIdx uint8
	rom        []uint8
	extRam     []uint8
}

// access vo cai 0xa000 - 0xbfff -> this is external ram region
func NewMbc3x13(ramSize uint32, rom []uint8) *Mbc3x13 {
	fmt.Println("Rom buffer size:", len(rom))
	fmt.Println("Ext Ram buffer size:", ramSize)

	return &Mbc3x13{
		ramEnable:  false,
		romBankIdx: 1,
		ramBankIdx: 0,
		rom:        rom,
		extRam:     make([]uint8, ramSize),
	}
}

func (m *Mbc3x13) Read8Bit(address uint16) uint8 {
	//fmt.Printf("read addr %x\n", address)
	if address < 0x4000 {
		return m.rom[address]
	}

	if address < 0x8000 {
		offset := uint32(address-0x4000) + uint32(m.romBankIdx)<<14
		return m.rom[offset]
	}

	if address < 0xa000 || address > 0xbfff {
		panic("Invalid address")
	}

	//fmt.Println("Access RAM bank ", m.ramBankIdx)
	if m.ramEnable {
		return m.extRam[uint32(address-0xa000)+uint32(m.ramBankIdx)<<13]
	}
	return 0xff
}

func (m *Mbc3x13) Write8Bit(address uint16, value uint8) {
	if address < 0x2000 {
		m.ramEnable = value == 0x0a
		return
	}

	if address >= 0x2000 && address < 0x4000 {
		m.romBankIdx = value
		if m.romBankIdx == 0 {
			m.romBankIdx = 1
		}
		return
	}
	if address >= 0x4000 && address < 0x6000 {
		//fmt.Println("switch ram bank to:", value)
		m.ramBankIdx = value
		return
	}
	if address >= 0x6000 && address < 0xa000 {
		//panic("Write to invalid address")
		return
	}
	if !m.ramEnable {
		return
	}
	offset := uint32(address-0xa000) + uint32(m.ramBankIdx)<<13
	//fmt.Println("Write to external ram")
	m.extRam[offset] = value
}

func (m *Mbc3x13) Read16Bit(address uint16) uint16 {
	lower := m.Read8Bit(address)
	upper := m.Read8Bit(address + 1)
	return uint16(upper)<<8 | uint16(lower)
}

func (m *Mbc3x13) Write16Bit(address uint16, value uint16) {
	m.Write8Bit(address, uint8(value&255))
	m.Write8Bit(address+1, uint8(value>>8))
}
func (m *Mbc3x13) GetRomBuffer() []uint8 {
	return m.rom
}
