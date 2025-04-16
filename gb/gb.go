package gb

import (
	"time"

	"github.com/khoakmp/gbemu/apu"
	"github.com/khoakmp/gbemu/cpu"
	"github.com/khoakmp/gbemu/cpu/ins"
	"github.com/khoakmp/gbemu/intr"
	"github.com/khoakmp/gbemu/mmu"
	"github.com/khoakmp/gbemu/ppu"
	"github.com/khoakmp/gbemu/rs"
	"github.com/khoakmp/gbemu/timer"
)

const MaxCyclesPerFrame = 70000
const FrameDuration = time.Second / 60

type Gameboy struct {
	memUnit    mmu.MMU
	cpu        *cpu.GbCPU
	regSet     *rs.RegisterSet // contain cpu state
	apu        *apu.AudioProcessor
	timer      *timer.TimerSystem
	interrupts *intr.Interrupts
	ppu        *ppu.PPU
}

// call for timer + audio + ppu dung

var interruptHandlerAddrs [5]uint16

func init() {
	interruptHandlerAddrs[0] = 0x0040
	interruptHandlerAddrs[1] = 0x0048
	interruptHandlerAddrs[2] = 0x0050
	interruptHandlerAddrs[3] = 0x0058
	interruptHandlerAddrs[4] = 0x0060
}

func (g *Gameboy) run() uint8 {
	val := g.interrupts.IE.Read8Bit() & g.interrupts.IF.Read8Bit()
	if !g.regSet.IME || val == 0 {
		goto RUN
	}

	// check both for STOP + HALT dung do
	for i := 0; i < 5; i++ {
		if val&(1<<i) == 0 {
			continue
		}
		address := interruptHandlerAddrs[i]
		ins.PushWordOntoStack(g.regSet, g.memUnit, address)
		g.regSet.Stopping = false
		g.regSet.Halting = false
		break
	}
RUN:
	// check cpu state first, whether it is stopping or halting
	if g.regSet.Halting {
		g.apu.Update(1) // no relevant between these things
		g.ppu.Update(1)
		g.timer.Update(1)
		return 1
	}

	if g.regSet.Stopping {
		return 0
	}

	delayEnableIntr := g.regSet.DelayEnableInterrupt
	instruction, param := g.cpu.PeekInstruction()
	cycles := instruction.GetCycles()
	g.ppu.Update(uint16(cycles))
	g.apu.Update(cycles)
	g.timer.Update(uint16(cycles))
	instruction.Run(g.regSet, g.memUnit, param)

	if delayEnableIntr {
		g.regSet.IME = true
		g.regSet.DelayEnableInterrupt = false
	}
	return cycles
}

func (g *Gameboy) frame() {
	var cycles uint32 = 0
	for cycles < MaxCyclesPerFrame {
		cycles += uint32(g.run())
	}
}

func (g *Gameboy) Run() {
	for {
		ts := time.Now()
		g.frame()
		dur := time.Since(ts)
		if dur < FrameDuration {
			time.Sleep(FrameDuration - dur)
		}
	}
}
