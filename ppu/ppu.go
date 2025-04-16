package ppu

import (
	"github.com/khoakmp/gbemu/intr"
	"github.com/khoakmp/gbemu/mmu/oam"
	"github.com/khoakmp/gbemu/mmu/vram"
)

type GbPPU struct {
	oam               oam.OAM
	vram              vram.VRAM
	state             *PpuState
	intr              *intr.Interrupts
	cycleCnt          uint16
	mode              uint8 // init at mode 2
	ly                uint8
	lineBuffers       [][]uint8
	triggerRenderChan chan<- struct{}
}

func (p *GbPPU) Read8Bit(address uint16) uint8 {
	return p.state.Read8Bit(address)
}
func (p *GbPPU) Write8Bit(address uint16, value uint8) {
	p.state.Write8Bit(address, value)
}
func NewGbPPU(oam oam.OAM, vram vram.VRAM, interrupts *intr.Interrupts, lineBuffers [][]uint8, triggerRender chan<- struct{}) *GbPPU {
	state := &PpuState{}
	return &GbPPU{
		oam:               oam,
		vram:              vram,
		state:             state,
		intr:              interrupts,
		lineBuffers:       lineBuffers,
		mode:              2,
		triggerRenderChan: triggerRender,
	}
}
func initPaletteConv(palette uint8, conv []uint8) {
	conv[0] = palette & 3          // 1+2
	conv[1] = (palette & 12) >> 2  // 4 + 8
	conv[2] = (palette & 48) >> 4  // 32 + 16
	conv[3] = (palette & 192) >> 6 // 128 + 64
}

func (p *GbPPU) updateLine(lineBuffer []uint8) {
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
		bwColors = p.recalWindow()
		if lcdc.GetBackgroundEnable() {
			bgColors := p.recalBackground()
			rewriteColors(bwColors[:], bgColors[:])
		}
		goto SPRITE
	}
	if lcdc.GetBackgroundEnable() {
		bwColors = p.recalBackground()
	}
SPRITE:
	if !lcdc.GetSpriteEnable() {
		copy(lineBuffer, bwColors[:])
		return
	}
	spriteColors := p.recalSprites()
	rewriteColors(spriteColors[:], bwColors[:])
	copy(lineBuffer, spriteColors[:])

}

// only call if window layer is enable
func (p *GbPPU) recalWindow() (lineColors [160]uint8) {
	if p.state.WY > p.state.LY {
		return
	}
	mapSelector := p.state.LCDC.GetWindowTileMap()
	colors := p.vram.GetLineColors(mapSelector,
		p.state.LY-p.state.WY,
		0, 0,
		p.state.LCDC.GetWindowBGTiledata())

	startOffset := p.state.WX - 7

	var paletteConv [4]uint8
	initPaletteConv(p.state.BGP, paletteConv[:])

	for i := startOffset; i < 160; i++ {
		lineColors[i] = paletteConv[colors[i-startOffset]]
	}
	return
}

func (p *GbPPU) recalBackground() (lineColors [160]uint8) {
	mapSelector := p.state.LCDC.GetBackgroundTileMap()
	lineColors = p.vram.GetLineColors(
		mapSelector,
		p.state.LY,
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

func (p *GbPPU) recalSprites() (lineColors [160]uint8) {
	var cnt uint8 = 0
	var obpConvs [2][4]uint8

	initPaletteConv(p.state.OBP0, obpConvs[0][:])
	initPaletteConv(p.state.OBP1, obpConvs[1][:])

	for i := uint8(0); i < 40 && cnt < 10; i++ {
		sprite := p.oam.GetSprite(i)
		if !sprite.GetObjAbove() {
			continue
		}
		obp := 0
		if sprite.GetPalette() {
			obp = 1
		}
		cnt += calSprite(sprite, p.state.LY, p.state.LCDC.GetSpriteHeight(),
			obpConvs[obp][:], lineColors[:], p.vram.GetTiles())
	}
	return
}

func (p *GbPPU) Update(cycles uint16) {
	p.cycleCnt += cycles

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
	if p.intr.IE.GetSTATInterruptEnable() && p.state.STAT.GetEnableInterruptLyEqualLyc() {
		p.intr.IF.SetStatInterrupt(true)
	}
}

func (p *GbPPU) triggerModeUpdate(mode uint8) {
	p.state.STAT.SetMode(mode)
	if mode == 0 {
		if p.intr.IE.GetVBlankInterruptEnable() {
			p.intr.IF.SetVBlankInterrupt(true)
		}
		return
	}
	if p.intr.IE.GetSTATInterruptEnable() && p.state.STAT.GetEnableInterruptMode(mode) {
		p.intr.IF.SetStatInterrupt(true)
	}
}

func (p *GbPPU) calMode0() {
	if p.cycleCnt < 204 {
		return
	}
	p.cycleCnt = 0
	p.ly++
	p.triggerLyUpdate(p.ly)
	if p.ly < 144 {
		// at here, ppu start processing for ly <= 143
		p.mode = 2
		p.triggerModeUpdate(2)
		return
	}

	p.triggerRenderChan <- struct{}{}

	p.mode = 1
	p.triggerModeUpdate(1)
}

// 2->3->0 -> (2 || 1) , 1->2
func (p *GbPPU) calMode1() {
	if p.cycleCnt < 456 {
		return
	}
	p.cycleCnt = 0
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
	if p.cycleCnt < 80 {
		return
	}
	p.cycleCnt = 0
	p.triggerModeUpdate(3)
}

func (p *GbPPU) calMode3() {
	if p.cycleCnt < 172 {
		return
	}
	p.cycleCnt = 0
	p.updateLine(p.lineBuffers[p.ly][:])
	p.triggerModeUpdate(0)
}
