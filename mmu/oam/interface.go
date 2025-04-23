package oam

type OAM interface {
	Read8Bit(offset uint16) uint8
	Read16Bit(offset uint16) uint16
	Write8Bit(offset uint16, val uint8)
	Write16Bit(offset uint16, val uint16)
	GetSprite(index uint8) *Sprite
	Print(num int)
}
