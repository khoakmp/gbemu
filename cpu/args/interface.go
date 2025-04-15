package args

import (
	"github.com/khoakmp/gbemu/mmu"
	"github.com/khoakmp/gbemu/rs"
)

type Read8Bit interface {
	Read8Bit(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16) uint8
}

type Write8Bit interface {
	Write8Bit(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16, val uint8)
}

type Read16Bit interface {
	Read16Bit(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16) uint16
}

type Write16Bit interface {
	Write16Bit(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16, val uint16)
}

type RW8Bit interface {
	Read8Bit
	Write8Bit
}

type RW16Bit interface {
	Read16Bit
	Write16Bit
}
