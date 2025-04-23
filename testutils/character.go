package testutils

import (
	"image/png"
	"log"
	"os"

	"github.com/khoakmp/gbemu/mmu/oam"
	"github.com/khoakmp/gbemu/mmu/vram"
)

// 1. sprite only use unsigned-mode tile data

// every SimpleCharacter obj has only one sprite, and sprite.TileNum can be changed
// use just one tile 8x8
// only one action at all time
type SimpleCharacter struct {
	vram          vram.VRAM
	oam           oam.OAM
	spriteIndex   uint8 // value in range [0-39]
	Sprire        *oam.Sprite
	tileIndexes   []uint8 // just unsigned-mode in tile data
	stateIndex    uint8   // control the current tile set to
	updateCounter uint8
	frameCount    uint8
}

func (c *SimpleCharacter) IncScreenPosX(delta int16) {
	px := c.Sprire.GetScreenPosX()
	x := px + delta
	if x > 160 {
		x = 160
	}
	if x < -8 {
		x = -8
	}
	c.Sprire.SetScreenPosX(x)
}
func (c *SimpleCharacter) IncScreenPosY(delta int16) {
	py := c.Sprire.GetScreenPosY()
	y := py + delta
	if y > 144 {
		y = 144
	}
	if y < -8 {
		y = -8
	}
	c.Sprire.SetScreenPosY(y)
}
func (c *SimpleCharacter) SetScreenPosX(px int16) {
	c.Sprire.SetScreenPosX(px)
}

func (c *SimpleCharacter) SetScreenPosY(py int16) {
	c.Sprire.SetScreenPosY(py)
}

type Position struct {
	X int16
	Y int16
}

func (c *SimpleCharacter) UpdateState() {
	c.updateCounter = (c.updateCounter + 1) % c.frameCount
	if c.updateCounter == 0 {
		c.stateIndex = uint8(int(c.stateIndex+1) % len(c.tileIndexes))
		c.Sprire.SetTileNum(c.tileIndexes[c.stateIndex])
	}
}

func NewSimpleCharacter(vRAM vram.VRAM, oAm oam.OAM, imgPath string, spriteIndex uint8, tileIndexes []uint8, frameCount uint8) *SimpleCharacter {
	f, err := os.Open(imgPath)
	if err != nil {
		log.Fatal("Failed to open image file", err)
	}
	img, err := png.Decode(f)
	if err != nil {
		log.Fatal("failed to decode image", err)
	}
	virtualTiles := BigImageToVirtualTiles(img)
	c := SimpleCharacter{
		vram:          vRAM,
		oam:           oAm,
		tileIndexes:   tileIndexes,
		stateIndex:    0,
		spriteIndex:   spriteIndex,
		Sprire:        oAm.GetSprite(spriteIndex),
		updateCounter: 0,
		frameCount:    frameCount,
	}

	for i := 0; i < len(tileIndexes); i++ {
		tile := virtualTiles[i].ConverToTile()
		//fmt.Println("character frame ", i)
		//tile.Print()
		c.vram.GetTileRegion().SetTile(tileIndexes[i], true, &tile)
		//t:=c.vram.GetTileRegion().GetTile(tileIndexes[i], true)
		//t.Print()
	}

	c.Sprire.SetTileNum(tileIndexes[0])
	return &c
}
