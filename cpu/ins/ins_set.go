package ins

import (
	"github.com/khoakmp/gbemu/cpu/args"
)

type InstructionSet struct {
	instructions [256]Instruction
}

func (s *InstructionSet) GetInstruction(opcode uint8) Instruction {
	return s.instructions[opcode]
}

func NewInstructionSet(arguments *args.ArgumentSet) *InstructionSet {
	instructions := &InstructionSet{}
	// 1. Load and Store Instructions
	instructions.initLds(arguments)
	// TODO : lack LDH to store into HRAM

	// 2. Control Flow instructions
	instructions.initJps(arguments)
	instructions.initJrs(arguments)
	instructions.initRets()
	instructions.initRsts()

	instructions.initCalls(arguments)

	// 3. Stack Instructions
	instructions.initPushs(arguments)
	instructions.initPops(arguments)

	// 4. Arithmetic Instructions
	instructions.initAdds(arguments)
	instructions.initAdcs(arguments)
	instructions.initIncs(arguments)
	instructions.initDecs(arguments)
	instructions.initSubs(arguments)
	instructions.initSbcs(arguments)
	instructions.initCps(arguments)
	// TODO: DAA
	// 5. Logical Instructions
	instructions.initLogicals(arguments)
	instructions.initCFs()

	// cpu control
	instructions.initControls()
	return instructions
}

func (s *InstructionSet) add(i Instruction) {
	s.instructions[i.Opcode()] = i
}

type CbInstructionSet struct {
	instructions [256]Instruction
}

func (s *CbInstructionSet) GetInstruction(opcode uint8) Instruction {
	return s.instructions[opcode]
}

func (s *CbInstructionSet) add(i Instruction) {
	s.instructions[i.Opcode()] = i
}

func NewCbInstructionSet(arguments *args.ArgumentSet) *CbInstructionSet {
	s := &CbInstructionSet{}

	s.initRotates(arguments) // 4*8
	s.initShifts(arguments)  // 3 *8
	s.initSwaps(arguments)   // 8
	s.initBits(arguments)    // 8 * 8
	s.initSetRes(arguments)  // 2 * 8 * 8

	return s
}
