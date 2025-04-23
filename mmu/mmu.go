package mmu

import (
	"fmt"

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

type GbMmu struct {
	vram vram.VRAM
	//iorg *iors.IORegisterSet
	oam         oam.OAM
	mbc         mbc.MBC
	wram        [8192]uint8
	hram        [127]uint8
	ioRegisters RW8Bit
	iE          *intr.IE
	dma         uint8
}

// TODO:
func NewGbMmu(vRam vram.VRAM, ioRegistersProxy RW8Bit,
	OAM oam.OAM, MBC mbc.MBC, iE *intr.IE) *GbMmu {
	return &GbMmu{
		vram:        vRam,
		oam:         OAM,
		mbc:         MBC,
		ioRegisters: ioRegistersProxy,
		iE:          iE,
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
	if address >= 0xfea0 && address < 0xff00 {
		panic("failed to read at that address")
	}

	if address < HRAM_START_ADDRESS {
		if address == 0xff46 {
			return m.dma
		}
		// io register
		return m.ioRegisters.Read8Bit(address)
	}

	if address < 0xffff {
		return m.hram[address-HRAM_START_ADDRESS]
	}
	if address == 0xffff {
		return m.iE.Read8Bit()
	}
	fmt.Println("Read address:", address)
	panic("Invalid address")
}

func (m *GbMmu) Read16Bit(address uint16) uint16 {
	lower := m.Read8Bit(address)
	upper := m.Read8Bit(address + 1)
	return uint16(upper)<<8 | uint16(lower)
}

func (m *GbMmu) Write8Bit(address uint16, value uint8) {
	//println("write to address", address)
	if address < VRAM_START_ADDRESS {
		m.mbc.Write8Bit(address, value)
		return
	}
	if address < EXT_RAM_START_ADDRESS {

		m.vram.Write8Bit(address-VRAM_START_ADDRESS, value)
		return
	}

	if address < WRAM_START_ADDRESS {
		//fmt.Println("Write to Ext RAM")
		m.mbc.Write8Bit(address, value)
		return
	}
	if address < ECHO_RAM_START_ADDRESS {
		//fmt.Println("Write to Wram")
		m.wram[address-WRAM_START_ADDRESS] = value
		return
	}
	if address < OAM_START_ADDRESS {
		// Echo RAM, write directly to WRAM
		//fmt.Println("Write to Echo RAM -> write to WRAM")
		m.wram[address-ECHO_RAM_START_ADDRESS] = value
		return
	}

	if address < 0xfea0 {
		m.oam.Write8Bit(address-OAM_START_ADDRESS, value)
		return
	}

	if address >= 0xfea0 && address < 0xff00 {
		panic("failed to access memory region in [0xfea0-0xfeff]")
	}
	if address < HRAM_START_ADDRESS {
		// check write to the DMA

		if address == 0xff46 {
			//fmt.Println("copy from", uint16(value)<<8, "to OAM")
			m.dma = value
			addr := uint16(value) << 8

			for i := uint16(0); i < 160; i++ {
				m.oam.Write8Bit(i, m.Read8Bit(addr+i))
			}
			//m.vram.GetTileRegion().GetTile(79, true).Print()
			//m.oam.Print(3)
			return
		}

		// in IO Register memory mapping

		m.ioRegisters.Write8Bit(address, value)
		return
	}
	if address < 0xffff {
		m.hram[address-HRAM_START_ADDRESS] = value
		return
	}
	if address == 0xffff {
		m.iE.Write8Bit(value)
		return
	}
	fmt.Println("Write to addr", address)
	panic("Invalid addr")
}

func (m *GbMmu) Write16Bit(address, value uint16) {
	m.Write8Bit(address, uint8(value&255))
	m.Write8Bit(address+1, uint8(value>>8))
}
