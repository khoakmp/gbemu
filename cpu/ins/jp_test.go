package ins

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

/*
JP nn : c3
JP (HL): e9

JP NZ, nn: C2
JP Z, nn: CA
JP NC, nn: D2
JP C, nn: DA

with conditional jump, if cond false, cycles = 12 else cycles = 16
*/
func TestJp(t *testing.T) {
	mUnit, regSet, inSet := createModules()
	var ins Instruction
	var initPCAddr uint16 = 0x2100
	var addr uint16 = 0x2000

	regSet.PC.Write16Bit(initPCAddr)
	ins = inSet.instructions[0xc3]
	ins.Run(regSet, mUnit, addr)
	assert.Equal(t, addr, regSet.PC.Read16Bit())
	// no se la get directy value store at HL ? dungd

	ins = inSet.instructions[0xe9]
	regSet.HL.Write16Bit(0x2102)
	ins.Run(regSet, mUnit, 0)
	assert.Equal(t, uint16(0x2102), regSet.PC.Read16Bit())
}
