package ppu

import (
	"testing"

	"github.com/khoakmp/gbemu/mmu/oam"
	"github.com/khoakmp/gbemu/mmu/vram"
)

func TestCalSprite(t *testing.T) {
	vRam := vram.NewGbVram()
	tile := vram.RandomTile()
	tile.Print()

	vRam.GetTiles().SetTile(2, true, &tile)
	var py, line uint8 = 3, 8
	var px int16 = 165
	spriteFlag := oam.CreateSpriteAttrFlag(true, false, false, false)
	sprite := oam.CreateSprite(uint8(px), py+16, 2, spriteFlag)

	var paletteConv [4]uint8
	paletteConv[0] = 0
	paletteConv[1] = 1
	paletteConv[2] = 2
	paletteConv[3] = 3
	var lineColors [160]uint8
	calSprite(sprite, line, false, paletteConv[:], lineColors[:], vRam.GetTiles())
	for i := 157; i < 160; i++ {
		print(lineColors[i], " ")
	}
	println()
}
