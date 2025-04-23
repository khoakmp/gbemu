package testutils

import (
	"image/png"
	"log"
	"os"

	"github.com/khoakmp/gbemu/mmu/vram"
)

// bgMap size 32x32
func CreateTileMap(vRAM vram.VRAM, tilesImagePath string, mapSelector uint8, tileIndexs []uint8, tilemap [][]uint8) {
	//b := BackgroundMap{}
	f, err := os.Open(tilesImagePath)
	if err != nil {
		log.Fatal(err)
	}
	src, err := png.Decode(f)
	if err != nil {
		log.Fatal(err)
	}
	virtualTiles := BigImageToVirtualTiles(src)

	for i := 0; i < len(tileIndexs); i++ {
		tile := virtualTiles[i].ConverToTile()
		vRAM.GetTileRegion().SetTile(tileIndexs[i], true, &tile)
	}
	vRAM.SetBackgroundMap(mapSelector, tilemap)
}
