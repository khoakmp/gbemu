package gb

import (
	"log"
	"os"
	"time"

	"github.com/khoakmp/gbemu/apu"
	"github.com/khoakmp/gbemu/cpu"
	"github.com/khoakmp/gbemu/cpu/ins"
	"github.com/khoakmp/gbemu/intr"
	"github.com/khoakmp/gbemu/joypad"
	"github.com/khoakmp/gbemu/lcd"
	"github.com/khoakmp/gbemu/mmu"
	"github.com/khoakmp/gbemu/mmu/mbc"
	"github.com/khoakmp/gbemu/mmu/oam"
	"github.com/khoakmp/gbemu/mmu/vram"
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
	apu        *apu.GbApu
	timer      *timer.TimerSystem
	interrupts *intr.Interrupts
	ppu        *ppu.GbPPU
	lcd        *lcd.GbLcd
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

type GbRomHeader struct {
	RomSize    int
	ExtRamSize int // External Ram Size
	MbcType    int
}

/*
ROM size
Value | Size | Banks
00 | 32 KB | 2
01 | 64 KB | 4
02 | 128 KB | 8
03 | 256 KB | 16
04 | 512 KB | 32
05 | 1 MB | 64

RAM size
00	None
01	2 KB
02	8 KB
03	32 KB
04	128 KB
*/
func createHeader(romBuffer []byte) GbRomHeader {

	ramType := romBuffer[0x0149]
	var ramsize int = 0
	if ramType != 0 {
		ramsize = 1 << (ramType + ramType + 9)
	}

	return GbRomHeader{
		RomSize:    1 << (15 + romBuffer[0x0148]),
		ExtRamSize: ramsize,
		MbcType:    int(romBuffer[0x0147]),
	}

}

type IoRegistersProxy struct {
	apu        *apu.GbApu
	timer      *timer.TimerSystem
	joypad     *joypad.GbJoypad
	ppu        *ppu.GbPPU
	interrupts *intr.Interrupts
}

func (m *IoRegistersProxy) Read8Bit(address uint16) uint8 {
	if address < 0xff03 {
		return m.joypad.Read8Bit(address)
	}
	if address >= 0xff04 && address < 0xff08 {
		return m.timer.Read8Bit(address)
	}
	if address >= 0xff10 && address < 0xff40 {
		return m.apu.Read8Bit(address)
	}
	if address >= 0xff40 && address < 0xff4c {
		return m.ppu.Read8Bit(address)
	}
	if address == 0xff0f {
		return m.interrupts.IF.Read8Bit()
	}
	if address == 0xffff {
		return m.interrupts.IE.Read8Bit()
	}
	return 0
}

func (m *IoRegistersProxy) Write8Bit(address uint16, value uint8) {
	if address < 0xff03 {
		m.joypad.Write8Bit(address, value)
		return
	}
	if address >= 0xff04 && address <= 0xff07 {
		m.timer.Write8Bit(address, value)
		return
	}
	if address >= 0xff10 && address <= 0xff3f {
		m.apu.Write8Bit(address, value)
		return
	}
	if address >= 0xff40 && address < 0xff4c {
		m.ppu.Write8Bit(address, value)
		return
	}
	if address == 0xff0f {
		m.interrupts.IF.Write8Bit(value)
		return
	}
	if address == 0xffff {
		m.interrupts.IE.Write8Bit(value)
	}
}

func NewGameboy(gbfile string) *Gameboy {
	romBuffer, err := os.ReadFile(gbfile)
	if err != nil {
		log.Fatal(err)
	}
	header := createHeader(romBuffer)
	interrupts := intr.Interrupts{}
	joypad := joypad.NewGbJoypad(&interrupts.IF)
	regSet := rs.NewRegisterSet()

	lcd := lcd.NewLcd(joypad.SetButtonState)
	mbc := mbc.CreateMBC(header.MbcType, romBuffer, uint8(header.ExtRamSize))

	oam := oam.NewGbOam()
	vram := vram.NewGbVram()

	apu := apu.NewGbApu()

	ppu := ppu.NewGbPPU(oam, vram, &interrupts, lcd.Buffer(), lcd.Draw)

	timer := timer.CreateTimer(&interrupts.IF)

	iorgs := IoRegistersProxy{
		apu:        apu,
		timer:      timer,
		joypad:     joypad,
		ppu:        ppu,
		interrupts: &interrupts,
	}
	mmu := mmu.NewGbMmu(vram, &iorgs, oam, mbc)

	g := &Gameboy{
		memUnit:    mmu,
		cpu:        cpu.NewGbCpu(mmu, regSet),
		regSet:     regSet,
		apu:        apu,
		timer:      timer,
		interrupts: &interrupts,
		ppu:        ppu,
	}
	return g
}

func (g *Gameboy) runOneInstruction() uint8 {
	val := g.interrupts.IE.Read8Bit() & g.interrupts.IF.Read8Bit()
	if !g.regSet.IME || val == 0 {
		goto RUN
	}
	for i := 0; i < 5; i++ {
		if val&(1<<i) == 0 {
			continue
		}

		ins.PushWordOntoStack(g.regSet, g.memUnit, g.regSet.PC.Read16Bit())
		g.regSet.IME = false
		g.regSet.Stopping = false
		g.regSet.Halting = false
		g.regSet.PC.Write16Bit(interruptHandlerAddrs[i])
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

	g.regSet.PC.Write16Bit(g.regSet.PC.Read16Bit() + uint16(instruction.GetLength()))
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
		cycles += uint32(g.runOneInstruction())
	}
}

func (g *Gameboy) Run() {
	g.regSet.PC.Write16Bit(0x0100)
	g.lcd.Run(func() {
		for !g.lcd.Exited() {
			ts := time.Now()
			g.frame()

			dur := time.Since(ts)
			if dur >= FrameDuration {
				continue
			}

			time.Sleep(FrameDuration - dur)
		}
	})
}
