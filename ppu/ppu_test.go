package ppu

import (
	"fmt"
	"testing"

	"github.com/khoakmp/gbemu/intr"
	"github.com/khoakmp/gbemu/mmu/oam"
	"github.com/khoakmp/gbemu/mmu/vram"
	"github.com/stretchr/testify/assert"
)

func TestCalSprite(t *testing.T) {
	vRam := vram.NewGbVram()
	tile := vram.RandomTile()
	tile.Print()

	vRam.GetTileRegion().SetTile(2, true, &tile)
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
	calSprite(sprite, line, false, paletteConv[:], lineColors[:], vRam.GetTileRegion())
	for i := 157; i < 160; i++ {
		print(lineColors[i], " ")
	}
	println()
}

func TestPpuModeTransition(t *testing.T) {
	oAm := oam.NewGbOam()
	vRam := vram.NewGbVram()
	interrupts := &intr.Interrupts{}

	var buffers [][]uint8 = make([][]uint8, 144)
	for i := 0; i < 144; i++ {
		buffers[i] = make([]uint8, 160)
	}
	ppu := NewGbPPU(oAm, vRam, interrupts, buffers, func() {
		fmt.Println("Draw!!!")
	})
	pState := ppu.state

	pState.STAT.SetEnableInterruptMode(0, false)
	pState.STAT.SetEnableInterruptMode(1, true)
	pState.STAT.SetEnableInterruptMode(2, true)
	pState.STAT.SetLyEqualLyc(false)
	pState.STAT.SetEnableInterruptLyEqualLyc(true)
	pState.LYC = 19

	assert.Equal(t, uint8(2), ppu.mode)
	assert.Equal(t, uint8(0), ppu.state.LY)

	for j := 0; j < 144; j++ {
		var n int = 20
		if j == 0 {
			n = 19
		}

		for i := 0; i < n; i++ {
			ppu.Update(4)
			if i == 0 && j != 0 {
				assert.Equal(t, true, interrupts.IF.GetStatInterrupt())
			}
			if i == 0 && j == 19 {
				assert.Equal(t, true, ppu.state.STAT.GetLyEqualLyc())
			}

			assert.Equal(t, uint8(2), ppu.mode)
			assert.Equal(t, uint8(2), ppu.state.STAT.GetMode())
			assert.Equal(t, uint8(j), ppu.state.LY)
			interrupts.IF.SetStatInterrupt(false)
			ppu.state.STAT.SetLyEqualLyc(false)
		}

		for i := 0; i < 172>>2; i++ {
			ppu.Update(4)
			// transition from mode 2 -> 3
			assert.Equal(t, uint8(3), ppu.mode)
			assert.Equal(t, uint8(3), ppu.state.STAT.GetMode())
			assert.Equal(t, uint8(j), ppu.state.LY)
		}

		assert.Equal(t, uint16(168), ppu.modeCycleCnt)
		interrupts.IF.SetStatInterrupt(false)

		for i := 0; i < 204>>2; i++ {
			ppu.Update(4)
			if i == 0 {
				assert.Equal(t, false, interrupts.IF.GetStatInterrupt())
			}
			assert.Equal(t, uint8(0), ppu.mode)
			assert.Equal(t, uint8(0), ppu.state.STAT.GetMode())
			assert.Equal(t, uint8(j), ppu.state.LY)
			interrupts.IF.SetStatInterrupt(false)
		}
	}
	interrupts.IF.SetStatInterrupt(false)

	for j := 0; j < 10; j++ {
		for i := 0; i < 456>>2; i++ {
			ppu.Update(4)
			if i == 0 {
				assert.Equal(t, true, interrupts.IF.GetStatInterrupt())
			}
			assert.Equal(t, uint8(1), ppu.mode)
			assert.Equal(t, uint8(1), ppu.state.STAT.GetMode())
			assert.Equal(t, uint8(144+j), ppu.state.LY)
			interrupts.IF.SetStatInterrupt(false)

		}
	}
}
