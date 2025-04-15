package ins

import (
	"testing"

	"github.com/khoakmp/gbemu/rs"
	"github.com/stretchr/testify/assert"
)

func TestSbc(t *testing.T) {
	mUnit, regSet, inSet := createModules()
	var ins Instruction = inSet.instructions[0x18]

	/*
	   SBC A, r:

	   		Opcodes:
	   	        A: 9F
	   	        B: 98
	   	        C: 99
	   	        D: 9A
	   	        E: 9B
	   	        H: 9C
	   	        L: 9D
	   	    Cycles: 4 (1 machine cycle)
	   	    Size: 1 byte

	   SBC A, (HL):

	   	Opcode: 9E
	   	Cycles: 8 (2 machine cycles: fetch + memory read)
	   	Size: 1 byte

	   SBC A, n:

	   	Opcode: DE
	   	Cycles: 8 (2 machine cycles: fetch + read immediate)
	   	Size: 2 bytes (opcode + 1-byte immediate)
	*/
	A := regSet.A
	A.Write8Bit(10)
	regSet.B.Write8Bit(12)
	ins = inSet.instructions[0x98]
	ins.Run(regSet, mUnit, 0)
	assert.Equal(t, uint8(254), A.Read8Bit())
	assert.Equal(t, true, regSet.F.GetFlag(rs.FlagC))
	assert.Equal(t, true, regSet.F.GetFlag(rs.FlagH))
	assert.Equal(t, true, regSet.F.GetFlag(rs.FlagN))
	assert.Equal(t, false, regSet.F.GetFlag(rs.FlagZ))
	// just need to test only one case
}
