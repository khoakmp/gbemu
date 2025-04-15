package vram

const (
	TILE_DATA_REGION_SIZE = 6 * 1024
	TILE_MAP_REGION_SIZE  = 2048
	SINGLE_TILE_MAP_SIZE  = 1024
)

type VRAM interface {
	Read8Bit(offset uint16) uint8
	Read16Bit(offset uint16) uint16
	Write8Bit(offset uint16, value uint8)
	Write16Bit(offset uint16, value uint16)
	GetTiles() *TileRegion
	GetLineColors(mapSelector, line, scx, scy uint8, modeUnsigned bool) (lineColors [160]uint8)
}

type GbVram struct {
	Tiles    *TileRegion
	tileMaps [2][1024]uint8
}

func (v *GbVram) GetTileNum(mapSelector uint8, row, col uint16) uint8 {
	return v.tileMaps[mapSelector][row<<5|col]
}

func (v *GbVram) SetTileNumAt(mapSelector uint8, row, col, tileNum uint8) {
	idx := row<<5 | col
	v.tileMaps[mapSelector][idx] = tileNum
}

func NewGbVram() *GbVram {
	return &GbVram{
		Tiles: NewTileRegion(),
	}
}

func (v *GbVram) Read8Bit(offset uint16) uint8 {
	//println("offset:", offset)
	if offset < TILE_DATA_REGION_SIZE {
		var tileIdx uint16 = offset >> 4
		var tileOffset = offset & 15
		return v.Tiles.tiles[tileIdx].data[tileOffset]
	}
	var pos uint16 = offset - TILE_DATA_REGION_SIZE
	var mapSeletor uint8 = uint8(pos >> 10)
	//println("mapSelector:", mapSeletor, "offset:", pos&1023)
	return v.tileMaps[mapSeletor][pos&1023]
}
func (v *GbVram) Write8Bit(offset uint16, value uint8) {
	if offset < TILE_DATA_REGION_SIZE {
		v.Tiles.Write8Bit(offset, value)
		return
	}
	var pos uint16 = offset - TILE_DATA_REGION_SIZE
	var mapSelector uint8 = uint8(pos >> 10)
	v.tileMaps[mapSelector][pos&1023] = value
}

func (v *GbVram) Read16Bit(offset uint16) uint16 {
	var lower uint16 = uint16(v.Read8Bit(offset))
	var upper uint16 = uint16(v.Read8Bit(offset + 1))
	return upper<<8 | lower
}

func (v *GbVram) Write16Bit(offset uint16, value uint16) {
	v.Write8Bit(offset, uint8(value&255))
	v.Write8Bit(offset+1, uint8(value>>8))
}

func (v *GbVram) GetTiles() *TileRegion {
	return v.Tiles
}

func (v *GbVram) GetLineColors(mapSelector, line, scx, scy uint8, modeUnsigned bool) (lineColors [160]uint8) {
	var Y uint8 = uint8((uint16(scy) + uint16(line)) & 255)
	var tileMapRow uint8 = Y >> 3
	var tileRow uint8 = Y & 7
	var endX uint16 = (uint16(scx) + 159)
	var offset uint8
	getRange := func(startX, sz uint8) {
		tileMapCol := startX >> 3
		tileIndex := v.tileMaps[mapSelector][(uint16(tileMapRow)<<5)|uint16(tileMapCol)]
		v.Tiles.GetTile(tileIndex, modeUnsigned).GetRowColorsRange(tileRow, startX&7, lineColors[offset:offset+sz])
		offset += sz
	}
	getRange(scx, (8 - scx&7))
	var markX uint16 = endX & (^uint16(7))
	for x := uint16(scx + 8 - (scx & 7)); x < markX; x += 8 {
		getRange(uint8(x&255), 8)
	}
	getRange(uint8(markX&255), uint8(endX-markX+1))
	return
}
