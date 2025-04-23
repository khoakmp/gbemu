package vram

type TileRegion struct {
	tiles [384]*Tile
}

func NewTileRegion() *TileRegion {
	tileRegion := &TileRegion{}
	for i := 0; i < 384; i++ {
		tileRegion.tiles[i] = &Tile{}
	}
	return tileRegion
}

func (tr *TileRegion) Read8Bit(offset uint16) uint8 {
	return tr.tiles[offset>>4].data[offset&15]
}

func (tr *TileRegion) Write8Bit(offset uint16, val uint8) {
	//fmt.Println("Write to tile:", offset>>4)
	tr.tiles[offset>>4].Write8Bit(offset&15, val)
}

func (tr *TileRegion) Read16Bit(offset uint16) uint16 {
	lower := tr.Read8Bit(offset)
	upper := tr.Read8Bit(offset + 1)
	return uint16(upper)<<8 | uint16(lower)
}

func (tr *TileRegion) GetTile(index uint8, modeUnsigned bool) *Tile {
	if modeUnsigned {
		return tr.tiles[index]
	}
	return tr.tiles[int16(int8(index))+256]
}

func (tr *TileRegion) SetTile(index uint8, modeUnsigned bool, tile *Tile) {
	if modeUnsigned {
		copy(tr.tiles[index].data[:], tile.data[:])
		return
	}
	copy(tr.tiles[int16(int8(index))+256].data[:], tile.data[:])
}
