package ppu

const (
	LCDC_ADDRESS = 0xff40
	STAT_ADDRESS = 0xff41
	SCY_ADDRESS  = 0xff42
	SCX_ADDRESS  = 0xff43
	LY_ADDRESS   = 0xff44
	LYC_ADDRESS  = 0xff45
	DMA_ADDRESS  = 0xff46
	BGP_ADDRESS  = 0xff47
	OBP0_ADDRESS = 0xff48
	OBP1_ADDRESS = 0xff49
	WY_ADDRESS   = 0xff4a
	WX_ADDRESS   = 0xff4b
)

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

/*
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
*/

type Stat struct {
	EnableInterruptLyEqualLyc bool
	EnableInterruptModes      [3]bool
	LyEqualLyc                bool
	PpuMode                   uint8 // take 2 bits 0-1
}

func (s *Stat) SetEnableInterruptMode(mode uint8, val bool) { s.EnableInterruptModes[mode] = val }
func (s *Stat) GetEnableInterruptMode(mode uint8) bool {
	return s.EnableInterruptModes[mode]
}
func (s *Stat) GetLyEqualLyc() bool { return s.LyEqualLyc }

// cai stat nay dung de lam  gdung
func (s *Stat) SetLyEqualLyc(val bool) {
	s.LyEqualLyc = val
}

func (s *Stat) GetEnableInterruptLyEqualLyc() bool {
	return s.EnableInterruptLyEqualLyc
}

func (s *Stat) SetEnableInterruptLyEqualLyc(val bool) {
	s.EnableInterruptLyEqualLyc = val
}

func (s *Stat) GetMode() uint8 {
	return s.PpuMode
}

func (s *Stat) SetMode(mode uint8) {
	s.PpuMode = mode
}

func (s *Stat) Read8Bit() uint8 {
	var ans uint8
	if s.EnableInterruptLyEqualLyc {
		ans |= 1 << 6
	}
	if s.EnableInterruptModes[2] {
		ans |= 1 << 5
	}
	if s.EnableInterruptModes[1] {
		ans |= 1 << 4
	}
	if s.EnableInterruptModes[0] {
		ans |= 1 << 3
	}
	if s.LyEqualLyc {
		ans |= 1 << 2
	}
	ans |= s.PpuMode & 3
	return ans
}

func (s *Stat) Write8Bit(value uint8) {
	s.EnableInterruptLyEqualLyc = (value>>6)&1 != 0
	s.EnableInterruptModes[2] = (value>>5)&1 != 0
	s.EnableInterruptModes[1] = (value>>4)&1 != 0
	s.EnableInterruptModes[0] = (value>>3)&1 != 0
	s.LyEqualLyc = (value>>2)&1 != 0
	s.PpuMode = value & 3
}

type PpuState struct {
	OBP0, OBP1, BGP uint8
	SCX, SCY        uint8
	WX, WY          uint8
	LY, LYC         uint8
	STAT            *Stat
	LCDC            *Lcdc
}

func (r *PpuState) Read8Bit(address uint16) uint8 {
	// TODO:
	switch address {
	case LCDC_ADDRESS:
		return r.LCDC.Read8Bit()
	case STAT_ADDRESS:
		return r.STAT.Read8Bit()
	case SCY_ADDRESS:
		return r.SCY
	case SCX_ADDRESS:
		return r.SCX
	case LY_ADDRESS:
		return r.LY
	case LYC_ADDRESS:
		return r.LYC
	case DMA_ADDRESS:
		// TODO: ...
	case BGP_ADDRESS:
		return r.BGP
	case OBP0_ADDRESS:
		return r.OBP0
	case OBP1_ADDRESS:
		return r.OBP1
	case WY_ADDRESS:
		return r.WY
	case WX_ADDRESS:
		return r.WX
	}
	return 0
}

func (r *PpuState) Write8Bit(address uint16, value uint8) {
	switch address {
	case LCDC_ADDRESS:
		r.LCDC.Write8Bit(value)
	case STAT_ADDRESS:
		r.STAT.Write8Bit(value)
	case SCY_ADDRESS:
		r.SCY = value
	case SCX_ADDRESS:
		r.SCX = value
	case LY_ADDRESS:
		r.LY = value
	case LYC_ADDRESS:
		r.LYC = value
	case DMA_ADDRESS:
		// TODO: ...
	case BGP_ADDRESS:
		r.BGP = value
	case OBP0_ADDRESS:
		r.OBP0 = value
	case OBP1_ADDRESS:
		r.OBP1 = value
	case WY_ADDRESS:
		r.WY = value
	case WX_ADDRESS:
		r.WX = value
	}
}
