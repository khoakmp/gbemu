package ppu

import (
	"sort"

	"github.com/khoakmp/gbemu/intr"
	"github.com/khoakmp/gbemu/mmu/oam"
	"github.com/khoakmp/gbemu/mmu/vram"
)

const (
	MaxSprite = 10
)

type GbPPU struct {
	oam          oam.OAM
	vram         vram.VRAM
	state        *PpuState
	intr         *intr.Interrupts
	modeCycleCnt uint32
	mode         uint8 // init at mode 2
	ly           uint8
	lineBuffers  [][]uint8
	draw         func()
	//triggerRenderChan chan<- struct{}
}

func (p *GbPPU) Read8Bit(address uint16) uint8 {
	return p.state.Read8Bit(address)
}

func (p *GbPPU) Write8Bit(address uint16, value uint8) {
	p.state.Write8Bit(address, value)
}

func (p *GbPPU) GetPpuState() *PpuState {
	return p.state
}

func NewGbPPU(oam oam.OAM, vram vram.VRAM, interrupts *intr.Interrupts, lineBuffers [][]uint8, drawFn func()) *GbPPU {
	state := &PpuState{
		STAT: &Stat{},
		LCDC: &Lcdc{},
	}
	state.STAT.PpuMode = 2
	state.LY = 0

	return &GbPPU{
		oam:         oam,
		vram:        vram,
		state:       state,
		intr:        interrupts,
		lineBuffers: lineBuffers,
		mode:        2,
		draw:        drawFn,
		ly:          0,
		//triggerRenderChan: triggerRender,
	}
}

func initPaletteConv(palette uint8, conv []uint8) {
	conv[0] = palette & 3          // 1+2
	conv[1] = (palette & 12) >> 2  // 4 + 8
	conv[2] = (palette & 48) >> 4  // 32 + 16
	conv[3] = (palette & 192) >> 6 // 128 + 64
}

func (p *GbPPU) updateLine(lineBuffer []uint8, line uint8) {
	//fmt.Println("update line", line)
	lcdc := p.state.LCDC

	rewriteColors := func(rootColors, newColors []uint8) {
		for i := 0; i < len(rootColors); i++ {
			if rootColors[i] != 0 {
				continue
			}
			rootColors[i] = newColors[i]
		}
	}

	var bwColors [160]uint8
	if lcdc.GetWindowLayerEnable() {
		//fmt.Println("Window layer Enable")
		bwColors = p.recalWindow(line)
		if lcdc.GetBackgroundEnable() {
			bgColors := p.recalBackground(line)
			rewriteColors(bwColors[:], bgColors[:])
		}
		goto SPRITE
	}
	if lcdc.GetBackgroundEnable() {
		//fmt.Println("Background layer Enable")
		bwColors = p.recalBackground(line)
	}
SPRITE:
	if !lcdc.GetSpriteEnable() {
		copy(lineBuffer, bwColors[:])
		return
	}
	//fmt.Println("Sprite Enable")
	spriteColors, aboveBg := p.recalSpritesV2(line)
	for i := 0; i < 160; i++ {
		if spriteColors[i] == 0 {
			spriteColors[i] = bwColors[i]
			continue
		}
		if !aboveBg[i] && bwColors[i] != 0 {
			spriteColors[i] = bwColors[i]
		}
	}
	//rewriteColors(spriteColors[:], bwColors[:])
	copy(lineBuffer, spriteColors[:])
}

// only call if window layer is enable
func (p *GbPPU) recalWindow(line uint8) (lineColors [160]uint8) {
	if p.state.WY > line {
		return
	}
	mapSelector := p.state.LCDC.GetWindowTileMap()
	if line == 57 {
		//fmt.Println("Window BG Tile data unsigned mode:", p.state.LCDC.GetWindowBGTiledata())
		//fmt.Println("WX:", p.state.WX)
	}
	colors := p.vram.GetLineColorsV2(mapSelector,
		line-p.state.WY,
		0, 0,
		p.state.LCDC.GetWindowBGTiledata())

	var startOffset int = int(p.state.WX) - 7

	var paletteConv [4]uint8
	initPaletteConv(p.state.BGP, paletteConv[:])
	/* if line == 57 {
		fmt.Printf("palette: [%d,%d,%d,%d]\n", paletteConv[0], paletteConv[1], paletteConv[2], paletteConv[3])
	} */
	// TODO: check
	if startOffset >= 0 {
		for i := startOffset; i < 160; i++ {
			lineColors[i] = paletteConv[colors[i-startOffset]]
		}
		return
	}

	for i := 0; i < 160+startOffset; i++ {
		lineColors[i] = paletteConv[colors[i-startOffset]]
	}
	return
}

func (p *GbPPU) recalBackground(line uint8) (lineColors [160]uint8) {
	mapSelector := p.state.LCDC.GetBackgroundTileMap()
	//fmt.Println("Bg tilemap selector:", mapSelector, " tile(0,0):", p.vram.GetTileNum(mapSelector, 0, 0))
	//fmt.Println("Bg tile data unsignedmode:", p.state.LCDC.GetWindowBGTiledata())
	/* if line == 0 {
		tile := p.vram.GetTileRegion().GetTile(127, p.state.LCDC.GetWindowBGTiledata())
		tile.Print()
	} */

	lineColors = p.vram.GetLineColorsV2(
		mapSelector,
		line,
		p.state.SCX, p.state.SCY,
		p.state.LCDC.GetWindowBGTiledata())
	var paletteConv [4]uint8

	initPaletteConv(p.state.BGP, paletteConv[:])
	for i := 0; i < 160; i++ {
		lineColors[i] = paletteConv[lineColors[i]]
	}

	return
}

func calSprite(sprite *oam.Sprite, line uint8, height16 bool, paletteConv []uint8,
	lineColors []uint8, tiles *vram.TileRegion) (counted uint8) {

	visible, tileNum, row, startCol, startX, sz := sprite.Check(int16(line),
		height16)
	//println("visible:", visible)
	if !visible {
		return 0
	}

	originalTile := tiles.GetTile(tileNum, true)
	var rowColors [8]uint8

	if sprite.GetFlipX() {
		if sprite.GetFlipY() {
			tile := originalTile.FlipXY()
			rowColors = tile.GetRowColors(row)
			goto CAL
		}
		tile := originalTile.FlipX()
		rowColors = tile.GetRowColors(row)
		goto CAL
	}
	if sprite.GetFlipY() {
		tile := originalTile.FlipY()
		rowColors = tile.GetRowColors(row)
		goto CAL
	}
	rowColors = originalTile.GetRowColors(row)

CAL:
	for j := uint8(0); j < sz; j++ {
		col := startCol + j
		x := startX + j
		//println("col:", col, "x:", x)
		if lineColors[x] != 0 {
			continue
		}
		lineColors[x] = paletteConv[rowColors[col]]
	}
	return 1
}

type spriteNode struct {
	px     int16
	sprite *oam.Sprite
}

func (p *GbPPU) recalSpritesV2(line uint8) (lineColors [160]uint8, aboveBg [160]bool) {
	var cnt uint8 = 0
	var palettes [2][4]uint8

	initPaletteConv(p.state.OBP0, palettes[0][:])
	initPaletteConv(p.state.OBP1, palettes[1][:])

	var sprites []spriteNode = make([]spriteNode, 0, MaxSprite)

	for i := uint8(0); i < 40 && cnt < MaxSprite; i++ {
		sprite := p.oam.GetSprite(i)

		visible, px := sprite.GetVisibleAndPosX(int16(line), p.state.LCDC.GetSpriteHeight16())
		if !visible {
			continue
		}
		cnt++
		sprites = append(sprites, spriteNode{
			px:     px,
			sprite: sprite,
		})
	}
	/* if len(sprites) > 0 {
		fmt.Println("Found ", len(sprites), " can be visible")
	} */
	sort.Slice(sprites, func(i, j int) bool {
		if sprites[i].px == sprites[j].px {
			return i < j
		}
		return sprites[i].px < sprites[j].px
	})
	//var aboveBg [160]bool
	for i := 0; i < len(sprites); i++ {
		sprite := sprites[i].sprite

		tileNum, row, startX, startCol, size := sprites[i].sprite.GetIntersect(int16(line), p.state.LCDC.GetSpriteHeight16())

		originalTile := p.vram.GetTileRegion().GetTile(tileNum, true)

		var tile vram.Tile
		switch sprite.GetFlipMode() {
		case oam.ModeFlipNone:
			tile = *originalTile
		case oam.ModeFlipX:
			tile = originalTile.FlipX()
		case oam.ModeFlipY:
			tile = originalTile.FlipY()
		case oam.ModeFlipXY:
			tile = originalTile.FlipXY()
		}

		rowColors := tile.GetRowColors(row)
		//fmt.Println("sprire palette selector:", sprite.GetPalette())

		//fmt.Println("startX:", startX)
		for i := uint8(0); i < size; i++ {
			x := startX + i
			//col := startCol + i
			color := palettes[sprite.GetPalette()][rowColors[startCol+i]]
			if color == 0 {
				continue
			}

			if lineColors[x] != 0 {
				if aboveBg[x] {
					continue
				}

				if sprite.GetObjAbove() {
					lineColors[x] = color
					aboveBg[x] = true
				}
				continue
			}

			lineColors[x] = color
			aboveBg[x] = sprite.GetObjAbove()

			/* if lineColors[x] != 0 && aboveBg[x] {
				continue
			}

			lineColors[x] = palettes[sprite.GetPalette()][rowColors[col]]

			aboveBg[x] = sprite.GetObjAbove() */
		}
	}
	return
}

func (p *GbPPU) recalSprites(line uint8) (lineColors [160]uint8) {
	var cnt uint8 = 0
	var obpConvs [2][4]uint8

	initPaletteConv(p.state.OBP0, obpConvs[0][:])
	initPaletteConv(p.state.OBP1, obpConvs[1][:])

	for i := uint8(0); i < 40 && cnt < MaxSprite; i++ {
		sprite := p.oam.GetSprite(i)
		if !sprite.GetObjAbove() {
			continue
		}

		cnt += calSprite(sprite, line, p.state.LCDC.GetSpriteHeight16(),
			obpConvs[sprite.GetPalette()][:], lineColors[:], p.vram.GetTileRegion())
	}
	return
}

// cycles max = 24
func (p *GbPPU) Update(cycles uint16) {
	p.modeCycleCnt += uint32(cycles)

	switch p.mode {
	case 0:
		p.calMode0()
	case 1:
		p.calMode1()
	case 2:
		p.calMode2()
	case 3:
		p.calMode3()
	}
}

func (p *GbPPU) triggerLyUpdate(ly uint8) {
	p.state.LY = ly
	p.state.STAT.SetLyEqualLyc(p.state.LYC == ly)

	if p.state.STAT.GetEnableInterruptLyEqualLyc() {
		p.intr.IF.SetStatInterrupt(true)
	}
}

func (p *GbPPU) triggerModeUpdate(mode uint8) {
	//p.state.LY = p.ly
	p.state.STAT.SetMode(mode)
	if mode == 1 {
		p.intr.IF.SetVBlankInterrupt(true)
		return
	}
	if mode == 3 {
		return
	}
	if p.state.STAT.GetEnableInterruptMode(mode) {
		p.intr.IF.SetStatInterrupt(true)
	}
}

func (p *GbPPU) calMode0() {
	if p.modeCycleCnt < 204 {
		return
	}
	p.modeCycleCnt -= 204
	p.ly++
	p.triggerLyUpdate(p.ly)
	if p.ly < 144 {
		// at here, ppu start processing for ly <= 143
		p.mode = 2
		p.triggerModeUpdate(2)
		return
	}
	// TODO: call draw
	//p.triggerRenderChan <- struct{}{}
	p.draw()

	p.mode = 1
	p.triggerModeUpdate(1)
}

// 2->3->0 -> (2 || 1) , 1->2
func (p *GbPPU) calMode1() {
	if p.modeCycleCnt < 456 {
		return
	}
	p.modeCycleCnt -= 456
	p.ly++
	if p.ly < 154 {
		p.triggerLyUpdate(p.ly)
		return
	}
	p.ly = 0
	p.mode = 2
	p.triggerLyUpdate(0)
	p.triggerModeUpdate(2)
}

func (p *GbPPU) calMode2() {
	if p.modeCycleCnt < 80 {
		return
	}
	p.modeCycleCnt -= 80
	p.mode = 3
	p.triggerModeUpdate(3)
}

func (p *GbPPU) calMode3() {
	if p.modeCycleCnt < 172 {
		return
	}

	p.modeCycleCnt -= 172
	p.updateLine(p.lineBuffers[p.ly][:], p.ly)
	p.mode = 0
	p.triggerModeUpdate(0)
}

// this function is used for testing
func (p *GbPPU) UpdateFrame() {
	for line := uint8(0); line < 144; line++ {
		p.updateLine(p.lineBuffers[line], line)
	}
}
