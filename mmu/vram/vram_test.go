package vram

import (
	"math/rand"
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestVramAccess(t *testing.T) {
	v := NewGbVram()
	t.Run("tiles_data", func(t *testing.T) {
		tile := RandomTile()
		var tileIdx uint16 = 383
		for i := uint16(0); i < 16; i++ {
			v.Write8Bit(tileIdx<<4+i, tile.data[i])
		}
		// idx = 256, mode signed -> tilenum = 0
		var tileNum uint8
		var modeUnsigned bool = false
		if !modeUnsigned {
			tileNum = uint8(tileIdx - 256)
		} else {
			tileNum = uint8(tileIdx)
		}
		ti := v.GetTiles().GetTile(tileNum, modeUnsigned)
		assert.Equal(t, true, ti.Equal(&tile))
	})
	t.Run("tile_map", func(t *testing.T) {
		var mapSelector uint8 = 1
		var tileMapRow, tileMapCol uint8 = 2, 14
		var tileNum uint8 = 2
		var cellIdx uint16 = uint16(tileMapRow)<<5 | uint16(tileMapCol)
		v.Write8Bit(6<<10+uint16(mapSelector)<<10+cellIdx, tileNum)
		assert.Equal(t, tileNum, v.tileMaps[mapSelector][cellIdx])
	})
}

type Background struct {
	colors [256][256]uint8
}

func (b *Background) fillTileToRect(top, left uint8, tile *Tile) {
	var rColors [8]uint8
	for i := uint8(0); i < 8; i++ {
		tile.GetRowColorsRange(i, 0, rColors[:])
		row := top + i
		for j := uint8(0); j < 8; j++ {
			b.colors[row][left+j] = rColors[j]
		}
	}
}

func (b *Background) SetColorsFromVRAM(v *GbVram, mapSelector uint8, modeUnsigned bool) {
	for i := uint16(0); i < 1024; i++ {
		var row, col uint8 = uint8(i >> 5), uint8(i & 31)
		var top, left uint8 = row << 3, col << 3
		tileNum := v.tileMaps[mapSelector][i]
		b.fillTileToRect(top, left, v.Tiles.GetTile(tileNum, modeUnsigned))
	}
}

func (b *Background) PickLineRange(y uint8, startCol, sz uint8) (lineColors []uint8) {
	lineColors = make([]uint8, sz)
	for i := uint8(0); i < sz; i++ {
		lineColors[i] = b.colors[y][(i+startCol)&255]
	}
	return
}
func TestBgOverlapScreenLine(t *testing.T) {
	v := NewGbVram()
	var line, scx, scy, mapSelector uint8
	var modeUnsigned bool

	for i := 0; i < 384; i++ {
		var tile *Tile = v.Tiles.tiles[i]
		for j := 0; j < 16; j++ {
			tile.data[j] = uint8(rand.Int() & 3)
		}
	}

	for i := 0; i < 2; i++ {
		for j := 0; j < 1024; j++ {
			v.tileMaps[i][j] = uint8(rand.Int() & 255)
		}
	}

	bg := Background{}
	line = 143
	scx, scy = 159, 12
	mapSelector = 0
	modeUnsigned = false
	bg.SetColorsFromVRAM(v, mapSelector, modeUnsigned)

	lineColors := v.GetLineColors(mapSelector, line, scx, scy, modeUnsigned)
	colors := bg.PickLineRange((line+scy)&255, scx, 160)
	for i := 0; i < len(lineColors); i++ {
		if colors[i] != lineColors[i] {
			t.Error("wrong line ", i)
		}
	}
}
