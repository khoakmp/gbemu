package vram

import (
	"math/rand"
	"testing"

	"github.com/stretchr/testify/assert"
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
func converToTile(vt *VirtualTile) Tile {
	tile := Tile{}
	for r := uint8(0); r < 8; r++ {
		for c := uint8(0); c < 8; c++ {
			tile.SetColorAt(r, c, vt.data[r][c])
		}
	}
	return tile
}

func randomVirtualTile() (v VirtualTile) {
	for i := 0; i < 8; i++ {
		for j := 0; j < 8; j++ {
			v.data[i][j] = uint8(rand.Int() & 3)
		}
		println()
	}
	return
}

func TestTileOperation(t *testing.T) {
	vt := randomVirtualTile()
	tile := converToTile(&vt)
	//converToTile(&vt)
	t.Run("flipX", func(t *testing.T) {
		tile1 := tile.FlipX()
		x := vt.FlipX()
		tile2 := converToTile(&x)
		assert.Equal(t, true, tile1.Equal(&tile2))
	})
	t.Run("flipY", func(t *testing.T) {
		tile1 := tile.FlipY()
		x := vt.FlipY()
		tile2 := converToTile(&x)
		assert.Equal(t, true, tile1.Equal(&tile2))
	})
	t.Run("flipXY", func(t *testing.T) {
		tile1 := tile.FlipXY()
		x := vt.FlipXY()
		tile2 := converToTile(&x)
		assert.Equal(t, true, tile1.Equal(&tile2))
	})
}
