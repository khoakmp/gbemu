package ins

import (
	"testing"

	"github.com/khoakmp/gbemu/cpu/args"
	"github.com/khoakmp/gbemu/iors"
	"github.com/khoakmp/gbemu/mmu"
	"github.com/khoakmp/gbemu/mmu/mbc"
	"github.com/khoakmp/gbemu/mmu/oam"
	"github.com/khoakmp/gbemu/mmu/vram"
	"github.com/khoakmp/gbemu/rs"
	"github.com/stretchr/testify/assert"
)

func createModules() (mUnit mmu.MMU, regSet *rs.RegisterSet, inSet *InstructionSet) {
	vRam := vram.NewGbVram()
	iorg := iors.NewIORegisterSet()
	oAm := oam.NewGbOam()
	mBC := mbc.NewMbc1(64<<10, 16<<10)
	mUnit = mmu.NewGbMmu(vRam, iorg, oAm, mBC)
	regSet = rs.NewRegisterSet()
	arguments := args.NewArgumentSet(regSet)
	inSet = NewInstructionSet(arguments)
	return
}

func TestAdc(t *testing.T) {
	mUnit, regSet, inSet := createModules()

	var ins Instruction

	A := regSet.A
	A.Write8Bit(15)
	ins = inSet.instructions[0x8f]
	ins.Run(regSet, mUnit, 0)
	assert.Equal(t, uint8(30), A.Read8Bit())
	assert.Equal(t, true, regSet.F.GetFlag(rs.FlagH))
	assert.Equal(t, false, regSet.F.GetFlag(rs.FlagN))

	// 255 + 127 -> 126 dung i
	A.Write8Bit(255)
	regSet.B.Write8Bit(127)
	ins = inSet.instructions[0x88]
	ins.Run(regSet, mUnit, 0)
	assert.Equal(t, uint8(126), A.Read8Bit())
	assert.Equal(t, true, regSet.F.GetFlag(rs.FlagC))
	assert.Equal(t, true, regSet.F.GetFlag(rs.FlagH))
	assert.Equal(t, false, regSet.F.GetFlag(rs.FlagN))

	// Flag C is 1
	var addr uint16 = 0xc000

	A.Write8Bit(6)
	mUnit.Write8Bit(addr, 250)
	regSet.HL.Write16Bit(addr)
	ins = inSet.instructions[0x8e]
	ins.Run(regSet, mUnit, 0)
	assert.Equal(t, uint8(1), A.Read8Bit())
	assert.Equal(t, true, regSet.F.GetFlag(rs.FlagH))
	assert.Equal(t, true, regSet.F.GetFlag(rs.FlagC))

	var n uint8 = 10
	A.Write8Bit(11)
	ins = inSet.instructions[0xce]
	ins.Run(regSet, mUnit, uint16(n))
	assert.Equal(t, uint8(22), A.Read8Bit())
	assert.Equal(t, true, regSet.F.GetFlag(rs.FlagH))
	assert.Equal(t, false, regSet.F.GetFlag(rs.FlagC))
}
