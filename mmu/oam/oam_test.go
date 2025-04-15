package oam

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestSprite(t *testing.T) {
	var x, y, tileNum, attrFlag uint8
	attrFlag |= (1 << 7) | (1 << 6)
	sprite := CreateSprite(x, y, tileNum, attrFlag)
	assert.Equal(t, true, sprite.GetObjAbove())
	assert.Equal(t, true, sprite.GetFlipY())
	assert.Equal(t, false, sprite.GetFlipX())
	assert.Equal(t, false, sprite.GetPalette())
}
func TestSpriteCheckLine(t *testing.T) {
	var x, y uint8
	var line uint8
	var height16 bool
	t.Run("height_8_fully_visible", func(t *testing.T) {
		x, y = 17, 23
		line = 13
		height16 = false
		sprite := CreateSprite(x, y, 0, 0)
		visible, tileNum, row, startCol, startX, sz := sprite.Check(int16(line), height16)
		assert.Equal(t, true, visible)
		assert.Equal(t, uint8(0), tileNum)
		assert.Equal(t, uint8(6), row)
		assert.Equal(t, uint8(0), startCol)
		assert.Equal(t, uint8(9), startX)
		assert.Equal(t, uint8(8), sz)
	})

	t.Run("height8_top_left_inivisible", func(t *testing.T) {
		height16 = false
		x, y = 5, 9
		// Actual X = -3, Actual Y = -7
		line = 0 // only line = 0-> visible the last row of tile
		sprite := CreateSprite(x, y, 0, 0)
		visible, _, row, startCol, startX, sz := sprite.Check(int16(line), height16)
		assert.Equal(t, true, visible)
		assert.Equal(t, uint8(7), row)
		assert.Equal(t, uint8(3), startCol)
		assert.Equal(t, uint8(0), startX)
		assert.Equal(t, uint8(5), sz)
	})
	t.Run("heigh8_top_right_invisible", func(t *testing.T) {
		height16 = false
		x, y = 162, 10
		line = 0
		// row is 6
		sprite := CreateSprite(x, y, 0, 0)
		visible, _, row, startCol, startX, sz := sprite.Check(int16(line), height16)
		assert.Equal(t, true, visible)
		assert.Equal(t, uint8(6), row)
		assert.Equal(t, uint8(0), startCol)
		assert.Equal(t, uint8(154), startX)
		assert.Equal(t, uint8(6), sz)
	})
	t.Run("height16", func(t *testing.T) {
		height16 = true
		x, y = 165, 150 // Actual Y: 134
		line = 143
		// -> row = 9 -> row = 1 and tilenum = 1
		sprite := CreateSprite(x, y, 0, 0)
		visible, tileNum, row, startCol, startX, sz := sprite.Check(int16(line), height16)
		assert.Equal(t, true, visible)
		assert.Equal(t, uint8(1), tileNum)
		assert.Equal(t, uint8(1), row)
		assert.Equal(t, uint8(0), startCol)
		assert.Equal(t, uint8(157), startX)
		assert.Equal(t, uint8(3), sz)
	})
}
func TestOam(t *testing.T) {
	o := NewGbOam()
	var x, y, tileNum, attrFlag uint8 = 8, 17, 1, uint8(1 << 7)
	var spriteIdx uint8 = 18
	//sprite := CreateSprite(x, y, tileNum, attrFlag)
	o.Write8Bit(uint16(spriteIdx)<<2, y)
	o.Write8Bit(uint16(spriteIdx)<<2|1, x)
	o.Write8Bit(uint16(spriteIdx)<<2|2, tileNum)
	o.Write8Bit(uint16(spriteIdx)<<2|3, attrFlag)
	sprite := o.GetSprite(spriteIdx)
	//sprite.Print()
	assert.Equal(t, int16(x)-8, sprite.GetScreenPosX())
	assert.Equal(t, int16(y)-16, sprite.GetScreenPosY())
	assert.Equal(t, tileNum, sprite.GetTileNum())

	assert.Equal(t, false, sprite.GetFlipX())
	assert.Equal(t, false, sprite.GetFlipY())
	assert.Equal(t, true, sprite.GetObjAbove())
	assert.Equal(t, false, sprite.GetPalette())

}
