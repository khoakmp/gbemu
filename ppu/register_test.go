package ppu

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestPPURegister(t *testing.T) {
	t.Run("lcdc", func(t *testing.T) {
		l := Lcdc{}
		// |lcd enable|Window TileMap|Window Enable|BgWin TileData|BG TileMap|Obj Size|Obj Enable| Bg enable ?
		var data uint8 = 0b11010001
		l.Write8Bit(data)
		assert.Equal(t, true, l.GetLCDEnable())
		assert.Equal(t, uint8(1), l.GetWindowTileMap()) //  choose the tile map 1
		assert.Equal(t, false, l.GetWindowLayerEnable())
		assert.Equal(t, true, l.GetWindowBGTiledata())
		assert.Equal(t, uint8(0), l.GetBackgroundTileMap())
		assert.Equal(t, false, l.GetSpriteHeight16())
		assert.Equal(t, false, l.GetSpriteEnable())
		assert.Equal(t, true, l.GetBackgroundEnable())
		// 0b11010100
		l.SpriteHeight = 1
		l.BackgroundEnable = false
		data = l.Read8Bit()
		assert.Equal(t, uint8(0b11010100), data)
		data = 0b01001111
		l.Write8Bit(data)
		assert.Equal(t, data, l.Read8Bit())
	})
	t.Run("stat", func(t *testing.T) {
		s := Stat{}
		var data uint8 = 0b10011001
		s.Write8Bit(data)
		assert.Equal(t, data, s.Read8Bit())
		assert.Equal(t, false, s.GetEnableInterruptLyEqualLyc())
		assert.Equal(t, false, s.GetEnableInterruptMode(2))
		assert.Equal(t, true, s.GetEnableInterruptMode(1))
		assert.Equal(t, true, s.GetEnableInterruptMode(0))
		assert.Equal(t, false, s.GetLyEqualLyc())
		assert.Equal(t, uint8(1), s.GetMode())
		s.LyEqualLyc = true
		assert.Equal(t, uint8(0b10011101), s.Read8Bit())
		s.PpuMode = 3
		assert.Equal(t, uint8(0b10011111), s.Read8Bit())
	})

}

func TestPpuState(t *testing.T) {
	state := PpuState{
		OBP0: 24,
		OBP1: 17,
		BGP:  12,
		SCX:  3,
		SCY:  33,
		WX:   11,
		WY:   1,
		LY:   5,
		LYC:  4,
		STAT: &Stat{},
		LCDC: &Lcdc{},
	}
	statData := uint8(0b11001010)
	lcdcData := uint8(0b00110011)
	state.STAT.Write8Bit(statData)
	state.LCDC.Write8Bit(lcdcData)
	assert.Equal(t, lcdcData, state.Read8Bit(0xff40))
	assert.Equal(t, statData, state.Read8Bit(0xff41))
	assert.Equal(t, uint8(33), state.Read8Bit(0xff42))
	assert.Equal(t, uint8(3), state.Read8Bit(0xff43))
	assert.Equal(t, uint8(5), state.Read8Bit(0xff44))
	assert.Equal(t, uint8(4), state.Read8Bit(0xff45))

	//assert.Equal(t, uint8(33), state.Read8Bit(0xff46))

	assert.Equal(t, uint8(12), state.Read8Bit(0xff47))
	assert.Equal(t, uint8(24), state.Read8Bit(0xff48))
	assert.Equal(t, uint8(17), state.Read8Bit(0xff49))
	assert.Equal(t, uint8(1), state.Read8Bit(0xff4a))
	assert.Equal(t, uint8(11), state.Read8Bit(0xff4b))

	state.Write8Bit(0xff40, 0b11110000)
	assert.Equal(t, uint8(0b11110000), state.Read8Bit(0xff40))
	state.Write8Bit(0xff41, 0b11010001)
	assert.Equal(t, uint8(0b11010001), state.Read8Bit(0xff41))

}
