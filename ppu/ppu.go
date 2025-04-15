package ppu

import (
	"github.com/khoakmp/gbemu/iors"
	"github.com/khoakmp/gbemu/mmu/oam"
	"github.com/khoakmp/gbemu/mmu/vram"
)

type PPU struct {
	oam        oam.OAM
	vram       vram.VRAM
	iorg       *iors.IORegisterSet
	cycleCnt   uint16
	mode       uint8
	ly         uint8
	lineBuffer [160]uint8
}

func NewPPU(oam oam.OAM, vram vram.VRAM, iorg *iors.IORegisterSet) *PPU {
	return &PPU{
		oam:  oam,
		vram: vram,
		iorg: iorg,
	}
}
func initPaletteConv(palette uint8, conv []uint8) {
	conv[0] = palette & 3          // 1+2
	conv[1] = (palette & 12) >> 2  // 4 + 8
	conv[2] = (palette & 48) >> 4  // 32 + 16
	conv[3] = (palette & 192) >> 6 // 128 + 64
}

func (p *PPU) updateLineV2(lineBuffer []uint8) {
	lcdc := p.iorg.LCDC
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
func (p *PPU) recalWindow() (lineColors [160]uint8) {
	if p.iorg.WY > p.iorg.LY {
		return
	}

	mapSelector := p.iorg.LCDC.GetWindowTileMap()
	lineColors = p.vram.GetLineColors(mapSelector,
		p.iorg.LY-p.iorg.WY,
		0, 0,
		p.iorg.LCDC.GetWindowBGTiledata())
	startOffset := p.iorg.WX - 7
	var paletteConv [4]uint8
	initPaletteConv(p.iorg.BGP, paletteConv[:])

	for i := startOffset; i < 160; i++ {
		lineColors[i-startOffset] = paletteConv[lineColors[i]]
	}
	return
}

func (p *PPU) recalBackground() (lineColors [160]uint8) {
	mapSelector := p.iorg.LCDC.GetBackgroundTileMap()
	lineColors = p.vram.GetLineColors(
		mapSelector,
		p.iorg.LY,
		p.iorg.SCX, p.iorg.SCY,
		p.iorg.LCDC.GetWindowBGTiledata())
	var paletteConv [4]uint8
	initPaletteConv(p.iorg.BGP, paletteConv[:])
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

func (p *PPU) recalSprites() (lineColors [160]uint8) {
	var cnt uint8 = 0
	var obpConvs [2][4]uint8

	initPaletteConv(p.iorg.OBP0, obpConvs[0][:])
	initPaletteConv(p.iorg.OBP1, obpConvs[1][:])

	for i := uint8(0); i < 40 || cnt < 10; i++ {
		sprite := p.oam.GetSprite(i)
		if !sprite.GetObjAbove() {
			continue
		}
		obp := 0
		if sprite.GetPalette() {
			obp = 1
		}
		cnt += calSprite(sprite, p.iorg.LY, p.iorg.LCDC.GetSpriteHeight(),
			obpConvs[obp][:], lineColors[:], p.vram.GetTiles())
	}
	return
}

func (p *PPU) Update(cycles uint16) {
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

func triggerLyChanged(ly uint8, rs *iors.IORegisterSet) {
	rs.LY = ly
	rs.STAT.SetLyEqualLyc(rs.LYC == ly)
	if rs.IE.GetSTATInterruptEnable() && rs.STAT.GetEnableInterruptLyEqualLyc() {
		rs.IF.SetStatInterrupt(true)
	}
}

func triggerModeChanged(mode uint8, rs *iors.IORegisterSet) {
	rs.STAT.SetMode(mode)
	if mode == 0 {
		if rs.IE.GetVBlankInterruptEnable() {
			rs.IF.SetVBlankInterrupt(true)
		}
		return
	}
	if rs.IE.GetSTATInterruptEnable() && rs.STAT.GetEnableInterruptMode(mode) {
		rs.IF.SetStatInterrupt(true)
	}
}

func (p *PPU) calMode0() {
	if p.cycleCnt < 204 {
		return
	}
	p.cycleCnt = 0
	p.ly++
	triggerLyChanged(p.ly, p.iorg)
	if p.ly < 144 {
		// at here, ppu start processing for ly <= 143
		p.mode = 2
		triggerModeChanged(2, p.iorg)
		return
	}
	p.mode = 1
	triggerModeChanged(1, p.iorg)
}

// 2->3->0 -> (2 || 1) , 1->2
func (p *PPU) calMode1() {
	if p.cycleCnt < 456 {
		return
	}
	p.cycleCnt = 0
	p.ly++
	if p.ly < 154 {
		triggerLyChanged(p.ly, p.iorg)
		return
	}
	p.ly = 0
	p.mode = 2
	triggerLyChanged(0, p.iorg)
	triggerModeChanged(2, p.iorg)
}

func (p *PPU) calMode2() {
	if p.cycleCnt < 80 {
		return
	}
	p.cycleCnt = 0
	triggerModeChanged(3, p.iorg)
}

func (p *PPU) calMode3() {
	if p.cycleCnt < 172 {
		return
	}
	p.cycleCnt = 0
	p.updateLineV2(p.lineBuffer[:])
	triggerModeChanged(0, p.iorg)
}
