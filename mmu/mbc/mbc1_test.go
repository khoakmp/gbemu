package mbc

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestMBC1(t *testing.T) {
	// Write Rule to ROM:
	// 0x0000-0x2000: if write 0x0a enable ext RAM, otherwise disable extRAM
	// 0x2000-0x4000: set lower 5bits
	// 0x4000-0x6000: set upper 2bits
	// 0x6000-0x8000: if value == 0x01 set RAM banking mode, val =0x00-> ROM banking mode
	mBC := NewMbc1(64<<10, 32<<10)
	// use 4 rom bak(16 kb each bank) and 4 ext ram bank(8 kb each bank)
	// intial state, ROM mode, not enable ext RAM
	mBC.Write8Bit(0x0000, 0x0a)
	romBuf := mBC.GetRomBuffer()
	assert.Equal(t, 64<<10, len(romBuf))
	var pos uint16 = 19
	romBuf[pos] = 101
	romBuf[16<<10+pos] = 102
	romBuf[32<<10+pos] = 103
	// 1. try to read ROM bank 1
	assert.Equal(t, uint8(101), mBC.Read8Bit(pos))
	assert.Equal(t, uint8(102), mBC.Read8Bit(16<<10+pos))
	// switch to rom bank 2, still be in rom banking mode
	mBC.Write8Bit(0x2000, 2)
	assert.Equal(t, uint8(103), mBC.Read8Bit(16<<10+pos))
	// switch to ram banking mode
	mBC.Write8Bit(0x6000, 0x01)
	assert.Equal(t, uint8(102), mBC.Read8Bit(16<<10+pos))

	//	EXT_RAM_START_ADDRESS     = 0xa000 // end at 0xbfff
	// currently in RAM banking mode, the upper 2 bits currently is 0
	// just choose the first
	var ramOff uint16 = 26
	// at this point, all writing to EXT RAM just write to ram bank 0,
	mBC.Write8Bit(0xa000+ramOff, 10)
	assert.Equal(t, uint8(10), mBC.Read8Bit(0xa000+ramOff))
	mBC.Write8Bit(0x4000, 1) // write upper 2 bits -> because in RAM bank mode, it switch to bank 1
	mBC.Write8Bit(0xa000+ramOff, 102)
	assert.Equal(t, uint8(102), mBC.Read8Bit(0xa000+ramOff))
	mBC.Write8Bit(0x6000, 0x00) // switch back to ROM mode
	assert.Equal(t, uint8(10), mBC.Read8Bit(0xa000+ramOff))
}
