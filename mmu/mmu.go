package mmu

import (
	"github.com/khoakmp/gbemu/intr"
	"github.com/khoakmp/gbemu/mmu/mbc"
	"github.com/khoakmp/gbemu/mmu/oam"
	"github.com/khoakmp/gbemu/mmu/vram"
)

type MMU interface {
	Read8Bit(addr uint16) uint8
	Write8Bit(addr uint16, val uint8)
	Read16Bit(addr uint16) uint16
	Write16Bit(addr, val uint16)
}

type RW8Bit interface {
	Read8Bit(addr uint16) uint8
	Write8Bit(addr uint16, val uint8)
}

type IoRegistersProxy struct {
	apu        RW8Bit
	timer      RW8Bit
	joypad     RW8Bit
	ppu        RW8Bit
	interrupts *intr.Interrupts
}

func (m *IoRegistersProxy) Read8Bit(address uint16) uint8 {
	if address < 0xff03 {
		return m.joypad.Read8Bit(address)
	}
	if address >= 0xff04 && address < 0xff08 {
		return m.timer.Read8Bit(address)
	}
	if address >= 0xff10 && address < 0xff40 {
		return m.apu.Read8Bit(address)
	}
	if address >= 0xff40 && address < 0xff4c {
		return m.ppu.Read8Bit(address)
	}
	if address == 0xff0f {
		return m.interrupts.IF.Read8Bit()
	}
	if address == 0xffff {
		return m.interrupts.IE.Read8Bit()
	}
	return 0
}

func (m *IoRegistersProxy) Write8Bit(address uint16, value uint8) {
	if address < 0xff03 {
		m.joypad.Write8Bit(address, value)
		return
	}
	if address >= 0xff04 && address <= 0xff07 {
		m.timer.Write8Bit(address, value)
		return
	}
	if address >= 0xff10 && address <= 0xff3f {
		m.apu.Write8Bit(address, value)
		return
	}
	if address >= 0xff40 && address < 0xff4c {
		m.ppu.Write8Bit(address, value)
		return
	}
	if address == 0xff0f {
		m.interrupts.IF.Write8Bit(value)
		return
	}
	if address == 0xffff {
		m.interrupts.IE.Write8Bit(value)
	}
}

type GbMmu struct {
	vram vram.VRAM
	//iorg *iors.IORegisterSet
	oam         oam.OAM
	mbc         mbc.MBC
	wram        [8192]uint8
	hram        [127]uint8
	ioRegisters RW8Bit
}

// TODO:
func NewGbMmu(vRam vram.VRAM, ioRegisters RW8Bit,
	OAM oam.OAM, MBC mbc.MBC) *GbMmu {
	return &GbMmu{
		vram:        vRam,
		oam:         OAM,
		mbc:         MBC,
		ioRegisters: ioRegisters,
	}
}

func (m *GbMmu) Read8Bit(address uint16) uint8 {
	if address < VRAM_START_ADDRESS {
		// ROM
		return m.mbc.Read8Bit(address)
	}
	if address < EXT_RAM_START_ADDRESS {
		// VRAM
		return m.vram.Read8Bit(address - VRAM_START_ADDRESS)
	}
	if address < WRAM_START_ADDRESS {
		// External RAM
		return m.mbc.Read8Bit(address)
	}
	if address < ECHO_RAM_START_ADDRESS {
		// WRAM
		return m.wram[address-WRAM_START_ADDRESS]
	}
	if address < OAM_START_ADDRESS {
		//Echo RAM, it's mirror of WRAM, read directly from wram
		return m.wram[address-ECHO_RAM_START_ADDRESS]
	}
	if address < 0xfea0 {
		// OAM
		return m.oam.Read8Bit(address - OAM_START_ADDRESS)
	}
	if address < HRAM_START_ADDRESS {
		// IO Registers
		return m.ioRegisters.Read8Bit(address)
	}
	return m.hram[address-HRAM_START_ADDRESS]
}

func (m *GbMmu) Read16Bit(address uint16) uint16 {
	if address < VRAM_START_ADDRESS {
		// ROM
		return m.mbc.Read16Bit(address)
	}
	if address < EXT_RAM_START_ADDRESS {
		// VRAM
		return m.vram.Read16Bit(address - VRAM_START_ADDRESS)
	}
	if address < WRAM_START_ADDRESS {
		// External RAM
		return m.mbc.Read16Bit(address)
	}
	if address < ECHO_RAM_START_ADDRESS {
		// WRAM
		addr := address - WRAM_START_ADDRESS
		return uint16(m.wram[addr+1])<<8 | uint16(m.wram[addr])
	}
	if address < OAM_START_ADDRESS {
		//Echo RAM, it's mirror of WRAM, read directly from wram
		addr := address - ECHO_RAM_START_ADDRESS
		println("read echo RAM -> read WRAM")
		return uint16(m.wram[addr+1])<<8 | uint16(m.wram[addr])
	}
	if address < 0xfea0 {
		// OAM
		return m.oam.Read16Bit(address - OAM_START_ADDRESS)
	}
	if address < HRAM_START_ADDRESS {
		// IO Registers
		/* if address >= 0xff04 && address <= 0xff07 {
			return m.timer.Read16Bit(address)
		}
		if address >= 0xff10 && address <= 0xff3f {
			return m.apu.Read16Bit(address)
		} */
		return 0
	}
	addr := address - HRAM_START_ADDRESS
	return uint16(m.hram[addr+1])<<8 | uint16(m.hram[addr])
}
func (m *GbMmu) Write8Bit(address uint16, value uint8) {
	if address < VRAM_START_ADDRESS {
		m.mbc.Write8Bit(address, value)
		return
	}
	if address < EXT_RAM_START_ADDRESS {
		m.vram.Write8Bit(address-VRAM_START_ADDRESS, value)
		return
	}
	if address < WRAM_START_ADDRESS {
		m.mbc.Write8Bit(address, value)
		return
	}
	if address < ECHO_RAM_START_ADDRESS {
		m.wram[address-WRAM_START_ADDRESS] = value
		return
	}
	if address < OAM_START_ADDRESS {
		// Echo RAM, write directly to WRAM
		//println("Write to Echo RAM -> write to WRAM")
		m.wram[address-ECHO_RAM_START_ADDRESS] = value
		return
	}
	if address < 0xfea0 {
		m.oam.Write8Bit(address-OAM_START_ADDRESS, value)
		return
	}
	if address < HRAM_START_ADDRESS {
		// in IO Register memory mapping
		m.ioRegisters.Write8Bit(address, value)
		return
	}
	m.hram[address-HRAM_START_ADDRESS] = value
}

func (m *GbMmu) Write16Bit(address, value uint16) {
	//println("write 16bit to address", address)
	// only write 16Bit vao dau dung
	if address < VRAM_START_ADDRESS {
		m.mbc.Write16Bit(address, value)
		return
	}
	if address < EXT_RAM_START_ADDRESS {
		m.vram.Write16Bit(address-VRAM_START_ADDRESS, value)
		return
	}
	if address < WRAM_START_ADDRESS {
		m.mbc.Write16Bit(address, value)
		return
	}
	if address < ECHO_RAM_START_ADDRESS {
		addr := address - WRAM_START_ADDRESS
		m.wram[addr] = uint8(value & 255)
		m.wram[addr+1] = uint8(value >> 8)
		return
	}
	if address < OAM_START_ADDRESS {
		// Echo RAM, write directly to VRAM
		addr := address - ECHO_RAM_START_ADDRESS
		m.wram[addr] = uint8(value & 255)
		m.wram[addr+1] = uint8(value >> 8)
		return
	}
	if address < 0xfea0 {
		m.oam.Write16Bit(address-OAM_START_ADDRESS, value)
		return
	}

	if address < HRAM_START_ADDRESS {
		/* if address >= 0xff04 && address <= 0xff07 {
			m.timer.Write16Bit(address, value)
		}
		if address >= 0xff10 && address <= 0xff3f {
			m.apu.Write16Bit(address, value)
			return
		} */
		// there is no write  16bit to IO register
		return
	}
	// HRAM
	addr := address - HRAM_START_ADDRESS

	m.hram[addr] = uint8(value & 255)
	m.hram[addr+1] = uint8(value >> 8)
}
