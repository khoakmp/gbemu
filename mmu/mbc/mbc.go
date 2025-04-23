package mbc

import "log"

// directly dung?
type MBC interface {
	Read8Bit(address uint16) uint8
	Read16Bit(address uint16) uint16
	Write8Bit(address uint16, value uint8)
	Write16Bit(address, value uint16)
	GetRomBuffer() []uint8
}

const (
	EXT_RAM_START_ADDRESS = 0xa000 // end at 0xbfff
	EXT_RAM_END_ADDRESS   = 0xbfff
)

func CreateMBC(mbcType int, romBuffer []uint8, ramSize uint32) MBC {
	switch mbcType {
	case 0x13:
		return NewMbc3x13(ramSize, romBuffer)
	}
	log.Fatal()
	return nil
}
