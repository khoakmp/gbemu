package mmu

import (
	"testing"

	"github.com/khoakmp/gbemu/iors"
	"github.com/khoakmp/gbemu/mmu/mbc"
	"github.com/khoakmp/gbemu/mmu/oam"
	"github.com/khoakmp/gbemu/mmu/vram"
	"github.com/stretchr/testify/assert"
)

/*
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
*/
func TestMmu(t *testing.T) {
	oAm := oam.NewGbOam()
	vRam := vram.NewGbVram()
	mBC := mbc.NewMbc1(64<<10, 16<<10)
	iorg := iors.NewIORegisterSet()
	mUnit := NewGbMmu(vRam, iorg, oAm, mBC)
	t.Run("wram", func(t *testing.T) {
		mUnit.Write8Bit(0xc000, 10)
		val := mUnit.Read8Bit(0xc000)
		assert.Equal(t, val, uint8(10), "Failed at address 0xc000")
		mUnit.Write8Bit(0xdfff, 11)
		val = mUnit.Read8Bit(0xdfff)
		assert.Equal(t, val, uint8(11), "Failed at address 0xdfff")
		mUnit.Write8Bit(0xd000, 12)
		val = mUnit.Read8Bit(0xd000)
		assert.Equal(t, val, uint8(12), "Failed at address 0xd000")
	})
	t.Run("IORegisters", func(t *testing.T) {
		mUnit.Write8Bit(0xff40, 10)
		assert.Equal(t, uint8(10), iorg.LCDC.GetValue(), "Failed LCDC")
		assert.Equal(t, uint8(10), mUnit.Read8Bit(0xff40), "Failed LCDC mem")

		mUnit.Write8Bit(0xff41, 11)
		assert.Equal(t, uint8(11), iorg.STAT.GetValue(), "Failed STAT")
		assert.Equal(t, uint8(11), mUnit.Read8Bit(0xff41), "Failed STAT mem")

		mUnit.Write8Bit(0xff42, 10)
		assert.Equal(t, uint8(10), iorg.SCY, "Failed SCY")
		assert.Equal(t, uint8(10), mUnit.Read8Bit(0xff42), "Failed SCY mem")

		mUnit.Write8Bit(0xff43, 10)
		assert.Equal(t, uint8(10), iorg.SCX, "Failed SCX")
		assert.Equal(t, uint8(10), mUnit.Read8Bit(0xff43), "Failed SCX mem")

		mUnit.Write8Bit(0xff44, 10)
		assert.Equal(t, uint8(10), iorg.LY, "Failed LY")
		assert.Equal(t, uint8(10), mUnit.Read8Bit(0xff44), "Failed LY mem")

		mUnit.Write8Bit(0xff45, 10)
		assert.Equal(t, uint8(10), iorg.LYC, "Failed LYC")
		assert.Equal(t, uint8(10), mUnit.Read8Bit(0xff45), "Failed LYC mem")

		// TODO: test DMA
		mUnit.Write8Bit(0xff47, 10)
		assert.Equal(t, uint8(10), iorg.BGP, "Failed BGP")
		assert.Equal(t, uint8(10), mUnit.Read8Bit(0xff47), "Failed BGP mem")

		mUnit.Write8Bit(0xff48, 10)
		assert.Equal(t, uint8(10), iorg.OBP0, "Failed OBP0")
		assert.Equal(t, uint8(10), mUnit.Read8Bit(0xff48), "Failed OBP0 mem")

		mUnit.Write8Bit(0xff49, 10)
		assert.Equal(t, uint8(10), iorg.OBP1, "Failed OBP1")
		assert.Equal(t, uint8(10), mUnit.Read8Bit(0xff49), "Failed OBP1 mem")

		mUnit.Write8Bit(0xff4a, 10)
		assert.Equal(t, uint8(10), iorg.WY, "Failed WY")
		assert.Equal(t, uint8(10), mUnit.Read8Bit(0xff4a), "Failed WY mem")

		mUnit.Write8Bit(0xff4b, 10)
		assert.Equal(t, uint8(10), iorg.WX, "Failed WX")
		assert.Equal(t, uint8(10), mUnit.Read8Bit(0xff4b), "Failed WX mem")

	})
	t.Run("oam", func(t *testing.T) {
		var x, y uint8 = 10, 20
		var spriteIdx uint8 = 1
		var tileNum uint8 = 1

		sprite := oam.CreateSprite(x, y, tileNum, 0)
		oAm.SetSprite(spriteIdx, sprite)
		//sp := oAm.GetSprite(spriteIdx)

		yVal := mUnit.Read8Bit(uint16(spriteIdx)<<2 + OAM_START_ADDRESS)
		assert.Equal(t, y, yVal, "Wrong Sprite Y")

		xVal := mUnit.Read8Bit(uint16(spriteIdx)<<2 + 1 + OAM_START_ADDRESS)
		assert.Equal(t, x, xVal, "Wrong Sprite X")

		tileNumVal := mUnit.Read8Bit(uint16(spriteIdx)<<2 + 2 + OAM_START_ADDRESS)
		assert.Equal(t, tileNum, tileNumVal, "Wrong Sprite TileNum")

		attrFlag := mUnit.Read8Bit(uint16(spriteIdx)<<2 + 3 + OAM_START_ADDRESS)
		assert.Equal(t, uint8(0), attrFlag, "Wrong Sprite TileNum")
	})
	t.Run("vram", func(t *testing.T) {
		var tileIdx uint8 = 250
		var modeUnsigned bool = false
		var actualIndex uint16 = uint16(tileIdx)
		if !modeUnsigned {
			actualIndex = uint16(int16(int8(tileIdx))) + uint16(256)
		}
		t.Run("tile_data", func(t *testing.T) {
			tile := vram.RandomTile()
			vRam.GetTiles().SetTile(tileIdx, true, &tile)
			var t1 vram.Tile

			var data [16]uint8
			for idx := uint16(0); idx < 16; idx++ {
				data[idx] = mUnit.Read8Bit(VRAM_START_ADDRESS + actualIndex<<4 + idx)
			}

			t1.SetRaw(data[:])
			assert.Equal(t, true, t1.Equal(&tile), "Tile Read Not Equal Written tile ")
		})
		t.Run("tile_map", func(t *testing.T) {
			var mapSelector uint8 = 0
			var bgRow, bgCol uint8 = 1, 2
			vRam.SetTileNumAt(0, bgRow, bgCol, tileIdx)
			tidx := mUnit.Read8Bit(VRAM_START_ADDRESS + 6<<10 +
				uint16(mapSelector)<<10 + uint16(bgRow)<<5 + uint16(bgCol))
			assert.Equal(t, tileIdx, tidx, "Not Equal Tile Index in BG map")
		})
	})
}
