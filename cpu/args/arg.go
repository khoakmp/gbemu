package args

import (
	"github.com/khoakmp/gbemu/mmu"
	"github.com/khoakmp/gbemu/rs"
)

type RegisterWrap struct {
	reg rs.Register
}

func (rw *RegisterWrap) GetRegister() rs.Register {
	return rw.reg
}
func (rw *RegisterWrap) Read8Bit(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16) uint8 {
	return rw.reg.Read8Bit()
}

func (rw *RegisterWrap) Read16Bit(regSet *rs.RegisterSet, mmUinit mmu.MMU, param uint16) uint16 {
	return rw.reg.Read16Bit()
}

func (rw *RegisterWrap) Write8Bit(regSet *rs.RegisterSet, mmUinit mmu.MMU, param uint16, val uint8) {
	rw.reg.Write8Bit(val)
}

func (rw *RegisterWrap) Write16Bit(regSet *rs.RegisterSet, mmUinit mmu.MMU, param uint16, val uint16) {
	rw.reg.Write16Bit(val)
}

type Num8Bit struct{}

func (n *Num8Bit) Read8Bit(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16) uint8 {
	return uint8(param)
}

type Num16Bit struct{}

func (n *Num16Bit) Read16Bit(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16) uint16 {
	return param
}

type MemArg struct {
	AddrHolder Read16Bit
}

func (m *MemArg) Read8Bit(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16) uint8 {
	addr := m.AddrHolder.Read16Bit(regSet, mmUnit, param)
	return mmUnit.Read8Bit(addr)
}

func (m *MemArg) Write8Bit(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16, val uint8) {
	addr := m.AddrHolder.Read16Bit(regSet, mmUnit, param)
	mmUnit.Write8Bit(addr, val)
}

func (m *MemArg) Read16Bit(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16) uint16 {
	addr := m.AddrHolder.Read16Bit(regSet, mmUnit, param)
	return mmUnit.Read16Bit(addr)
}

func (m *MemArg) Write16Bit(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16, val uint16) {
	addr := m.AddrHolder.Read16Bit(regSet, mmUnit, param)
	mmUnit.Write16Bit(addr, val)
}

type Num16BitFrom8BitSigned struct{}
type Num16BitFrom8BitUnsigned struct{}

func (n *Num16BitFrom8BitSigned) Read16Bit(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16) uint16 {
	var x int8 = int8(uint8(param))
	var y int16 = int16(x)
	return uint16(y)
}

func (n *Num16BitFrom8BitUnsigned) Read16Bit(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16) uint16 {
	return param + 0xff00
}
