package main

import (
	"github.com/khoakmp/gbemu/cpu/args"
	"github.com/khoakmp/gbemu/cpu/ins"
	"github.com/khoakmp/gbemu/rs"
)

func main() {
	/* f, _ := os.Open("pokemon.gb")
	defer f.Close()
	var buf []byte = make([]byte, 80)
	baseAddr := 0x0100
	f.ReadAt(buf, 0x0100)
	// 4 * 16 +16 = 80
	println("CGB Flag:", buf[0x013f-baseAddr])
	println("MBC type:", buf[0x0147-baseAddr])
	println("rom size type:", buf[0x0148-baseAddr])
	println("ram size type:", buf[0x0149-baseAddr]) */
	TestInstructionSet()
}

func TestInstructionSet() {
	regs := rs.NewRegisterSet()
	arguments := args.NewArgumentSet(regs)
	inSet := ins.NewInstructionSet(arguments)
	cnt := 0
	x := 0
	for i := uint16(0); i <= 255; i++ {

		if inSet.GetInstruction(uint8(i)) == nil {
			println(i)
			cnt++
		} else {
			x++
		}
	}
	println("total lack:", cnt)
	println("actual add cnt:", inSet.Cnt)
	println("call add cnt:", inSet.CallCnt)
	println("added:", x)
}
