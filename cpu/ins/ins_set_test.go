package ins

import (
	"testing"

	"github.com/khoakmp/gbemu/cpu/args"
	"github.com/khoakmp/gbemu/rs"
	"github.com/stretchr/testify/assert"
)

func TestInstructionSet(t *testing.T) {
	regs := rs.NewRegisterSet()
	arguments := args.NewArgumentSet(regs)
	inSet := NewInstructionSet(arguments)
	println("size:", inSet.Cnt)
	cnt := 0

	for i := 0; i <= 255; i++ {
		if inSet.GetInstruction(uint8(i)) == nil {
			println(i)
			cnt++
		}
	}
	println("total lack:", cnt)
}

func TestCbInstructionSet(t *testing.T) {
	regs := rs.NewRegisterSet()
	arguments := args.NewArgumentSet(regs)
	instructions := NewCbInstructionSet(arguments)
	assert.Equal(t, 256, instructions.cnt)
}
