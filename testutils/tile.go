package testutils

import (
	"image"
	"math/rand"

	"github.com/khoakmp/gbemu/mmu/vram"
)

type VirtualTile struct {
	data [8][8]uint8
}

func (v *VirtualTile) FlipX() (ans VirtualTile) {
	for r := 0; r < 8; r++ {
		for i := 0; i < 8; i++ {
			ans.data[r][i] = v.data[r][7-i]
		}
	}
	return
}

func (v *VirtualTile) FlipY() (ans VirtualTile) {
	for r := 0; r < 8; r++ {
		copy(ans.data[r][:], v.data[7-r][:])
	}
	return
}

func (v *VirtualTile) FlipXY() (ans VirtualTile) {
	for r := 0; r < 8; r++ {
		for c := 0; c < 8; c++ {
			ans.data[r][c] = v.data[7-r][7-c]
		}
	}
	return
}
func (vt *VirtualTile) ConverToTile() vram.Tile {
	tile := vram.Tile{}
	for r := uint8(0); r < 8; r++ {
		for c := uint8(0); c < 8; c++ {
			tile.SetColorAt(r, c, vt.data[r][c])
		}
	}
	return tile
}
func RandomVirtualTile() (v VirtualTile) {
	for i := 0; i < 8; i++ {
		for j := 0; j < 8; j++ {
			v.data[i][j] = uint8(rand.Int() & 3)
		}
		println()
	}
	return
}

func ImageToVirtualTile(src image.Image, startX, startY int) VirtualTile {
	var ans VirtualTile
	for y := uint8(0); y < 8; y++ {
		for x := uint8(0); x < 8; x++ {
			r, g, b, a := src.At(int(x)+startX, int(y)+startY).RGBA()
			r8, g8, b8, a8 := r>>8, g>>8, b>>8, a>>8
			if a8 == 0 {
				ans.data[y][x] = 0
				continue
			}
			gray := uint8(0.299*float32(r8) + 0.587*float32(g8) + 0.114*float32(b8))
			if gray < 80 {
				ans.data[y][x] = 3
				continue
			}
			if gray < 160 {
				ans.data[y][x] = 2
				continue
			}
			if gray < 255 {
				ans.data[y][x] = 1
			}
		}
	}
	return ans
}

func BigImageToVirtualTiles(src image.Image) []VirtualTile {
	var tiles []VirtualTile
	width := src.Bounds().Max.X
	n := width >> 3
	tiles = make([]VirtualTile, n)

	for i := 0; i < n; i++ {
		tiles[i] = ImageToVirtualTile(src, i<<3, 0)
	}
	return tiles
}
