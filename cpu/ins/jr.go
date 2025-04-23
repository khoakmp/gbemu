package ins

import (
	"github.com/khoakmp/gbemu/cpu/args"
	"github.com/khoakmp/gbemu/mmu"
	"github.com/khoakmp/gbemu/rs"
)

type JrInstruction struct {
	InstructionBase
	R *args.Num16BitFrom8BitSigned
}

func (jr *JrInstruction) Run(regSet *rs.RegisterSet, mmUnit mmu.MMU, param uint16) uint8 {
	if jr.OpCode == 0x18 {
		goto JUMP
	}

	switch jr.OpCode {
	case 0x20:
		if regSet.F.GetFlag(rs.FlagZ) {
			return jr.Cycles
		}
	case 0x28:
		if !regSet.F.GetFlag(rs.FlagZ) {
			return jr.Cycles
		}
	case 0x30:
		if regSet.F.GetFlag(rs.FlagC) {
			return jr.Cycles
		}
	case 0x38:
		if !regSet.F.GetFlag(rs.FlagC) {
			return jr.Cycles
		}
	}
JUMP:
	curPc := regSet.PC.Read16Bit()
	val := curPc + jr.R.Read16Bit(regSet, mmUnit, param)
	regSet.PC.Write16Bit(val)
	// it actually takes 12 cycles when jump
	return 12
}

func newJrInstruction(opCode, length, cycles uint8, R *args.Num16BitFrom8BitSigned) Instruction {
	return &JrInstruction{
		InstructionBase: InstructionBase{
			OpCode: opCode,
			Length: length,
			Cycles: cycles,
		},
		R: R,
	}
}

/*
JR n (Unconditional Relative Jump)

		Opcode: 18
	  Operands: 8-bit signed offset (n), specified as one byte.
	  Cycles: 12 cycles (3 machine cycles)

JR cc, n (Conditional Relative Jump)

	Opcodes:
	    JR NZ, n: 20
	    JR Z, n: 28
	    JR NC, n: 30
	    JR C, n: 38
	Operands: 8-bit signed offset (n)
	Cycles:
	    Condition True (jump occurs): 12 cycles (3 machine cycles)
	        Fetch: 4 cycles
	        Read offset: 4 cycles
	        Jump (add offset to PC): 4 cycles
	    Condition False (no jump): 8 cycles (2 machine cycles)
*/

func (s *InstructionSet) initJrs(as *args.ArgumentSet) {
	s.add(newJrInstruction(0x18, 2, 12, as.Num16bitFrom8BitSigned))

	s.add(newJrInstruction(0x20, 2, 8, as.Num16bitFrom8BitSigned))
	s.add(newJrInstruction(0x28, 2, 8, as.Num16bitFrom8BitSigned))
	s.add(newJrInstruction(0x30, 2, 8, as.Num16bitFrom8BitSigned))
	s.add(newJrInstruction(0x38, 2, 8, as.Num16bitFrom8BitSigned))

}
