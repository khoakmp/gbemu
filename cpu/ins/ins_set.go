package ins

import (
	"log"

	"github.com/khoakmp/gbemu/cpu/args"
)

type InstructionSet struct {
	instructions [256]Instruction
	Cnt          int
	CallCnt      int
}

func (s *InstructionSet) GetInstruction(opcode uint8) Instruction {
	return s.instructions[opcode]
}

func NewInstructionSet(arguments *args.ArgumentSet) *InstructionSet {
	inSet := &InstructionSet{
		Cnt: 0,
	}
	// 1. Load and Store Instructions
	inSet.initLds(arguments)
	// TODO : lack LDH to store into HRAM

	// 2. Control Flow instructions
	inSet.initJps(arguments)
	inSet.initJrs(arguments)
	inSet.initRets()
	inSet.initRsts()

	inSet.initCalls(arguments)

	// 3. Stack Instructions
	inSet.initPushs(arguments)
	inSet.initPops(arguments)

	// 4. Arithmetic Instructions
	inSet.initAdds(arguments)
	inSet.initAdcs(arguments)
	inSet.initIncs(arguments)
	inSet.initDecs(arguments)
	inSet.initSubs(arguments)
	inSet.initSbcs(arguments)
	inSet.initCps(arguments)
	// TODO: DAA
	// 5. Logical Instructions
	inSet.initLogicals(arguments)
	inSet.initCFs()

	// cpu control
	inSet.initControls()

	inSet.initRotateAs()
	inSet.initDaa()
	return inSet
}

func (s *InstructionSet) add(i Instruction) {
	s.CallCnt++
	//println("add ", i.Opcode())
	if s.instructions[i.Opcode()] != nil {
		println("error")
		log.Fatal("non_cb_prefix: opcode ", i.Opcode(), "already existed")
	}
	s.Cnt++
	s.instructions[i.Opcode()] = i
}

type CbInstructionSet struct {
	instructions [256]Instruction
	cnt          int
}

func (s *CbInstructionSet) GetInstruction(opcode uint8) Instruction {
	return s.instructions[opcode]
}

func (s *CbInstructionSet) add(i Instruction) {

	if s.instructions[i.Opcode()] != nil {
		log.Fatal("cb_prefix opcode", i.Opcode(), "already existed")
	}
	s.instructions[i.Opcode()] = i
	s.cnt++
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
