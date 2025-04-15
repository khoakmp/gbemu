package ppu

/*
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
*/

type Lcdc struct {
	LcdEnable         bool
	WindowTileMap     uint8
	WindowEnable      bool
	WindowBgTileData  uint8
	BackgroundTileMap uint8
	SpriteHeight      uint8
	SpriteEnable      bool
	BackgroundEnable  bool
}

// func (l *Lcdc) GetValue() uint8                          { return l.data }
func (l *Lcdc) GetLCDEnable() bool                       { return l.LcdEnable }
func (l *Lcdc) GetWindowTileMap() uint8                  { return l.WindowTileMap }
func (l *Lcdc) GetWindowLayerEnable() bool               { return l.WindowEnable }
func (l *Lcdc) GetWindowBGTiledata() (unsignedMode bool) { return l.WindowBgTileData == 1 }

func (l *Lcdc) GetBackgroundTileMap() uint8 {
	return l.BackgroundTileMap
}

func (l *Lcdc) GetSpriteHeight() (height16 bool) {
	return l.SpriteHeight == 1
}

func (l *Lcdc) GetSpriteEnable() bool {
	return l.SpriteEnable
}

func (l *Lcdc) GetBackgroundEnable() bool {
	return l.BackgroundEnable
}
func (l *Lcdc) Read8Bit() uint8 {
	var ans uint8
	if l.LcdEnable {
		ans |= (1 << 7)
	}
	if l.WindowTileMap == 1 {
		ans |= (1 << 6)
	}
	if l.WindowEnable {
		ans |= 1 << 5
	}
	if l.WindowBgTileData == 1 {
		ans |= 1 << 4
	}
	if l.BackgroundTileMap == 1 {
		ans |= 1 << 3
	}
	if l.SpriteHeight == 1 {
		ans |= 1 << 2
	}
	if l.SpriteEnable {
		ans |= 1 << 1
	}
	if l.BackgroundEnable {
		ans |= 1
	}
	return ans
}
func (l *Lcdc) Write8Bit(value uint8) {
	l.LcdEnable = (value >> 7) != 0
	l.WindowTileMap = (value >> 6) & 1
	l.WindowEnable = ((value >> 5) & 1) != 0
	l.WindowBgTileData = (value >> 4) & 1
	l.BackgroundTileMap = (value >> 3) & 1
	l.SpriteHeight = (value >> 2) & 1
	l.SpriteEnable = (value >> 1) != 0
	l.BackgroundEnable = (value & 1) != 0
}
