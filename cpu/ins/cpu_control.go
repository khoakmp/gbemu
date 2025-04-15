package ins

import (
	"github.com/khoakmp/gbemu/mmu"
	"github.com/khoakmp/gbemu/rs"
)

type NopInstruction struct {
	InstructionBase
}

func (n *NopInstruction) Run(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16) (cycles uint8) {
	return n.Cycles
}

type HaltInstruction struct {
	InstructionBase
}

func (h *HaltInstruction) Run(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16) (cycles uint8) {
	regSet.Halting = true
	return h.Cycles
}

type StopInstruction struct {
	InstructionBase
}

func (s *StopInstruction) Run(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16) (cycles uint8) {
	regSet.Halting = true
	return s.Cycles
}

type DiInstruction struct {
	InstructionBase
}

func (d *DiInstruction) Run(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16) (cycles uint8) {
	regSet.IME = false
	return d.Cycles
}

type EiInstruction struct {
	InstructionBase
}

func (e *EiInstruction) Run(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16) (cycles uint8) {
	regSet.DelayEnableInterrupt = true
	return e.Cycles
}

func (s *InstructionSet) initControls() {
	/* ### STOP (Opcode: `0x10`)

	- **Size:** 2 bytes (technically, `0x10` must be followed by `0x00`, though the second byte is ignored).
	- **Cycles:** Variable (depends on context; typically exits on interrupt or button press).
	- **Purpose:** Halts the CPU and enters a low-power mode, stopping most operations until an external event occurs.
	*/
	// must fetch 2 byte from the memory
	s.add(&StopInstruction{
		InstructionBase: InstructionBase{
			OpCode: 0x10,
			Length: 2,
			Cycles: 8,
		},
	})
	/* ### ALT (Opcode: `0x76`)

	- **Size:** 1 byte.
	- **Cycles:** Variable (minimum 4 cycles, but depends on interrupt handling).
	- */
	s.add(&HaltInstruction{
		InstructionBase: InstructionBase{
			OpCode: 0x76,
			Length: 1,
			Cycles: 4,
		},
	})
	s.add(&DiInstruction{
		InstructionBase: InstructionBase{
			OpCode: 0xf3,
			Length: 1,
			Cycles: 4,
		},
	})
	s.add(&EiInstruction{
		InstructionBase: InstructionBase{
			OpCode: 0xfb,
			Length: 1,
			Cycles: 4,
		},
	})
	s.add(&NopInstruction{
		InstructionBase: InstructionBase{
			OpCode: 0x00,
			Length: 1,
			Cycles: 4,
		},
	})
}
