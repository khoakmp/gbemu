package iors

type Lcdc struct{ data uint8 }

func (l *Lcdc) GetValue() uint8                          { return l.data }
func (l *Lcdc) GetLCDEnable() bool                       { return l.data&(1<<7) != 0 }
func (l *Lcdc) GetWindowTileMap() uint8                  { return (l.data & (1 << 6)) >> 6 }
func (l *Lcdc) GetWindowLayerEnable() bool               { return (l.data & (1 << 5)) != 0 }
func (l *Lcdc) GetWindowBGTiledata() (unsignedMode bool) { return l.data&(1<<4) != 0 }
func (l *Lcdc) GetBackgroundTileMap() uint8 {
	return (l.data & (1 << 3)) >> 3
}

func (l *Lcdc) GetSpriteHeight() (height16 bool) {
	return l.data&(1<<2) != 0
}
func (l *Lcdc) GetSpriteEnable() bool {
	return l.data&2 != 0
}
func (l *Lcdc) GetBackgroundEnable() bool {
	return l.data&1 != 0
}

func (l *Lcdc) Write8Bit(value uint8) {
	l.data = value
}

/*
Bits meaning
0-1: ppu mode 0..3
2: lyc == ly ?
3: Enable Interrupt when ppu mode switch to 0
4: Enable Interrupt when ppu mode switch to 1
5: Enable Interrupt when ppu mode switch to 2
6: Enable Interrupt when ly == lyc
*/
type Stat struct {
	data uint8
}

func (s *Stat) GetValue() uint8 { return s.data }
func (s *Stat) Write8Bit(value uint8) {
	s.data = value
}
func (s *Stat) GetMode() uint8 {
	return s.data & uint8(3)
}

func (s *Stat) SetMode(mode uint8) {
	s.data = (s.data & ^uint8(3)) | (mode & uint8(3))
}

func (s *Stat) GetBit(bit uint8) bool {
	return (s.data & uint8(1<<bit)) != 0
}

func (s *Stat) SetBit(bit uint8, val bool) {
	if val {
		s.data |= uint8(1 << bit)
		return
	}
	s.data &= ^uint8(1 << bit)
}

func (s *Stat) SetEnableInterruptMode(mode uint8, val bool) { s.SetBit(mode+3, val) }
func (s *Stat) GetEnableInterruptMode(mode uint8) bool      { return s.GetBit(mode + 3) }
func (s *Stat) GetLyEqualLyc() bool                         { return s.GetBit(2) }
func (s *Stat) SetLyEqualLyc(val bool)                      { s.SetBit(2, val) }
func (s *Stat) GetEnableInterruptLyEqualLyc() bool          { return s.GetBit(6) }
func (s *Stat) SetEnableInterruptLyEqualLyc(val bool)       { s.SetBit(6, val) }
