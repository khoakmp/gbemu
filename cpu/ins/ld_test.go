package ins

import (
	"testing"

	"github.com/khoakmp/gbemu/cpu/args"
	"github.com/khoakmp/gbemu/intr"
	"github.com/khoakmp/gbemu/iors"
	"github.com/khoakmp/gbemu/mmu"
	"github.com/khoakmp/gbemu/mmu/mbc"
	"github.com/khoakmp/gbemu/mmu/oam"
	"github.com/khoakmp/gbemu/mmu/vram"
	"github.com/khoakmp/gbemu/rs"
	"github.com/stretchr/testify/assert"
)

func TestLd8BitRegToReg(t *testing.T) {
	mUnit, regSet, inSet := createModules()

	//var ins Instruction
	var A, B, C, D, E, H, L *rs.Register8Bit

	A, B, C = regSet.A, regSet.B, regSet.C
	D, E, H, L = regSet.D, regSet.E, regSet.H, regSet.L

	A.Write8Bit(10)
	B.Write8Bit(11)
	C.Write8Bit(12)
	D.Write8Bit(13)
	E.Write8Bit(14)
	H.Write8Bit(15)
	L.Write8Bit(16)

	//arguments := args.NewArgumentSet(regSet)
	//	inSet := NewInstructionSet(arguments)
	var ins Instruction

	ins = inSet.GetInstruction(0x78)
	ins.Run(regSet, mUnit, 0)
	assert.Equal(t, B.Read8Bit(), A.Read8Bit())

	ins = inSet.GetInstruction(0x79)
	ins.Run(regSet, mUnit, 0)
	assert.Equal(t, C.Read8Bit(), A.Read8Bit())

	ins = inSet.GetInstruction(0x7a)
	ins.Run(regSet, mUnit, 0)
	assert.Equal(t, D.Read8Bit(), A.Read8Bit())

	ins = inSet.GetInstruction(0x7b)
	ins.Run(regSet, mUnit, 0)
	assert.Equal(t, E.Read8Bit(), A.Read8Bit())

	ins = inSet.GetInstruction(0x7c)
	ins.Run(regSet, mUnit, 0)
	assert.Equal(t, H.Read8Bit(), A.Read8Bit())

	ins = inSet.GetInstruction(0x7d)
	ins.Run(regSet, mUnit, 0)
	assert.Equal(t, L.Read8Bit(), A.Read8Bit())

}

func TestLd8BitImmediateToReg(t *testing.T) {
	mUnit, regSet, inSet := createModules()

	//var ins Instruction
	var A, B, C, D, E, H, L *rs.Register8Bit

	A, B, C = regSet.A, regSet.B, regSet.C
	D, E, H, L = regSet.D, regSet.E, regSet.H, regSet.L
	A.Write8Bit(10)
	B.Write8Bit(11)
	C.Write8Bit(12)
	D.Write8Bit(13)
	E.Write8Bit(14)
	H.Write8Bit(15)
	L.Write8Bit(16)

	//arguments := args.NewArgumentSet(regSet)
	//inSet := NewInstructionSet(arguments)
	var ins Instruction
	var val uint8
	ins = inSet.GetInstruction(0x3e)
	val = 19
	ins.Run(regSet, mUnit, uint16(val))
	assert.Equal(t, val, A.Read8Bit())

	ins = inSet.GetInstruction(0x06)
	val = 20
	ins.Run(regSet, mUnit, uint16(val))
	assert.Equal(t, val, B.Read8Bit())

	ins = inSet.GetInstruction(0x0e)
	val = 21
	ins.Run(regSet, mUnit, uint16(val))
	assert.Equal(t, val, C.Read8Bit())

	ins = inSet.GetInstruction(0x16)
	val = 22
	ins.Run(regSet, mUnit, uint16(val))
	assert.Equal(t, val, D.Read8Bit())

	ins = inSet.GetInstruction(0x1e)
	val = 23
	ins.Run(regSet, mUnit, uint16(val))
	assert.Equal(t, val, E.Read8Bit())

	ins = inSet.GetInstruction(0x26)
	val = 24
	ins.Run(regSet, mUnit, uint16(val))
	assert.Equal(t, val, H.Read8Bit())

	ins = inSet.GetInstruction(0x2e)
	val = 20
	ins.Run(regSet, mUnit, uint16(val))
	assert.Equal(t, val, L.Read8Bit())
}
func TestLd8BitDualRegister(t *testing.T) {
	//mUnit, regSet, inSet := createModules()
	vRam := vram.NewGbVram()
	iorg := iors.NewMockIORegisterSet()
	oAm := oam.NewGbOam()
	mBC := mbc.NewMbc1(64<<10, 16<<10)
	iE := intr.IE{}
	mUnit := mmu.NewGbMmu(vRam, iorg, oAm, mBC, &iE)
	regSet := rs.NewRegisterSet()
	arguments := args.NewArgumentSet(regSet)
	inSet := NewInstructionSet(arguments)

	var A, B, C, D, E, H, L *rs.Register8Bit

	A, B, C = regSet.A, regSet.B, regSet.C
	D, E, H, L = regSet.D, regSet.E, regSet.H, regSet.L
	A.Write8Bit(10)
	B.Write8Bit(11)
	C.Write8Bit(12)
	D.Write8Bit(13)
	E.Write8Bit(14)
	H.Write8Bit(15)
	L.Write8Bit(16)

	//arguments := args.NewArgumentSet(regSet)
	var ins Instruction
	// Write from Register8Bit to Memory at address pointed by HL
	var addr uint16 = 0xc000
	regSet.HL.Write16Bit(addr)

	ins = inSet.GetInstruction(0x77)
	ins.Run(regSet, mUnit, 0)
	assert.Equal(t, A.Read8Bit(), mUnit.Read8Bit(addr))

	ins = inSet.GetInstruction(0x74)
	ins.Run(regSet, mUnit, 0)
	assert.Equal(t, H.Read8Bit(), mUnit.Read8Bit(addr))

	ins = inSet.GetInstruction(0x36)
	ins.Run(regSet, mUnit, uint16(129))
	assert.Equal(t, uint8(129), mUnit.Read8Bit(addr))

	ins = inSet.GetInstruction(0x6e)
	ins.Run(regSet, mUnit, 0)
	assert.Equal(t, L.Read8Bit(), mUnit.Read8Bit(addr))
	addr++
	// Test Ld (BC), A
	regSet.BC.Write16Bit(addr)
	ins = inSet.GetInstruction(0x02)
	ins.Run(regSet, mUnit, 0)
	assert.Equal(t, mUnit.Read8Bit(addr), A.Read8Bit())

	mUnit.Write8Bit(addr, uint8(212))
	ins = inSet.GetInstruction(0x0a)
	ins.Run(regSet, mUnit, 0)
	assert.Equal(t, A.Read8Bit(), uint8(212))
	// ld (de),a  | 0x12
	A.Write8Bit(182)
	addr++
	regSet.DE.Write16Bit(addr)
	ins = inSet.GetInstruction(0x12)
	ins.Run(regSet, mUnit, 0)
	assert.Equal(t, mUnit.Read8Bit(addr), A.Read8Bit())

	// ld a,(de) 0x1a
	addr++
	regSet.DE.Write16Bit(addr)
	mUnit.Write8Bit(addr, 23)
	ins = inSet.instructions[0x1a]
	ins.Run(regSet, mUnit, 0)
	assert.Equal(t, A.Read8Bit(), uint8(23))

	// ld (nn), a | 0xea
	addr++
	A.Write8Bit(198)
	ins = inSet.GetInstruction(0xea)
	ins.Run(regSet, mUnit, addr)
	assert.Equal(t, uint8(198), mUnit.Read8Bit(addr))

	// ld a,(nn) | 0xfa
	addr++
	mUnit.Write8Bit(addr, 92)
	ins = inSet.GetInstruction(0xfa)
	ins.Run(regSet, mUnit, addr)
	assert.Equal(t, A.Read8Bit(), uint8(92))

	t.Run("IO_Load", func(t *testing.T) {
		// ld (n),a | 0xe0
		var n uint8 = 67
		addr = 0xff00 + uint16(n) // SCX address

		ins = inSet.GetInstruction(0xe0)
		ins.Run(regSet, mUnit, uint16(n))
		assert.Equal(t, mUnit.Read8Bit(addr), A.Read8Bit())
		assert.Equal(t, A.Read8Bit(), iorg.SCX)

		// ld a, (n) | 0xf0
		// change SCX directly
		iorg.SCX = 102
		ins = inSet.GetInstruction(0xf0)
		ins.Run(regSet, mUnit, uint16(n))
		assert.Equal(t, uint8(102), A.Read8Bit())

		// ld (C), A | 0xe2
		A.Write8Bit(123)
		C.Write8Bit(n)
		ins = inSet.instructions[0xe2]
		ins.Run(regSet, mUnit, 0)
		assert.Equal(t, uint8(123), iorg.SCX)

		// ld A,(C) | 0xf2
		iorg.SCX = 21
		ins = inSet.GetInstruction(0xf2)
		ins.Run(regSet, mUnit, 0)
		assert.Equal(t, uint8(21), A.Read8Bit())
	})
	t.Run("MemLoad_UpdateHL", func(t *testing.T) {
		// ld (HL+),A 0x22
		var hlAddr uint16
		A.Write8Bit(221)
		hlAddr = 0xc000
		regSet.HL.Write16Bit(hlAddr)
		ins = inSet.GetInstruction(0x22)
		ins.Run(regSet, mUnit, 0)
		assert.Equal(t, uint8(221), mUnit.Read8Bit(hlAddr))
		assert.Equal(t, hlAddr+1, regSet.HL.Read16Bit())
		// ld A, (HL+) | 0x2a
		hlAddr = 0xc001
		regSet.HL.Write16Bit(hlAddr)
		mUnit.Write16Bit(hlAddr, 172)
		ins = inSet.GetInstruction(0x2a)
		ins.Run(regSet, mUnit, 0)
		assert.Equal(t, uint8(172), A.Read8Bit())
		assert.Equal(t, hlAddr+1, regSet.HL.Read16Bit())

		// ld (HL-),A
		hlAddr = 0xc001
		regSet.HL.Write16Bit(hlAddr)
		A.Write8Bit(21)
		ins = inSet.GetInstruction(0x32)
		ins.Run(regSet, mUnit, 0)
		assert.Equal(t, uint8(21), mUnit.Read8Bit(0xc001))
		assert.Equal(t, hlAddr-1, regSet.HL.Read16Bit())

		// ld A, (HL-) | 0x3a
		hlAddr = 0xc001
		regSet.HL.Write16Bit(hlAddr)
		mUnit.Write8Bit(hlAddr, 231)
		ins = inSet.GetInstruction(0x3a)
		ins.Run(regSet, mUnit, 0)

		assert.Equal(t, uint8(231), A.Read8Bit())
		assert.Equal(t, hlAddr-1, regSet.HL.Read16Bit())
	})

	t.Run("16bit", func(t *testing.T) {
		// immediate value
		var val uint16 = 20
		// ld BC,nn | 0x01
		ins = inSet.GetInstruction(0x01)
		ins.Run(regSet, mUnit, val)
		assert.Equal(t, val, regSet.BC.Read16Bit())
		// ld DE,nn
		val = 21
		ins = inSet.instructions[0x11]
		ins.Run(regSet, mUnit, val)
		assert.Equal(t, val, regSet.DE.Read16Bit())
		// HL
		val = 22
		ins = inSet.instructions[0x21]
		ins.Run(regSet, mUnit, val)
		assert.Equal(t, val, regSet.HL.Read16Bit())
		// SP
		val = 23
		ins = inSet.instructions[0x31]
		ins.Run(regSet, mUnit, val)
		assert.Equal(t, val, regSet.SP.Read16Bit())

		// Ld (nn),SP 0x08
		val = 0xc000 + 0x18
		var addr uint16 = 0xc000
		regSet.SP.Write16Bit(val)

		ins = inSet.instructions[0x08]
		ins.Run(regSet, mUnit, addr)
		assert.Equal(t, val, mUnit.Read16Bit(addr))

		// Ld HL, SP +n | 0xf8
		var n int8 = -8
		val = 65535
		regSet.SP.Write16Bit(val)
		ins = inSet.instructions[0xf8]
		ins.Run(regSet, mUnit, uint16(n))
		// val - 2 -> 0xc000 + 0x16 dung
		assert.Equal(t, val+uint16(int16(n)), regSet.HL.Read16Bit())
		assert.Equal(t, true, regSet.F.GetFlag(rs.FlagH))
		assert.Equal(t, true, regSet.F.GetFlag(rs.FlagC))
	})
}
func TestCast(t *testing.T) {
	//var n int8 = -8
	//var u uint8 = uint8(n)
}
