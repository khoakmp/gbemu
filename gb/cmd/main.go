package main

import (
	"fmt"
	"time"

	"github.com/faiface/pixel/pixelgl"
	"github.com/khoakmp/gbemu/gb"
	"github.com/khoakmp/gbemu/intr"
	"github.com/khoakmp/gbemu/joypad"
	"github.com/khoakmp/gbemu/lcd"
	"github.com/khoakmp/gbemu/mmu/oam"
	"github.com/khoakmp/gbemu/mmu/vram"
	"github.com/khoakmp/gbemu/ppu"
	"github.com/khoakmp/gbemu/testutils"
)

func main() {
	//testUpdatePPU()
	//testPpuFull()
	//runGbByStep()
	runGb()
	//ReadBootROM()
}
func testPpuFull() {
	oAM := oam.NewGbOam()
	vRam := vram.NewGbVram()
	interrupts := intr.Interrupts{}
	var lineBuffers [][]uint8 = make([][]uint8, 144)
	for i := 0; i < 144; i++ {
		lineBuffers[i] = make([]uint8, 160)
	}
	gbLCD := lcd.NewLcd(lineBuffers, nil)
	ppu := ppu.NewGbPPU(oAM, vRam, &interrupts, lineBuffers, gbLCD.Draw)
	pState := ppu.GetPpuState()

	gbLCD.SetFnSetStateButtons(func(button joypad.ButtonCode, press bool) {
		if button == joypad.ButtonRight && press {
			pState.SCX += 10
			if pState.SCX > 159 {
				pState.SCX = 159
			}
		}
		if button == joypad.ButtonLeft && press {
			x := int(pState.SCX) - 10
			if x < 0 {
				x = 0
			}
			pState.SCX = uint8(x)
		}

	})

	pState.LCDC.LcdEnable = true
	pState.LCDC.SpriteEnable = true
	pState.LCDC.WindowBgTileData = 1  // this is unsigned mode
	pState.LCDC.BackgroundTileMap = 0 // choose tile map 0
	pState.LCDC.SpriteHeight = 0      // using height 8
	pState.LCDC.WindowEnable = true
	pState.LCDC.BackgroundEnable = true
	pState.LCDC.WindowTileMap = 1

	// 01 => 00, 23 => 01, 45 -> 10, 67 -> 11
	// 11100100 // 128 + 64 + 32 + 4 = 192+36 = 228

	pState.OBP0 = 228
	// 01101100 64+32 + 12 = 96+12=108
	// 01111000 64+32+16+8 = 8(1+2+4+8) = 120
	pState.OBP1 = 120
	pState.BGP = 228

	characterZ := testutils.NewSimpleCharacter(vRam, oAM, "../images/z.png", 0, []uint8{0, 1}, 12)

	characterZ.Sprire.SetScreenPosX(137)
	characterZ.Sprire.SetScreenPosY(33)
	characterZ.Sprire.SetObjectAbove(false)
	characterZ.Sprire.SetPalette(1)

	characterY := testutils.NewSimpleCharacter(vRam, oAM, "../images/z.png", 1, []uint8{6, 7}, 12)

	characterY.Sprire.SetScreenPosX(9)
	characterY.Sprire.SetScreenPosY(22)
	characterY.Sprire.SetObjectAbove(true)

	var bgMap [][]uint8 = make([][]uint8, 32)
	for i := 0; i < 32; i++ {
		bgMap[i] = make([]uint8, 32)
	}

	// tile 4 is transparent tile
	for y := 0; y < 32; y++ {
		for x := 0; x < 32; x++ {
			bgMap[y][x] = 4
		}
	}
	// 136 / 8 =
	for x := 0; x < 32; x++ {
		if x%2 == 0 {
			bgMap[2][x] = 2
		} else {
			bgMap[2][x] = 5
		}
	}

	testutils.CreateTileMap(vRam, "../images/tiles.png", 0, []uint8{2, 3, 4, 5}, bgMap)

	var winMap [][]uint8 = make([][]uint8, 32)
	for i := 0; i < 32; i++ {
		winMap[i] = make([]uint8, 32)
	}

	// tile 4 is transparent tile
	for y := 0; y < 32; y++ {
		for x := 0; x < 32; x++ {
			winMap[y][x] = 4
		}
	}
	// 136 / 8 =

	for x := 0; x < 32; x++ {
		if x%2 == 0 {
			winMap[x][0] = 5
		} else {
			winMap[x][0] = 3
		}
	}
	// 17 * 8 = 136
	pState.WX = 143
	pState.WY = 0
	// create window map
	testutils.CreateTileMap(vRam, "../images/tiles.png", 1, []uint8{2, 3, 4, 5}, winMap)

	//println(gbLCD.Exited())

	pixelgl.Run(func() {
		gbLCD.Init()
		for !gbLCD.Exited() {
			ts := time.Now()
			characterZ.UpdateState()
			characterY.UpdateState()
			for i := 0; i < 70220>>2; i++ {
				ppu.Update(4)
			}
			dur := time.Since(ts)
			//fmt.Println("dur:", dur)

			if dur < gb.FrameDuration {
				time.Sleep(gb.FrameDuration - dur)
			}
		}
	})
}
func testPpuLcd() {
	oAM := oam.NewGbOam()
	vRam := vram.NewGbVram()
	interrupts := intr.Interrupts{}
	var lineBuffers [][]uint8 = make([][]uint8, 144)
	for i := 0; i < 144; i++ {
		lineBuffers[i] = make([]uint8, 160)
	}

	ppu := ppu.NewGbPPU(oAM, vRam, &interrupts, lineBuffers, nil)
	pState := ppu.GetPpuState()

	pState.LCDC.LcdEnable = true
	pState.LCDC.SpriteEnable = true
	pState.LCDC.WindowBgTileData = 1  // this is unsigned mode
	pState.LCDC.BackgroundTileMap = 0 // choose tile map 0
	pState.LCDC.SpriteHeight = 0      // using height 8
	pState.LCDC.WindowEnable = false

	pState.LCDC.BackgroundEnable = true
	// 01 => 00, 23 => 01, 45 -> 10, 67 -> 11
	// 11100100 // 128 + 64 + 32 + 4 = 192+36 = 228

	pState.OBP0 = 228
	// 01101100 64+32 + 12 = 96+12=108
	// 01111000 64+32+16+8 = 8(1+2+4+8) = 120
	pState.OBP1 = 120
	pState.BGP = 228

	characterZ := testutils.NewSimpleCharacter(vRam, oAM, "../images/z.png", 0, []uint8{0, 1}, 12)

	characterZ.Sprire.SetScreenPosX(8)
	characterZ.Sprire.SetScreenPosY(33)
	characterZ.Sprire.SetObjectAbove(false)
	characterZ.Sprire.SetPalette(1)

	characterY := testutils.NewSimpleCharacter(vRam, oAM, "../images/z.png", 1, []uint8{6, 7}, 12)

	characterY.Sprire.SetScreenPosX(-4)
	characterY.Sprire.SetScreenPosY(22)
	characterY.Sprire.SetObjectAbove(true)
	var bgMap [][]uint8 = make([][]uint8, 32)
	for i := 0; i < 32; i++ {
		bgMap[i] = make([]uint8, 32)
	}

	// tile 4 is transparent tile
	for y := 0; y < 32; y++ {
		for x := 0; x < 32; x++ {
			bgMap[y][x] = 4
		}
	}
	// 136 / 8 =
	for x := 0; x < 32; x++ {
		if x%2 == 0 {
			bgMap[2][x] = 2
		} else {
			bgMap[2][x] = 5
		}
	}

	testutils.CreateTileMap(vRam, "../images/tiles.png", 0, []uint8{2, 3, 4, 5}, bgMap)

	gbLCD := lcd.NewLcd(lineBuffers, func(button joypad.ButtonCode, press bool) {
		if button == joypad.ButtonRight && press {
			pState.SCX += 10
			if pState.SCX > 159 {
				pState.SCX = 159
			}
		}
		if button == joypad.ButtonLeft && press {
			x := int(pState.SCX) - 10
			if x < 0 {
				x = 0
			}
			pState.SCX = uint8(x)
		}

	})
	//println(gbLCD.Exited())

	pixelgl.Run(func() {
		gbLCD.Init()
		for !gbLCD.Exited() {
			ts := time.Now()
			characterZ.UpdateState()
			characterY.UpdateState()

			ppu.UpdateFrame()
			//fmt.Println("update time duration:", time.Since(ts))
			gbLCD.Draw()
			dur := time.Since(ts)
			if dur < gb.FrameDuration {
				time.Sleep(gb.FrameDuration - dur)
			}
		}
	})
}
func testUpdatePPU() {
	oAm := oam.NewGbOam()
	vRam := vram.NewGbVram()
	interrupts := &intr.Interrupts{}
	var buffers [][]uint8 = make([][]uint8, 144)

	for i := 0; i < 144; i++ {
		buffers[i] = make([]uint8, 160)
	}

	ppu := ppu.NewGbPPU(oAm, vRam, interrupts, buffers, func() {
		fmt.Println("Draw!!!")
	})

	ts := time.Now()
	for j := 0; j < 144; j++ {
		var n int = 20
		if j == 0 {
			n = 19
		}

		for i := 0; i < n; i++ {
			ppu.Update(4)
		}

		for i := 0; i < 172>>2; i++ {
			ppu.Update(4)
		}

		for i := 0; i < 204>>2; i++ {
			ppu.Update(4)
		}
	}
	for j := 0; j < 10; j++ {
		for i := 0; i < 456>>2; i++ {
			ppu.Update(4)
		}
	}
	fmt.Println(time.Since(ts))

	fmt.Println("PPU mode:", ppu.GetPpuState().STAT.GetMode())
	ppu.Update(4)
	fmt.Println("PPU mode:", ppu.GetPpuState().STAT.GetMode())

}
