package gb

import (
	"github.com/khoakmp/gbemu/apu"
	"github.com/khoakmp/gbemu/cpu"
	"github.com/khoakmp/gbemu/mmu"
	"github.com/khoakmp/gbemu/rs"
	"github.com/khoakmp/gbemu/timer"
)

type Gameboy struct {
	memUnit     mmu.MMU
	audioUnit   *apu.AudioProcessor
	timerSystem *timer.TimerSystem
	cpu         *cpu.GbCPU
	regSet      *rs.RegisterSet // contain cpu state
}

func (g *Gameboy) RunFrame() {
	// firstly, must check interrupt before

}
