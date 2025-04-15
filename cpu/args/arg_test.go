package args

import (
	"testing"

	"github.com/khoakmp/gbemu/iors"
	"github.com/khoakmp/gbemu/mmu"
	"github.com/khoakmp/gbemu/mmu/mbc"
	"github.com/khoakmp/gbemu/mmu/oam"
	"github.com/khoakmp/gbemu/mmu/vram"
	"github.com/khoakmp/gbemu/rs"
	"github.com/stretchr/testify/assert"
)

func TestArgumentSet(t *testing.T) {

	t.Run("read_registerWrap", func(t *testing.T) {
		regSet := rs.NewRegisterSet()
		arguments := NewArgumentSet(regSet)
		var expectedVal8Bit uint8
		var regWrapVal8Bit uint8

		expectedVal8Bit = 12
		regSet.A.Write8Bit(expectedVal8Bit)
		regWrapVal8Bit = arguments.Aw.Read8Bit(nil, nil, 0)
		assert.Equal(t, expectedVal8Bit, regWrapVal8Bit, "failed A wrap")

		expectedVal8Bit = 13
		regSet.B.Write8Bit(expectedVal8Bit)
		regWrapVal8Bit = arguments.Bw.Read8Bit(nil, nil, 0)
		assert.Equal(t, expectedVal8Bit, regWrapVal8Bit, "failed B wrap")

		expectedVal8Bit = 14
		regSet.C.Write8Bit(expectedVal8Bit)
		regWrapVal8Bit = arguments.Cw.Read8Bit(nil, nil, 0)
		assert.Equal(t, expectedVal8Bit, regWrapVal8Bit, "failed C wrap")

		expectedVal8Bit = 15
		regSet.D.Write8Bit(expectedVal8Bit)
		regWrapVal8Bit = arguments.Dw.Read8Bit(nil, nil, 0)
		assert.Equal(t, expectedVal8Bit, regWrapVal8Bit, "failed D wrap")

		expectedVal8Bit = 16
		regSet.E.Write8Bit(expectedVal8Bit)
		regWrapVal8Bit = arguments.Ew.Read8Bit(nil, nil, 0)
		assert.Equal(t, expectedVal8Bit, regWrapVal8Bit, "failed E wrap")

		expectedVal8Bit = 17
		regSet.H.Write8Bit(expectedVal8Bit)
		regWrapVal8Bit = arguments.Hw.Read8Bit(nil, nil, 0)
		assert.Equal(t, expectedVal8Bit, regWrapVal8Bit, "failed H wrap")

		expectedVal8Bit = 18
		regSet.L.Write8Bit(expectedVal8Bit)
		regWrapVal8Bit = arguments.Lw.Read8Bit(nil, nil, 0)
		assert.Equal(t, expectedVal8Bit, regWrapVal8Bit, "failed L wrap")

		var expectedVal16Bit, regWrapVal16Bit uint16

		expectedVal16Bit = 100
		regSet.BC.Write16Bit(expectedVal16Bit)
		regWrapVal16Bit = arguments.BCw.Read16Bit(nil, nil, 0)
		assert.Equal(t, expectedVal16Bit, regWrapVal16Bit, "failed BC")

		expectedVal16Bit = 100
		regSet.DE.Write16Bit(expectedVal16Bit)
		regWrapVal16Bit = arguments.DEw.Read16Bit(nil, nil, 0)
		assert.Equal(t, expectedVal16Bit, regWrapVal16Bit, "failed DE")

		expectedVal16Bit = 100
		regSet.HL.Write16Bit(expectedVal16Bit)
		regWrapVal16Bit = arguments.HLw.Read16Bit(nil, nil, 0)
		assert.Equal(t, expectedVal16Bit, regWrapVal16Bit, "failed HL")

		expectedVal16Bit = 100
		regSet.AF.Write16Bit(expectedVal16Bit)
		regWrapVal16Bit = arguments.AFw.Read16Bit(nil, nil, 0)
		assert.Equal(t, expectedVal16Bit, regWrapVal16Bit, "failed AF")
	})
	t.Run("write_registerWrap", func(t *testing.T) {
		var expectedVal8Bit, outVal8Bit uint8

		regSet := rs.NewRegisterSet()
		arguments := NewArgumentSet(regSet)

		expectedVal8Bit = 23
		arguments.Aw.Write8Bit(nil, nil, 0, expectedVal8Bit)
		outVal8Bit = arguments.Aw.Read8Bit(nil, nil, 0)
		assert.Equal(t, outVal8Bit, expectedVal8Bit, "failed write_read A wrap")
		outVal8Bit = regSet.A.Read8Bit()
		assert.Equal(t, outVal8Bit, expectedVal8Bit, "failed write A wrap, read A reg")

		expectedVal8Bit = 24
		arguments.Bw.Write8Bit(nil, nil, 0, expectedVal8Bit)
		outVal8Bit = arguments.Bw.Read8Bit(nil, nil, 0)
		assert.Equal(t, outVal8Bit, expectedVal8Bit, "failed write_read B wrap")
		outVal8Bit = regSet.B.Read8Bit()
		assert.Equal(t, outVal8Bit, expectedVal8Bit, "failed write B wrap, read B reg")

		expectedVal8Bit = 25
		arguments.Cw.Write8Bit(nil, nil, 0, expectedVal8Bit)
		outVal8Bit = arguments.Cw.Read8Bit(nil, nil, 0)
		assert.Equal(t, outVal8Bit, expectedVal8Bit, "failed write_read C wrap")
		outVal8Bit = regSet.C.Read8Bit()
		assert.Equal(t, outVal8Bit, expectedVal8Bit, "failed write C wrap, read C reg")

		expectedVal8Bit = 26
		arguments.Dw.Write8Bit(nil, nil, 0, expectedVal8Bit)
		outVal8Bit = arguments.Dw.Read8Bit(nil, nil, 0)
		assert.Equal(t, outVal8Bit, expectedVal8Bit, "failed write_read D wrap")
		outVal8Bit = regSet.D.Read8Bit()
		assert.Equal(t, outVal8Bit, expectedVal8Bit, "failed write D wrap, read D reg")

		expectedVal8Bit = 27
		arguments.Ew.Write8Bit(nil, nil, 0, expectedVal8Bit)
		outVal8Bit = arguments.Ew.Read8Bit(nil, nil, 0)
		assert.Equal(t, outVal8Bit, expectedVal8Bit, "failed write_read E wrap")
		outVal8Bit = regSet.E.Read8Bit()
		assert.Equal(t, outVal8Bit, expectedVal8Bit, "failed write E wrap, read E reg")

		expectedVal8Bit = 28
		arguments.Hw.Write8Bit(nil, nil, 0, expectedVal8Bit)
		outVal8Bit = arguments.Hw.Read8Bit(nil, nil, 0)
		assert.Equal(t, outVal8Bit, expectedVal8Bit, "failed write_read H wrap")
		outVal8Bit = regSet.H.Read8Bit()
		assert.Equal(t, outVal8Bit, expectedVal8Bit, "failed write H wrap, read H reg")

		expectedVal8Bit = 29
		arguments.Lw.Write8Bit(nil, nil, 0, expectedVal8Bit)
		outVal8Bit = arguments.Lw.Read8Bit(nil, nil, 0)
		assert.Equal(t, outVal8Bit, expectedVal8Bit, "failed write_read L wrap")
		outVal8Bit = regSet.L.Read8Bit()
		assert.Equal(t, outVal8Bit, expectedVal8Bit, "failed write L wrap, read L reg")
	})
	// only WRAM, VRAM, HRAM, OAM -> actual write to these things

	t.Run("mem_wrap", func(t *testing.T) {
		regSet := rs.NewRegisterSet()
		oAm := oam.NewGbOam()
		vRam := vram.NewGbVram()
		iorg := iors.NewIORegisterSet()
		mBC := mbc.NewMbc1(64<<10, 16<<10)
		mUnit := mmu.NewGbMmu(vRam, iorg, oAm, mBC)
		arguments := NewArgumentSet(regSet)
		// WRAM: [0xc000:0xe000]
		var addr uint16 = 0xe000

		var expectedVal8Bit, outVal8Bit uint8
		regSet.HL.Write16Bit(addr)
		expectedVal8Bit = 122
		mUnit.Write8Bit(addr, expectedVal8Bit)
		outVal8Bit = arguments.HLm.Read8Bit(nil, mUnit, 0)
		assert.Equal(t, expectedVal8Bit, outVal8Bit, "failed Read mem at HL point to")

		addr = 0xc000
		regSet.BC.Write16Bit(addr)
		expectedVal8Bit = 123
		mUnit.Write8Bit(addr, expectedVal8Bit)
		outVal8Bit = arguments.BCm.Read8Bit(nil, mUnit, 0)
		assert.Equal(t, expectedVal8Bit, outVal8Bit, "failed Read mem at BC point to")
		addr += 1
		regSet.DE.Write16Bit(addr)
		expectedVal8Bit = 124
		mUnit.Write8Bit(addr, expectedVal8Bit)
		outVal8Bit = arguments.DEm.Read8Bit(nil, mUnit, 0)
		assert.Equal(t, expectedVal8Bit, outVal8Bit, "failed Read mem at DE point to")
	})
}
