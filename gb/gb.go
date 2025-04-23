package gb

import (
	"bufio"
	"bytes"
	"fmt"
	"log"
	"os"
	"strconv"
	"time"

	"github.com/faiface/pixel/pixelgl"
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

const MaxCyclesPerFrame = 70200
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
	drawable   bool
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

func (h *GbRomHeader) Print() {
	fmt.Printf("ROM Header[RomSize: %d, ExtRamSize: %d, MBC type: %d]\n", h.RomSize, h.ExtRamSize, h.MbcType)
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
	cgb := romBuffer[0x0143]
	fmt.Println("CGB:", cgb)
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
	if address == 0xff00 {
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
	fmt.Println("read", address)
	panic("failed to read memory")
	//return 0
}

func (m *IoRegistersProxy) Write8Bit(address uint16, value uint8) {
	if address == 0xff00 {
		m.joypad.Write8Bit(address, value)
		return
	}

	if address >= 0xff04 && address <= 0xff07 {
		m.timer.Write8Bit(address, value)
		return
	}
	if address == 0xff0f {
		m.interrupts.IF.Write8Bit(value)
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
	fmt.Println("write to not support address:", address)
	//panic("failed to write memory")
}

func NewGameboy(gbfile string, drawable bool) *Gameboy {
	romBuffer, err := os.ReadFile(gbfile)
	if err != nil {
		log.Fatal(err)
	}
	header := createHeader(romBuffer)
	header.Print()

	interrupts := intr.NewInterrupts()
	joypad := joypad.NewGbJoypad(interrupts.IF)
	regSet := rs.NewRegisterSet()

	// create buffer for lcd
	buffers := make([][]uint8, lcd.ScreenHeight)
	for i := 0; i < lcd.ScreenHeight; i++ {
		buffers[i] = make([]uint8, lcd.ScreenWidth)
	}

	lcd := lcd.NewLcd(buffers, joypad.SetButtonState)
	mbc := mbc.CreateMBC(header.MbcType, romBuffer, uint32(header.ExtRamSize))

	oam := oam.NewGbOam()
	vram := vram.NewGbVram()

	apu := apu.NewGbApu()
	var drawFn func()
	if drawable {
		drawFn = lcd.Draw
	} else {
		drawFn = func() {
			//fmt.Println("Draw")
		}
	}

	// TODO: replace draw fn by lcd.Draw
	ppu := ppu.NewGbPPU(oam, vram, interrupts, lcd.Buffer(), drawFn)

	timer := timer.CreateTimer(interrupts.IF)

	iorgs := IoRegistersProxy{
		apu:        apu,
		timer:      timer,
		joypad:     joypad,
		ppu:        ppu,
		interrupts: interrupts,
	}

	mmu := mmu.NewGbMmu(vram, &iorgs, oam, mbc, interrupts.IE)
	regSet.PC.Write16Bit(0x0100)
	regSet.SP.Write16Bit(0xfffe)
	/*
			A = 0x01
		    B = 0x00
		    C = 0x14
		    D = 0x00
		    E = 0xD8
		    H = 0x01
		    L = 0x4E
		    F = 0x80 (Zero flag set, others clear)
		    SP = 0xFFFE
		    PC = 0x0100
		    HL = 0x014E
		    DE = 0x00D8
		    BC = 0x0014

		I/O Registers (only those modified):

		    0xFF11 = 0x80 (NR11: Channel 1 duty/length)
		    0xFF12 = 0xF3 (NR12: Channel 1 envelope)
		    0xFF13 = 0xC1 (NR13: Channel 1 frequency low, last sound)
		    0xFF14 = 0x87 (NR14: Channel 1 frequency high/control, last sound)
		    0xFF24 = 0x77 (NR50: Channel volume)
		    0xFF25 = 0xF3 (NR51: Sound output selection)
		    0xFF26 = 0x80 (NR52: Sound on)
		    0xFF40 = 0x91 (LCDC: LCD on, BG on)
		    0xFF42 = 0x00 (SCY: Scroll Y)
		    0xFF47 = 0xFC (BGP: Background palette)
		    0xFF50 = 0x01 (Boot ROM disable)
	*/
	regSet.A.Write8Bit(0x01)
	/* regSet.C.Write8Bit(0x14)
	regSet.E.Write8Bit(0xd8)
	regSet.H.Write8Bit(0x01)
	regSet.F.Write8Bit(0x80)
	//regSet.HL.Write16Bit(0x014e)
	pState := ppu.GetPpuState()
	pState.LCDC.Write8Bit(0x91)
	pState.SCY = 0
	pState.BGP = 0xfc */
	apu.EnableGlobal(false)

	g := &Gameboy{
		memUnit:    mmu,
		cpu:        cpu.NewGbCpu(mmu, regSet),
		regSet:     regSet,
		apu:        apu,
		timer:      timer,
		interrupts: interrupts,
		ppu:        ppu,
		lcd:        lcd,
		drawable:   drawable,
	}
	return g
}

func (g *Gameboy) runOneInstruction() uint8 {
	val := g.interrupts.IE.Read8Bit() & g.interrupts.IF.Read8Bit()

	if !g.regSet.IME || val == 0 {
		goto RUN
	}

	for i := 4; i >= 0; i-- {

		if val&(1<<i) == 0 {
			continue
		}
		/*
			- Bit 4: Joypad Interrupt
			- Bit 3: Serial Interrupt
			- Bit 2: Timer Interrupt
			- Bit 1: LCD STAT Interrupt
			- Bit 0: V-Blank Interrupt
		*/
		/* if i == 2 {
			fmt.Println("Handle Interrupt: ", i)
		} */
		ins.PushWordOntoStack(g.regSet, g.memUnit, g.regSet.PC.Read16Bit())
		g.regSet.IME = false
		g.regSet.Stopping = false
		g.regSet.Halting = false
		g.regSet.PC.Write16Bit(interruptHandlerAddrs[i])
		g.interrupts.IF.SetBit(uint8(i), 0)
		break
	}
RUN:
	// check cpu state first, whether it is stopping or halting
	if g.regSet.Halting {
		//fmt.Println("cpu is halting")
		//g.apu.Update(1) // no relevant between these things
		g.ppu.Update(1)
		g.timer.Update(1)
		return 1
	}

	if g.regSet.Stopping {
		fmt.Println("CPU is stopping")
		return 0
	}

	delayEnableIntr := g.regSet.DelayEnableInterrupt
	instruction, cbPrefix, param := g.cpu.PeekInstruction()
	cycles := instruction.GetCycles()

	g.ppu.Update(uint16(cycles))
	//g.apu.Update(cycles)
	g.timer.Update(uint16(cycles))
	insLen := instruction.GetLength()
	if cbPrefix {
		insLen++
	}
	//fmt.Println("go here")
	/* if !g.drawable {
		if !cbPrefix {
			log.Printf("[0x%x] %s {%d , %x}\n", g.regSet.PC.Read16Bit(), ins.OpcodeSignatures[instruction.Opcode()], param, param)
		} else {
			log.Printf("[0x%x] %s \n", g.regSet.PC.Read16Bit(), ins.CbOpcodeSignatures[instruction.Opcode()])
		}
	}
	*/
	g.regSet.PC.Write16Bit(g.regSet.PC.Read16Bit() + uint16(insLen))
	//fmt.Println(reflect.TypeOf(instruction), "param:", param)

	instruction.Run(g.regSet, g.memUnit, param)
	/* fmt.Println(reflect.TypeOf(instruction))

	switch instruction.(type) {
	case *ins.JpInstruction:
		addr := g.regSet.PC.Read16Bit()
		if addr == 0x1c31 || addr == 0x1ca3 {
			panic("reach")
		}
	default:
	} */
	if delayEnableIntr {
		fmt.Println("Enable IME")
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
	//g.regSet.PC.Write16Bit(0x0100)
	pixelgl.Run(func() {
		g.lcd.Init()
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

func RunStepByStep() {
	g := NewGameboy("../../rom/pokemon1.gb", false)
	log.Println("Init Gameboy")
	bufr := bufio.NewReader(os.Stdin)
	for {
		line, _, err := bufr.ReadLine()
		if bytes.Equal(line, []byte("q")) {
			return
		}
		if err != nil {
			return
		}
		n := 1
		if len(line) > 0 {
			n, err = strconv.Atoi(string(line))
			if err != nil {
				panic("num instructions must be integer")
			}
		}
		ts := time.Now()
		for i := 0; i < n; i++ {
			g.runOneInstruction()
		}
		fmt.Println("exec time:", time.Since(ts))
	}
}
