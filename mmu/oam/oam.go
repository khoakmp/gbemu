package oam

import (
	"fmt"
)

const (
	ModeFlipNone uint8 = 0
	ModeFlipY    uint8 = 2
	ModeFlipX    uint8 = 1
	ModeFlipXY   uint8 = 3
)

type Sprite struct {
	data [4]uint8
}

func (s *Sprite) PrintDetails() {
	fmt.Printf("[X: %d, Y: %d, TileNum: %d, (Behind BG: %d, FlipY: %d, FlipX: %d, Palette: %d)]",
		s.data[0], s.data[1], s.data[2], s.data[3]>>7, (s.data[3]>>6)&1, (s.data[3]>>5)&1, (s.data[3]>>4)&1)
}

func (s *Sprite) SetScreenPosX(posX int16) {
	s.data[1] = uint8(posX + 8)
}

func (s *Sprite) SetScreenPosY(posY int16) {
	s.data[0] = uint8(posY + 16)
}

func (s *Sprite) SetTileNum(tileNum uint8) {
	s.data[2] = tileNum
}

func (s *Sprite) SetFlipMode(flipMode uint8) {
	if flipMode&1 != 0 {
		s.data[3] |= 1 << 5
	} else {
		s.data[3] &= ^uint8(1 << 5)
	}
	if (flipMode>>1)&1 != 0 {
		s.data[3] |= 1 << 6
	} else {
		s.data[3] &= ^uint8(1 << 6)
	}
}

func (s *Sprite) SetObjectAbove(val bool) {
	if val {
		s.data[3] &= ^uint8(1 << 7)
		return
	}
	s.data[3] |= uint8(1 << 7)
}

// palette is 0 or 1
func (s *Sprite) SetPalette(palette uint8) {
	if palette == 0 {
		s.data[3] &= ^uint8(1 << 4)
		return
	}
	s.data[3] |= uint8(1 << 4)
}

func (s *Sprite) GetFlipMode() uint8 {
	return (s.data[3] >> 5) & 3
}

func (s *Sprite) Print() {
	fmt.Printf("[y: %d, x: %d, tile_num: %d, flag: %d]\n", s.data[0], s.data[1], s.data[2], s.data[3])
}

func (s *Sprite) GetScreenPosY() int16 {
	return int16(s.data[0]) - 16
}

func (s *Sprite) GetScreenPosX() int16 {
	return int16(s.data[1]) - 8
}

func (s *Sprite) GetTileNum() uint8 {
	return s.data[2]
}

func (s *Sprite) GetObjAbove() bool {
	return s.data[3]&(1<<7) == 0
}

func (s *Sprite) GetFlipY() bool {
	return s.data[3]&(1<<6) != 0
}

func (s *Sprite) GetFlipX() bool {
	return s.data[3]&(1<<5) != 0
}

func (s *Sprite) GetPalette() uint8 {
	return (s.data[3] >> 4) & 1
}

func (s *Sprite) GetVisibleAndPosX(line int16, height16 bool) (visible bool, px int16) {
	var py int16 = int16(s.data[0]) - 16
	px = int16(s.data[1]) - 8
	if px > 159 || px < -7 {
		return
	}
	if line < py || (!height16 && (line > py+7)) || (height16 && line > py+15) {
		return
	}
	visible = true
	return
}

func (s *Sprite) GetIntersect(line int16, height16 bool) (tileNum, rowInTile, startX, startCol, size uint8) {
	var py int16 = s.GetScreenPosY()
	px := s.GetScreenPosX()

	rowInTile = uint8(line - py)
	tileNum = s.data[2]
	if rowInTile > 7 {
		rowInTile &= 7
		tileNum++
	}
	if px >= 0 {
		startX = uint8(px)
		startCol = 0
	} else {
		startX = 0
		startCol = uint8(-px)
	}
	var endX uint8 = uint8(px + 7)
	if endX > 159 {
		endX = 159
	}
	size = endX - startX + 1
	return
}

func (s *Sprite) Check(line int16, height16 bool) (visible bool, tileNum, row, startCol, startX, size uint8) {
	visible = false
	var py, px int16 = int16(s.data[0]) - 16, int16(s.data[1]) - 8
	if px > 159 || px < -7 {
		// not visible
		return
	}

	tileNum = s.data[2]

	if line < py || (!height16 && (line > py+7)) || (height16 && line > py+15) {
		return
	}
	visible = true
	row = uint8(line - py)

	if row > 7 {
		row &= 7
		tileNum++
	}
	if px >= 0 {
		startX = uint8(px)
		startCol = 0
	} else {
		startX = 0
		startCol = uint8(-px)
	}

	var endX uint8 = uint8(px + 7)
	if endX > 159 {
		endX = 159
	}

	size = endX - startX + 1
	return
}

type GbOam struct {
	sprites [40]*Sprite
}

func NewGbOam() *GbOam {
	gbOAM := &GbOam{}
	for i := 0; i < 40; i++ {
		gbOAM.sprites[i] = &Sprite{}
	}
	return gbOAM
}

func (oam *GbOam) GetSprite(index uint8) *Sprite {
	return oam.sprites[index]
}

func (oam *GbOam) SetSprite(index uint8, sprite *Sprite) {
	copy(oam.sprites[index].data[:], sprite.data[:])
}

func (oam *GbOam) Write8Bit(offset uint16, val uint8) {
	var idx uint8 = uint8(offset >> 2)
	oam.sprites[idx].data[offset&3] = val
}

func (oam *GbOam) Write16Bit(offset uint16, val uint16) {
	fmt.Println("write oam 16bit")
	oam.Write8Bit(offset, uint8(val&255))
	oam.Write8Bit(offset+1, uint8(val>>8))
}

func (oam *GbOam) Read8Bit(offset uint16) uint8 {
	fmt.Println("OAM Read8Bit ")
	var idx uint8 = uint8(offset >> 2)
	return oam.sprites[idx].data[offset&3]
}

func (oam *GbOam) Read16Bit(offset uint16) uint16 {
	return uint16(oam.Read8Bit(offset+1))<<8 | uint16(oam.Read8Bit(offset))
}

func (oam *GbOam) Print(num int) {
	fmt.Println("OAM ", num, "first spritess")
	for i := 0; i < num; i++ {
		oam.sprites[i].PrintDetails()
	}
}
func CreateSpriteAttrFlag(above, flipY, flipX, palette bool) uint8 {
	var flag uint8 = 0
	if above {
		flag |= 1 << 7
	}
	if flipY {
		flag |= 1 << 6
	}
	if flipX {
		flag |= 1 << 5
	}
	if palette {
		flag |= 1 << 4
	}
	return flag
}

func CreateSprite(x, y uint8, tileNum uint8, attrFlag uint8) *Sprite {
	s := &Sprite{}
	s.data[0] = y
	s.data[1] = x
	s.data[2] = tileNum
	s.data[3] = attrFlag
	return s
}
