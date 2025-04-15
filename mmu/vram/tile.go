package vram

import "math/rand"

type Tile struct {
	data [16]uint8
}

func (t *Tile) Write8Bit(offset uint16, value uint8) {
	t.data[offset] = value
}
func (t *Tile) Read8Bit(offset uint16) uint8 {
	return t.data[offset]
}

func (t *Tile) Read16Bit(offset uint16) uint16 {
	return uint16(t.data[offset+1])<<8 | uint16(t.data[offset])
}

func (t *Tile) Write16Bit(offset uint16, value uint16) {
	t.data[offset] = uint8(value & 255)
	t.data[offset+1] = uint8(value >> 8)
}

func (t *Tile) GetRaw() [16]uint8 {
	return t.data
}

func (t *Tile) SetRaw(data []uint8) {
	copy(t.data[:], data)
}
func (t *Tile) Print() {
	var colors [8]uint8
	for i := uint8(0); i < 8; i++ {
		colors = t.GetRowColors(i)
		for j := 0; j < 8; j++ {
			print(colors[j], " ")
		}
		println()
	}
	println()
}

func (t *Tile) PrintRow(row uint8) {
	colors := t.GetRowColors(row)
	for i := 0; i < len(colors); i++ {
		print(colors[i], " ")
	}
	println()
}
func reverseUint8(a uint8) uint8 {
	var ans uint8
	for i := 0; i < 8; i++ {
		if (a & (1 << i)) > 0 {
			ans |= 1 << (7 - i)
		}
	}
	return ans
}

func (t *Tile) FlipX() (ans Tile) {
	for i := 0; i < 16; i++ {
		ans.data[i] = reverseUint8(t.data[i])
	}
	return
}

func (t *Tile) FlipY() (ans Tile) {
	for i := 0; i < 16; i += 2 {
		ans.data[i] = t.data[14-i]
	}

	for i := 1; i < 16; i += 2 {
		ans.data[i] = t.data[16-i]
	}
	return
}

func (t *Tile) FlipXY() (ans Tile) {
	for i := 0; i < 16; i += 2 {
		ans.data[i] = reverseUint8(t.data[14-i])
	}
	for i := 1; i < 16; i += 2 {
		ans.data[i] = reverseUint8(t.data[16-i])
	}
	return
}

// should be array of 8 color
func (t *Tile) GetRowColors(r uint8) (ans [8]uint8) {
	for i := 0; i < 8; i++ {
		var upper uint8 = (t.data[r<<1|1] & (1 << i)) >> i
		var lower uint8 = (t.data[r<<1] & (1 << i)) >> i
		ans[i] = (upper << 1) | lower
	}
	return
}

func (t *Tile) GetRowColorsRange(r, startCol uint8, ans []uint8) {
	//ans = make([]uint8, size)
	for i := startCol; i < startCol+uint8(len(ans)); i++ {
		var upper uint8 = (t.data[r<<1|1] & (1 << i)) >> i
		var lower uint8 = (t.data[r<<1] & (1 << i)) >> i
		ans[i-startCol] = (upper << 1) | lower
	}
}

func (t *Tile) SetColorAt(r, c, val uint8) {
	var mask uint8 = 1 << c
	var flipMask = ^mask

	switch val {
	case 0:
		t.data[r<<1] &= flipMask
		t.data[r<<1|1] &= flipMask
	case 1:
		t.data[r<<1] |= mask
		t.data[r<<1|1] &= flipMask
	case 2:
		t.data[r<<1] &= flipMask
		t.data[r<<1|1] |= mask
	case 3:
		t.data[r<<1] |= mask
		t.data[r<<1|1] |= mask
	}
}

func (t *Tile) Equal(t1 *Tile) bool {
	for i := 0; i < 16; i++ {
		if t.data[i] != t1.data[i] {
			return false
		}
	}
	return true
}

func RandomTile() Tile {
	t := Tile{}
	for i := 0; i < 16; i++ {
		t.data[i] = uint8(rand.Int() & 255)
	}
	return t
}
