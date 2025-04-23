package gb

import (
	"testing"

	"github.com/khoakmp/gbemu/apu"
	"github.com/khoakmp/gbemu/intr"
	"github.com/khoakmp/gbemu/mmu"
	"github.com/khoakmp/gbemu/mmu/oam"
	"github.com/khoakmp/gbemu/mmu/vram"
	"github.com/khoakmp/gbemu/ppu"
	"github.com/khoakmp/gbemu/timer"
	"github.com/stretchr/testify/assert"
)

func TestMmu(t *testing.T) {
	interrupts := intr.NewInterrupts()
	oam := oam.NewGbOam()
	vram := vram.NewGbVram()

	apu := apu.NewGbApu()

	ppu := ppu.NewGbPPU(oam, vram, interrupts, nil, nil)

	timer := timer.CreateTimer(interrupts.IF)

	iorgs := IoRegistersProxy{
		apu:        apu,
		timer:      timer,
		joypad:     nil,
		ppu:        ppu,
		interrupts: interrupts,
	}
	/*

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
	*/
	mmu := mmu.NewGbMmu(vram, &iorgs, oam, nil, interrupts.IE)
	mmu.Write8Bit(0xff40, 22)
	assert.Equal(t, uint8(22), ppu.GetPpuState().LCDC.Read8Bit())
}
func runGbByStep() {

}
